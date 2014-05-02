=begin

class WelcomeController < ApplicationController
  def index
    @stations = Station.take(10)
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow station.name
      marker.json({ :name => station.name, :address => station.street_address})
    end
  end
end

=end

class WelcomeController < ApplicationController
  def index
    city = request.location.city
    country = request.location.country_code

    params[:user_location] = "#{city}, #{country}"

    params[:fuel_type_id] = 1
    ftid = params[:fuel_type_id]
    @location = "San Francisco"

    #@price_87 = Hash.new
    #@price_89 = Hash.new
    #@price_91 = Hash.new
    #@price_diesel = Hash.new
    #@stations_with_all_prices = Hash.new
    #@stations_with_all_prices = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id = 1 OR station_fuel_types.fuel_type_id = 2 OR station_fuel_types.fuel_type_id = 3 OR station_fuel_types.fuel_type_id = 4').near(@location, 25)
    #@stations_with_all_prices.each_with_index do |station, i|
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '1'))
        #@price_87[station.id] = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '2'))
        #@price_89[station.id] = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '3'))
        #@price_91[station.id] = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '4'))
        #@price_diesel[station.id] = '%.2f' % sft.price.price
      #end
    #end


    @stations = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id' => ftid).last(20)
    @ft = "87 Octane"

    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      prices = Array.new(4)
      price = '%.2f' % station.station_fuel_types.first.price.price
      #logger.debug(price)

      station.station_fuel_types.each { |sft|
        #logger.debug "Station Fuel Type #{sft.id} present with price $#{sft.price.price}"
        prices[sft.fuel_type_id-1] = '%.2f' % sft.price.price
      }

      regular = prices[0]
      mid = prices[1]
      premium = prices[2]
      diesel = prices[3]

      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow "<strong>#{station.name}</strong><br>#{station.address}" + 
      "<table id='infowindow_table'>
      <tr>
      <th>87 Octane</th>
      <th>89 Octane</th>
      <th>91 Octane</th>
      <th>Diesel</th>
      </tr>
      <tr>
      <td>$#{regular}</td>
      <td>$#{mid}</td>
      <td>$#{premium}</td>
      <td>$#{diesel}</td>
      </tr>
      </table>"
      marker.json({ :name => station.name, :address => station.address, :price => price, :id => station.id})
    end
  end
end
