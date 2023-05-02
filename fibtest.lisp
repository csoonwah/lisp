(defun fibacc (a b n)
  (declare (optimize (speed 3) (safety 0)))
  (declare (type fixnum n a b))
  (if (< n 2)
    a
	(fibacc (+ a b) a (- n 1))
  )
)

(defun fib-acc (n)
  (fibacc 1 1 n)
)

(defun fib (n)
  (declare (optimize (speed 3) (safety 0)))
  (declare (type fixnum n))
  (let ((z 
    (if (< n 2)
        1
        (+ (fib (- n 1))
           (fib (- n 2))
        )
    )))
  (declare (type fixnum z))
  z) 
)

(defun fib2 (n)
  (declare (optimize (speed 3) (safety 0)))
  (declare (type fixnum n))
    (if (< n 2)
        1
        (+ (fib (- n 1))
           (fib (- n 2))
        )
    )
)
