require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  before(:each) do
    @biker = Biker.new("Kenny", 30)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  it "exists" do
    expect(@biker).to be_a(Biker)
  end

  it "has a name" do
    expect(@biker.name).to eq("Kenny")
  end

  it "has a distance" do
    expect(@biker.max_distance).to eq(30)
  end

  it "initializes with an empty rides hash" do
    expect(@biker.rides).to eq({})
  end

  it 'initializes with an empty acceptable_terrain array' do
    expect(@biker.acceptable_terrain).to eq([])
  end

  it "can learn new terrain types" do
    @biker.learn_terrain(:hills)
    @biker.learn_terrain(:gravel)

    expect(@biker.acceptable_terrain).to eq([:hills, :gravel])
  end

  it "can log a ride within max distance" do
    @biker.learn_terrain(:hills)
    @biker.log_ride(@ride1, 10.7)
  
    expect(@biker.rides).to eq({@ride1 => [10.7]})
  end

  it "returns the best ride distance for a logged ride" do
    @biker.learn_terrain(:hills)
    @biker.log_ride(@ride1, 10.7)
    @biker.log_ride(@ride1, 12.3)
    @biker.log_ride(@ride1, 9.5)

    expect(@biker.personal_record(@ride1)).to eq(9.5)
  end

  it "returns false if no ride has been logged" do
    expect(@biker.personal_record(@ride1)).to eq(false)
  end

end