within MiorLib;

connector RealInput2 = input Real "input connector without name and invisible icon" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1, grid = {5, 5}), graphics = {Polygon(origin = {-50, 0}, lineThickness = 2, points = {{0, 30}, {0, 30}, {0, 30}}), Polygon(lineColor = {255, 255, 255},lineThickness = 2, points = {{-50, 50}, {50, 0}, {-50, -50}, {-50, 50}})}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1.0, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {-60, 10},textColor = {0, 0, 120}, extent = {{0, -20}, {50, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Right), Polygon(origin = {50, 0}, fillColor = {130, 132, 130}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));