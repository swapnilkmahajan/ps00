;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Ex 3: Write the definition of a function that converts a temperature from
;; degrees Fahrenheit to degrees Celsius. The formula for the conversion is
;;C = (F-32) * (5/9) . The contract, purpose statement and examples for this
;;function are:

(define (f->c F)
  ( * (- F 32)
      (/ 5 9 )))

;Tests :
(check-expect (f->c 32) 0)
(check-within (f->c 100) 37.3 37.77777777777778)
