;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |29|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define-struct person (first-name last-name age height weight))

    ;; A Person is a (make-person String String Number Number Number).
    ;; It represents a information of a person.
    ;; Interpretation:
    ;;   fist-name = First name of the Person.
    ;;   last-name = Surname/ family name of the Person.
    ;;   age       = Age of the person
    ;;   height    = height of the person in pixels
    ;;   width     = width of the Person in pixels


;; limb : Person Color -> Image
;; Given : Person object for which limbs are to be created
;;         Color of the limb
;; Return : It creats a rectangular limb as per the height of the Person
(define (limb person color)
  (rectangle (* (person-height person)
                               0.1)
                           (* (person-height person)
                               0.3)
                           "outline"
                           color))
;; face : Person Color -> Image
;; Given : Person object for which face to be created
;;         Color of the face
;; Return : It creats a circular face for person as per the height of the Person
(define (face person color)
  (circle (* (person-height person)
                    0.1)
                 "outline" color))

;; chest : Person Color -> Image
;; Given : Person object for which chest is to be created
;;         Color of the chest
;; Return : It creats a rectangular chest as per the height of the Person
(define (chest person color)
  (rectangle (*  (person-height person)
                               0.35)
                           (* (person-height person)
                               0.4)
                           "outline"
                           color))
  
(define (person-image person color)
  (above (face person color)
         (beside (limb person color)
                 (chest person color)
                 (limb person color))
         (beside (limb person color)
                 (limb person color))))


(define (group-photo lst) 
  (cond
    [(empty? lst) "List is Empty"]
    [(empty? (rest lst)) (person-image (first lst) "blue")]
    [else (beside/align "bottom" (person-image (first lst) "blue")
                         (group-photo (rest lst)))]))



(group-photo (list (make-person "Swap" "Mah" 23 300 50) (make-person "Swap" "Mah" 23 100 50) (make-person "Swap" "Mah" 23 250 50)))

(group-photo (list (make-person "Swap" "Mah" 23 300 50) (make-person "Swap" "Mah" 23 100 50)))