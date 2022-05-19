#lang info

(define drracket-tools '(("tool.rkt")))
(define drracket-tool-names '("drracket-keybindings"))
(define drracket-tool-icons '(#f))

(define collection "cs135-drtools")
(define deps '("drracket-plugin-lib"
               "gui-lib"
               "quickscript"
               "base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/cs135-drtools.scrbl" ())))
(define pkg-desc "DrRacket Tools for CS 135 course at UWaterloo")
(define version "1.0")
(define pkg-authors '(Raymo111, SantaKaus))
