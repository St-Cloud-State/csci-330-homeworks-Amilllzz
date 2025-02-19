(defun merge (processed unprocessed1 unprocessed2)
  (cond
    ;; If the first unprocessed list is empty, append the second unprocessed list to the processed part
    ((null unprocessed1) (append processed unprocessed2))
    
    ;; If the second unprocessed list is empty, append the first unprocessed list to the processed part
    ((null unprocessed2) (append processed unprocessed1))
    
    ;; Compare the first elements of the two unprocessed lists
    ((<= (car unprocessed1) (car unprocessed2))
     (merge (append processed (list (car unprocessed1)))
            (cdr unprocessed1)
            unprocessed2))