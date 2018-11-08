#lang racket
(define (display_tree node)
(cond(= (car node) null)
     (cadr node)
   (display_tree (caddr node))
   (else (display_tree car node))
  )
  )

(define (find_el node el)
(cond(= (car node) null)
     (cond
       (= (cadr node) el) (return #t)
       (= (caddr node) null) (return #f)
       (else (find_el (caddr node)))
     )
     (else (find_el car node))
  )
  )

(define (put_el node el)
  (cond ( = (cadr node) null) (= (cadr node) el)
        ( < (cadr node) el) (put_el (car node) el)
        ( > (cadr node) el) (put_el (caddr node) el)
        ( = (cadr node) el) (put_el (car node) el)
        )
  )

(define (put_lst node lst)
  (if (= lst null) return)
  (cond ( = (cadr node) null) (= (cadr node) lst) (put_lst node (cdr lst))
        ( < (cadr node) el) (put_el (car node) lst)
        ( > (cadr node) el) (put_el (caddr node) lst)
        ( = (cadr node) el) (put_el (car node) lst)
        )

  )

(define (sort_tree lst)


  )

(define (h_order_tree)


  )
