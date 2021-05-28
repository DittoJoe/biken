class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @bookings = Booking.where(:user_id => @user.id)
  end
end
