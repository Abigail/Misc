;;
;; Take a binary representation, return its decimal equivalent
;;
(define (bin2dec bin)
    (define len (string-length bin))
    (cond ((= len 0) 0)
          (else (+ (string->number (string-take-right bin 1))
                   (* 2 (bin2dec   (string-drop-right bin 1)))))))


;;
;; Given a decimal number, return its binary representation
;;
(define (_dec2bin dec)
    (cond ((= dec 0) "")
          (else (string-concatenate
                   (list (_dec2bin       (floor-quotient dec 2))
                         (number->string (modulo         dec 2)))))))

(define (dec2bin dec)
    (cond ((= dec 0) "0")
          (else (_dec2bin dec))))
