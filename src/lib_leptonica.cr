@[Link("leptonica")]
lib LibLeptonica
  type Pix = Void*

  fun pix_read = pixRead(outputbase : LibC::Char*) : Pix
  fun pix_destroy = pixDestroy(ppix : Pix*)
end
