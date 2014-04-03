class StationsController < ApplicationController
  def new
  end

  def create
    @station = Station.new(station_params)
    @station.save
    redirect_to @station
  end

  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  private
    def station_params
      params.require(:station).permit(:name, :company, :address, :city, :zip, :state, :country, :lat, :lon)
    end
end
