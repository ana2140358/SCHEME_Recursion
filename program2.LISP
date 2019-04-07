; Author: Anan Aziz
; Class/ Insturctor: CSC240AA-31404/ Bob Simms
; Program2 description: SCHEME- Recursion and list manipulation
; Date: 01/13/19

;Test cases
;(define List '(("a". 3) ("b". 1) ("c". 2)))
;(define Pair '("d". 4))
;(define Item "a")
;(define ListA '(("a". 3) ("b". 1) ("c". 2)))
;(define ListB '(("a". 7) ("e". 2) ("c". 5)))

; (0) Returns the String value of the pair
(define (getValue Pair)
  (if (null? Pair)
    ()
    (car Pair)
  )
)

; (1) Returns the integer value of the pair
(define (getCount Pair)
  (if (null? Pair)
    ()
    (cdr Pair)
  )
)

; (2) Creates a new pair representing one of the given items
(define (newPair Item)
  (if (null? Item)
    ()
    (cons Item 1)
  )
)

; (3) Returns a new pair that represents one more of the items
(define (incPair Pair)
  (if (null? Pair)
    ()
    (cons (car Pair) (+ (cdr Pair) 1))
  )
)

; (4) Returns a new pair that represents one less of the items
(define (decPair Pair)
  (if (null? Pair)
    ()
    (cons (car Pair) (- (cdr Pair) 1))
  )
)

; (5) Returns a new bag that represents the result of inserting the given
; item in the given list
(define (insertBag List Item)
  (if (null? Item)
    List
    (cons (newPair Item) List)
  )
)

; (6) Returns the number of times the given item is in the list
(define (getBagCount List Item)
  (if (null? Item)
    ()
    (if (string=? Item (car (car List)))
      (cdr (car List))
      (getBagCount (cdr List) Item)
    )
  )
)

; (7) Returns a new bag that represents the result of deleting one instance of the given
; item in the given list
(define (deleteBag List Item)
  (if (null? List)
    ()
    (if (string=? Item (car (car List)))
      (cons (decPair (car List)) (deleteBag (cdr List) Item))
      (cons  (car List) (deleteBag (cdr List) Item))
    )
  )
)

; (8) Returns a new bag that represents the result of deleting all instances of the given
; item in the given list
(define (deleteAllBag List Item)
  (if (null? List)
    ()
    (if (string=? Item (car (car List)))
      (cdr List)
      (deleteAllBag (cdr List) Item)
    )
  )
)