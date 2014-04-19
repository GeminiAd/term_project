class StationFuelTypesController < ApplicationController
  def new
    @station_fuel_type = StationFuelType.new
  end

  def create
    @station_fuel_type = StationFuelType.new(station_fuel_type_params)
    @fuel_type = FuelType.find(station_fuel_type_params[:fuel_type_id])

    if @station_fuel_type.save
      redirect_to @station_fuel_type
    else
      render 'new'
    end
  end

  def destroy
    @station_fuel_type = StationFuelType.find(params[:id])
    @station_fuel_type.destroy

    redirect_to station_fuel_types_path
  end

  def edit
    @station_fuel_type = StationFuelType.find(params[:id])
  end

  def index
    @station_fuel_types = StationFuelType.all
  end

  def show
    @station_fuel_type = StationFuelType.find(params[:id])
  end

  def update
    @station_fuel_type = StationFuelType.find(params[:id])

    if @station_fuel_type.update(params[:station_fuel_type].permit(:station_id, :fuel_type_id))
      redirect_to @station_fuel_type
    else
      render 'edit'
    end
  end

  private
    def station_fuel_type_params
      params.require(:station_fuel_type).permit(:station_id, :fuel_type_id)
    end
end
