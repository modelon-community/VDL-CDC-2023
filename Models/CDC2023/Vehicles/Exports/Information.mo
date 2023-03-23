within CDC2023.Vehicles.Exports;
model Information
    extends Modelica.Icons.Information;
    annotation(DocumentationClass=true,Documentation(info = "<html><p>This package contains export models which have interfaces to enable the use of external controllers. The inputs to these export models are:</p><ul><li>phi_str: Steering wheel angle</li><li>tau_FL: In wheel motor torque front left</li><li>tau_FR: In wheel motor torque front right</li><li>tau_RL: In wheel motor torque rear left</li><li>tau_RR: In wheel motor torque rear right</li></ul><p>The driver, evaluation and vehicle model&nbsp;outputs from the model are defined using the&nbsp;<a href=\"modelica://CDC2023.Vehicles.Interfaces.DriverOutputs\">DriverOutputs</a>,&nbsp;<a href=\"modelica://CDC2023.Vehicles.Interfaces.EvaluationOutputs\">EvaluationOutputs</a>&nbsp;and&nbsp;<a href=\"modelica://CDC2023.Vehicles.Interfaces.VehicleOutputs\">VehicleOutputs</a>&nbsp;connectors respectively.</p><p>The list of output signals is defined in these connector components.</p><p>The available export models differ in terms of the ground model and target velocity set for the&nbsp;<a href=\"modelica://CDC2023.Vehicles.Sensors.DriverCommands\">DriverCommands</a>&nbsp;block inside:</p><ul><li><a href=\"modelica://CDC2023.Vehicles.Exports.Sedan\">Sedan</a>: Flat ground with constant longitudinal velocity</li><li><a href=\"modelica://CDC2023.Vehicles.Exports.DoubleLaneChange\">DoubleLaneChange</a>:&nbsp;<a href=\"modelica://CDC2023.Grounds.OpenCRGUneven\">OpenCRGUneven</a>&nbsp;ground to define a double lane change manoeuvre and constant longitudinal velocity</li><li><a href=\"modelica://CDC2023.Vehicles.Exports.Acceleration\">Acceleration</a>:&nbsp;<a href=\"modelica://CDC2023.Grounds.OpenCRGUneven\">OpenCRGUneven</a>&nbsp;ground to define a straight line manoeuvre and longitudinal acceleration and deceleration of ~0.3g</li><li><a href=\"modelica://CDC2023.Vehicles.Exports.DoubleLaneChangeMap\">DoubleLaneChangeMap</a>:&nbsp;<a href=\"modelica://CDC2023.Grounds.WavyUneven\">WavyUneven</a>&nbsp;ground to define a double lane change manoeuvre and constant longitudinal velocity</li><li><a href=\"modelica://CDC2023.Vehicles.Exports.AccelerationMap\">AccelerationMap</a>:&nbsp;<a href=\"modelica://CDC2023.Grounds.WavyUneven\">WavyUneven</a> ground to define a straight line manoeuvre and longitudinal acceleration and deceleration of ~0.3g</li></ul></html>"));
end Information;
