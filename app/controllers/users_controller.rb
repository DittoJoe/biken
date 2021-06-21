class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @bookings = Booking.where(:user_id => @user.id)
    @any_bike = current_user.bikes.any?
    if @any_bike
      @my_bikes = current_user.bikes
      @booking_requests = Booking.where(bike_id: @my_bikes.pluck(:id))
    end
  end

  def change_status
    @user = current_user
    authorize @user
    @booking = Booking.find(params[:id])
    @booking.update(status: "#{params[:status]}ed")
    redirect_to "/users/#{current_user.id}", notice: "Status updated!"
  end
end
