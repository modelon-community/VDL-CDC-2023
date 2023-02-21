within CDC2023.Vehicles.Exports;
      
      model DoubleLaneChangeMap
        extends .CDC2023.Vehicles.Exports.Sedan(redeclare replaceable .CDC2023.Grounds.WavyUneven ground(file_name = .Modelica.Utilities.Files.loadResource("modelica://VehicleDynamics/Resources/Data/Roads/Examples_DoubleLaneChange.mat"), xlims = {-5, 200}, ylims = {-4, 4}), vehicle(r_y_start = -2));
      end DoubleLaneChangeMap;
