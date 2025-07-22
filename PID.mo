within MiorLib;
block PID
  import Modelica.Blocks.Types.Init;
  constant Real unitTime=1 annotation(HideResult=true);
  Modelica.Blocks.Interfaces.RealInput error annotation(
    Placement(transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Math.Gain P(k = 1) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-60, 60}, {-20, 100}})));
  Modelica.Blocks.Continuous.Integrator I(initType = Init.InitialOutput, y_start = 0, k=unitTime/Ti) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-60, -20}, {-20, 20}})));
  Modelica.Blocks.Continuous.Derivative D(k=Td/unitTime, T = max([Td/Nd, 100*Modelica.Constants.eps]), x_start=0, initType = Init.SteadyState) annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-60, -100}, {-20, -60}})));
  Modelica.Blocks.Math.Gain Pout(k = k) annotation(
    Placement(transformation(origin = {-70, 80}, extent = {{60, -10}, {80, 10}})));
  Modelica.Blocks.Math.Add3 Add annotation(
    Placement(transformation(origin = {0, 0}, extent = {{20, -10}, {40, 10}})));
  Modelica.Blocks.Math.Gain Iout(k = k) annotation(
    Placement(transformation(origin = {-70, 0}, extent = {{60, -10}, {80, 10}})));
  Modelica.Blocks.Math.Gain Dout(k = k) annotation(
    Placement(transformation(origin = {-70, -80}, extent = {{60, -10}, {80, 10}})));

  parameter Real k(unit="1")=1 "Gain";
  parameter Real Ti(min=Modelica.Constants.small, start=0.5)
    "Time Constant of Integrator";
  parameter Real Td(min=0, start=0.1)
    "Time Constant of Derivative block";
  parameter Real Nd(min=Modelica.Constants.small) = 10
    "The higher Nd, the more ideal the derivative block";
  Add2 add2 annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain action annotation(
    Placement(transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}})));
  Bias bias annotation(
    Placement(transformation(origin = {50, -40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {160, -0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {160, -0}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(P.y, Pout.u) annotation(
    Line(points = {{-30, 80}, {-10, 80}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(I.y, Iout.u) annotation(
    Line(points = {{-30, 0}, {-10, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(Iout.y, Add.u2) annotation(
    Line(points = {{0, 0}, {20, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(D.y, Dout.u) annotation(
    Line(points = {{-30, -80}, {-10, -80}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(Dout.y, Add.u3) annotation(
    Line(points = {{0, -80}, {10, -80}, {10, -0}, {20, -0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(Pout.y, Add.u1) annotation(
    Line(points = {{0, 80}, {10, 80}, {10, 0}, {20, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(error, I.u) annotation(
    Line(points = {{-120, 0}, {-80, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(error, P.u) annotation(
    Line(points = {{-120, 0}, {-90, 0}, {-90, 80}, {-80, 80}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(error, D.u) annotation(
    Line(points = {{-120, 0}, {-90, 0}, {-90, -80}, {-80, -80}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(Add.y, action.u) annotation(
    Line(points = {{40, 0}, {50, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(action.y, add2.u1) annotation(
    Line(points = {{70, 0}, {80, 0}}, color = {0, 0, 120}, thickness = 0.75, arrow = {Arrow.None, Arrow.None}));
  connect(bias.y, add2.u2) annotation(
    Line(points = {{84.74, -40}, {100.74, -40}, {100.74, -10}}, color = {0, 0, 120}));
  connect(add2.y, y) annotation(
    Line(points = {{110, 0}, {150, 0}}, color = {0, 0, 120}));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Icon(coordinateSystem(extent = {{-140, -120}, {140, 120}}, initialScale = 1.0, grid = {0, 0}), graphics = {Text( origin = {-0, 0},extent = {{-100, 50}, {100, -50}}, textString = "PID", fontName = "Lucida Console"), Rectangle( lineThickness = 3, extent = {{140, 120}, {-140, -120}}),         
  Text(
          origin = {0, 10},textColor={0,0, 250},
          extent={{-150,40},{150,80}},
          textString= "k=%k Ti=%Ti"), Text(origin = {0, -130}, textColor = {0, 0, 250}, extent = {{-150, 40}, {150, 80}}, textString = "Td=%Td Nd=%Nd")}),
  version = "",
  Diagram(coordinateSystem(extent = {{-140, -120}, {140, 120}}, grid = {0, 0}, initialScale = 1.0)));
end PID;
