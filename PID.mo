within MiorLib;
block PID
  import Modelica.Blocks.Types.Init;

  constant Real unitTime=1 annotation(HideResult=true);

  parameter Real k(unit="1", start=1) "PID Gain";
  parameter Real Ti(min=Modelica.Constants.small, start=0.5)
    "Time Constant of Integrator";
  parameter Real Td(min=0, start=0.1)
    "Time Constant of Derivative block";
  parameter Real Nd(min=Modelica.Constants.small) = 10
    "Time parameter Nd: The higher Nd, the more ideal the derivative block";
    
  Gain actionP(k = k) "action Proportional"  annotation(
    Placement(transformation(origin = {-40, 125}, extent = {{-25, -25}, {25, 25}})));
  Gain actionI(k = k) "action Integral" annotation(
    Placement(transformation(origin = {-40, 0}, extent = {{-25, -25}, {25, 25}})));
  Gain actionD(k = k) "action Derivative" annotation(
    Placement(transformation(origin = {-40, -125}, extent = {{-25, -25}, {25, 25}})));
  Add3 action "action" annotation(
    Placement(transformation(origin = {75, 0}, extent = {{-25, -25}, {25, 25}})));
    
protected
  Modelica.Blocks.Continuous.Integrator integrator(k = unitTime/Ti, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 0)  annotation(
    Placement(transformation(origin = {-125, 0}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Continuous.Derivative derivative(k = Td/unitTime, initType =
  Modelica.Blocks.Types.Init.InitialOutput, x_start = 0, y_start = 0, x(start = 0, fixed = false), T=max([Td/Nd,
  100*Modelica.Constants.eps]))  annotation(
    Placement(transformation(origin = {-125, -125}, extent = {{-25, -25}, {25, 25}})));
  Gain proportional(k = 1)  annotation(
    Placement(transformation(origin = {-125, 125}, extent = {{-25, -25}, {25, 25}})));
  Add2 add_bias annotation(
    Placement(transformation(origin = {175, 0}, extent = {{-25, -25}, {25, 25}})));

public
  Bias bias annotation(
    Placement(transformation(origin = {125, -100}, extent = {{-25, -25}, {25, 25}})));
  Feedback feedback annotation(
    Placement(transformation(origin = {-225, 0}, extent = {{-25, -25}, {25, 25}})));
  RealOutput MV "PID output = action + bias" annotation(
    Placement(transformation(origin = {350, 0}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {400, 0}, extent = {{-75, -75}, {75, 75}})));
  RealInput SP "PID set point" annotation(
    Placement(transformation(origin = {-400, 0}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {-400, 0}, extent = {{-75, -75}, {75, 75}})));
  RealInput PV "PID process variable" annotation(
    Placement(transformation(origin = {-225, -400}, extent = {{-50, -50}, {50, 50}}, rotation = 90), iconTransformation(origin = {0, -400}, extent = {{-75, -75}, {75, 75}}, rotation = 90)));
equation
  connect(SP, feedback.SP) annotation(    Line(points = {{-400, 0}, {-250, 0}}, color = {0, 0, 120}));
  connect(feedback.error, integrator.u) annotation(    Line(points = {{-210, 0}, {-155, 0}}, color = {0, 0, 120}));
  connect(PV, feedback.PV) annotation(    Line(points = {{-225, -400}, {-225, -25}}, color = {0, 0, 120}, thickness = 2));
  connect(feedback.error, derivative.u) annotation(    Line(points = {{-210, 0}, {-185, 0}, {-185, -125}, {-155, -125}}, color = {0, 0, 120}, thickness = 2));
  connect(feedback.error, proportional.u) annotation(    Line(points = {{-210, 0}, {-185, 0}, {-185, 125}, {-150, 125}}, color = {0, 0, 120}));
  connect(integrator.y, actionI.u) annotation(    Line(points = {{-95, 0}, {-65, 0}}, color = {0, 0, 120}));
  connect(derivative.y, actionD.u) annotation(    Line(points = {{-97.5, -125}, {-65, -125}}, color = {0, 0, 120}, thickness = 2));
  connect(proportional.y, actionP.u) annotation(    Line(points = {{-100, 125}, {-65, 125}}, color = {0, 0, 120}));
  connect(actionP.y, action.u3) annotation(    Line(points = {{-15, 125}, {75, 125}, {75, 30}}, color = {0, 0, 120}));
  connect(actionI.y, action.u1) annotation(    Line(points = {{-15, 0}, {45, 0}}, color = {0, 0, 120}));
  connect(actionD.y, action.u2) annotation(    Line(points = {{-15, -125}, {75, -125}, {75, -30}}, color = {0, 0, 120}));
  connect(action.y, add_bias.u1) annotation(    Line(points = {{100, 0}, {145, 0}}, color = {0, 0, 120}));
  connect(bias.y, add_bias.u2) annotation(    Line(points = {{150, -100}, {175, -100}, {175, -30}}, color = {0, 0, 120}));
  connect(add_bias.y, MV) annotation(    Line(points = {{200, 0}, {350, 0}}, color = {0, 0, 120}, thickness = 2));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Icon(coordinateSystem(extent = {{-400, -400}, {400, 400}}, initialScale = 1.0, grid = {5, 5}), graphics = {Text( origin = {-0, 40}, extent = {{-180, 80}, {180, -80}}, textString = "PID", fontName = "Lucida Console"), Rectangle( lineThickness = 3, extent = {{400, 400}, {-400, -400}}),         
  Text(
          origin = {1.5, 25},textColor={0,0, 250},
          extent={{-400,100},{400,300}},
          textString= "k=%k Ti=%Ti"), Text(origin = {-3.5, -460}, textColor = {0, 0, 250}, extent = {{-400, 100}, {400, 300}}, textString = "Td=%Td Nd=%Nd")}),
  version = "",
  Diagram(coordinateSystem(extent = {{-400, -400}, {400, 400}}, grid = {5, 5}, initialScale = 1.0)),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end PID;
