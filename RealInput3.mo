within MiorLib;

connector RealInput3 = input Real "input connector without name" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1.0, grid = {5, 5}), graphics = {Polygon(origin = {-50, 0},lineThickness = 2, points = {{0, 30}, {0, 30}, {0, 30}}), Polygon( lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 2, points = {{-20, 35}, {50, 0}, {-20, -35}, {-20, 35}}), Line(origin = {-0.45, 0}, points = {{-49.5528, 40}, {45.4472, 0}, {-49.5528, -40}}, thickness = 4)}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1.0, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {-60, 10},textColor = {0, 0, 120}, extent = {{0, -20}, {50, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Right), Polygon(origin = {50, 0}, fillColor = {130, 132, 130}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));
