within MiorLib;
block Step
  parameter Real t = 1 "Time when step occurs";
  parameter Real offset = 0 "Initial value before step";
  parameter Real height = 1 "Amount added after step time";
equation
  y = if time < t then offset else offset + height;
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-140, -140}, {140, 140}}), graphics = {Rectangle(lineColor = {0, 0, 250}, extent = {{-140, -140}, {140, 140}}), Text(origin = {20, -160}, textColor = {200, 0, 0}, extent = {{-100, 50}, {100, 80}}, textString = "t=%t", horizontalAlignment = TextAlignment.Left), Text(origin = {10, -70}, textColor = {190, 0, 0}, extent = {{-50, 0}, {120, 30}}, textString = "H0=%offset", horizontalAlignment = TextAlignment.Left), Text(origin = {10, 130}, textColor = {190, 0, 0}, extent = {{-120, -40}, {50, -10}}, textString = "dH=%height", horizontalAlignment = TextAlignment.Left), Line(origin = {-30.7524, -9.93735}, points = {{-70, -50}, {-10, -50}, {-10, 90}, {70, 90}}, thickness = 3), Line(origin = {-61.2524, 14.3918}, points = {{0.5, 60}, {0.5, -60}, {-9.5, -60}, {10.5, -60}, {0.5, -60}, {0.5, 60}, {10.5, 60}, {-9.5, 60}, {-9.5, 60}}, color = {0, 0, 160})}),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
    uses(Modelica(version = "4.1.0")),
  version = "");
end Step;