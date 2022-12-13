class Leptonica::Pix
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

  def initialize(pix : LibLeptonica::Pix*)
    @handle = pix
  end

  def initialize(slice : Slice(UInt32))
    @handle = LibLeptonica.pix_deserialize_from_memory(slice, slice.size)
  end

  # # TODO: handle convert to slice
  # def initialize(bytes : Bytes)
  #   @handle = LibLeptonica.pix_deserialize_from_memory(byte, bytes.size)
  # end

  def finalize
    LibLeptonica.pix_destroy(pointerof(@handle))
  end

  def to_unsafe
    @handle
  end

  def to_slice : Slice(UInt32)
    LibLeptonica.pix_serialize_to_memory(self, out bytes, out size)
    Slice.new(bytes, size)
  end

  def to_bytes : Bytes
    to_slice.to_unsafe_bytes
  end

  def scale(xscale : Int, yscale : Int) : self
    scale(xscale / 100, yscale / 100)
  end

  def scale(xscale : Float, yscale : Float) : self
    pix = LibLeptonica.pix_scale(self, 0.35, 0.35)
    Leptonica::Pix.new(pix)
  end

  def dimentions
    w = uninitialized Int32
    h = uninitialized Int32
    d = uninitialized Int32

    success = LibLeptonica.pix_get_dimensions(
      self,
      pointerof(w),
      pointerof(h),
      pointerof(d)
    )
    raise "could not get dimentions of image" if success != 0

    {w, h, d}
  end
end
