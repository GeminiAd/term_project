class WelcomeController < ApplicationController
  def index
    @stations = Station.all
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow station.name
    end
  end
end
