require 'docking_station'

describe DockingStation do
  it 'new object should respond to release_bike' do
     expect(subject).to respond_to(:release_bike)
  end
  
  it 'should get a working bike' do
    expect(subject.release_bike).to be_a Bike
    expect(subject.release_bike.working?).to be true
  end

  it 'allows bikes to be docked' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'returns true when docking' do
    expect(subject.dock(@bike)).to be true
  end

  it 'returns true when a bike is docked' do
    station = DockingStation.new
    station.release_bike
    expect(station.bike_is_docked).to be false
  end
end
