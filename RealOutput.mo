within MiorLib;

connector RealOutput = output Real "output connector with name and icon" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1.0, grid = {5, 5}), graphics = {Polygon(lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid,lineThickness = 2, points = {{-50, 40}, {50, 0}, {-50, -40}, {-50, 40}}), Line(origin = {-0.45, 0}, points = {{-49.5528, 40}, {50.4472, 0}, {-49.5528, -40}}, thickness = 4), Text(origin = {-150, 10}, textColor = {160, 0, 0}, extent = {{0, 20}, {100, -20}}, textString = "%name", horizontalAlignment = TextAlignment.Right) }),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));
