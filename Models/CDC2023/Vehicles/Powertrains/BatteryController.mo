within CDC2023.Vehicles.Powertrains;
model BatteryController
    extends .Electrification.Batteries.Control.LimitsFixed(
      SoC_max=1,
      SoC_high=0.9,
      SoC_low=0.1,
      SoC_min=0);
    .CDC2023.Vehicles.Powertrains.v_pack v_pack(causality = Electrification.Utilities.Types.Causality.Input) annotation(Placement(transformation(extent = {{48.0,58.0},{40.0,66.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(v_pack.u_r,electrical.core_v_sns) annotation(Line(points = {{50,62},{86,62},{86,-60},{100,-60}},color = {0,0,127}));
    connect(v_pack.systemBus,controlBus) annotation(Line(points = {{40,62},{20,62},{20,100},{0,100}},color = {240,170,40},pattern = LinePattern.Dot));
end BatteryController;
