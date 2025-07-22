within MiorLib;
block PID
  import Modelica.Blocks.Types.Init;
  import MiorLib.RealInput;
  import Modelica.Blocks.Interfaces.RealOutput;

  constant Real unitTime=1 annotation(HideResult=true);

  parameter Real k(unit="1")=1 "Gain";
  parameter Real Ti(min=Modelica.Constants.small, start=0.5)
    "Time Constant of Integrator";
  parameter Real Td(min=0, start=0.1)
    "Time Constant of Derivative block";
  parameter Real Nd(min=Modelica.Constants.small) = 10
    "The higher Nd, the more ideal the derivative block";
  RealInput error annotation(
    Placement(transformation(origin = {-250, 0}, extent = {{-50, -25}, {50, 25}}), iconTransformation(origin = {-250, 0}, extent = {{-50, -25}, {50, 25}})));
  Add3 action annotation(
    Placement(transformation(origin = {50, 0}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = unitTime/Ti, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 0)  annotation(
    Placement(transformation(origin = {-125, 0}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Continuous.Derivative derivative(k = Td/unitTime, initType =
  Modelica.Blocks.Types.Init.InitialOutput, x_start = 0, y_start = 0, x(start = 0), T=max([Td/Nd,
  100*Modelica.Constants.eps]))  annotation(
    Placement(transformation(origin = {-125, -125}, extent = {{-25, -25}, {25, 25}})));
  Gain proportional annotation(
    Placement(transformation(origin = {-125, 125}, extent = {{-25, -25}, {25, 25}})));
  Gain P annotation(
    Placement(transformation(origin = {-50, 125}, extent = {{-25, -25}, {25, 25}})));
  Gain I annotation(
    Placement(transformation(origin = {-50, 0}, extent = {{-25, -25}, {25, 25}})));
  Gain D annotation(
    Placement(transformation(origin = {-50, -125}, extent = {{-25, -25}, {25, 25}})));
  Add2 add2 annotation(
    Placement(transformation(origin = {150, 0}, extent = {{-25, -25}, {25, 25}})));
  Bias bias annotation(
    Placement(transformation(origin = {100, -100}, extent = {{-25, -25}, {25, 25}})));
  RealOutput y annotation(
    Placement(transformation(origin = {200, 0}, extent = {{-50, -25}, {50, 25}}), iconTransformation(origin = {200, 0}, extent = {{-50, -25}, {50, 25}})));
equation
  connect(error, proportional.u) annotation(
    Line(points = {{-250, 0}, {-180, 0}, {-180, 125}, {-150, 125}}, color = {0, 0, 120}));
  connect(error, integrator.u) annotation(
    Line(points = {{-250, 0}, {-155, 0}}, color = {0, 0, 120}));
  connect(error, derivative.u) annotation(
    Line(points = {{-250, 0}, {-180, 0}, {-180, -125}, {-155, -125}}, color = {0, 0, 120}));
  connect(proportional.y, P.y) annotation(
    Line(points = {{-125, 125}, {-50, 125}}, color = {0, 0, 120}));
  connect(P.y, action.u2) annotation(
    Line(points = {{-50, 125}, {50, 125}, {50, 30}}, color = {0, 0, 120}));
  connect(integrator.y, I.y) annotation(
    Line(points = {{-95, 0}, {-50, 0}}, color = {0, 0, 127}));
  connect(I.y, action.u1) annotation(
    Line(points = {{-50, 0}, {20, 0}}, color = {0, 0, 120}));
  connect(derivative.y, D.u) annotation(
    Line(points = {{-95, -125}, {-75, -125}}, color = {0, 0, 127}));
  connect(D.y, action.u3) annotation(
    Line(points = {{-50, -125}, {50, -125}, {50, -30}}, color = {0, 0, 120}));
  connect(bias.y, add2.u2) annotation(
    Line(points = {{100, -100}, {150, -100}, {150, -30}}, color = {0, 0, 120}, thickness = 0.8));
  connect(action.y, add2.u1) annotation(
    Line(points = {{70, 0}, {120, 0}}, color = {0, 0, 120}, thickness = 0.8));
  connect(add2.y, y) annotation(
    Line(points = {{167.5, 0}, {200, 0}}, color = {0, 0, 120}));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Icon(coordinateSystem(extent = {{-250, -200}, {250, 200}}, initialScale = 1, grid = {5, 5}), graphics = {Text( extent = {{-100, 50}, {100, -50}}, textString = "PID", fontName = "Lucida Console"), Rectangle( lineThickness = 3, extent = {{140, 120}, {-140, -120}}),         
  Text(
          origin = {0, 10},textColor={0,0, 250},
          extent={{-150,40},{150,80}},
          textString= "k=%k Ti=%Ti"), Text(origin = {0, -130}, textColor = {0, 0, 250}, extent = {{-150, 40}, {150, 80}}, textString = "Td=%Td Nd=%Nd")}),
  version = "",
  Diagram(coordinateSystem(extent = {{-250, -200}, {250, 200}}, grid = {5, 5}, initialScale = 1)));
end PID;