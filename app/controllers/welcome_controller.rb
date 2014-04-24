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
    params[:fuel_type_id] = 1
    ftid = params[:fuel_type_id]
    @location = "San Francisco"
    #@stations = Station.limit(10).includes(station_fuel_types: :price).where('station_fuel_types.fuel_type_id' => 1)
    @stations = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id' => ftid).limit(10)

    @stations.each { |station|
      station.station_fuel_types.each { |sft|
        #logger.debug "Station Fuel Type #{sft.id} present with price $#{sft.price.price}"
      }
    }

    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      price = '%.2f' % station.station_fuel_types.first.price.price
      #logger.debug(price)

      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow "<strong>#{station.name}</strong><br>$#{price}"
      marker.json({ :name => station.name, :address => station.street_address, :price => price, :id => station.id})
    end
  end
end