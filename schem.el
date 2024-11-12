;;; schem.el --- R6RS Scheme to Elisp compiler -*- lexical-binding: t -*-

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

(defun schemel-funcall-cps (f &rest values)
  (cl-loop with continuation = (lambda (value) (cl-return value))
           for (continuation . values) = (apply f continuation values)))

(provide 'schemel)

;;; schem.el ends here
