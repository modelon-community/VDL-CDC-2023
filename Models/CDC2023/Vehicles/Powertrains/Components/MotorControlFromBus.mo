within CDC2023.Vehicles.Powertrains.Components;

model MotorControlFromBus "Simple proportional throttle torque controller"
  extends .VehicleDynamics.Vehicles.Powertrains.ControlUnits.Electric.Interfaces.Base(final number_of_motors = 4,final k_throttle = 0,enable_shift = false);

  .Electrification.Machines.Control.Signals.tau_ref input_tau_ref[number_of_motors](
    id=1:number_of_motors)
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-54,20})));
    .Modelon.Mechanics.Translational.Normalized.Fixed fixed annotation(Placement(transformation(extent = {{-70,76},{-50,96}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Sources.Constant const(k = 2000) annotation(Placement(transformation(extent = {{6.0,-6.0},{-6.0,6.0}},rotation = 180.0,origin = {-36.0,-16.0})));
equation
  for i in 1:number_of_motors loop
    connect(input_tau_ref[i].systemBus, controlBus) annotation (Line(
        points={{-60,20},{-100,20},{-100,0}},
        color={240,170,40},
        pattern=LinePattern.Dot,
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
  end for;
  connect(input_tau_ref[1:number_of_motors].u_r,signalBus.VDL_trm_mtr_trq_cmd[1:number_of_motors]) annotation(Line(points = {{-45,20},{-22.5,20},{-22.5,80},{0,80}},color = {0,0,127}));
    connect(fixed.flange_a,acceleratorPedalFlange) annotation(Line(points = {{-60,86},{-60,100}},color = {0,127,0}));
    connect(const.y,signalBus.VDL_eng_spd_rpm) annotation(Line(points = {{-29.4,-16},{0,-16},{0,80}},color = {0,0,127}));

  annotation(Documentation(info="<html>
<p>
This is a simple motor torque controller for VDL powertrains using Electrification Library
components. The throttle input is multiplied by the <b>k_throttle</b> parameter (typically
the maximum motor torque) which is used as a torque command for each motor, with the number of
motors defined by the <b>number_of_motors</b> parameter.
</p>
<p>
Automatic transmission functionality is included using a <b>gear_map</b> for a single speed
transmission allowing the use of Parking, Reverse, Neutral and Drive modes.
</p>
</html>", revisions="<html>Copyright &copy; 2004-2022, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>"));
end MotorControlFromBus;
