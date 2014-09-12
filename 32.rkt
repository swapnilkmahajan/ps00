;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Design a function that takes a list of Points and returns the sum of all distances 
;of those Points from (0,0). You should write a helper function to calculate the
;distance. For simplicity, you can use the Manhattan distance measure (distance = x + y).

(define-struct point (x y))
;a point is a 
;(make-point PosReal PosReal)
;x is X co ordinate of the point with reference to origin 0,0 in x-y plane
;y is y co ordinate of the point with reference to origin 0,0 in x-y plane

;point-fn : Point -> ??
;
;(define (point-fn p)
;  (...
;   (point-x)
;   (point-y)))

;distance-point : Point -> PosReal
;GIVEN : a point on X-Y plane with x and y co-ordiantes
;RETURN : Distance of the point in pixels from origin based on Manhattan distance measure
;STRATEGY : Structral Decomposition on p : Point
(define (distance-point p)
  (+ (point-x p) (point-y p)))


;sum-all-distance : ListOfPoint - > PosReal
;GIVEN : List of points in X-Y plane
;RETURN: Sum of distances of all the points in a given list.
;STRATEGY : Recursion on lst : List
(define (sum-all-distance lst)
  (cond
    [(empty? lst) 0]
    [else(+ (distance-point (first lst)) (sum-all-distance (rest lst)))]))