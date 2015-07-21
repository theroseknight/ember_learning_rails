require 'json'

task :create_vehicles => :environment do
=begin
Creates a hash that mimics the following structure from a csv download accesable at www.fueleconomy.gov
  var makesInformation={
    "1984":
      {
        "make1":["model1","model2","model3"],
        "make2":["model4","model5","model6"],
        "make3":["model7","model8","model9"]
      },
    "1985":
      {
        "make4":["model10","model11","model12"],
        "make5":["model13","model14","model15"],
        "make6":["model16","model17","model18"]
      }
  }
=end

  file_raw = Rails.root.join("vehicle_csv/vehicles.csv")
  file_contents = file_raw.read
  process_file = StringIO.new(file_contents)
  lines = SmarterCSV.process(process_file,{})

  makes_information = {}

  lines.each do |vehicle|
    if makes_information.has_key?(vehicle[:year].to_s)
      if makes_information[vehicle[:year].to_s].has_key?(vehicle[:make].to_s)
        if makes_information[vehicle[:year].to_s][vehicle[:make].to_s].include?(vehicle[:model])
        else
          makes_information[vehicle[:year].to_s][vehicle[:make].to_s].push(vehicle[:model].to_s).sort!
          Vehicle.create(
            city_mpg:vehicle[:city08],
            fuel_type:vehicle[:fueltype],
            highway_mpg:vehicle[:highway08],
            api_id_number:vehicle[:id],
            make:vehicle[:make],
            model:vehicle[:model],
            year:vehicle[:year]
          )
        end
      else
        makes_information[vehicle[:year].to_s][vehicle[:make].to_s] = []
        if makes_information[vehicle[:year].to_s][vehicle[:make].to_s].include?(vehicle[:model])
        else
          makes_information[vehicle[:year].to_s][vehicle[:make].to_s].push(vehicle[:model].to_s).sort!
          Vehicle.create(
            city_mpg:vehicle[:city08],
            fuel_type:vehicle[:fueltype],
            highway_mpg:vehicle[:highway08],
            api_id_number:vehicle[:id],
            make:vehicle[:make],
            model:vehicle[:model],
            year:vehicle[:year]
          )
        end
      end
    else
      makes_information[vehicle[:year].to_s] = {}
      makes_information[vehicle[:year].to_s][vehicle[:make].to_s] = []
      if makes_information[vehicle[:year].to_s][vehicle[:make].to_s].include?(vehicle[:model])
      else
        makes_information[vehicle[:year].to_s][vehicle[:make].to_s].push(vehicle[:model].to_s).sort!
        Vehicle.create(
          city_mpg:vehicle[:city08],
          fuel_type:vehicle[:fueltype],
          highway_mpg:vehicle[:highway08],
          api_id_number:vehicle[:id],
          make:vehicle[:make],
          model:vehicle[:model],
          year:vehicle[:year]
        )
      end
    end

  end

  makes_information.each do |key, value|
    value = value.sort_by{ |k, v| k }.to_h
  end

  File.open(Rails.root.join("vehicle_csv/vehicle-info.js"), 'w') do |file|
    file.write("var makesInformation=")
    file.write(makes_information.to_json)
  end
end
