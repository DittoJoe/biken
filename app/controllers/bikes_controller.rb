class BikesController < ApplicationController
  def show
    @bike = Bike.find(params[:id])
    authorize @bike
  end
end
