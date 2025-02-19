(defun partition (arr1 processed1 processed2)
  (cond
    ;; Base case: if there are no unprocessed items, return the two processed lists
    ((null arr1) (list processed1 processed2))
    ;; If there's only one item left, add it to the first processed list
    ((null (cdr arr1)) (list (cons (car arr1) processed1) processed2))
    ;; Otherwise, take the next two items and add one to each processed list
    (t (partition (cddr arr1)
                  (cons (car arr1) processed1)
                  (cons (cadr arr1) processed2)))))