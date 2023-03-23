within CDC2023.Vehicles.Chassis;

model Kinematic
  "Sedan chassis with kinematic suspensions and Pacejka02 tires"
  extends .VehicleDynamics.Vehicles.Chassis.Templates.Car(
    final icon_name="modelica://VehicleDynamics/Resources/Images/Vehicles/Chassis/SedanLKIcon.png",
    h_start=0.312,redeclare replaceable .CDC2023.Vehicles.Chassis.Suspensions.Front.Kinematic frontSuspension,redeclare replaceable .CDC2023.Vehicles.Chassis.Suspensions.Rear.Kinematic rearSuspension,
    redeclare .VehicleDynamics.Vehicles.Chassis.Bodies.Examples.Sedan body,
    redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.Examples.Pacejka02.Conventional_205_55_R17 wheel_1(redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.ContactCalculation.Generic contact(filtering = "Geometry weighted",nu = 5,phi_u = 0.78539816339744749917)),
    redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.Examples.Pacejka02.Conventional_205_55_R17 wheel_2(redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.ContactCalculation.Generic contact(filtering = "Geometry weighted",nu = 5,phi_u = 0.78539816339744749917)),
    redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.Examples.Pacejka02.Conventional_205_55_R17 wheel_3(redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.ContactCalculation.Generic contact(filtering = "Geometry weighted",nu = 5,phi_u = 0.78539816339744749917)),
    redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.Examples.Pacejka02.Conventional_205_55_R17 wheel_4(redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Wheels.ContactCalculation.Generic contact(filtering = "Geometry weighted",nu = 5,phi_u = 0.78539816339744749917)));

  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-50},{100,50}},
        grid={1,1}), graphics={
        Line(
          points={{-100,-30},{-21,-17}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{-99,0},{-57,0}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{100,-1},{60,-1}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{-30,50},{20,0}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Polygon(
          points={{9,0},{14,1},{14,0},{20,0},{20,0},{14,0},{14,-1},{9,0}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{20,0},{20,-6},{21,-6},{20,-10},{19,-6},{20,-6},{20,0},{20,0}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{19,1},{21,-1}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-57,0},{-57,-6},{-56,-6},{-57,-10},{-58,-6},{-57,-6},{-57,0},
              {-57,0}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-68,0},{-63,1},{-63,0},{-57,0},{-57,0},{-63,0},{-63,-1},{-68,
              0}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-58,1},{-56,-1}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{60,-1},{60,-7},{61,-7},{60,-11},{59,-7},{60,-7},{60,-1},{60,
              -1}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{49,-1},{54,0},{54,-1},{60,-1},{60,-1},{54,-1},{54,-2},{49,-1}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{59,0},{61,-2}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-51,-29},{-51,-35},{-50,-35},{-51,-39},{-52,-35},{-51,-35},{
              -51,-29},{-51,-29}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-62,-29},{-57,-28},{-57,-29},{-51,-29},{-51,-29},{-57,-29},{
              -57,-30},{-62,-29}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-50,-28},{-52,-30}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-50,26},{-50,20},{-49,20},{-50,16},{-51,20},{-50,20},{-50,26},
              {-50,26}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-61,26},{-56,27},{-56,26},{-50,26},{-50,26},{-56,26},{-56,25},
              {-61,26}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-51,27},{-49,25}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{46,26},{46,20},{47,20},{46,16},{45,20},{46,20},{46,26},{46,
              26}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{35,26},{40,27},{40,26},{46,26},{46,26},{40,26},{40,25},{35,
              26}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{45,27},{47,25}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{47,-29},{47,-35},{48,-35},{47,-39},{46,-35},{47,-35},{47,-29},
              {47,-29}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{36,-29},{41,-28},{41,-29},{47,-29},{47,-29},{41,-29},{41,-30},
              {36,-29}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{46,-28},{48,-30}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-60,50},{-50,26}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{-60,-50},{-50,-29}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{60,-50},{47,-29}},
          color={0,0,0},
          pattern=LinePattern.Dot),
        Line(
          points={{60,50},{47,26}},
          color={0,0,0},
          pattern=LinePattern.Dot)}),
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-50},{100,50}},
        grid={1,1}), graphics),
    Documentation(info="<html>
<p>The model is an instantiation of 
<a href=\"modelica://VehicleDynamics.Vehicles.Chassis.Templates.Car#info\">Car</a> configured 
with kinematic suspension (double wishbone front and rear) and Pacejka02 wheel 
models. Parameters are set in each sub-component.&nbsp;</p><p><span>The suspensions have been set up with high anti-dive and anti-squat to allow body attitude changes depending on how torque is distributed between the wheels.</span></p>
</html>", revisions="<html>Copyright &copy; 2004-2022, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>"));
end Kinematic;
