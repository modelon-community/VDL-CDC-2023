within CDC2023.Vehicles.Powertrains;

model v_pack "Cell voltage (min/max/avg)"
  extends .Electrification.Batteries.Control.Signals.Templates.SignalReal(
    causality=.Electrification.Utilities.Types.Causality.Output);

protected
equation
    connect(s,componentBus.v_pack) annotation(Line(points = {{-24,0},{-2,0},{-2,0},{20,0}},color = {0,0,127}));
end v_pack;
