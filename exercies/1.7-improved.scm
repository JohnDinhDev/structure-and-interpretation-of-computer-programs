(define (abs x) ((if (< x 0) - +) x))
(define (average x y) (/ (+ x y) 2))
(define (square x) (* x x))
(define accuracy 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)

(define (sqrt x) (sqrt-iter 0.0 1.0 x))

(define (sqrt-iter previous-guess guess x)
    (if (good-enough? previous-guess guess x)
        guess
	(sqrt-iter guess (improve-guess guess x) x)))

(define (good-enough? previous-guess guess x)
    (< (abs (- 1 (/ previous-guess guess))) accuracy))
    ;(< (abs (- previous-guess guess)) accuracy))
    ;(< (abs (- (square guess) x)) accuracy))

(define (improve-guess guess x)
    (average guess (/ x guess)))

(sqrt 3.1415926535897932384626433)
