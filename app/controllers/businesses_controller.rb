class BusinessesController < ApplicationController
  def new
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new
    render :new
  end

  def create
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new(business_params)
    if @business.save
      render :show
    else
      render :new
    end
  end

  def edit
    @type = Type.find(params[:type_id])
    @business = Business.find(params[:id])
    render :edit
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      render :show
    end
  end

  def show
    @business = Business.find(params[:id])
    render :show
  end

  def destroy
    @type = Type.find(params[:type_id])
    @business = @type.businesses.find(params[:id])
    @business.destroy
     redirect_to types_path
   end

  private

  def business_params
    params.require(:business).permit(:name, :address, :phone, :website, :hours)
  end
end
