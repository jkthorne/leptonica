require "./spec_helper"

describe Leptonica do
  it "dimentions" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")
    pix.dimentions.should eq({489, 488, 32})
  end

  it "scales" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")
    pix_dimensions = pix.dimentions

    pix.scale(50, 50).dimentions.should eq({171, 171, 32})
    pix.scale(0.5, 0.5).dimentions.should eq({171, 171, 32})
  end

  pending "serializes to memory" do
    pix = Leptonica::Pix.new("./spec/fixtures/eng.png")

    pix_slice = pix.to_slice
    pix_slice = Leptonica::Pix.new(pix_slice)

    pix == pix_slice

    pix_bytes = pix.to_bytes
    pix_bytes = Leptonica::Pix.new(pix_bytes)

    pix == pix_bytes
  end
end
