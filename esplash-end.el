;;; esplash-end.el --- An alternative end for the esplash screen -*- lexical-binding: t; -*-

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
;;  Alternative end for the esplash screen

;;; References:
;; https://github.com/TheZoraiz/ascii-image-converter
;; https://github.com/willbchang/emacs-dragon-icon

;;; Code:

;;; Ends
(defun esplash-end-1 ()
  (list (propertize "esplash.el" 'face esplash-end-face)))

(defun esplash-end-2 ()
  (list (propertize "E S P L A S H" 'face esplash-end-face)))

(defun esplash-end-3 ()
  (list (propertize "[E S P L A S H]" 'face esplash-end-face)))

(defun esplash-end-4 ()
  (list (propertize "Gnu Emacs!" 'face esplash-end-face)))

(defun esplash-end-5 ()
  (list (propertize "Welcome to Emacs!" 'face esplash-end-face)))

(defun esplash-end-6 ()
  (list (propertize "Welcome to the Church of Emacs!" 'face esplash-end-face)))

(defun esplash-end-7 ()
  (list (propertize "> Happy coding!" 'face esplash-end-face)))

(defun esplash-end-8 ()
  (list (propertize "> (setf most-powerful-editor 'emacs)" 'face esplash-end-face)))

(defun esplash-end-9 ()
  (list (propertize "> (setf productivity 'high)" 'face esplash-end-face)))

(defun esplash-end-10 ()
  (list (propertize "Emacs > Vim" 'face esplash-end-face)))

(defun esplash-end-11 ()
  (list (propertize "I can´t quit Emacs ♥" 'face esplash-end-face)))

(defun esplash-end-12 ()
  (list (propertize (concat "> " (expand-file-name "~/"))
                    'face esplash-end-face)))

(defun esplash-end-13 ()
  (let ((current-year (format-time-string "%Y")))
    (list
     (propertize
      "GNU Emacs comes with ABSOLUTELY NO WARRANTY"
      'face esplash-end-face)
     (propertize
      (format "Copyright (C) %s Free Software Foundation, Inc." current-year)
      'face esplash-end-face))))

(defun esplash-end-14 ()
  (let ((system-time-locale "C"))
    (list (propertize
           (format-time-string "%A, %B %d %H:%M")
           'face esplash-end-face
           'esplash-clock t))))

(provide 'esplash-end)

;;; esplash-end.el ends here
