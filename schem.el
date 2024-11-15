;;; schem.el --- R5,6,7RS Scheme to Elisp compiler -*- lexical-binding: t -*-

;; Author: Will Dey
;; Maintainer: Will Dey
;; Version: 1.0.0
;; Package-Requires: ()
;; Homepage: homepage
;; Keywords: scheme

;; This file is not part of GNU Emacs

;; This program is licensed under the Parity Public License 7.0.0 <https://paritylicense.com/versions/7.0.0>.

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun schemel-funcall (f &rest values)
  ;; The entire Schemel Elisp runtime:
  (cl-loop with continuation = (lambda (value) (cl-return value))
           for (continuation . values) = (apply f continuation values)))

(provide 'schemel)

;;; schem.el ends here
