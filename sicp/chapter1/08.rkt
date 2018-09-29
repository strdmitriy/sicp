#lang racket/base

(require rackunit)

(define (newton x y)
  (/ (+ (/ x (* y y) ) (* 2 y)) 3))

(check-equal? (newton 2 2) 3/2)
(check-equal? (newton 3 2) 19/12)
(check-equal? (newton 5 9) 1463/243)