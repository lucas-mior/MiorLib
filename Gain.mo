within MiorLib;

block Gain "Output the product of a gain value with the input signal"
  parameter Real k(start=1)
    "Gain value multiplied with input signal";
  RealInput u annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {-100, 0}, extent = {{-50, -50}, {50, 50}})));
  RealOutput y annotation(
    Placement(transformation(extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {100, 5}, extent = {{-50, -50}, {50, 50}})));
equation
  y = k*u;
  annotation (
    Documentation(info="<html>
<p>
This block computes output <em>y</em> as
<em>product</em> of gain <em>k</em> with the
input <em>u</em>:
</p>
<blockquote><pre>
y = k * u;
</pre></blockquote>

</html>"),
  Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5}), graphics = {Text(extent = {{-150, -140}, {150, -100}}, textString = "k=%k"), Text(textColor = {0, 0, 255}, extent = {{-150, 140}, {150, 100}}, textString = "%name"), Polygon(lineColor = {0, 0, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100, -100}, {-100, 100}, {100, 0}, {-100, -100}})}),
  Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 1.0, grid = {5, 5})));
end Gain;