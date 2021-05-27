class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
    @booking.user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bike_bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.permit(:bike_id, :user_id)
  end
end
