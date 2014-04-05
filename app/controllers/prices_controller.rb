class PricesController < ApplicationController
  def create
    @price = Price.new(price_params)

    @price.save
    redirect_to @price
  end

  def destroy
    @price = Price.find(params[:id])
    @price.destroy

    redirect_to prices_path
  end

  def edit
    @price = Price.find(params[:id])
  end

  def index
    @prices = Price.all
  end

  def new
  end

  def show
    @price = Price.find(params[:id])
  end

  def update
    @price = Price.find(params[:id])

    if @price.update(params[:price].permit(:station_fuel_type_id, :price, :time))
      redirect_to @price
    else
      render 'edit'
    end
  end

  private
    def price_params
      params.require(:price).permit(:station_fuel_type_id, :price, :time)
    end
end
