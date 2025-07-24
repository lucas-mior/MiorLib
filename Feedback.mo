within MiorLib;

block Feedback
  RealInput SP annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}})));
  RealInput PV annotation(
    Placement(transformation(origin = {0, -100}, extent = {{-25, -25}, {25, 25}}, rotation = 90), iconTransformation(origin = {0, -100}, extent = {{-25, -25}, {25, 25}}, rotation = 90)));
  RealOutput error annotation(
    Placement(transformation(origin = {50, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {50, 0}, extent = {{-25, -25}, {25, 25}})));
equation
error = SP - PV;

  annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5}), graphics = {Line(origin = {50, -75}, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3), Line(origin = {-75, 50}, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3), Line(origin = {-75, 50}, rotation = -90, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3), Ellipse(  lineThickness = 1.05, extent = {{-50, 50}, {50, -50}})}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5}), graphics));
end Feedback;
