class StationsController < ApplicationController
  def create
    @station = Station.new(station_params)
    @station.save
    redirect_to @station
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
    def station_params
      params.require(:station).permit(:name, :company, :address, :city, :zip, :state, :country, :url, :phone, :email, :lat, :lon)
    end
end
