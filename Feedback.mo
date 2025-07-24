within MiorLib;

block Feedback
  RealInput2 SP annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {-72.5, 2.5}, extent = {{-37.5, -37.5}, {37.5, 37.5}})));
  RealInput2 PV annotation(
    Placement(transformation(origin = {0, -100}, extent = {{-25, -25}, {25, 25}}, rotation = 90), iconTransformation(origin = {0, -85}, extent = {{-35, -35}, {35, 35}}, rotation = 90)));
  RealOutput3 error annotation(
    Placement(transformation(origin = {50, 0}, extent = {{-25, -25}, {25, 25}}), iconTransformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}})));
equation
error = SP - PV;

  annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5}), graphics = {Ellipse(  fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid,lineThickness = 3, extent = {{-100, 100}, {100, -100}}),Line(origin = {0, -75}, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3), Line(origin = {-70, 0}, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3), Line(origin = {-70, 0}, rotation = -90, points = {{-25, 0}, {25, 0}, {25, 0}}, thickness = 3) }),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5}), graphics));
end Feedback;