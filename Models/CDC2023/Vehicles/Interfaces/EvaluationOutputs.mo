within CDC2023.Vehicles.Interfaces;

connector EvaluationOutputs "Vehicle Outputs"
    .Modelica.Blocks.Interfaces.RealOutput J_v_1 "Integral of deviation from target velocity";
    .Modelica.Blocks.Interfaces.RealOutput J_v_2 "Integral of deviation from target path";
    .Modelica.Blocks.Interfaces.RealOutput J_e "Energy consumption";

    annotation(Icon(
      coordinateSystem(preserveAspectRatio=true,
        extent={{-100.0,-100.0},{100.0,100.0}}),
        graphics={Polygon(lineColor={0,0,127},fillColor={255,255,255},fillPattern=FillPattern.Solid,points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}}),Line(origin={-40,23},points={{-36.20000000000002,-11.526075680404965},{36,11}}),Line(origin={-39,-11},points={{-1.500000000000007,33.272911914508015},{1,-33}}),Line(origin={-37.83201992511749,-43.854167103767395},points={{-39.83201992511749,-1.854167103767395},{39.83201992511749,1.854167103767395}}),Line(origin={-4,18},points={{-1.3000000000000114,16.373839952504454},{-10,-16},{10,-16},{0,16}}),Line(origin={-74,-4},points={{-1.3000000000000114,16.373839952504454},{-10,-16},{10,-16},{0,16}})}));
end EvaluationOutputs;
