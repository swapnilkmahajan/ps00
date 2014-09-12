;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (product lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (first lst)]
    [else (* (first lst) (product (rest lst)))]))


(product (list 1 2))

(product (list))

(product (list 1 2 3 4 5 6 7))