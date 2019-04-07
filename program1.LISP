; Author: Anan Aziz
; Class/ Insturctor: CSC240AA-31404/ Bob Simms
; Program description: SCHEME- Recursion and list manipulation
; Date: 01/10/19

;-------------------------------------------------------------------

; Test cases
;(define list1 '(7 8 9 8))
;(define list2 '(2 4 8 15))

;-------------------------------------------------------------------

; Function returns the dot-product of two list of numbers

; Main function
(define (dotProduct list1 list2)
	(if (null? list1)
		0
		(+
			(*
				(car list1)
				(car list2)
			)
			(dotProduct (cdr list1) (cdr list2))
		)
	)
)

; Function call for testing
;(dotProduct list1 list2)

;-------------------------------------------------------------------

; Function returns true or false whether the list contains
; duplicates

; Main function
(define (hasDuplicate list1)
 (if( null? list1)
    #f
    (if (listTraversal (car list1) (cdr list1))
      #t
      (hasDuplicate (cdr list1))
    )
  )
)
  
; Helper function returns true if match is found
(define (listTraversal num list)
  (if (null? list)
    #f
    (if (= num (car list))
        #t
        (listTraversal num (cdr list))
     )
   )
)

; Function call for testing
;(hasDuplicate list1)

;-------------------------------------------------------------------

; Function returns the largest difference between corresponding
; numbers from two lists

; Main function
(define (largest list1 list2)
  (if (or (null? list1) (null? list2))
          0
          (if (largest? (absoluteValue (- (car list1) (car list2))) (cdr list1) (cdr list2))
                              (absoluteValue (- (car list1) (car list2)))
                              (largest (cdr list1) (cdr list2))
           )
  )
)

; Helper function compares and returns largest 
(define (largest? num list1 list2)
  (if (or (null? list1) (null? list2))
      #t
      (if (< num (absoluteValue (-(car list1) (car list2))))
          #f
          (largest? num (cdr list1) (cdr list2))
      )
   )
)

; Helper function returns absolute value
(define (absoluteValue list)
  (if ( < list 0)
      (* list -1)
      list
  )
)

; Function call for testing
;(largest list1 list2)  