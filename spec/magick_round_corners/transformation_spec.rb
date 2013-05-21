require 'spec_helper'

describe "MagickRoundCorners::Transformation" do
  it "should add round corners method to an instance of Magick::Image" do
    ::Magick::Image.new(1,1).should respond_to(:round_corners)
  end

  describe "Behavior" do
    before do
      @img = ::Magick::Image.new(10, 20)
    end
    
    it "should interface with a mask" do
      dummy_mask = double()
      ::Magick::Image.should_receive(:new).with(10, 20).and_return(dummy_mask)
      ::Magick::Draw.stub_chain(:new, :stroke, :stroke_width, :fill, :roundrectangle, :draw)
      @img.should_receive(:composite).with(dummy_mask, ::Magick::CenterGravity, ::Magick::CopyOpacityCompositeOp).and_return(@img)
      @img.round_corners
    end
  end
end
