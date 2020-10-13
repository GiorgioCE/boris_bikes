require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe "#release_bike" do
    it "Releases a bike" do
      expect(subject.release_bike).to be_instance_of(Bike)
      expect(subject.release_bike.working?).to eq true
    end
  end

  describe "#dock_bike" do
    it "Docks a bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
  end

  describe "#see_bike" do
    it "Shows a docked bike" do
      bike = DockingStation.new.release_bike
      subject.dock_bike(bike)
      expect(subject.see_bike).to eq bike
    end
  end

  describe "#check_availability" do
    it "Checks if there are any bikes available" do
      expect {subject.check_availability}.to raise_error("Sorry. There are no bikes available.")
    end
  end

end
