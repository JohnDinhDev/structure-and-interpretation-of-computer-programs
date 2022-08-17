(define (square x) (* x x))
(define (sumOfSquares x y) (+ (square x) (square y)))
(define (getSmallestOfThree x y z)
  (cond ((and (<= x y) (<= x z)) x)
	((and (<= y x) (<= y z)) y)
	(else z)))

(define (f x y z)
    (cond ((= x (getSmallestOfThree x y z)) (sumOfSquares y z))
	  ((= y (getSmallestOfThree x y z)) (sumOfSquares x z))
	  (else (sumOfSquares x y))))

(f 5 1 10)


