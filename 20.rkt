;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)


(define (create-human-image colour) 
  (above (circle 20 "outline" colour)
         (beside(rectangle 15 60 "outline" colour) (rectangle 60 100 "outline" colour) (rectangle 15 60 "outline" colour))
          (beside (rectangle 15 60 "outline" colour)(rectangle 15 60 "outline" colour))))
                                    
