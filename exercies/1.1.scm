(define
  (f x)
  (+ x x)
)

(f 10)

;(define (abs x)
;    (cond ((> x 0) x)
;        ((= x 0) 0)
;        ((< x 0) (- x))))

;(define (abs x)
;    (cond ((< x 0) (- x))
;	  (else x)))
;

(define (abs x)
    (if (< x 0)
        (- x)
	x))


(abs (f -50))

(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
b
a)
(cond ((= a 4) 6)
((= b 4) (+ 6 7 a))
(else 25))
(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
((< a b) b)
(else -1))
(+ a 1))
