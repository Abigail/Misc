#!/usr/local/bin/guile
!#

;;;
;;; See https://theweeklychallenge.org/blog/perl-weekly-challenge-000
;;;

;;;
;;; Run as: guile --no-auto-compile ch-1.scm
;;;


(use-modules (ice-9 rdelim))

(define (main)
    (define line (read-line))
    (if (not (eof-object? line))
        (begin
            (main)
        )
    )
)

(main)
