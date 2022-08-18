(define accuracy 0.0000000000000000000000000000000000000000000001)
(define (square x) (* x x))
(define (abs x) ((if (< x 0) - +) x))

(define (cubert x) (cubert-iter 0.0 1.0 x))

(define (cubert-iter previous-guess guess x)
    (if (good-enough? previous-guess guess)
        guess
	(cubert-iter guess (improve-guess guess x) x)))

(define (good-enough? previous-guess guess)
    (< (abs (- 1 (/ previous-guess guess))) accuracy))

(define (improve-guess guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(cubert 696969.0)
