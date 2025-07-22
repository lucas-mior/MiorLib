within MiorLib;

block Bias
  RealOutput y annotation(
    Placement(transformation(extent = {{-100, -50}, {100, 50}}), iconTransformation(extent = {{-100, -50}, {100, 50}})));
equation
  der(y) = 0;
  annotation(
    uses(Modelica(version = "4.1.0")),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5}), graphics = {Rectangle( lineColor = {0, 0, 255}, fillColor = {230, 230, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(origin = {0, 55},textColor = {0, 0, 255}, extent = {{-90, 10}, {90, 40}}, textString = "Bias")}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 1, grid = {5, 5})));
end Bias;