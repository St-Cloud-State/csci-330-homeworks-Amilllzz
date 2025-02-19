* (defun insert-into-sorted-list (item sorted-list)
  (cond ((null sorted-list) (list item))
        ((< item (car sorted-list)) (cons item sorted-list))
        (t (cons (car sorted-list) (insert-into-sorted-list item (cdr sorted-list))))))

(defun merge-pass 
MERGE-LISTS
* (lst)
  (if (null (cdr lst))
      lst
      (cons (merge-lists (car lst) (cadr lst))
            (merge-pass (cddr lst)))))