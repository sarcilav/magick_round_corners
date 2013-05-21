module MagickRoundCorners
  module Transformation
    class ::Magick::Image
      def round_corners(radius = 8)
        # Set a transparent background: pixels that are transparent will be
        # discarded from the source image.
        mask = ::Magick::Image.new(columns, rows) {self.background_color = 'transparent'}

        # Create a white rectangle with rounded corners. This will become the
        # mask for the area you want to retain in the original image.
        ::Magick::Draw.new.stroke('none').stroke_width(0).fill('white').
          roundrectangle(0, 0, columns, rows, radius, radius).
          draw(mask)
        # Apply the mask and write it out
        composite(mask, ::Magick::CenterGravity, ::Magick::CopyOpacityCompositeOp)
      end
    end
  end
end
