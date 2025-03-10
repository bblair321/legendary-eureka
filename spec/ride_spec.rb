require './lib/ride'

RSpec.describe Ride do
  before(:each) do
    @ride = Ride.new({ name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills })

  end

  it "exists" do
    expect(@ride).to be_a(Ride)
  end

  it "has a name" do
    expect(@ride.name).to eq("Walnut Creek Trail")
  end

  it "has a distance" do
    expect(@ride.distance).to eq(10.7)
  end

  it "has a loop status" do
    expect(@ride.loop).to eq(false)
  end

  it "has a terrain type" do
    expect(@ride.terrain).to eq(:hills)
  end
end