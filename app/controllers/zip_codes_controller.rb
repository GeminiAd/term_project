class ZipCodesController < ApplicationController
  def create
    @zip_code = ZipCode.new(zip_code_params)
    @zip_code.save
    redirect_to @zip_code
  end

  def destroy
    @zip_code = ZipCode.find(params[:id])
    @zip_code.destroy

    redirect_to zip_codes_path
  end

  def edit
    @zip_code = ZipCode.find(params[:id])
  end

  def index
    @zip_codes = ZipCode.all
  end

  def new
  end

  def show
    @zip_code = ZipCode.find(params[:id])
  end

  def update
    @zip_code = ZipCode.find(params[:id])

    if @zip_code.update(params[:zip_code].permit(:zip_code, :lat, :lon))
      redirect_to @zip_code
    else
      render 'edit'
    end
  end

  private
    def zip_code_params
      params.require(:zip_code).permit(:zip_code, :lat, :lon)
    end
end
