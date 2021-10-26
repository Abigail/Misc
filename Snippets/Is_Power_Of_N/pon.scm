;;;
;;; Return #t if number is a power of n, that is, number == n ^ p
;;; for some non-negative integer p. Return #f otherwise.
;;;
(define (is-power-of-n number n)
    (cond ((< number 1) #f)
          ((= number 1) #t)
          ((> (modulo number n) 0) #f)
          (else (is-power-of-n (/ number n) n)))
)

(define (is-power-of-2 number)
    (is-power-of-n number 2)
)

