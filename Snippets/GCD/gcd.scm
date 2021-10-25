;;;
;;; Find the GCD, using Stein's algorithm
;;;    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
;;;
(define (gcd u v)
    (define u_odd (= (modulo u 2) 1))
    (define v_odd (= (modulo v 2) 1))
    (cond ((= u v) u)
          ((= u 0) v)
          ((= v 0) u)
          ((and (not u_odd) (not v_odd)) (ash (gcd (ash u -1) (ash v -1)) 1))
          ((and (not u_odd)      v_odd)       (gcd (ash u -1)      v))
          ((and      u_odd  (not v_odd))      (gcd      u     (ash v -1)))
          ((> u v)                            (gcd (- u v) v))
          (else                               (gcd (- v u) u)))
)
