;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
    ; max-two-sum : Number Number Number -> Number
    ; GIVEN: three numbers 
    ; RETURNS: Sum of two larger numbers out of given three numbers
    ; Examples:
    ; (max-two-sum 10 50 30) => 80
    ; (max-two-sum 10 10 10) => 20
    ; (max-two-sum 10 20 30) => 50
    ; (max-two-sum 30 20 10) => 50
    ; (max-two-sum 20 30 10) => 50
    ; (max-two-sum -30 10 -10) => 0

(define (max-two-sum N1 N2 N3)
  (cond
    [ (and (>= N1 N2)
           (>= N1 N3)) (+ N1 (max N2 N3))]
    [ (and (>= N2 N1)
           (>= N2 N3)) (+ N2 (max N1 N3))]
    [ (and (>= N3 N1)
           (>= N3 N2)) (+ N3 (max N1 N2))]))

;Tests:

(check-expect (max-two-sum 10 50 30) 80)
(check-expect (max-two-sum 10 10 10) 20)
(check-expect (max-two-sum 10 20 30) 50)
(check-expect (max-two-sum 30 20 10) 50)
(check-expect (max-two-sum 20 30 10) 50)
(check-expect (max-two-sum -30 10 -10) 0)


;Manual Tests
;> (max-two-sum 10 50 30)
;80
;> (max-two-sum 10 10 10)
;20
;> (max-two-sum 10 20 30)
;50
;> (max-two-sum 30 20 10)
;50
;> (max-two-sum 20 30 10)
;50
;> (max-two-sum -30 10 -10)
;0