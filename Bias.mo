within MiorLib;

block Bias
  RealOutput y(start=0, fixed=false) "steady state bias" annotation(
    Placement(transformation(extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {100, 0}, extent = {{-50, -50}, {50, 50}})));
equation
  der(y) = 0;
  annotation(
    uses(Modelica(version = "4.1.0")),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5}), graphics = {Rectangle(  fillColor = {230, 230, 250}, lineThickness = 1, extent = {{-100, -100}, {100, 100}}), Text(origin = {0, 50},textColor = {0, 0, 250}, extent = {{-90, 10}, {90, 40}}, textString = "Bias")}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})));
end Bias;
