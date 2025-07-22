within MiorLib;
block Add3
  RealInput u1 annotation(
    Placement(transformation(origin = {-120, 0}, extent = {{-50, -25}, {50, 25}}), iconTransformation(origin = {-120, 0}, extent = {{-50, -25}, {50, 25}})));
  MiorLib.RealInput u2 annotation(
    Placement(transformation(origin = {0, 120}, extent = {{-50, -25}, {50, 25}}, rotation = -90), iconTransformation(origin = {0, 120}, extent = {{-50, -25}, {50, 25}}, rotation = -90)));
  MiorLib.RealInput u3 annotation(
    Placement(transformation(origin = {0, -120}, extent = {{-50, -25}, {50, 25}}, rotation = 90), iconTransformation(origin = {0, -120}, extent = {{-50, -25}, {50, 25}}, rotation = 90)));
  RealOutput y annotation(
    Placement(transformation(origin = {75, 0}, extent = {{-50, -25}, {50, 25}}), iconTransformation(origin = {75, 0}, extent = {{-50, -25}, {50, 25}})));
equation
  y = u1 + u2 + u3;
annotation(
    Icon(graphics = {Ellipse(lineThickness = 1, extent = {{100, -100}, {-100, 100}}), Line(points = {{0, 60}, {0, -60}}, thickness = 8), Line(rotation = -90, points = {{0, 60}, {0, -60}}, thickness = 8)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})),
    uses(Modelica(version = "4.1.0")),
    version = "",
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})));
end Add3;