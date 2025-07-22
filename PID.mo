within MiorLib;
block PID
  import Modelica.Blocks.Types.Init;
  import MiorLib.RealInput;
  import Modelica.Blocks.Interfaces.RealOutput;

  constant Real unitTime=1 annotation(HideResult=true);
  Modelica.Blocks.Math.Gain P(k = 1) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-70, 70}, {-20, 120}})));
  Modelica.Blocks.Continuous.Integrator I(initType = Init.InitialOutput, y_start = 0, k=unitTime/Ti) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-70, -20}, {-20, 20}})));
  Modelica.Blocks.Continuous.Derivative D(k=Td/unitTime, T = max([Td/Nd, 100*Modelica.Constants.eps]), x_start=0, initType = Init.SteadyState) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-70, -120}, {-20, -70}})));
  Modelica.Blocks.Math.Gain Pout(k = k) annotation(
    Placement(transformation(origin = {-170, 100}, extent = {{150, -20}, {200, 20}})));
  Modelica.Blocks.Math.Gain Iout(k = k) annotation(
    Placement(transformation(origin = {-170, 0}, extent = {{150, -20}, {200, 20}})));
  Modelica.Blocks.Math.Gain Dout(k = k) annotation(
    Placement(transformation(origin = {-170, -100}, extent = {{150, -20}, {200, 20}})));

  parameter Real k(unit="1")=1 "Gain";
  parameter Real Ti(min=Modelica.Constants.small, start=0.5)
    "Time Constant of Integrator";
  parameter Real Td(min=0, start=0.1)
    "Time Constant of Derivative block";
  parameter Real Nd(min=Modelica.Constants.small) = 10
    "The higher Nd, the more ideal the derivative block";
  RealInput error annotation(
    Placement(transformation(origin = {-200, 0}, extent = {{-50, -20}, {50, 20}}), iconTransformation(origin = {-200, 0}, extent = {{-50, -20}, {50, 20}})));
  Add3 action annotation(
    Placement(transformation(origin = {70, 0}, extent = {{-20, -20}, {20, 20}})));
  Add2 add2 annotation(
    Placement(transformation(origin = {150, 0}, extent = {{-20, -20}, {20, 20}})));
  Bias bias annotation(
    Placement(transformation(origin = {110, -70}, extent = {{-20, -20}, {20, 20}})));
  RealOutput y annotation(
    Placement(transformation(origin = {200, 0}, extent = {{-50, -20}, {50, 20}}), iconTransformation(origin = {200, 0}, extent = {{-50, -20}, {50, 20}})));
equation
  connect(error, I.u) annotation(
    Line(points = {{-200, 0}, {-100, 0}}, color = {0, 0, 120}, thickness = 0.8));
  connect(error, D.u) annotation(
    Line(points = {{-200, 0}, {-120, 0}, {-120, -100}, {-100, -100}}, color = {0, 0, 120}, thickness = 0.8));
  connect(error, P.u) annotation(
    Line(points = {{-200, 0}, {-120, 0}, {-120, 100}, {-100, 100}}, color = {0, 0, 120}, thickness = 0.8));
  connect(P.y, Pout.u) annotation(
    Line(points = {{-47.5, 100}, {-30, 100}}, color = {0, 0, 120}, thickness = 0.8));
  connect(I.y, Iout.u) annotation(
    Line(points = {{-47.5, 0}, {-30, 0}}, color = {0, 0, 120}, thickness = 0.8));
  connect(D.y, Dout.u) annotation(
    Line(points = {{-47.5, -100}, {-30, -100}}, color = {0, 0, 120}, thickness = 0.8));
  connect(Iout.y, action.u1) annotation(
    Line(points = {{27.5, 0}, {40, 0}}, color = {0, 0, 120}, thickness = 0.8));
  connect(action.y, add2.u1) annotation(
    Line(points = {{93.75, 0}, {119.75, 0}}, color = {0, 0, 120}, thickness = 0.8));
  connect(bias.y, add2.u2) annotation(
    Line(points = {{110, -70}, {150, -70}, {150, -30}}, color = {0, 0, 120}, thickness = 0.8));
  connect(add2.y, y) annotation(
    Line(points = {{168.75, 0}, {198.75, 0}}, color = {0, 0, 120}));
  connect(Pout.y, action.u2) annotation(
    Line(points = {{30, 100}, {70, 100}, {70, 30}}, color = {0, 0, 120}));
  connect(Dout.y, action.u3) annotation(
    Line(points = {{30, -100}, {70, -100}, {70, -30}}, color = {0, 0, 120}));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Icon(coordinateSystem(extent = {{-200, -200}, {250, 200}}, initialScale = 1.0, grid = {5, 5}), graphics = {Text( extent = {{-100, 50}, {100, -50}}, textString = "PID", fontName = "Lucida Console"), Rectangle( lineThickness = 3, extent = {{140, 120}, {-140, -120}}),         
  Text(
          origin = {0, 10},textColor={0,0, 250},
          extent={{-150,40},{150,80}},
          textString= "k=%k Ti=%Ti"), Text(origin = {0, -130}, textColor = {0, 0, 250}, extent = {{-150, 40}, {150, 80}}, textString = "Td=%Td Nd=%Nd")}),
  version = "",
  Diagram(coordinateSystem(extent = {{-200, -200}, {250, 200}}, grid = {5, 5}, initialScale = 1.0)));
end PID;
