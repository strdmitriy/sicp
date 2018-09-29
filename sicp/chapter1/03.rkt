#lang racket/base

(require rackunit)

(define (solution num1 num2 num3)
  (if (> num1 num2)
      (if (> num3 num2) (+ num1 num3)
      (+ num1 num2))
      (if (> num3 num1) (+ num2 num3)
          (+ num2 num1)))

  )

(check-equal? (solution 5 1 3) 8)
(check-equal? (solution 1 3 5) 8)
(check-equal? (solution 2 8 1) 10)
(check-equal? (solution 0 3 0) 3)