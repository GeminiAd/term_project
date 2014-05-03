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
    if params[:max_results].nil?
      params[:max_results] = 15
    end

    ftid = params[:gas_type]
    @location = params[:search]
    distance = params[:distance]
    @miles = distance
    max_results = params[:max_results]

    if (@location == "")
      @location = "San Francisco"
    end

    #@price_87 = Hash.new
    #@price_89 = Hash.new
    #@price_91 = Hash.new
    #@price_diesel = Hash.new
    #@stations_with_all_prices = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id = 1 OR station_fuel_types.fuel_type_id = 2 OR station_fuel_types.fuel_type_id = 3 OR station_fuel_types.fuel_type_id = 4').near(@location, distance)
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

    @stations = Station.joins(:station_fuel_types).where('station_fuel_types.fuel_type_id' => ftid).near(@location, distance).limit(max_results)

    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      sft = station.station_fuel_types.find_by(fuel_type_id: ftid)
      #logger.debug sft.price.price
      price = '%.2f' % sft.price.price

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
      marker.json({ :name => station.name, :address => station.street_address, :price => price, :id => station.id})
    end
  end

  def show
    @station = Station.find(params[:id])

    @hash = Gmaps4rails.build_markers(@station) do |station, marker|
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '1'))
        #@price_87 = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '2'))
        #@price_89 = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '3'))
        #@price_91 = '%.2f' % sft.price.price
      #end
      #if(sft = station.station_fuel_types.find_by(fuel_type_id: '4'))
        #@price_diesel = '%.2f' % sft.price.price
      #end
      prices = station.prices
      @regular = prices[0]
      @mid = prices[1]
      @premium = prices[2]
      @diesel = prices[3]

      marker.lat station.lat
      marker.lng station.lon
      marker.title station.name
      marker.infowindow "<strong>#{station.name}</strong><br>"
      marker.json({ :name => station.name, :address => station.street_address, :id => station.id})
    end
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
