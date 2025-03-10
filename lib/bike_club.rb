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
    # max_by is looking at all the bikers. 
    @bikers.max_by { |biker| biker.rides.values.flatten.size } # For each biker we are counting how many rides they have
    # we have biker representing each biker, we grab the rides has and grab all the values fomr it using .values
    # I am using flatten to combine all of the indivdual arrays into one array of rides
  end
end