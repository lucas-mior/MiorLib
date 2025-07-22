within MiorLib;

model Bias
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {130, 0}, extent = {{-30, -30}, {30, 30}}), iconTransformation(origin = {130, 0}, extent = {{-30, -30}, {30, 30}})));

equation
der(y) = 0;
annotation(
    uses(Modelica(version = "4.1.0")));
end Bias;
