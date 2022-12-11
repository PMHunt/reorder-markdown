(defun reorder-columns (table-string new-order)
  "Reorders the columns of a markdown table based on the specified new order.
  
  TABLE-STRING is a string representing the markdown table.
  NEW-ORDER is a list of integers representing the new column order,
  with the first column being 1.
  
  Returns a string representing the reordered markdown table."
  (let* ((lines (split-string table-string "\n"))
         (headers (split-string (first lines) "|"))
         (rows (mapcar (lambda (line) (split-string line "|")) (rest lines))))
    (format "~{~a~^|~}" (mapcar (lambda (i) (nth (1- i) headers)) new-order))))
