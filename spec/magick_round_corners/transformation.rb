require 'spec_helper'

describe "MagickRoundCorners::Transformation" do
  it "should add round corners method to an instance of Magick::Image" do
    ::Magick::Image.new.should respond_to(:round_corners)
  end
end
