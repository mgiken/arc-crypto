(require "ffi.arc")

(w/ffi (string arclib* "/site/crypto") ; TODO: fix library path
  (cdef sha512 "arc_sha512" cstring (cstring)))
