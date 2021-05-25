class BikesController < ApplicationController
  def index
    @bikes = policy_scope(Bike)
  end
  
  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    authorize @bike
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end
end
