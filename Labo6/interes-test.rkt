#lang racket

(require rackunit
         "interes.rkt")

(check-equal? (interes 10000) 350)
(check-equal? (interes 40000) 1400)
(check-equal? (interes 100000) 4000)
(check-equal? (interes 260000) 10400)
(check-equal? (interes 300000) 13500)