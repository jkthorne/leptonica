require "./lib_leptonica"

module Leptonica
  VERSION = "0.1.0"

  class Pix
    @handle : LibLeptonica::Pix*

    def initialize(path : String)
      img = LibLeptonica.pix_read(path)

      if img == nil
        raise "unable to read image"
      else
        @handle = img
      end
    end

    def finalize
      LibLeptonica.pix_destroy(@handle)
    end

    def to_unsafe
      @handle
    end

    def dimentions
      w = uninitialized Int32
      h = uninitialized Int32
      d = uninitialized Int32

      LibLeptonica.get_dimensions(self, pointerof(w), pointerof(h), pointerof(d))

      {w, h, d}
    end
  end
end
