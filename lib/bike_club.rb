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
  end
end