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
      redirect_to "/users/#{current_user.id}"
    else
      render :new
    end
  end

  private

  def booking_params
    params.permit(:bike_id, :user_id)
  end

  def change_status
    @booking = Booking.find(params[:id])
    @booking.update(status: "#{params[:status]}ed")
    redirect_to "/users/#{current_user.id}", notice: "Status updated!"
  end
end

#user.bike.booking
