within CDC2023.Vehicles.Interfaces;
connector DriverOutputs "Vehicle Outputs"
    .Modelica.Blocks.Interfaces.RealOutput str_cmd(final quantity="Angle", final unit="rad") "Closed loop driver steering command";
    .Modelica.Blocks.Interfaces.RealOutput brk_cmd "Closed loop driver brake command";
    .Modelica.Blocks.Interfaces.RealOutput acc_cmd "Closed loop driver accelerator command";

    .Modelica.Blocks.Interfaces.RealOutput vV_P_x[2](final quantity="Velocity", final unit="m/s") "Closed loop driver pathPoint reference velocity at t[k] t[k-1]";

    .Modelica.Blocks.Interfaces.RealOutput rV_x(final quantity="Length", final unit="m") "Closed loop driver pathPoint x position";
    .Modelica.Blocks.Interfaces.RealOutput rV_y(final quantity="Length", final unit="m") "Closed loop driver pathPoint y position";

    .Modelica.Blocks.Interfaces.RealOutput previewDistance[2](final quantity="Length", final unit="m") "Closed loop driver preview distance";

    .Modelica.Blocks.Interfaces.RealOutput previewTime[2](final quantity="Time", final unit="s") "Closed loop driver preview distance";

    .Modelica.Blocks.Interfaces.RealOutput previewDistance_y(final quantity="Length", final unit="m") "Lateral tracker preview distance";

    .Modelica.Blocks.Interfaces.RealOutput previewTime_y(final quantity="Time", final unit="s") "Lateral tracker preview distance";

    .Modelica.Blocks.Interfaces.RealOutput v_veh_percepts(final quantity="Velocity", final unit="m/s")
    "Closed loop driver percepted vehicle speed";
    .Modelica.Blocks.Interfaces.RealOutput vV_x_percepts(final quantity="Velocity", final unit="m/s")
    "Closed loop driver percepted vehicle speed in x";
    .Modelica.Blocks.Interfaces.RealOutput vV_y_percepts(final quantity="Velocity", final unit="m/s")
    "Closed loop driver percepted vehicle speed in y";
    .Modelica.Blocks.Interfaces.RealOutput vV_P_x_percepts(final quantity="Velocity", final unit="m/s")
    "Closed loop driver percepted vehicle speed along path in x";

    annotation(Icon(
      coordinateSystem(preserveAspectRatio=true,
        extent={{-100.0,-100.0},{100.0,100.0}}),
        graphics={Polygon(lineColor={0,0,127},fillColor={255,255,255},fillPattern=FillPattern.Solid,points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}}),Bitmap(fileName="modelica://VehicleDynamics/Resources/Images/Drivers/StandardIcon.png",origin={-36,10},extent={{-68,51},{68,-51}},rotation=180)}));
end DriverOutputs;
