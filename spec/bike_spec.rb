require 'bike'

describe Bike do
    it 'responds to the method working?' do
        is_expected.to respond_to(:working?)
    end
end