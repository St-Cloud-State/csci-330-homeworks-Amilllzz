(defun merge-lists (lst1 lst2)
  (cond ((null lst1) lst2)
        ((null lst2) lst1)
        ((< (car lst1) (car lst2)) (cons (car lst1) (merge-lists (cdr lst1) lst2)))
        (t (cons (car lst2) (merge-lists lst1 (cdr lst2))))))

(defun merge-pass (lst)
  (if (null (cdr lst))
      lst
      (cons (merge-lists (car lst) (cadr lst))
            (merge-pass (cddr lst)))))