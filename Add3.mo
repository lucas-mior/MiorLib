within MiorLib;
block Add3
  MiorLib.RealInput2 u1 annotation(Placement(transformation(origin = {-125, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}})));
  MiorLib.RealInput2 u2 annotation(Placement(transformation(origin = {0, -125}, extent = {{-25, -25}, {25, 25}}, rotation = 90), iconTransformation(origin = {0, -100}, extent = {{-25, -25}, {25, 25}}, rotation = 90)));
  MiorLib.RealInput2 u3 annotation(Placement(transformation(origin = {0, 125}, extent = {{-25, -25}, {25, 25}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-25, -25}, {25, 25}}, rotation = -90)));
  MiorLib.RealOutput3 y annotation(
    Placement(transformation(origin = {75, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}})));
equation
  y = u1 + u2 + u3;
annotation(
    Icon(graphics = {Ellipse(lineThickness = 3, extent = {{100, -100}, {-100, 100}}), Line(points = {{0, 60}, {0, -60}}, thickness = 8), Line(rotation = -90, points = {{0, 60}, {0, -60}}, thickness = 8)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})),
    uses(Modelica(version = "4.1.0")),
    version = "",
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})));
end Add3;
