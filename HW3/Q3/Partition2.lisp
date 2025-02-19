(defun partition2 (lst)
  (if (null lst)
      nil
      (let ((first (car lst))
            (second (cadr lst)))
        (if second
            (cons (if (< first second) (list first second) (list second first))
                  (partition2 (cddr lst)))
            (list (list first))))))