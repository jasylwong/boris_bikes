class Bike
    attr_reader :status

    def initialize
      @status = "Working"
    end

    def working?
      @status == "Working" ? true : false
    end

    def report_broken
      @status = "broken"
    end
end
