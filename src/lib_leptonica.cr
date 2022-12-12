@[Link("leptonica")]
lib LibLeptonica
  MAJOR_VERSION =  1
  MINOR_VERSION = 82
  PATCH_VERSION =  0

  type Pix = Void*
  type LInt32 = Int32

  fun pix_read = pixRead(outputbase : LibC::Char*) : Pix*
  fun pix_destroy = pixDestroy(ppix : Pix*)
  # fun int32 = l_int32(x : Int32) : LInt32
  fun get_dimensions = pixGetDimensions(pix : Pix*, pw : Int32*, ph : Int32*, pd : Int32*)
end
