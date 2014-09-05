;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;(make-point true false) : It should give some error as we are trying to pass boolean
;                          instead of numbers. In Racket on the other hand it created
;                          a Point with x component as true and y component as false
;
;(point-x (make-point true false)) => It should return false / give error as (make-point)
;                                     should get Numbers as arguments,but actually when 
;                                     executed in Racket make-point created a Point with
;                                     x component as true and y component as false, and
;                                     returned true that is the x component of this newly
;                                     created Point.