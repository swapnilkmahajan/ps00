;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)
    ;; draw-circles-point : ListOfpoints -> Image
    ;; Given : a list of points in x-y plane, where a circle is to 
    ;;         be drawn at each poing
    ;; Returns a scene with width 300 and height 300 having circles drawn at 
    ;;         each point in a list
    ;; Examples: 
    ;; (draw-circles-point (list (make-point 100 40) (make-point 130 60)))




(define SCENE (empty-scene 300 300))
;(define DRAW_CIRCLE 
;  (circle 10 "solid" "blue"))
;;(draw-circles-point (rest lst))

(define (draw-scene lst)
  (place-image (circle 10 "solid" "blue")
               (point-x lst)
               (point-y lst)
               SCENE))
         
(define-struct point (x y))    

(define (draw-circles-point lst)
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (draw-scene (first lst))]
    [else (place-image (circle 10 "solid" "blue")
                       (point-x (first lst)) (point-y (first lst))
                       (draw-circles-point (rest lst)))]))


(draw-circles-point (list (make-point 100 40) (make-point 200 160) (make-point 130 60)))