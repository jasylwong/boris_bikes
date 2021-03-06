require_relative 'Bike'

class DockingStation
    attr_reader :capacity

    DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity      
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

    attr_reader :bikes

    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end
