(defun CF (x n parm)
  "The CF function will compute the following:
   parm = 1 sin
   parm = 2 cos
   parm = 3 tan
   parm = 4 exp
   parm = 5 sinh
   parm = 6 cosh
   parm = 7 tanh"
  (let ((r (if (<= parm 3)
               (- (* x x))
               (* x x)))
        (f (+ (* 4 n) 2))
        (nd (if (<= parm 3)
                   (+ parm 1)
                   (- parm 3)))
        )
    (do ((i n (- i 1)))
        ((= i 0))
      (setf f (+ (- (* 4 i)
                    2)
                 (/ r f))))
    (float (cond ((= nd 1) (/ (+ f x)
                              (- f x)))
                 ((= nd 2) (/ (* 2 x f)
                              (- (* f f)
                                 r)))
                 ((= nd 3) (/ (+ (* f f)
                                 r)
                              (- (* f f)
                                 r)))
                 ((= nd 4) (/ (* 2 x f)
                              (+ (* f f )
                                 r)))
                 (T x)))))

(defun testCF ()
  (mapcar (lambda (parm)
            (mapcar (lambda (x)
                      (CF x 4 parm))
                    '(0.25 0.5 0.7853981634)))
          '(1 2 3 4 5 6 7)))
