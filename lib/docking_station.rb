require_relative 'Bike'

class DockingStation
    attr_reader :bikes

    def initialize
      @bikes = []
    end

    def release_bike
      raise 'No bikes available' unless @bikes.length != 0
      @bikes.shift
    end

    def dock(bike)
      raise "Station already full" if @bikes.length >= 20
      @bikes << bike
    end
end
