within MiorLib;

connector RealInput = input Real "'input Real' as connector" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1, grid = {5, 5}), graphics = {Text(origin = {-10, 0},textColor = {0, 0, 120}, extent = {{-50, -30}, {0, 30}}, textString = "%name", horizontalAlignment = TextAlignment.Right), Polygon(origin = {50, 0}, fillColor = {132, 132, 132}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {-10, 0},textColor = {0, 0, 120}, extent = {{-50, -20}, {0, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Right), Polygon(origin = {50, 0}, fillColor = {132, 132, 132}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));