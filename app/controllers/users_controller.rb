class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @bookings = Booking.where(:user_id => @user.id)
  end

  def change_status
    @user = User.find(params[:id])
    authorize @user
    @booking = Booking.find(params[:id])
    @booking.update(status: "#{params[:status]}ed")
    redirect_to "/users/#{current_user.id}", notice: "Status updated!"
  end
end
