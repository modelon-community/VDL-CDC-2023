within CDC2023.Vehicles.Experiments;
model FlatPad
    extends .VehicleDynamics.Vehicles.Experiments.Templates.FlatPad(redeclare replaceable .CDC2023.Vehicles.SedanInWheelMotors vehicle,redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,actuatedRig);
    .Modelica.Blocks.Sources.Constant torqueSource[4](each k=0) annotation(Placement(transformation(extent = {{-70.0,-68.0},{-50.0,-48.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Interfaces.SignalBus signalBus annotation(Placement(transformation(extent = {{-48.0,-58.0},{-28.0,-38.0}},origin = {0.0,0.0},rotation = 0.0)));
  inner Modelon.Mechanics.MultiBody.AggregateMass.AggregateMass
    aggregateMass(resolve=Modelon.Mechanics.MultiBody.Internal.AggregateMass.Types.ResolveEnumeration.RESOLVE,
      enable_aggregate=true)
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
equation
    connect(torqueSource.y,signalBus.VDL_trm_mtr_trq_cmd) annotation(Line(points = {{-49,-58},{-38,-58},{-38,-48}},color = {0,0,127}));
    connect(vehicle.signalBus,signalBus) annotation(Line(points = {{-20,-40},{-29,-40},{-29,-48},{-38,-48}},color = {255,204,51}));
  connect(aggregateMass.frame_resolve, vehicle.vehicleFrame) annotation (
      Line(
      points={{-90,80},{-90,44},{-66,44},{-66,34},{-58,34},{-58,-10},{-26,-10},
          {-26,-25},{-20,-25}},
      color={95,95,95},
      pattern=LinePattern.Dot));
    annotation(Documentation(info = "<html><p>This is a FlatPad experiment using the vehicle instead of the <a href=\"modelica://CDC2023.Vehicles.Chassis.Experiments.FlatPad\">Chassis</a>. </p><p>The total vehicle mass and inertia properties are calculated using the the&nbsp;<a href=\"modelica://Modelon.Mechanics.MultiBody.AggregateMass.AggregateMass\">AggregateMass</a>&nbsp;mass component (Note that these are resolved in the vehicleFrame). Some variables of interest are:&nbsp;</p><ul><li><span>aggregateMass.m – Total mass</span></li><li><span>aggregateMass.rr_r_CM[3] – C.g. location relative to resolve frame</span></li><li><span>aggregateMass.Ir_CM[3,3] – Inertia tensor</span></li></ul></html>"));
end FlatPad;
