;задание 1-1
(defun insert (X N LIST)
   (cond ((NULL LIST) (cons X LIST))
      ((eq N 1) (cons X LIST))
      (T (cons (car LIST)
            (insert X (- N 1) (CDR LIST))
         )
      )
   )
)

;задание 1-2
(defun delete(N LIST)
    (cond ((eq N 1) (cdr LIST))
          (T (cons (car LIST)
            (Del (- N 1) (cdr LIST)))))
)

;задание 1-3
(defun search (N LIST)
   (cond ((eq LIST nil) "Element wasnt found")
((eq (car LIST) N) "Element was found!")
(t (search N (cdr LIST)))
   )
)

(print (insert 3 4 '(4 7 1 2 5 12)))
(print (delete 5 '(4 6 1 2 7 3 8)))
(print (search 4 '(2 6 3 9 4 8)))