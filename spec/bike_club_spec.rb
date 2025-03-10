require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  before(:each) do
    @bike_club = BikeClub.new("Mountain Riders")
    @biker1 = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 25)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    
    @bike_club.add_biker(@biker1)
    @bike_club.add_biker(@biker2)
  end

  it "exists" do
    expect(@bike_club).to be_a(BikeClub)
  end

  it "has a name" do
    expect(@bike_club.name).to eq("Mountain Riders")
  end

  it "can add bikers" do
    expect(@bike_club.bikers).to eq([@biker1, @biker2])
  end
end