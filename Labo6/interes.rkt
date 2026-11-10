#lang racket

(provide interes)

(define (interes deposito)
  (cond
    [(<= deposito 40000)  (* deposito 7/200)]   ; 3.5%
    [(<= deposito 260000) (* deposito 1/25)]    ; 4%
    [else                 (* deposito 9/200)])) ; 4.5%