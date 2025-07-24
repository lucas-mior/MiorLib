within MiorLib;

connector RealOutput3 = output Real "input connector without name" annotation(
  defaultComponentName = "u",
  Icon(coordinateSystem(extent = {{-50, -50}, {50, 50}}, preserveAspectRatio = true, initialScale = 1, grid = {5, 5}), graphics = {Polygon(lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid,lineThickness = 2, points = {{-75, 50}, {50, 0}, {-75, -50}, {-75, 50}}), Line(origin = {-0.45, 0}, points = {{-49.5528, 40}, {50.4472, 0}, {-49.5528, -40}}, thickness = 4)}),
  Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 1.0, extent = {{-50, -50}, {50, 50}}, grid = {5, 5}), graphics = {Text(origin = {10, 10},textColor = {0, 0, 120}, extent = {{0, -20}, {50, 20}}, textString = "%name", horizontalAlignment = TextAlignment.Left), Polygon(origin = {-50, 0}, fillColor = {200, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 0.8, points = {{-50, 50}, {-50, -50}, {50, 0}, {-50, 50}})}),
  Documentation(info = "<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));