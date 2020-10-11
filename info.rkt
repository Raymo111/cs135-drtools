#lang info

(define drracket-tools '(("tool.rkt")))
(define drracket-tool-names '("drracket-paredit"))
(define drracket-tool-icons '(#f))

(define collection "drcomplete-uwaterloo")
(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/drcomplete-uwaterloo.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(kaus0))
