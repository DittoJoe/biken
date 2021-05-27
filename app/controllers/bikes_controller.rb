class BikesController < ApplicationController
  def index
    @bikes = policy_scope(Bike)
    if params[:query].present?
      @bikes = Bike.where(address: params[:query])
        if @bikes.empty?
          flash[:alert] = "No results found"
          @bikes = Bike.all
        else
           @bikes
        end
    else
      flash[:alert] = "please type a city"
      @bikes = Bike.all
    end
  end

  def show
    @bike = Bike.find(params[:id])
    authorize @bike
    @bike_arr = []
    @bike_arr << @bike
    @markers = @bike_arr.map do |bike|
      {
        lat: bike.latitude.nil? ? 59.3354662 : bike.latitude,
        lng: bike.longitude.nil? ? 18.0600026 : bike.longitude
      }
    end
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    authorize @bike
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :details, :address, :photo)
  end
end
