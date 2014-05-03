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
   
    max_results = 10
    distance = 5
    ftid = 1
    @location = "San Francisco"

    @stations = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id' => ftid).near(@location, distance).first(max_results)
    @fuel_type = FuelType.find(ftid)
    logger.debug @fuel_type.name
    @ft = "87 Octane"

    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      price = '%.2f' % station.station_fuel_types.first.price.price

      prices = station.prices

      @regular = prices[0]
      @mid = prices[1]
      @premium = prices[2]
      @diesel = prices[3]

      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow "<strong>#{station.name}</strong><br>#{station.address}" + 
      "<table id='infowindow_table'>
      <tr>
      <th>Regular</th>
      <th>Mid-Grade</th>
      <th>Premium</th>
      <th>Diesel</th>
      </tr>
      <tr>
      <td>$#{@regular}</td>
      <td>$#{@mid}</td>
      <td>$#{@premium}</td>
      <td>$#{@diesel}</td>
      </tr>
      </table>"
      marker.json({ :name => station.name, :address => station.address, :price => price, :id => station.id})
    end
  end
end
