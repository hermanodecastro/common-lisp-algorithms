(defun bubble-sort (input-array)
    (let ((input-array-length (length input-array)) (input-array-copy (copy-seq input-array)))
        (do ((i 0 (+ i 1)))
            ((eq i input-array-length))
            (do ((j 0 (+ j 1)))
                ((eq j input-array-length))
                (when (< (aref input-array-copy i) (aref input-array-copy j))
                    (rotatef (aref input-array-copy i) (aref input-array-copy j)))))
    input-array-copy))

; sbcl --script bubble-sort.lisp

(print (bubble-sort '#(5 1 4 2 3)))