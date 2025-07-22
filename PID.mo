within MiorLib;
block PID
  import Modelica.Blocks.Types.Init;

  constant Real unitTime=1 annotation(HideResult=true);

  parameter Real k(unit="1", start=1) "Gain";
  parameter Real Ti(min=Modelica.Constants.small, start=0.5)
    "Time Constant of Integrator";
  parameter Real Td(min=0, start=0.1)
    "Time Constant of Derivative block";
  parameter Real Nd(min=Modelica.Constants.small) = 10
    "The higher Nd, the more ideal the derivative block";
  Add3 action annotation(
    Placement(transformation(origin = {75, 0}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = unitTime/Ti, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 0)  annotation(
    Placement(transformation(origin = {-125, 0}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Continuous.Derivative derivative(k = Td/unitTime, initType =
  Modelica.Blocks.Types.Init.InitialState, x_start = 0, y_start = 0, x(start = 0), T=max([Td/Nd,
  100*Modelica.Constants.eps]))  annotation(
    Placement(transformation(origin = {-125, -125}, extent = {{-25, -25}, {25, 25}})));
  Gain proportional(k = 1)  annotation(
    Placement(transformation(origin = {-125, 125}, extent = {{-25, -25}, {25, 25}})));
  Gain P(k = k)  annotation(
    Placement(transformation(origin = {-40, 125}, extent = {{-25, -25}, {25, 25}})));
  Gain I(k = k)  annotation(
    Placement(transformation(origin = {-40, 0}, extent = {{-25, -25}, {25, 25}})));
  Gain D(k = k)  annotation(
    Placement(transformation(origin = {-40, -125}, extent = {{-25, -25}, {25, 25}})));
  Add2 add2 annotation(
    Placement(transformation(origin = {175, 0}, extent = {{-25, -25}, {25, 25}})));
  Bias bias annotation(
    Placement(transformation(origin = {125, -100}, extent = {{-25, -25}, {25, 25}})));
  Feedback feedback annotation(
    Placement(transformation(origin = {-225, 0}, extent = {{-25, -25}, {25, 25}})));
  RealOutput MV annotation(
    Placement(transformation(origin = {300, 0}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {400, 0}, extent = {{-75, -75}, {75, 75}})));
  RealInput SP annotation(
    Placement(transformation(origin = {-400, 0}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {-400, 0}, extent = {{-75, -75}, {75, 75}})));
  RealInput PV annotation(
    Placement(transformation(origin = {-225, -400}, extent = {{-50, -50}, {50, 50}}, rotation = 90), iconTransformation(origin = {0, -400}, extent = {{-75, -75}, {75, 75}}, rotation = 90)));
equation
  connect(SP, feedback.SP) annotation(
    Line(points = {{-400, 0}, {-250, 0}}, color = {0, 0, 120}));
  connect(feedback.error, integrator.u) annotation(
    Line(points = {{-210, 0}, {-155, 0}}, color = {0, 0, 120}));
  connect(PV, feedback.PV) annotation(
    Line(points = {{-225, -400}, {-225, -25}}, color = {0, 0, 120}));
  connect(feedback.error, derivative.u) annotation(
    Line(points = {{-210, 0}, {-185, 0}, {-185, -125}, {-155, -125}}, color = {0, 0, 120}));
  connect(feedback.error, proportional.u) annotation(
    Line(points = {{-210, 0}, {-185, 0}, {-185, 125}, {-150, 125}}, color = {0, 0, 120}));
  connect(integrator.y, I.u) annotation(
    Line(points = {{-95, 0}, {-65, 0}}, color = {0, 0, 127}));
  connect(derivative.y, D.u) annotation(
    Line(points = {{-95, -125}, {-65, -125}}, color = {0, 0, 127}));
  connect(proportional.y, P.u) annotation(
    Line(points = {{-100, 125}, {-65, 125}}, color = {0, 0, 120}));
  connect(P.y, action.u3) annotation(
    Line(points = {{-15, 125}, {75, 125}, {75, 31}}, color = {0, 0, 120}));
  connect(I.y, action.u1) annotation(
    Line(points = {{-15, 0}, {45, 0}}, color = {0, 0, 120}));
  connect(D.y, action.u2) annotation(
    Line(points = {{-15, -125}, {75, -125}, {75, -30}}, color = {0, 0, 120}));
  connect(action.y, add2.u1) annotation(
    Line(points = {{100, 0}, {145, 0}}, color = {0, 0, 120}));
  connect(bias.y, add2.u2) annotation(
    Line(points = {{150, -100}, {175, -100}, {175, -30}}, color = {0, 0, 120}));
  connect(add2.y, MV) annotation(
    Line(points = {{200, 0}, {300, 0}}, color = {0, 0, 120}));
  annotation(
    uses(Modelica(version = "4.1.0")),
  Icon(coordinateSystem(extent = {{-400, -400}, {400, 400}}, initialScale = 1, grid = {5, 5}), graphics = {Text( origin = {-1, 46}, extent = {{-189, 89}, {189, -89}}, textString = "PID", fontName = "Lucida Console"), Rectangle( lineThickness = 1, extent = {{400, 400}, {-400, -400}}),         
  Text(
          origin = {6.5, 5},textColor={0,0, 250},
          extent={{-256,155},{257,310}},
          textString= "k=%k Ti=%Ti"), Text(origin = {-3.5, -460}, textColor = {0, 0, 250}, extent = {{-288, 160}, {289, 320}}, textString = "Td=%Td Nd=%Nd")}),
  version = "",
  Diagram(coordinateSystem(extent = {{-400, -400}, {400, 400}}, grid = {5, 5}, initialScale = 1)),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end PID;