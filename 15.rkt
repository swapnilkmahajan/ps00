;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
    (define-struct student (id name major))
    ;; A Student is a (make-student NonNegNumber String String).
    ;; It represents a student's information on records of School/University.
    ;; Interpretation:
    ;;   id = unique identification number of a Student.
    ;;   name = Name of a Student (Combination of First and Last name).
    ;;   major = Major subject a Student is enrolled / intend to do as part of his course.