
(define (digit_sum n)
    (define base 10)
    (if (= n 0) 0 (+ (modulo n base) (digit_sum (floor/ n base)))))
