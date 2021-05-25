class BikesController < ApplicationController

  def index
    @bikes = policy_scope(Bike)
  end
end
