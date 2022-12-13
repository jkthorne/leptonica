require "./spec_helper"

describe Leptonica do
  it "dimentions" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")
    pix.dimentions.should eq({489, 488, 32})
  end
end
