within MiorLib;

block Saturation "Limit the range of a signal"
  parameter Real uMax(start = 1) "Upper limits of input signals";
  parameter Real uMin = -uMax "Lower limits of input signals";
  parameter Boolean strict = false "= true, if strict limits with noEvent(..)" annotation(
    Evaluate = true,
    choices(checkBox = true),
    Dialog(tab = "Advanced"));
  parameter Modelica.Blocks.Types.LimiterHomotopy homotopyType = Modelica.Blocks.Types.LimiterHomotopy.Linear "Simplified model for homotopy-based initialization" annotation(
    Evaluate = true,
    Dialog(group = "Initialization"));
  RealInput3 u annotation(
    Placement(transformation(origin = {-80, 10}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}})));
  RealOutput3 y annotation(
    Placement(transformation(origin = {5, -40}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}})));
protected
  Real simplifiedExpr "Simplified expression for homotopy-based initialization";
equation
  assert(uMax >= uMin, "Limiter: Limits must be consistent. However, uMax (=" + String(uMax) + ") < uMin (=" + String(uMin) + ")");
  simplifiedExpr = (if homotopyType == Modelica.Blocks.Types.LimiterHomotopy.Linear then u else if homotopyType == Modelica.Blocks.Types.LimiterHomotopy.UpperLimit then uMax else if homotopyType == Modelica.Blocks.Types.LimiterHomotopy.LowerLimit then uMin else 0);
  if strict then
    if homotopyType == Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy then
      y = smooth(0, noEvent(if u > uMax then uMax else if u < uMin then uMin else u));
    else
      y = homotopy(actual = smooth(0, noEvent(if u > uMax then uMax else if u < uMin then uMin else u)), simplified = simplifiedExpr);
    end if;
  else
    if homotopyType == Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy then
      y = smooth(0, if u > uMax then uMax else if u < uMin then uMin else u);
    else
      y = homotopy(actual = smooth(0, if u > uMax then uMax else if u < uMin then uMin else u), simplified = simplifiedExpr);
    end if;
  end if;
  annotation(
    Documentation(info = "<html>
<p>
The Limiter block passes its input signal as output signal
as long as the input is within the specified upper and lower
limits. If this is not the case, the corresponding limits are passed
as output.
</p>
<p>
The parameter <code>homotopyType</code> in the Advanced tab specifies the
simplified behaviour if homotopy-based initialization is used:
</p>
<ul>
<li><code>NoHomotopy</code>: the actual expression with limits is used</li>
<li><code>Linear</code>: a linear behaviour y = u is assumed (default option)</li>
<li><code>UpperLimit</code>: it is assumed that the output is stuck at the upper limit u = uMax</li>
<li><code>LowerLimit</code>: it is assumed that the output is stuck at the lower limit u = uMin</li>
</ul>
<p>
If it is known a priori in which region the input signal will be located, this option can help
a lot by removing one strong nonlinearity from the initialization problem.
</p>
</html>"),
  Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5}), graphics = {Line(points = {{0, -90}, {0, 60}}, color = {190, 192, 190}), Polygon(lineColor = {190, 192, 190}, fillColor = {190, 192, 190}, fillPattern = FillPattern.Solid, points = {{0, 90}, {-0, 60}, {0, 60}, {0, 90}}), Line(points = {{-90, 0}, {60, 0}}, color = {190, 192, 190}), Polygon(lineColor = {190, 192, 190}, fillColor = {190, 192, 190}, fillPattern = FillPattern.Solid, points = {{90, 0}, {60, -0}, {60, 0}, {90, 0}}), Line(points = {{-80, -70}, {-50, -70}, {50, 70}, {80, 70}}, thickness = 2), Text(extent = {{-150, -150}, {150, -110}}, textString = "[%uMin, %uMax]"), Line(visible = strict, points = {{50, 70}, {80, 70}}, color = {255, 0, 0}), Line(visible = strict, points = {{-80, -70}, {-50, -70}}, color = {255, 0, 0}), Rectangle(lineColor = {0, 0, 120}, lineThickness = 2, extent = {{-100, 100}, {100, -100}})}),
  Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 1.0, grid = {5, 5})));
end Saturation;
