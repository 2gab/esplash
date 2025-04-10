;;; esplash-auote.el --- An alternative quote for the esplash screen -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2025  Free Software Foundation, Inc.

;; Author: 2gab <2gabrielhdasilva@gmail.com>
;; Maintainer: 2gab <2gabrielhdasilva@gmail.com>
;; Source: https://github.com/emacs-splash/startup.el
;; Keywords: header, logo, banner
;; Version: 0.1
;; Package Requires: 

;;
;; This file is not part of GNU Emacs

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;
;;; Commentary:
;;
;;  Alternative quote for the esplash screen

;;; References:
;; https://gist.github.com/QuincyLarson/6a8a1f9472a343ec72ea7e4c36086987

;;; Code:

;;; Quotes
(defun esplash-quote-1 ()
  (list 
   (propertize "Walking on water and developing software from a specification are easy if both are frozen.\n" 'face esplash-quote-face)
   (propertize "- Edward V Berard" 'face esplash-quote-author-face)))

(defun esplash-quote-2 ()
  (list 
   (propertize "Computer science education cannot make anybody an expert programmer any more than studying brushes and pigment can make somebody an expert painter.\n" 'face esplash-quote-face)
   (propertize "- Eric S. Raymond" 'face esplash-quote-author-face)))

(defun esplash-quote-3 ()
  (list 
   (propertize "Talk is cheap. Show me the code.\n" 'face esplash-quote-face)
   (propertize "- Linus Torvalds" 'face esplash-quote-author-face)))

(defun esplash-quote-4 ()
  (list 
   (propertize "In God we trust. All others must bring data.\n" 'face esplash-quote-face)
   (propertize "- W. Edwards Demming" 'face esplash-quote-author-face)))

(defun esplash-quote-5 ()
  (list 
   (propertize "In theory, theory and practice are the same. In practice, they’re not.\n" 'face esplash-quote-face)
   (propertize "- Yoggi Berra" 'face esplash-quote-author-face)))

(defun esplash-quote-6 ()
  (list 
   (propertize "You can’t have great software without a great team, and most software teams behave like dysfunctional families.\n" 'face esplash-quote-face)
   (propertize "- Jim McCarthy" 'face esplash-quote-author-face)))

(provide 'esplash-quote)

;;; esplash-quote.el ends here
