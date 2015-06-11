require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" unless has_bikes?
    @bikes.pop
  end

  def dock bike
    fail 'Docking station full' if @bikes.length == 1 
    @bikes << bike
  end

  def has_bikes?
    !@bikes.empty?
  end

  def bike_count
    @bikes.count
  end
end
