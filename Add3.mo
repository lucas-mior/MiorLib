within MiorLib;
block Add3
  Modelica.Blocks.Interfaces.RealInput u1 annotation(
    Placement(transformation(origin = {-100, 90}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-140, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(
    Placement(transformation(origin = {-100, -90}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {0, -140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealInput u3(start = 0) = 0 annotation(
    Placement(transformation(origin = {-100, -90}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {0, 140}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {140, 0}, extent = {{-20, -20}, {20, 20}})));
equation
  y = u1 + u2 + u3;
annotation(
    Icon(graphics = {Ellipse(lineThickness = 1, extent = {{120, -120}, {-120, 120}}), Line(points = {{0, 80}, {0, -80}}, thickness = 8), Line(rotation = -90, points = {{0, 80}, {0, -80}}, thickness = 8)}, coordinateSystem(extent = {{-170, -170}, {170, 170}}, initialScale = 1.0)),
    uses(Modelica(version = "4.1.0")),
    version = "",
    Diagram);
end Add3;
