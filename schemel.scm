(library (schemel)
  (import (nanopass)))

(define-language r6rs
  (Expr (e body)
	(define (func arg ...) body1 ... body2)
	(define var value)))

(define-language r6rs-lisp2-func
  (Expr (e body)
	(- (define (func arg ...) body1 ... body2))
	(+ (defun func (arg ...) body))))

(define-language r6rs-)
