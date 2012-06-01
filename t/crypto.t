(load "crypto.arc")
(load "test.arc")

; md5 ------------------------------------------------------------------------

(test is (md5 "foo") "acbd18db4cc2f85cedef654fccc4a4d8")
(test is (md5 "bar") "37b51d194a7513e45b56f6524f2d51f2")

; sha512 ---------------------------------------------------------------------

(test is (sha512 "foo") "f7fbba6e0636f890e56fbbf3283e524c6fa3204ae298382d624741d0dc6638326e282c41be5e4254d8820772c5518a2c5a8c0c7f7eda19594a7eb539453e1ed7")
(test is (sha512 "bar") "d82c4eb5261cb9c8aa9855edd67d1bd10482f41529858d925094d173fa662aa91ff39bc5b188615273484021dfb16fd8284cf684ccf0fc795be3aa2fc1e6c181")

(done-testing)

; vim:ft=arc
