within MiorLib;

connector RealInput = input Real "'input Real' as connector" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1, grid = {5, 5}), graphics = {Text(origin = {10, 10}, textColor = {0, 0, 120}, extent = {{0, -20}, {100, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Left), Ellipse( origin = {-25, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid,lineThickness = 2, extent = {{-25, 25}, {25, -25}})}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {10, 10}, textColor = {0, 0, 120}, extent = {{0, -20}, {100, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Right), Line(origin = {62.5, 0}, points = {{-12.5, 0}, {-37.5, 0}, {-62.5, 0}}, thickness = 2), Ellipse( origin = {-25, 0},lineThickness = 2, extent = {{-25, 25}, {25, -25}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));