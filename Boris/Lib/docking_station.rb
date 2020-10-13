require_relative 'bike'

class DockingStation
  attr_reader :docked_bike

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @docked_bike = bike
  end

  def see_bike
    self.docked_bike
  end
end
