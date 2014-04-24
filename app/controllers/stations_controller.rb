class StationsController < ApplicationController
  def create
    @station = Station.new(station_params)
    
    if @station.save
      redirect_to @station
    else
      render 'new'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
 
    redirect_to stations_path
  end

  def edit
    @station = Station.find(params[:id])
  end

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def search
    ftid = params[:gas_type]
    location = params[:search]
    distance = params[:distance]

    @stations = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id' => ftid).near(location, distance).limit(10)

    #@stations.each { |station|
      #station.station_fuel_types.each { |sft|
        #logger.debug "Station Fuel Type #{sft.id} present with price $#{sft.price.price}"
      #}
    #}

    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      sft = station.station_fuel_types.find_by(fuel_type_id: ftid)
      #logger.debug sft.price.price
      price = '%.2f' % sft.price.price

      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow "<strong>#{station.name}</strong><br>$#{price}"
      marker.json({ :name => station.name, :address => station.street_address, :price => price, :id => station.id})
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])

    if @station.update(params[:station].permit(:name, :company, :address, :city, :zip, :state, :country, :url, :phone, :email, :lat, :lon))
      redirect_to @station
    else
      render 'edit'
    end
  end

  private
    def is_number?(search_string)
      return search_string.to_i.to_s == search_string
    end

    def station_params
      params.require(:station).permit(:name, :company, :address, :city, :zip, :state, :country, :url, :phone, :email, :lat, :lon)
    end
end
