within CDC2023.Vehicles.Exports;
model Acceleration
    extends .CDC2023.Vehicles.Exports.Sedan(redeclare replaceable .Modelica.Blocks.Sources.Trapezoid desiredVelocity(startTime = 5,nperiod = 1,rising = 5,falling = 5,width = 5,amplitude = 15,period = 20),vehicle(v_start = 0));
end Acceleration;