within CDC2023.Vehicles.Chassis.Experiments;

model FlatPad "Flat pad with compact chassis"
  extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.FlatPad(
    zoom=1.1,redeclare replaceable .CDC2023.Vehicles.Chassis.Kinematic chassis(enable_inertial_states = false),
    redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,fixedRig(enable_states = true,zPosition(s(start = chassis.h_start))));
annotation (
    __Dymola_Commands(
      executeCall=
        .VehicleDynamics.Vehicles.Chassis.Experiments.Examples.Commands.visualize()
        "Visualize"),
   experiment(StopTime=10, __Dymola_Algorithm="Radau"),
   Documentation(info="<html>
<p>The flatpad simulation is a simulation of the chassis sitting stationary on a flat plate/ground. 
The chassis is constrained from moving laterally, longitudinally and in yaw by the fixedRig robot. 
The steering is also locked by inputting a constant zero steer input into the steerRobot.</p>
<p>This type of simulation is useful to look at the static balance of the car. This allows 
you to adjust spring preloads as necessary to trim the chassis due to either 
changing payloads or changes in spring rates. This is also a good simulation to use to evaluate 
the static toe and camber of the vehicle.</p>
<p>By changing the steering input to a different source, the steering effect on the chassis 
can also be characterized.</p>
</html>", revisions="<html>Copyright &copy; 2004-2022, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>"));
end FlatPad;
