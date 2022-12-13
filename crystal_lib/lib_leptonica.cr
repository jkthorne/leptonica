@[Include("stdio.h")]
@[Include("stdlib.h")]
@[Include("stdarg.h")]

@[Include("leptonica/endianness.h", prefix: %w(L_))]
@[Include("leptonica/environ.h", prefix: %w(l_ L_ LEPT_))]

@[Include("leptonica/array.h", prefix: %w(L_ Numa Sarray), remove_prefix: false)]
@[Include("leptonica/bbuffer.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/hashmap.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/heap.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/list.h", prefix: %w(Double DL), remove_prefix: false)]
@[Include("leptonica/ptra.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/queue.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/rbtree.h", prefix: %w(L_ Rb_), remove_prefix: false)]
@[Include("leptonica/stack.h", prefix: %w(L_), remove_prefix: false)]

@[Include("leptonica/arrayaccess.h", prefix: %w(L_ GET_ SET_ CLEAR_), remove_prefix: false)]
@[Include("leptonica/bmf.h", prefix: %w(L_ BMP_), remove_prefix: false)]
@[Include("leptonica/ccbord.h", prefix: %w(L_ CC), remove_prefix: false)]
@[Include("leptonica/colorfill.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/dewarp.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/gplot.h", prefix: %w(L_ GPLOT glot GPlot), remove_prefix: false)]
@[Include("leptonica/imageio.h", prefix: %w(L_ Jb), remove_prefix: false)]
@[Include("leptonica/jbclass.h", prefix: %w(L_ S), remove_prefix: false)]
@[Include("leptonica/morph.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/pix.h", prefix: %w(L_ Pix PIX RGBA Box BOX Pta PTA FPix FPIX DPix DPIX), remove_prefix: false)]
@[Include("leptonica/recog.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/regutils.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/stringcode.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/sudoku.h", prefix: %w(L_), remove_prefix: false)]
@[Include("leptonica/watershed.h", prefix: %w(L_), remove_prefix: false)]

# @[Include("leptonica/allheaders.h")]
@[Include(
  "leptonica/allheaders.h",
  prefix: %w(
    pix
    get
    affine
    linear
    guass
    create
    pta
    box
    l_
    barcode
    bbuffer
    make
    bilinear
    bmf
    ccb
    sel
    jb
    numa
    convert
    display
    fpix
    cmap
    next
    dwarp
    fmorph
    encode
    decode
    reformat
    fhmt
    dpix
    gplot
    locate
    dither
    threshold
    lheap
    read
    free
    fget
    kernel
    parse
    list
    generate
    select
    reset
    morph
    add
    partify
    sa
    concatenate
    cid
    extract
    set
    pms
    log
    is
    projective
    sarray
    write
    ptra
    quad
    lqueue
    find
    io
    recog
    rcha
    rch
    reg
    raster
    run
    string
    sela
    lstack
    strcode
    sudoku
    fprint
    tiff
    return
    lept
    gen
    start
    stop
    realloc
    nbytes
    fnbytes
    file
    fopen
    call
    split
    path
    append
    modify
    wshed
    zlib
  ),
  remove_prefix: false
)]

@[Link("leptonica/allheaders.h")]
lib LibLeptonica
end
