class CitiesController < ApplicationController
  def create
    @city = City.new(city_params)
    @city.save
    redirect_to @city
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy

    redirect_to cities_path
  end

  def edit
    @city = City.find(params[:id])
  end

  def index
    @cities = City.all
  end

  def new
  end

  def show
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])

    if @city.update(params[:city].permit(:name, :state, :country, :lat, :lon))
      redirect_to @city
    else
      render 'edit'
    end
  end

  private
    def city_params
      params.require(:city).permit(:name, :state, :country, :lat, :lon)
    end
end
