require 'test_helper'

class BikeTest < ActiveSupport::TestCase
  test "should not save a bike without title" do
    bike = Bike.new
    assert_not bike.save
  end
end
