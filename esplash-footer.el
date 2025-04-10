;;; esplash-footer.el --- An alternative footer for the esplash screen -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2025  Free Software Foundation, Inc.

;; Author: 2gab <2gabrielhdasilva@gmail.com>
;; Maintainer: 2gab <2gabrielhdasilva@gmail.com>
;; Source: https://github.com/emacs-splash/startup.el
;; Keywords: footer, info, about
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
;;  Alternative footer for the esplash screen

;;; References:

;;; Code:

;;; Footers
(defun esplash-footer-1 ()
  (let* ((num-plugins (if (boundp 'package-activated-list)
                          (length package-activated-list)
                        0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "Total plugins: %d in %.3fs"
                              num-plugins load-time)
                      'face esplash-footer-face))))

(defun esplash-footer-2 ()
  (let* ((num-plugins (if (boundp 'package-activated-list)
                          (length package-activated-list)
                        0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "[Total plugins: %d in %.3fs]"
                              num-plugins load-time)
                      'face esplash-footer-face))))

(defun esplash-footer-3 ()
  (let* ((num-packages (if (boundp 'package-activated-list)
                           (length package-activated-list)
                         0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "%d packages loaded in %.3fs"
                              num-packages load-time)
                      'face esplash-footer-face))))

(defun esplash-footer-4 ()
  (let* ((num-packages (if (boundp 'package-activated-list)
                           (length package-activated-list)
                         0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "[%d packages loaded in %.3fs]"
                              num-packages load-time)
                      'face esplash-footer-face))))

(defun esplash-footer-5 ()
  (let* ((num-packages (if (boundp 'package-activated-list)
                           (length package-activated-list)
                         0))
         (num-modules (if (boundp 'features)
                          (length features)
                        0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "Emacs loaded %d packages across %d modules in %.3fs"
			      num-packages num-modules load-time)
		      'face esplash-footer-face))))

(defun esplash-footer-6 ()
  (let* ((num-packages (if (boundp 'package-activated-list)
                           (length package-activated-list)
                         0))
         (num-modules (if (boundp 'features)
                          (length features)
                        0))
         (load-time (if (and (boundp 'after-init-time) (boundp 'before-init-time))
                        (float-time (time-subtract after-init-time before-init-time))
                      0)))
    (list (propertize (format "[Emacs loaded %d packages across %d modules in %.3fs]"
			      num-packages num-modules load-time)
		      'face esplash-footer-face))))

(provide 'esplash-footer)

;;; esplash-footer.el ends here
