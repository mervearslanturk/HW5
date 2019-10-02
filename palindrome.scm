;;returning the list in reverse
(define (reverse ls)
(cond ((null? ls) '())
(else (append (reverse (cdr ls)) (list (car ls))))))

;;function and parameter to take in list.
(define (palin ls)
(check-palin ls (reverse ls)))

(define (check-palin ls1 ls2)
(cond ((null? ls1)'true)

;;checking if the word is Palindrome true and returns true or false
((equal? (car ls1) (car ls2)) (check-palin (cdr ls1) (cdr ls2)))
(else 'false)))

;;calling function and printing results
(display (palin '(j o s h s o j)))
(newline)
