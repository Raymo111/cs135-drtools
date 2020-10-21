;;
;; **************************************************************
;;   Copyright (c) 2020
;;                 Raymond Li <racket@raymond.li>
;;                 Kaustubh Prabhakar <kaustubh3973@gmail.com>
;;    Code completion for DrRacket
;;    Last updated 2020-09-25
;;    Modified from complete-word from quickscript extras repo
;; **************************************************************
;;

#lang racket/base
(require racket/class
         racket/dict
         racket/list
         quickscript)

(script-help-string "CS 135 Autocomplete")
;; Replaces the text abbreviation right before the caret with stuff

(define words
  '(
    ; custom:
    ("cx"  "(check-expect (" ") )")
    ("cw"  "(check-within (" ")  tolerance)")
    ("ce"  "(check-error (" ") )")
    ("df"  "(define (" ")\n  ())")
    ("d"   "(define " ")")
    ("if"  "(if (" ")\n () ())")
    ("cnd" "(cond\n  [(" ") ()]\n  [else ()])")
    ("ds"  "(display " ")")
    ("t"   "true" "")
    ("f"   "false" "")
    ("ll" ";;\n;; " "\n;;") ; semicolons can't be used
    ("l"   ";;   " "")      ; (because treated as comment)

    ; custom design recipe:
    ("hdr" ";;
;; ***************************************************
;;    Name (studentID)
;;    CS 135 Fall 2020
;;    Assignment " ", Problem 
;; ***************************************************
;;\n")
    ("pa" ";;\n;; Part a\n;;\n\n" "\n")
    ("pb" ";;\n;; Part b\n;;\n\n" "\n")
    ("pc" ";;\n;; Part c\n;;\n\n" "\n")
    ("pd" ";;\n;; Part d\n;;\n\n" "\n")
    ("ppe" ";; (" ") \n;; Examples:\n")
    ("ctr" ";; " ":  -> ")
    ("req" ";; Requires: " "")
    ("tst" ";; Tests:\n" "")

    ; lists:
    ("lo" "(listof " ")")
    ("nelo" "(ne-listof " ")")
    ("lost" "(listof Str)" "")
    ("nelost" "(ne-listof Str)" "")
    ("lob" "(listof Bool)" "")
    ("nelob" "(ne-listof Bool)" "")
    ("loc" "(listof Char)" "")
    ("neloc" "(ne-listof Char)" "")
    ("losy" "(listof Sym)" "")
    ("nelosy" "(ne-listof Sym)" "")
    ("lonu" "(listof Num)" "")
    ("nelonu" "(ne-listof Num)" "")
    ("lona" "(listof Nat)" "")
    ("nelona" "(ne-listof Nat)" "")
    ("lox"  ";; (listof-X-template lox) " "
;; Examples:
(check-expect (listof-X-template empty) )
(check-expect (listof-X-template (list )) )\n
;; listof-X-template: (listof ) -> 
(define (listof-X-template lox)
  (cond [(empty? lox) ]
        [else ( (first lox)
               (listof-X-template (rest lox)))]))\n
;; Tests\n")
    ("nelox"  ";; (ne-listof-X-template nelox) " "
;; Examples:
(check-expect (ne-listof-X-template (list ) )
(check-expect (ne-listof-X-template (list )) )\n
;; ne-listof-X-template: (ne-listof ) -> 
(define (ne-listof-X-template nelox)
  (cond [(empty? (rest nelox)) ( (first nelox))]
        [else ( (first nelox)
                   (ne-listof-X-template (rest nelox)))]))\n
;; Tests\n")
    ("ctd"  ";; (countdown n) " "
;; Examples:
(check-expect (countdown 0) (cons 0 empty) )
(check-expect (countdown 2) (cons 2 (cons 1 (cons 0 empty))))\n\n
;; countdown: Nat -> (listof Nat) 
(define (countdown n)
  (cond [(zero? n) (cons 0 empty)]
        [else (cons n (countdown (sub1 n)))]))\n
;; Tests")

    #| Defaults from complete-word plugin of quickscript extras
    ("dsr"   "(define-syntax-rule (" ")\n  )")
    ("ds"    "(define-syntax " "\n  )")
    ("sr"    "(syntax-rules ()\n    [(_ " ")])")
    ("sc"    "(syntax-case stx ()\n    [(_ " ")])")
    ("dsm"   "(define-simple-macro (" ")\n  )")
    ("lbd"   "(λ (" ") ")
    ("param" "(parameterize ([current-" "])\n  )")
    ("wh"    "(with-handlers ([exn:" "])\n  )")
    ("wiff"  "(with-input-from-file " "\n  (λ _ ))")
    ("wotf"  "(with-output-to-file " " #:exists 'replace\n  (λ _ ))")

    ; slideshow:
    ("slide"    "(slide #:title \"" "\"\n       )")
    ("item"     "@item{" "}")
    ("subitem"  "@subitem{" "}")
    ("$"        "@${" "}")
    ("$$"       "@$${" "}")
    |#))

(define-script autocomplete
  #:label "Autocomplete"
  #:shortcut #\ 
  #:shortcut-prefix (ctl)
  (λ (s #:editor ed)
    (define pos (send ed get-end-position))
    (define str
      (send ed get-text
            (send ed get-backward-sexp pos)
            pos))
    (define str-ext (dict-ref words str #f))
    (define left (if (list? str-ext) (first str-ext) str-ext))
    (define right (and (list? str-ext) (second str-ext)))
    (when str-ext
      (send ed begin-edit-sequence)
      (send ed select-backward-sexp)
      (send ed insert left)
      (when right
        (define ipos (send ed get-start-position))
        (send ed insert right)
        (send ed set-position ipos))
      (send ed end-edit-sequence))
    #f))

#;(
   item
   para
   wh
   $$
   )
