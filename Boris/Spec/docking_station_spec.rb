require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe "#release_bike" do
    it "Releases a bike" do
      expect(subject.release_bike).to be_instance_of(Bike)
      expect(subject.release_bike.working?).to eq true
    end
  end
end
