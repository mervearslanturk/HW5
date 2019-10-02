;; function of parameter and merge for two list
(define (merge_array L M)
	(if (null? L) M
		(if (null? M) L
			(if (< (car L) (car M))
				(cons (car L) (merge (cdr L) M))
				(cons (car M) (merge (cdr M) L))))))


;;calling function and printing out results   
(print (merge_array '(1 2 3) '(1 5 6)))
