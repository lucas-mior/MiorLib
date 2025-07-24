within MiorLib;

connector RealOutput2 = output Real "input connector without name and invisible icon" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1.0, grid = {5, 5}), graphics = {Rectangle(lineColor = {255, 255, 255}, lineThickness = 0.01, extent = {{-50, 50}, {50, -50}})}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1.0, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {10, 10},textColor = {0, 0, 120}, extent = {{0, -20}, {50, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Left), Polygon(origin = {-50, 0}, fillColor = {200, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));
