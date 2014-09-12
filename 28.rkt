;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)


(define (list-string-concat lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (first lst)]
    [else (string-append (first lst) (string-append " " (list-string-concat (rest lst))))]))


(define (multi-list-concat lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (first lst)]
    [else (string-append (list-string-concat (first lst))
                         (string-append " " (list-string-concat(multi-list-concat (rest lst)))))]))


;(multi-list-concat (list (list "Hello" "How") (list "are" "you?")))

(define (string-to-image lst)
  (text (multi-list-concat lst) 10 "Red"))


(string-to-image (list (list "Hello" "How") (list "are" "you?")))