require_relative 'bike'

class DockingStation
  attr_reader :bike, :biked_is_docked

  def initialize
    @bike = Bike.new
    @bike_is_docked = true
    # puts @bike_is_docked
  end

  def release_bike
    @bike_is_docked = false
    @bike
  end

  def dock(bike)
    @bike_is_docked = true
  end

  def bike_is_docked
    return @bike_is_docked
  end



end
