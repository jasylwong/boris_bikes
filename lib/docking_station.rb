require_relative 'Bike'

class DockingStation
    attr_reader :bike

    def release_bike
      raise 'No bikes available' unless @bike
      @bike
    end

    def dock(bike)
      # @bike = 0
      raise "Station already full" if @bike
      @bike = bike
    end
end
