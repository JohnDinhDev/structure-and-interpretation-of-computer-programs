(define (abs x)
    ((if (< x 0) - +) x))

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define accuracy 0.00000000000000000000000000000000000000000000000000000000000000000000000001)

(define (sqrt-iter previous-guess guess x)
    (if (< (abs (- (improve-guess guess x) guess)) accuracy)
        guess
	(sqrt-iter guess (improve-guess guess x) x)))

(define (improve-guess guess x)
    (average guess (/ x guess)))

(sqrt-iter 1.0 1.0 4.0)

(sqrt-iter 1.0 1.0 69.0)

(sqrt-iter 1.0 1.0 12829075932789217829174321.0)


; if improve-guess - guess < 0.00000000001
