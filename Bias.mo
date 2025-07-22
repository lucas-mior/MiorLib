within MiorLib;

block Bias
  RealOutput y annotation(
    Placement(transformation(extent = {{-50, -50}, {50, 50}}), iconTransformation(extent = {{-50, -50}, {50, 50}})));
equation
  der(y) = 0;
  annotation(
    uses(Modelica(version = "4.1.0")),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5}), graphics = {Rectangle( lineColor = {0, 0, 250}, fillColor = {230, 230, 250}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(origin = {0, 50},textColor = {0, 0, 250}, extent = {{-90, 10}, {90, 40}}, textString = "Bias")}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1.0, grid = {5, 5})));
end Bias;
