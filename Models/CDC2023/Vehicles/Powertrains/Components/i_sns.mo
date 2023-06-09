within CDC2023.Vehicles.Powertrains.Components;

model i_sns "Sensed machine current"
    extends .Electrification.Machines.Control.Signals.Templates.SignalReal(causality = .Electrification.Utilities.Types.Causality.Output,unit = "A");
equation
    connect(s,componentBus.i) annotation(Line(points = {{-24,0},{-2,0},{-2,0},{20,0}},color = {0,0,127}));
end i_sns;
