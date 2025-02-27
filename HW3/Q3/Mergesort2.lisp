(defun bottom-up-mergesort (lst)
  (let ((pairs (partition2 lst)))
    (labels ((merge-all (lst)
               (if (null (cdr lst))
                   (car lst)
                   (merge-all (merge-pass lst)))))
      (merge-all pairs))))