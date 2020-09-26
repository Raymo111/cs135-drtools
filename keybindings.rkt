;;
;; **************************************************************
;;    Copyright (c) Raymond Li <racket@raymond.li> 2020
;;    Keybindings for DrRacket
;;    Last updated 2020-09-19
;;    Modified from Racket documentation
;; **************************************************************
;;

#lang s-exp framework/keybinding-lang

(define (menu-bind key menu-item)
  (keybinding
   key
   (λ (ed evt)
     (define canvas (send ed get-canvas))
     (when canvas
       (define menu-bar (find-menu-bar canvas))
       (when menu-bar
         (define item (find-item menu-bar menu-item))
         (when item
           (define menu-evt
             (new control-event%
                  [event-type 'menu]
                  [time-stamp
                   (send evt get-time-stamp)]))
           (send item command menu-evt)))))))

(define/contract (find-menu-bar c)
  (-> (is-a?/c area<%>) (or/c #f (is-a?/c menu-bar%)))
  (let loop ([c c])
    (cond
      [(is-a? c frame%) (send c get-menu-bar)]
      [(is-a? c area<%>) (loop (send c get-parent))]
      [else #f])))

(define/contract (find-item menu-bar label)
  (-> (is-a?/c menu-bar%)
      string?
      (or/c (is-a?/c selectable-menu-item<%>) #f))
  (let loop ([o menu-bar])
    (cond
      [(is-a? o selectable-menu-item<%>)
       (and (equal? (send o get-plain-label) label)
            o)]
      [(is-a? o menu-item-container<%>)
       (for/or ([i (in-list (send o get-items))])
         (loop i))]
      [else #f])))

(define (rebind key command)
  (keybinding
   key
   (λ (ed evt)
     (send (send ed get-keymap) call-function
           command ed evt #t))))

(menu-bind "m:r" "Run")
(menu-bind ":?:s:c:F" "Reindent All")
(menu-bind "c:h" "Show Replace")
(menu-bind ":?:s:c:R" "Replace All")
(menu-bind "c:/" "Comment Out with Semicolons")

(rebind "c:backspace" "backward-kill-word")
(rebind "c:del" "kill-word")
(rebind "m:up" "shift-focus")
(rebind "m:down" "shift-focus")