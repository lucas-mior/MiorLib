within MiorLib;
block Step
  parameter Real t = 1 "Time when step occurs" annotation(HideResult = true);
  parameter Real offset = 0 "Initial value before step" annotation(HideResult = true);
  parameter Real height = 1 "Amount added after step time" annotation(HideResult = true);
  RealOutput3 y annotation(
    Placement(transformation(origin = {80, 10}, extent = {{-50, -50}, {50, 50}}), iconTransformation(origin = {100, 0}, extent = {{-25, -25}, {25, 25}})));
equation
  y = if time < t then offset else offset + height;
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {5, 5}, initialScale = 1.0), graphics = {Rectangle(lineColor = {0, 0, 250}, extent = {{-100, -100}, {100, 100}}), Text(origin = {25, -155}, textColor = {200, 0, 0}, extent = {{-100, 50}, {100, 80}}, textString = "t=%t", horizontalAlignment = TextAlignment.Left), Text(origin = {10, -75}, textColor = {190, 0, 0}, extent = {{-50, 0}, {150, 30}}, textString = "H0=%offset", horizontalAlignment = TextAlignment.Left), Text(origin = {25, 115}, textColor = {190, 0, 0}, extent = {{-120, -40}, {50, -10}}, textString = "dH=%height", horizontalAlignment = TextAlignment.Left), Line(origin = {-30.7524, -9.93735}, points = {{-70, -50}, {-10, -50}, {-10, 90}, {70, 90}}, thickness = 3), Line(origin = {-61.2524, 14.3918}, points = {{0.5, 60}, {0.5, -60}, {-9.5, -60}, {10.5, -60}, {0.5, -60}, {0.5, 60}, {10.5, 60}, {-9.5, 60}, {-9.5, 60}}, color = {0, 0, 160})}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {5, 5}, initialScale = 1.0)),
    uses(Modelica(version = "4.1.0")),
  version = "");
end Step;
