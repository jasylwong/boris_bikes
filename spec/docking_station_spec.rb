require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock)}

  it 'allows a capacity of 30 to be set' do
    expect(DockingStation.new(30).capacity).to eq 30
  end

  describe "#release_bike" do
    it 'releases a bike when a bike is available' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it 'raises an error when no bikes available' do
      expect{ subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(30)
      30.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock(Bike.new) }.to raise_error("Station already full")
    end

    it 'defaults capacity' do
      docking_station = DockingStation.new
      described_class::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock(Bike.new) }.to raise_error("Station already full")
    end
  end

  describe "dock" do
    it 'sees bike in DockingStation' do
      bike = Bike.new
      expect(subject.dock(bike).length).to be > 0
    end

    it "raises an error if full" do 
      subject.capacity.times{subject.dock Bike.new}
      expect { subject.dock(Bike.new) }.to raise_error("Station already full")
    end
  end
end
