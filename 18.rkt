;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(rectangle 32 64 "solid" "blue")
(rectangle 64 128 "solid" "blue")

;nth element of the sequence
;
;width = 2^n
;height = 2^(n+1)


    ; rec-sequence : NonNegNumber -> Rectangle
    ; GIVEN: Number n, which tells function to return nth element of sequence  
    ; RETURNS: nth element of sequence 2,4; 4,8; 8,16; 16,32; 32,64...
    ; Examples:
    ; (rec-sequence 6) => rectangle with width 64 and height 128
    ; (rec-sequence 8) => rectangle with width 265 and height 512

(define (rec-sequence n)
  (rectangle (expt 2 n)
             (expt 2
                   (add1 n))
             "solid"
             "blue"))

(check-expect (rec-sequence 6) (rectangle 64 128 "solid" "blue"))
(check-expect (rec-sequence 8) (rectangle 256 512 "solid" "blue"))
