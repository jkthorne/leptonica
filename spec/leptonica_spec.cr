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

  it "#==" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")
    pix_alt = Leptonica::Pix.new("./spec/fixtures/stop.png")
    pix_diff = Leptonica::Pix.new("./spec/fixtures/eng.png")

    (pix == pix_alt).should be_true
    (pix == pix_diff).should be_false
  end

  it "Pix#width" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pix.width.should_not eq 100
    pix.width(100)
    pix.width.should eq 100
  end

  it "Pix#height" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pix.height.should_not eq 100
    pix.height(100)
    pix.height.should eq 100
  end

  it "Pix#depth" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pix.depth.should_not eq 100
    pix.depth(100)
    pix.depth.should eq 100
  end

  it "Pix#pixel" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pixel = pix.pixel(42, 42).should_not eq(42)
    pix.pixel(42, 42, 42)
    pixel = pix.pixel(42, 42).should eq(42)
  end

  pending "Pix#pixels" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pix.pixels.should eq(100)
  end

  pending "serializes to memory" do
    pix = Leptonica::Pix.new("./spec/fixtures/stop.png")

    pix_slice = pix.to_slice
    pix_slice = Leptonica::Pix.new(pix_slice)

    pix == pix_slice

    pix_bytes = pix.to_bytes
    pix_bytes = Leptonica::Pix.new(pix_bytes)

    pix == pix_bytes
  end
end
