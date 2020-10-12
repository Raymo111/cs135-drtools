#lang info

(define drracket-tools '(("tool.rkt")))
(define drracket-tool-names '("drracket-keybindings"))
(define drracket-tool-icons '(#f))

(define collection "cs135-drtools")
(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/cs135-drtools.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(kaus0))
