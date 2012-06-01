(require "ffi.arc")

(w/ffi "crypto"
  (cdef cmd5    "arc_MD5"    cstring (cstring cptr))
  (cdef csha512 "arc_SHA512" cstring (cstring cptr)))

(mac defcrypto (algo size)
  `(def ,algo (s)
     (withs (p (cmalloc 'raw ,size)
             r (,(sym:+ "c" algo) s p))
       (cfree p)
       r)))

(defcrypto md5    33)
(defcrypto sha512 129)
