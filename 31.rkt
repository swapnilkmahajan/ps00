;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define (image-list lst)
  (cond
    [(empty? lst) empty]
    [else (cons (circle (first lst) "solid" "blue") (image-list (rest lst)))]))


(image-list (list 2 5 10 20  10 19 3))