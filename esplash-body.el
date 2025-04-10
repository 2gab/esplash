;;; esplash-body.el --- An alternative body for the esplash screen -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2025  Free Software Foundation, Inc.

;; Author: 2gab <2gabrielhdasilva@gmail.com>
;; Maintainer: 2gab <2gabrielhdasilva@gmail.com>
;; Source: https://github.com/emacs-splash/startup.el
;; Keywords: body, menu, 
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
;;  Alternative body for the esplash screen

;;; References:

;;; Code:

;;; Menus
(defun esplash-body-1 ()
  ""
  (list
   (concat (propertize "⏱ Recently opened files             " 'face esplash-body-face)
           (propertize "SPC e f" 'face esplash-body-key-face))
   (concat (propertize "🖿 New file                          " 'face esplash-body-face)
           (propertize "SPC e n" 'face esplash-body-key-face))
   (concat (propertize "⛭ Configuration                     " 'face esplash-body-face)
           (propertize "SPC e c" 'face esplash-body-key-face))
   (concat (propertize "⟲ Open last session                 " 'face esplash-body-face)
           (propertize "SPC e l" 'face esplash-body-key-face))
   (concat (propertize "⏻ Quit                              " 'face esplash-body-face)
           (propertize "SPC e q" 'face esplash-body-key-face))))

(defun esplash-body-2 ()
  ""
  (list
   (concat (propertize "⏱ Recently opened files             " 'face esplash-body-face)
           (propertize "SPC e f\n" 'face esplash-body-key-face))
   (concat (propertize "🖿 New file                          " 'face esplash-body-face)
           (propertize "SPC e n\n" 'face esplash-body-key-face))
   (concat (propertize "⛭ Configuration                     " 'face esplash-body-face)
           (propertize "SPC e c\n" 'face esplash-body-key-face))
   (concat (propertize "⟲ Open last session                 " 'face esplash-body-face)
           (propertize "SPC e l\n" 'face esplash-body-key-face))
   (concat (propertize "⏻ Quit                              " 'face esplash-body-face)
           (propertize "SPC e q\n" 'face esplash-body-key-face))))

(defun esplash-body-3 ()
  ""
  (list
   (concat (propertize "Recently opened files             " 'face esplash-body-face)
           (propertize "SPC e f" 'face esplash-body-key-face))
   (concat (propertize "New file                          " 'face esplash-body-face)
           (propertize "SPC e n" 'face esplash-body-key-face))
   (concat (propertize "Configuration                     " 'face esplash-body-face)
           (propertize "SPC e c" 'face esplash-body-key-face))
   (concat (propertize "Open last session                 " 'face esplash-body-face)
           (propertize "SPC e l" 'face esplash-body-key-face))
   (concat (propertize "Quit                              " 'face esplash-body-face)
           (propertize "SPC e q" 'face esplash-body-key-face))))

(defun esplash-body-4 ()
  ""
  (list
   (concat (propertize "Recently opened files             " 'face esplash-body-face)
           (propertize "SPC e f\n" 'face esplash-body-key-face))
   (concat (propertize "New file                          " 'face esplash-body-face)
           (propertize "SPC e n\n" 'face esplash-body-key-face))
   (concat (propertize "Configuration                     " 'face esplash-body-face)
           (propertize "SPC e c\n" 'face esplash-body-key-face))
   (concat (propertize "Open last session                 " 'face esplash-body-face)
           (propertize "SPC e l\n" 'face esplash-body-key-face))
   (concat (propertize "Quit                              " 'face esplash-body-face)
           (propertize "SPC e q\n" 'face esplash-body-key-face))))


(defun esplash-body-5 ()
  ""
  (list
   (concat
    (propertize "⟲ Reload last session               " 'face esplash-body-face)
    (propertize "SPC e l" 'face esplash-body-key-face))
   (concat
    (propertize "🗓 Open org-agenda                   " 'face esplash-body-face)
    (propertize "SPC e a" 'face esplash-body-key-face))
   (concat
    (propertize "⏱ Recently opened files             " 'face esplash-body-face)
    (propertize "SPC e f" 'face esplash-body-key-face))
   (concat
    (propertize "🖿 Open project                      " 'face esplash-body-face)
    (propertize "SPC  e p" 'face esplash-body-key-face))
   (concat
    (propertize "★ Jump to bookmark                  " 'face esplash-body-face)
    (propertize "SPC e b" 'face esplash-body-key-face))
   (concat
    (propertize "⛭ Open private configuration        " 'face esplash-body-face)
    (propertize "SPC e c" 'face esplash-body-key-face))
   (concat
    (propertize "🗞 Search Documentation              " 'face esplash-body-face)
    (propertize "SPC e d" 'face esplash-body-key-face))))

(defun esplash-body-6 ()
  ""
  (list
   (concat
    (propertize "⟲ Reload last session               " 'face esplash-body-face)
    (propertize "SPC e l\n" 'face esplash-body-key-face))
   (concat
    (propertize "🗓 Open org-agenda                   " 'face esplash-body-face)
    (propertize "SPC e a\n" 'face esplash-body-key-face))
   (concat
    (propertize "⏱ Recently opened files             " 'face esplash-body-face)
    (propertize "SPC e f\n" 'face esplash-body-key-face))
   (concat
    (propertize "🖿 Open project                      " 'face esplash-body-face)
    (propertize "SPC e p\n" 'face esplash-body-key-face))
   (concat
    (propertize "★ Jump to bookmark                    " 'face esplash-body-face)
    (propertize "SPC e b\n" 'face esplash-body-key-face))
   (concat
    (propertize "⛭ Open private configuration        " 'face esplash-body-face)
    (propertize "SPC e c\n" 'face esplash-body-key-face))
   (concat
    (propertize "🗞 Search Documentation              " 'face esplash-body-face)
    (propertize "SPC e d\n" 'face esplash-body-key-face))))

(defun esplash-body-7 ()
  ""
  (list
   (concat
    (propertize "Reload last session               " 'face esplash-body-face)
    (propertize "SPC e l" 'face esplash-body-key-face))
   (concat
    (propertize "Open org-agenda                   " 'face esplash-body-face)
    (propertize "SPC e a" 'face esplash-body-key-face))
   (concat
    (propertize "Recently opened files             " 'face esplash-body-face)
    (propertize "SPC e f" 'face esplash-body-key-face))
   (concat
    (propertize "Open project                      " 'face esplash-body-face)
    (propertize "SPC e p" 'face esplash-body-key-face))
   (concat
    (propertize "Jump to bookmark                    " 'face esplash-body-face)
    (propertize "SPC e b" 'face esplash-body-key-face))
   (concat
    (propertize "Open private configuration        " 'face esplash-body-face)
    (propertize "SPC e c" 'face esplash-body-key-face))
   (concat
    (propertize "Search Documentation              " 'face esplash-body-face)
    (propertize "SPC e d" 'face esplash-body-key-face))))

(defun esplash-body-8 ()
  ""
  (list
   (concat
    (propertize "Reload last session               " 'face esplash-body-face)
    (propertize "SPC e l\n" 'face esplash-body-key-face))
   (concat
    (propertize "Open org-agenda                   " 'face esplash-body-face)
    (propertize "SPC e a\n" 'face esplash-body-key-face))
   (concat
    (propertize "Recently opened files             " 'face esplash-body-face)
    (propertize "SPC e f\n" 'face esplash-body-key-face))
   (concat
    (propertize "Open project                      " 'face esplash-body-face)
    (propertize "SPC e p\n" 'face esplash-body-key-face))
   (concat
    (propertize "Jump to bookmark                    " 'face esplash-body-face)
    (propertize "SPC e b\n" 'face esplash-body-key-face))
   (concat
    (propertize "Open private configuration        " 'face esplash-body-face)
    (propertize "SPC e c\n" 'face esplash-body-key-face))
   (concat
    (propertize "Search Documentation              " 'face esplash-body-face)
    (propertize "SPC e d\n" 'face esplash-body-key-face))))

(defun esplash-body-9 ()
  ""
  (list
   (propertize "[?] [⌂Homepage] [🗞Documentation] [⛭Private Configuration]" 'face esplash-body-face)
   (propertize "[🗓Open org-agenda] [⏱Recently opened files]" 'face esplash-body-face)
   (propertize "[🖿Open project] [★Jump to bookmark]" 'face esplash-body-face)))

(defun esplash-body-10 ()
  ""
  (list
   (propertize "[?] [⌂Homepage] [🗞Documentation] [⛭Private Configuration]\n" 'face esplash-body-face)
   (propertize "[🗓Open org-agenda] [⏱Recently opened files]\n" 'face esplash-body-face)
   (propertize "[🖿Open project] [★Jump to bookmark]\n" 'face esplash-body-face)))

(defun esplash-body-11 ()
  ""
  (list
   (propertize "[?] [Homepage] [Documentation] [Private Configuration]\n" 'face esplash-body-face)
   (propertize "[Open org-agenda] [Recently opened files]\n" 'face esplash-body-face)
   (propertize "[Open project] [Jump to bookmark]\n" 'face esplash-body-face)))
(provide 'body)

(defun esplash-body-12 ()
  ""
  (list
   (propertize "[?] [Homepage] [Documentation] [Private Configuration]\n" 'face esplash-body-face)
   (propertize "[Open org-agenda] [Recently opened files]\n" 'face esplash-body-face)
   (propertize "[Open project] [Jump to bookmark]\n" 'face esplash-body-face)))

(provide 'esplash-body)

;;; esplash-body.el ends here
