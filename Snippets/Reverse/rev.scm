;;;
;;; Given a string 'str', return its reverse
;;;
(define reverse (str)
    (string-reverse str)
)


;;;
;;; Given a number 'num', return its reverse
;;;
(define (reverse num)
    (define rev 0)
    (while (> num 0)
        (set! rev (* rev 10))
        (set! rev (+ rev (modulo num 10)))
        (set! num (truncate (/ num 10)))
    )
    rev
)
