within MiorLib;
block Add2
  RealInput u1 annotation(
    Placement(transformation(origin = {-120, 0}, extent = {{-50, -20}, {50, 20}}), iconTransformation(origin = {-120, 0}, extent = {{-50, -20}, {50, 20}})));
  MiorLib.RealInput u2 annotation(
    Placement(transformation(origin = {0, -120}, extent = {{-50, -20}, {50, 20}}, rotation = 90), iconTransformation(origin = {0, -120}, extent = {{-50, -20}, {50, 20}}, rotation = 90)));
  RealOutput y annotation(
    Placement(transformation(origin = {70, 0}, extent = {{-50, -20}, {50, 20}}), iconTransformation(origin = {70, 0}, extent = {{-50, -20}, {50, 20}})));
equation
  y = u1 + u2 + u3;
annotation(
    Icon(graphics = {Ellipse(lineThickness = 1, extent = {{100, -100}, {-100, 100}}), Line(points = {{0, 60}, {0, -60}}, thickness = 8), Line(rotation = -90, points = {{0, 60}, {0, -60}}, thickness = 8)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5})),
    uses(Modelica(version = "4.1.0")),
    version = "",
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5})));
end Add2;
