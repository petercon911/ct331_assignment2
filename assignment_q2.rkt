#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

(provide ins_beg)

(define (ins_beg el lst)
  (append 'el 'lst)
  )

(provide ins_end)

(define (ins_end el lst)
  (append 'lst 'el)
  )

(provide cout_top_level)
  
(define (cout_top_level lst)
  (+1 (cout_top_level (cdr lst)))
  )

(provide count_instances)

(define (count_instances el lst)
  (cond(= el (car lst)) (+1 (cout_top_level (cdr lst))))
  )
  
(provide count_instances_tr)
(provide count)

(define (count_instances_tr el lst)
  (count_tr el lst 0)
  )

(define (count_tr el lst num)
  (cond(= el (car lst)) (count el (cdr lst) (+ num 1)))
  )

(provide count_instances_deep)

(define (count_instances_deep el lst)
  (count_deep el lst 0)
  )

(define (count_deep el lst num)
  (if (= (car lst) list)
      (if
       (= el (car lst)) (count_deep el (cdr lst) (+ num 1))
      (else
       (count_deep el cdr lst num)))
  (else (= el (car lst))
        (count el (cdr lst) (+ num 1))))
  )
 

