within MiorLib;
block Add2
  RealOutput3 y annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}})));
  RealInput3 u1 annotation(
    Placement(transformation(origin = {-200, -45}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}})));
  MiorLib.RealInput3 u2 annotation(
    Placement(transformation(origin = {-210, -100}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {0, -100}, extent = {{-25, -25}, {25, 25}}, rotation = 90)));
equation
  y = u1 + u2;
annotation(
    Icon(graphics = {Ellipse(lineThickness = 3, extent = {{100, -100}, {-100, 100}}), Line(points = {{0, 60}, {0, -60}}, thickness = 8), Line(rotation = -90, points = {{0, 60}, {0, -60}}, thickness = 8)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})),
    uses(Modelica(version = "4.1.0")),
    version = "",
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5})));
end Add2;