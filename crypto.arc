(require "ffi.arc")

(w/ffi (string arclib* "/site/crypto") ; TODO: fix library path
  (cdef md5    "arc_MD5"    cstring (cstring))
  (cdef sha512 "arc_SHA512" cstring (cstring)))
