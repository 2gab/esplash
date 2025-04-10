;;; esplash-header.el --- An alternative header for the esplash screen -*- lexical-binding: t; -*-

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
;;  Alternative header for the esplash screen

;;; References:
;; https://github.com/TheZoraiz/ascii-image-converter
;; https://github.com/willbchang/emacs-dragon-icon

;;; Code:

;;; Headers
;; 30,12

(defun esplash-header-1 ()
  "Emacs China"
  (mapcar (lambda (line)
            (propertize line 'face esplash-header-face))
          '("        ⢀⣠⣤⣴⣶⣶⣶⣶⣶⣶⣦⣤⣄⣀        "
            "⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀"
            "⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣷⣝⣛⠿⢿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀"
            "⠀⢀⣾⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⠷⠶⣦⡍⠁⠀⠙⠿⣿⣿⣿⣿⣿⣷⡀⠀" 
            "⠀⣾⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⢠⣤⣤⣤⣤⣤⣀⣀⣀⣀⡘⠿⣿⣿⣿⣿⣷⠀"
            "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣿⣿⣿⣿⡇"
            "⢸⣿⣿⣿⣿⣿⠋⠉⠀⠀⠀⣀⣀⣀⣤⣤⣬⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇" 
            "⠀⢿⣿⣿⣿⣿⣄⡀⠀⠐⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀"
            "⠀⠈⢿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣈⠉⠙⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀"
            "⠀⠀⠀⠻⣿⣿⣿⣿⣿⣯⣭⣭⣭⣭⣭⣥⣤⣤⣤⣾⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀")))

(provide 'esplash-header)

;;; esplash-header.el ends here
