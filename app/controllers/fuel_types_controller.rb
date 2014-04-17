class FuelTypesController < ApplicationController
  def create
    @fuel_type = FuelType.new(fuel_type_params)
    
    if @fuel_type.save
      redirect_to @fuel_type
    else
      render 'new'
    end
  end

  def destroy
    @fuel_type = FuelType.find(params[:id])
    @fuel_type.destroy

    redirect_to fuel_types_path
  end

  def edit
    @fuel_type = FuelType.find(params[:id])
  end

  def index
    @fuel_types = FuelType.all
  end

  def new
    @fuel_type = FuelType.new
  end

  def show
    @fuel_type = FuelType.find(params[:id])
  end

  def update
    @fuel_type = FuelType.find(params[:id])

    if @fuel_type.update(params[:fuel_type].permit(:name, :description, :url))
      redirect_to @fuel_type
    else
      render 'edit'
    end
  end

  private
    def fuel_type_params
      params.require(:fuel_type).permit(:name, :description, :url)
    end
end
