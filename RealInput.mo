within MiorLib;

connector RealInput = input Real "input connector with name and icon" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1, grid = {5, 5}), graphics = {Text(origin = {50, 10}, textColor = {0, 0, 120}, extent = {{0, -20}, {100, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Left), Polygon(origin = {-50, 0},lineThickness = 2, points = {{0, 30}, {0, 30}, {0, 30}}), Polygon( lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 2, points = {{-20, 35}, {50, 0}, {-20, -35}, {-20, 35}}), Line(origin = {-0.45, 0}, points = {{-49.5528, 40}, {45.4472, 0}, {-49.5528, -40}}, thickness = 4)}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));
