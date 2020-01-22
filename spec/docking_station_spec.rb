require 'docking_station'

describe DockingStation do
  it 'new object should respond to release_bike' do
     expect(subject).to respond_to(:release_bike)
  end
  it 'should get a working bike' do
    expect(subject.release_bike).to be_a Bike
    expect(subject.release_bike.working?).to be true
  end
end
