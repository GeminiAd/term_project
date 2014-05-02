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
                             phone: "(415) 957-1754" },
                           { name: "Bryant Shell", company: "Shell", address: "598 Bryant St", city: "San Francisco",
                             state: "California", zip: 94107, country: "United States", url: "http://shell.com",
                             phone: "(415) 495-5833" },
                           { name: "Moscone Center Shell", company: "Shell", address: "300 5th St", city: "San Francisco",
                             state: "California", zip: 94107, country: "United States", url: "http://shell.com",
                             phone: "(415) 974-1088" },
                           { name: "Chevron", company: "Chevron", address: "1000 Harrison St", city: "San Francisco",
                             state: "California", zip: 94103, country: "United States", url: "http://chevron.com",
                             phone: "(415) 863-3001" },
                           { name: "Harrison Shell", company: "Shell", address: "1201 Harrison St", city: "San Francisco",
                             state: "California", zip: 94103, country: "United States", url: "http://shell.us",
                             phone: "(415) 621-5542" },
                           { name: "Chevron San Francisco", company: "Chevron", address: "1298 Howard St",
                             city: "San Francisco", state: "California", zip: 94103, country: "United States",
                             url: "http://chevronwithtechron.com", phone: "(415) 575-0290" },
                           { name: "Chevron San Francisco", company: "Chevron", address: "1601 Mission St",
                             city: "San Francisco", state: "California", zip: 94103, country: "United States",
                             url: "http://chevronwithtechron.com", phone: "(415) 558-9274" },
                           { name: "ARCO", company: "ARCO", address: "1798 Mission St", city: "San Francisco",
                             state: "California", zip: 94103, country: "United States", url: "http://arco.com",
                             phone: "(415) 437-1947" },
                           { name: "ARCO", company: "ARCO", address: "1175 Fell St", city: "San Francisco",
                             state: "California", zip: 94117, country: "United States", url: "http://arco.com",
                             phone: "(415) 431-3515" },
                           { name: "Shell", company: "Shell", address: "1070 Oak St", city: "San Francisco",
                             state: "California", zip: 94117, country: "United States", url: "http://shell.com",
                             phone: "(415) 864-3231" },
                           { name: "Performance Shell", company: "Shell", address: "388 Potrero Ave", city: "San Francisco",
                             state: "California", zip: 94103, country: "United States", url: "http://shell.com",
                             phone: "(415) 626-4238" },
                           { name: "Evans Chevron", company: "Chevron", address: "3750 3rd St", city: "San Francisco",
                             state: "California", zip: 94124, country: "United States", 
                             url: "http://chevronwithtechron.com", phone: "(415) 285-5839" },
                           { name: "Evans 76", company: "76", address: "3800 3rd St", city: "San Francisco",
                             state: "California", zip: 94124, country: "United States", url: "http://76.com" },
                           { name: "ARCO", company: "ARCO", address: "151 Southgate Ave", city: "San Francisco",
                             state: "California", zip: 94015, country: "United States", url: "http://arco.com",
                             phone: "(650) 755-4878" },
                           { name: "Chevron", company: "Chevron", address: "892 John Daly Blvd", city: "Daly City",
                             state: "California", zip: 94015, country: "United States", url: "http://chevronwithtechron.com" },
                           { name: "ARCO", company: "ARCO", address: "295 Washington St", city: "Daly City", state: "California",
                             zip: 94015, country: "United States", url: "http://arco.com", phone: "(650) 756-4040" },
                           { name: "Sullivan Valero", company: "Valero", address: "1690 Sullivan Ave", city: "Daly City",
                             state: "California", zip: 94015, country: "United States", url: "http://valero.com",
                             phone: "(650) 992-4013" },
                           { name: "Chevron", company: "Chevron", address: "2998 San Jose Ave", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://chevronwithtechron.com",
                             phone: "(415) 585-0775" },
                           { name: "ARCO", company: "ARCO", address: "5898 Mission St", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://arco.com",
                             phone: "(415) 584-2266" },
                           { name: "Geneva Shell", company: "Shell", address: "2200 Alemany Blvd", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://shell.com",
                             phone: "(415) 586-3295" },
                           { name: "Chevron ExtraMile", company: "Chevron", address: "5098 Mission St", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://chevronwithtechron.com",
                             phone: "(415) 337-9887" },
                           { name: "ARCO", company: "ARCO", address: "1200 Geneva Ave", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://arco.com",
                             phone: "(415) 585-6988" },
                           { name: "Best Auto Care", company: "Best", address: "2099 San Jose Ave", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", phone: "(415) 334-7585" },
                           { name: "Will's Super Shell", company: "Shell", address: "4298 Mission St", city: "San Francisco",
                             state: "California", zip: 94112, country: "United States", url: "http://shell.com" },
                           { name: "Valencia Unocal 76", company: "76", address: "1298 Valencia St", city: "San Francisco",
                             state: "California", zip: 94110, country: "United States", url: "http://76.com",
                             phone: "(415) 643-4304" },
                           { name: "Flyers", company: "Flyers", address: "3300 Cesar Chavez St", city: "San Francisco",
                             state: "California", zip: 94110, country: "United States", phone: "(415) 282-1355" },
                           { name: "Alianza Services Station", address: "2901 Bryant St", city: "San Francisco",
                             state: "California", zip: 94110, country: "United States", phone: "(415) 648-3669" },
                           { name: "American Gas", address: "2831 Cesar Chavez St", city: "San Francisco", state: "California",
                             zip: 94110, country: "United States", phone: "(415) 826-8855" },
                           { name: "Chevron San Francisco", company: "Chevron", address: "101 Bayshore Blvd", city: "San Francisco",
                             state: "California", zip: 94124, country: "United States", url: "http://chevronwithtechron",
                             phone: "(415) 826-7290" },
                           { name: "Mission Shell", company: "Shell", address: "3550 Mission St", city: "San Francisco",
                             state: "California", zip: 94110, country: "United States", url: "http://shell.com",
                             phone: "(415) 648-3551" },
                           { name: "Bayshore Shell", company: "Shell", address: "319 Bayshore Blvd", city: "San Francisco",
                             state: "California", zip: 94124, country: "United States", url: "http://shell.com",
                             phone: "(415) 824-4855" },
                           { name: "Silver Gas & Diesel", address: "2400 San Bruno Ave", city: "San Francisco",
                             state: "California", zip: 94134, country: "United States", phone: "(415) 715-6816" },
                           { name: "Double AA Corp 76 Gas Station", company: "76", address: "975 Bayshore Blvd",
                             city: "San Francisco", state: "California", zip: 94124, country: "United States",
                             url: "http://76.com", phone: "(415) 330-9695" },
                           { name: "ARCO", company: "ARCO", address: "2190 Carroll Ave", city: "San Francisco",
                             state: "California", zip: 94124, country: "United States", url: "http://arco.com",
                             phone: "(415) 468-0446" },
                           { name: "Bayshore Chevron Auto Service", company: "Chevron", address: "2690 Bayshore Blvd",
                             city: "San Francisco", state: "California", zip: 94014, country: "United States",
                             url: "http://chevronwithtechron.com", phone: "(415) 330-9888" },
                           { name: "7-Eleven", company: "7-Eleven", address: "2700 Bayshore Blvd", city: "San Francisco",
                             state: "California", zip: 94014, country: "United States", url: "http://7-eleven.com",
                             phone: "(415) 467-6984" },
                           { name: "Flyers", company: "Flyers", address: "2195 Junipero Serra Blvd", city: "Daly City",
                             state: "California", zip: 94014, country: "United States", phone: "(650) 757-7477" },
                           { name: "Shell", company: "Shell", address: "950 Hillside Blvd", city: "Daly City",
                             state: "California", zip: 94014, country: "United States", url: "http://shell.com",
                             phone: "(650) 755-2108" },
                           { name: "5 Star Gas & Diesel", address: "1216 Hillside Blvd", city: "Daly City", state: "California",
                             zip: 94014, country: "United States", phone: "(650) 731-4365" }
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
           [ 4.51, 4.63, 4.73, 0    ],
           [ 4.49, 4.59, 4.69, 4.19 ],
           [ 4.59, 4.69, 4.79, 0    ],
           [ 4.35, 4.43, 4.49, 4.19 ],
           [ 4.35, 4.41, 4.49, 4.19 ],
           [ 4.35, 4.43, 4.51, 4.19 ],
           [ 4.37, 4.45, 4.53, 0    ],
           [ 4.15, 4.25, 4.35, 0    ],
           [ 4.09, 4.19, 4.29, 0    ],
           [ 4.66, 4.76, 4.86, 0    ],
           [ 4.33, 4.43, 4.53, 0    ],
           [ 4.23, 4.33, 4.43, 4.09 ],
           [ 4.23, 4.33, 4.43, 0    ],
           [ 4.19, 4.29, 4.39, 0    ],
           [ 4.35, 4.43, 4.51, 0    ],
           [ 4.34, 4.44, 4.54, 4.29 ],
           [ 4.39, 4.49, 4.59, 4.29 ],
           [ 4.33, 4.41, 4.49, 0    ],
           [ 4.09, 4.19, 4.27, 0    ],
           [ 4.33, 4.43, 4.53, 4.19 ],
           [ 4.33, 4.43, 4.53, 4.19 ],
           [ 4.09, 4.19, 4.29, 0    ],
           [ 4.25, 4.35, 4.45, 0    ],
           [ 4.28, 4.39, 4.49, 0    ],
           [ 4.29, 4.39, 4.49, 0    ],
           [ 4.28, 4.40, 4.48, 4.34 ],
           [ 4.25, 0   , 4.49, 0    ],
           [ 4.29, 4.39, 4.49, 4.35 ],
           [ 4.35, 4.45, 4.55, 0    ],
           [ 4.33, 4.43, 4.53, 4.19 ],
           [ 4.35, 4.45, 4.55, 0    ],
           [ 4.19, 4.29, 4.41, 4.15 ],
           [ 4.39, 4.49, 4.59, 0    ],
           [ 4.19, 4.27, 4.37, 0    ],
           [ 4.39, 4.49, 4.59, 0    ],
           [ 4.35, 4.46, 4.56, 4.29 ],
           [ 4.28, 4.36, 4.46, 0    ],
           [ 4.29, 4.37, 4.45, 4.19 ],
           [ 4.19, 4.29, 4.49, 0    ]
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
