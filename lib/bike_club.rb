class BikeClub
  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  def biker_with_most_rides
    # Find the biker with the most rides by:
  # 1. Using the `max_by` method to select the biker with the highest number of rides.
  # 2. Iterating through the @bikers array to evaluate each biker.
  # 3. Accessing the `rides` hash of each biker and flattening the array of distances for each ride to count all the ride distances.
    @bikers.max_by { |biker| biker.rides.values.flatten.size }
  end
end