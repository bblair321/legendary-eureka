require 'pry'
class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain(terrain)
    @acceptable_terrain << terrain unless @acceptable_terrain.include?(terrain)
  end

  def log_ride(ride, distance)
    # Check if the ride's terrain is in the list of acceptable terrains
    if @acceptable_terrain.include?(ride.terrain)
      # Check if the ride already exists in the @rides hash
      if @rides[ride]
        # If the ride exists, add the new distance to the array of distances
        @rides[ride] << distance
      else
        # If the ride doesn't exist, create a new entry with the distance in an array
        @rides[ride] = [distance]
      end
    end
  end

  def personal_record(ride)
    if @rides[ride] && @rides[ride].any?
      @rides[ride].min
    else
      false
    end
  end
end