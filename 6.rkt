;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
    ; quadratic-root : Number Number Number -> Number
    ; GIVEN: the Quadratic coefficient,
    ;        the linear coefficient,
    ;        Constant
    ; RETURNS: One of the two roots of quadratic equation, using formula  (-b + sqrt(b^2-4ac))/ 2a
    ; Examples:
    ;(quadratic-root 1 2 -8) =>  2
    ;(quadratic-root 1 -4 4) =>  2
    ;(quadratic-root 2 -7 3) =>  3

(define (quadratic-root a b c)
   (cond
     [(= a 0) "Quadratic coefficient can't be zero" ]
     [else (/
 	      (+ (- b)
                 (sqrt (- (* b  b)
                          (* 4 a c))))
              (* 2 a))]))

;Tests :
(check-expect (quadratic-root 1 2 -8)  2)
(check-expect (quadratic-root 1 -4 4)  2)
(check-expect (quadratic-root 2 -7 3)  3)