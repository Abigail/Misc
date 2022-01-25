;;;
;;; Does not use caching like the other implementations
;;;

(define (_is_fib n prev last)
    (cond ((= n prev) #t)
          ((< n prev) #f)
          (else (_is_fib n last (+ last prev)))))

(define (is_fib n) (_is_fib n 0 1))
