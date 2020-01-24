require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock)}

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

  it 'sees bike in DockingStation' do
    bike = Bike.new
    expect(subject.dock(bike).length).to be > 0
  end

  it "doesn't accept a bike if full" do 
    20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Station already full")
  end

end
