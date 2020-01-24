require_relative 'Bike'

class DockingStation
    attr_reader :bikes

    def initialize(@capacity = 20)
      @bikes = []
      DEFAULT_CAPACITY = capacity
    end

    def release_bike
      raise 'No bikes available' if empty?
      @bikes.shift 
    end

    def dock(bike)
      raise "Station already full" if full?
      @bikes << bike
    end
    
    private
    def full?
      @bikes.length >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end
end
