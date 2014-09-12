;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
    ;; list-boolean-true : ListOfBoolean -> Boolean
    ;; Given : a list of Boolean values
    ;; Returns true if all booleans in the list are true else false
    ;; Examples: 
    ;; (list-boolean-true (list true true true true)) => true
    ;; (list-boolean-true (list false true)) => false
    ;; (list-boolean-true (list true fasle)) => false
    ;; (list-boolean-true (list true true fasle true)) => false
    ;; (list-boolean-true (list false fasle false)) => false
    ;; (list-boolean-true (list)) => "List is Empty"

(define (list-boolean-true lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (first lst)]
    [else (and (first lst) (list-boolean-true (rest lst)))]))

;;Test:
     (list-boolean-true (list true true true true)) 
     (list-boolean-true (list false true))
     (list-boolean-true (list true false))
     (list-boolean-true (list true true false true))
     (list-boolean-true (list false false false))
     (list-boolean-true (list))