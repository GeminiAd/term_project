# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
stations = Station.create([{ name: "Claremont Service Station", company: "Valero", address: "301 Claremont Boulevard",
                             city: "San Francisco", state: "California", zip: 94127, country: "United States",
                             url: "http://www.claremontservicestation.com/", phone: "(415) 664-5401",
                             email: "claremontservicestation@gmail.com" },
                           { name: "West Portal AUTO Services", company: "76", address: "800 Ulloa St.",
                             city: "San Francisco", state: "California", zip: 94127, country: "United States",
                             phone: "(415) 664-8563" },
                           { name: "Ocean Avenue Service Station", address: "1490 Ocean Ave.", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://www.mycargirl.com/",
                             phone: "(415) 586-0265" },
                           { name: "Valero", company: "Valero", address: "1799 Ocean Avenue", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://www.valero.com",
                             phone: "(415) 334-1353" },
                           { name: "Sam Truong's Unocal 76", company: "76", address: "1855 Taraval Street",
                             city: "San Francisco", state: "California", zip: 94116, country: "United States",
                             url: "http://www.76.com", phone: "(415) 753-5897" },
                           { name: "Shell", company: "Shell", address: "2399 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94116, country: "United States" }])

fuel_types = FuelType.create([ { name: "87 Octane", description: "Test" },
                               { name: "89 Octane", description: "Test" },
                               { name: "91 Octane", description: "Test" } ])

# Note: rows correspond to stations, columns correspond to fuel_types
prices = [ [ 4.31, 4.45, 4.55 ],
           [ 4.29, 4.39, 4.49 ],
           [ 4.30, 4.40, 4.52 ],
           [ 4.29, 4.39, 4.27 ],
           [ 4.25, 4.35, 4.43 ],
           [ 4.29, 4.37, 4.45 ] ]

station_fuel_types = Array.new
stations.each_index { |i|
  fuel_types.each_index { |j|
    station_fuel_type = StationFuelType.create([{ station_id: stations[i].id, fuel_type_id: fuel_types[j].id  }])
    station_fuel_types.push(station_fuel_type)

    Price.create(station_fuel_type_id: station_fuel_type.first.id, price: prices[i][j], time: Time.now.utc.to_s)
  }
}
