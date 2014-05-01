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
                             state: "California", zip: 94116, country: "United States" },
                           { name: "Flyers", company: "Flyers", address: "2301 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94116, country: "United States", phone: "(415) 731-9540" },
                           { name: "Flyers", company: "Flyers", address: "2000 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94116, country: "United States", phone: "(415) 564-1078" },
                           { name: "Precise Chevron", company: "Chevron", address: "1890 19th Avenue",
                             city: "San Francisco", state: "California", zip: 94122, country: "United States",
                             url: "http://www.chevron.com", phone: "(415) 731-2733" },
                           { name: "19th Ave 76 West", company: "76", address: "1401 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94122, country: "United States", url: "http://19thave76.com/",
                             phone: "(415) 681-4336" },
                           { name: "19th Ave 76 East", company: "76", address: "1400 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94122, country: "United States", url: "http://19thave76.com/",
                             phone: "(415) 681-3860" },
                           { name: "Chevron", company: "Chevron", address: "1288 19th Avenue", city: "San Francisco",
                             state: "California", zip: 94122, country: "United States", 
                             url: "http://www.chevronwithtechron.com/", phone: "(415) 731-1044" },
                           { name: "Richmond's Shell", company: "Shell", address: "4501 Geary Blvd", city: "San Francisco",
                             state: "California", zip: 94118, country: "United States", url: "http://www.shell.com",
                             phone: "(415) 221-0424" },
                           { name: "Fell & Masonic Chevron Station San Francisco", company: "Chevron", 
                             address: "1698 Fell Street", city: "San Francisco", state: "California", zip: 94117,
                             country: "United States", url: "http://www.chevronwithtechron.com/", phone: "(415) 921-8188" },
                           { name: "Chevron San Francisco", company: "Chevron", address: "1100 Junipero Serra Blvd",
                             city: "San Francisco", state: "California", zip: 94132, country: "United States",
                             url: "http://www.chevronwithtechron.com/", phone: "(415) 584-4565" },
                           { name: "Double A Corporation", company: "Double A Corporation", address: "1101 Juniperro Serra Blvd",
                             city: "San Francisco", state: "California", zip: 94132, country: "United States",
                             phone: "(415) 586-2926" },
                           { name: "T&R 76", company: "76", address: "3898 California St", city: "San Francisco",
                             state: "California", zip: 94118, country: "United States", url: "http://76.com",
                             phone: "(415) 752-0646" },
                           { name: "Chevron Station San Francisco", company: "Chevron", address: "2500 California St",
                             city: "San Francisco", state: "California", zip: 94115, country: "United States", 
                             url: "http://www.chevronwithtechron.com/", phone: "(415) 567-1136" },
                           { name: "Shell Gas Station", company: "Shell", address: "2501 California St",
                             city: "San Francisco", state: "California", zip: 94115, country: "United States",
                             url: "http://shell.com", phone: "(415) 567-6512" },
                           { name: "Chevron", company: "Chevron", address: "1501 Van Ness Ave", city: "San Francisco",
                             state: "California", zip: 94109, country: "United States", url: "http://chevronwithtechron.com",
                             phone: "(415) 441-3518" },
                           { name: "Lombard Valero", company: "Valero", address: "2601 Lombard St", city: "San Francisco",
                             state: "California", zip: 94123, country: "United States", url: "http://valero.com",
                             phone: "(415) 921-1132" },
                           { name: "Lombard Union 76", company: "76", address: "2498 Lombard St", city: "San Francisco",
                             state: "California", zip: 94123, country: "United States", url: "http://76.com",
                             phone: "(415) 931-4040" },
                           { name: "Lombard Shell", company: "Shell", address: "1800 Lombard St", city: "San Francisco",
                             state: "California", zip: 94123, country: "United States", url: "http://shell.com" },
                           { name: "Chevron ExtraMile", company: "Chevron", address: "1790 Lombard St",
                             city: "San Francisco", state: "California", zip: 94123, country: "United States",
                             url: "http://chevronwithtechron.com", phone: "(415) 922-4922" },
                           { name: "Fisherman's Wharf Union 76", company: "76", address: "490 Bay St", city: "San Francisco",
                             state: "California", zip: 94133, country: "United States", url: "http://76.com",
                             phone: "(415) 771-7730" },
                           { name: "Downtown 76", company: "76", address: "390 1st St", city: "San Francisco",
                             state: "California", zip: 94105, country: "United States", url: "http://76.com",
                             phone: "(415) 957-1754" }
                          ])

fuel_types = FuelType.create([ { name: "Regular", description: "87 Octane" },
                               { name: "Mid", description: "89 Octane" },
                               { name: "Premium", description: "91 Octane" },
                               { name: "Diesel", description: "Trucker's favorite"    } 
                             ])

# Note: rows correspond to stations, columns correspond to fuel_types
#       0 means the station doesn't carry that fuel type
prices = [ [ 4.31, 4.45, 4.55, 0    ],
           [ 4.29, 4.39, 4.49, 0    ],
           [ 4.20, 4.40, 4.52, 0    ],
           [ 4.09, 4.19, 4.29, 0    ],
           [ 4.29, 4.37, 4.45, 0    ],
           [ 4.25, 4.33, 4.41, 4.19 ],
           [ 4.15, 4.27, 4.27, 4.26 ],
           [ 4.15, 4.27, 4.27, 4.26 ],
           [ 4.29, 4.37, 4.45, 4.19 ],
           [ 4.21, 4.37, 4.41, 4.25 ],
           [ 4.21, 4.37, 4.41, 4.25 ],
           [ 4.25, 4.33, 4.41, 0    ],
           [ 4.27, 4.37, 4.47, 0    ],
           [ 4.39, 4.49, 4.59, 4.39 ],
           [ 4.29, 4.37, 4.45, 0    ],
           [ 4.69, 4.79, 4.89, 4.15 ],
           [ 4.58, 4.69, 4.79, 0    ],
           [ 4.34, 4.41, 4.59, 0    ],
           [ 4.35, 4.41, 4.49, 0    ],
           [ 4.35, 4.43, 4.51, 4.19 ],
           [ 4.59, 4.69, 4.79, 0    ],
           [ 4.33, 4.49, 4.59, 0    ],
           [ 4.33, 4.43, 4.49, 4.19 ],
           [ 4.35, 4.43, 4.49, 4.23 ],
           [ 4.51, 4.63, 4.73, 0    ],
           [ 4.51, 4.63, 4.73, 0    ]
         ]

station_fuel_types = Array.new
stations.each_index { |i|
  fuel_types.each_index { |j|
    
    if prices[i][j] != 0
      station_fuel_type = StationFuelType.create([{ station_id: stations[i].id, fuel_type_id: fuel_types[j].id  }])
      station_fuel_types.push(station_fuel_type)

      Price.create(station_fuel_type_id: station_fuel_type.first.id, price: prices[i][j], time: Time.now.utc.to_s)
    end
  }
}
