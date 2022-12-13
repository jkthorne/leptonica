require "./lib_leptonica"

module Leptonica
  VERSION = "0.1.0"

  class Pix
    @handle : LibLeptonica::Pix*

    def initialize(path : String)
      # NOTE: set log level
      LibLeptonica.set_msg_severity(LibLeptonica::LSeverityError)

      img = LibLeptonica.pix_read(path)

      if img == nil
        raise "unable to read image"
      else
        @handle = img
      end
    end

    def initialize(file : File)
      img = LibLeptonica.pix_read(file.path)

      if img == nil
        raise "unable to read image"
      else
        @handle = img
      end
    end

    def initialize(path : Path)
      img = LibLeptonica.pix_read(path.expand)

      if img == nil
        raise "unable to read image"
      else
        @handle = img
      end
    end

    def finalize
      LibLeptonica.pix_destroy(pointerof(@handle))
    end

    def to_unsafe
      @handle
    end

    def dimentions
      w = uninitialized Int32
      h = uninitialized Int32
      d = uninitialized Int32

      if LibLeptonica.pix_get_dimensions(self, pointerof(w), pointerof(h), pointerof(d)) != 0
        raise "could not get dimentions of image"
      end

      {w, h, d}
    end
  end
end
