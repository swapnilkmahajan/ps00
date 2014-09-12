;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
    ;; list-string-concat : ListOfStrings -> String
    ;; Given : A list of individual strings 
    ;; Returns A concatinated string of all individual strings in list seperated 
    ;;         Space
    ;; Examples: 
    ;; (list-string-concat (list "Hello!!" "how" "are" "you?")) => "Hello!! how are you?"

(define (list-string-concat lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (first lst)]
    [else (string-append (first lst) (string-append " " (list-string-concat (rest lst))))]))


