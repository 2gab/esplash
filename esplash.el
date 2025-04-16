;;; esplash.el --- An alternative splash screen -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2025  Free Software Foundation, Inc.

;; Author: 2gab <2gabrielhdasilva@gmail.com>
;; Maintainer: 2gab <2gabrielhdasilva@gmail.com>
;; Source: https://github.com/emacs-splash/startup.el
;; Keywords: startup, splash screen, welcome screen
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
;;  Emacs splash screen
;;

;;; References:
;;

;;; Instruction:

;; Manual Installation
;;
;;

;;; Code:

;;; Faces
(defvar esplash-header-face 
  `(:height 1.2
	    :foreground ,(face-attribute 'font-lock-comment-face :foreground)
	    :weight bold))

(defvar esplash-quote-face 
  `(:height 1.0
	    :foreground ,(face-attribute 'error :foreground)))

(defvar esplash-quote-author-face
  `(:height 1.0
             :foreground ,(face-attribute 'default :foreground)
             :slant italic))

(defvar esplash-body-face 
  `(:height 1.0 
	    :foreground ,(face-attribute 'font-lock-type-face :foreground)))

(defvar esplash-body-key-face
  `(:height 1.0
            :foreground ,(face-attribute 'warning :foreground)
	    :weight bold
            :slant italic))

(defvar esplash-footer-face 
  `(:height 1.0
	    :foreground ,(face-attribute 'font-lock-comment-face :foreground)))

(defvar esplash-end-face 
  `(:height 1.0
	    :foreground ,(face-attribute 'success :foreground)
	    :weight bold))

(require 'cl-lib)
(require 'esplash-header) 
(require 'esplash-quote)  
(require 'esplash-body)   
(require 'esplash-footer) 
(require 'esplash-end)    

;;; Components
(defvar esplash-header (esplash-header-1))
(defvar esplash-quote (esplash-quote-1))
(defvar esplash-body (esplash-body-3))
(defvar esplash-footer (esplash-footer-1))
(defvar esplash-end (esplash-end-1))

;;; Gaps
(defvar esplash-header-gap 0.05)
(defvar esplash-quote-gap 0.02)
(defvar esplash-body-gap 0.02)
(defvar esplash-footer-gap 0.02)
(defvar esplash-end-gap 0.05)

(defun esplash-draw ()
  (let* ((buffer (get-buffer-create "*esplash*"))
         (window (get-buffer-window buffer))
         (win-height (if window (window-body-height window) (frame-height)))
         (win-width (if window (window-body-width window) (frame-width)))
         (components `((,esplash-header . (,esplash-header-gap . ,esplash-header-face))
                       (,esplash-quote . (,esplash-quote-gap . ,esplash-quote-face))
                       (,esplash-body . (,esplash-body-gap . ,esplash-body-face))
                       (,esplash-footer . (,esplash-footer-gap . ,esplash-footer-face))
                       (,esplash-end . (,esplash-end-gap . ,esplash-end-face)))))
    (with-current-buffer buffer
      (setq buffer-read-only nil)
      (erase-buffer)
      (cl-loop for (content . (spacing . face)) in components do
               (insert (make-string (round (* spacing win-height)) ?\n))
               (dolist (line (if (listp content) content (list content)))
                 (let* ((line-str (if (listp line) (eval line) line))
                        (line-width (string-width line-str))
                        (padding (max 0 (/ (- win-width line-width) 2))))
                   (insert (make-string padding ?\s))
                   (insert line-str)
                   (insert "\n"))))
      (goto-char (point-min))
      (setq buffer-read-only t))))

(defun esplash-lock-scroll ()
  (when (eq (current-buffer) (get-buffer "*esplash*"))
    (set-window-start (get-buffer-window "*esplash*") 0)
    (set-window-vscroll nil 0)))

(defun esplash ()
  "The Emacs splash screen!"
  (interactive)
  (let ((esplash-buffer (get-buffer-create "*esplash*"))
        (kill-timer (run-with-timer 150 nil
				    (lambda ()
				      (when (buffer-live-p esplash-buffer)
					(kill-buffer esplash-buffer))))))
    (switch-to-buffer esplash-buffer)
    (with-current-buffer esplash-buffer
      (setq buffer-read-only nil)
      (erase-buffer)
      (esplash-draw)
      ;; Keys
      (use-local-map (make-sparse-keymap))
      (local-set-key (kbd "q") #'kill-this-buffer)
      ;; Screen
      (setq-local display-line-numbers nil
		  truncate-lines t
		  buffer-undo-list t
		  vertical-scroll-bar nil
		  horizontal-scroll-bar nil
		  mode-line-format nil)
      (read-only-mode 1)
      ;; Lock scroll
      (setq-local scroll-conservatively 101
		  scroll-preserve-screen-position t
		  scroll-margin 0
		  auto-window-vscroll nil)
      ;; Hooks
      (add-hook 'kill-buffer-hook 
		lambda () (cancel-timer kill-timer)) 
	    	nil t)
      (add-hook 'post-command-hook #'esplash-lock-scroll nil t)
      (add-hook 'window-scroll-functions 
		(lambda (_win _start) 
		(esplash-lock-scroll)) 
		nil t))
    (set-window-dedicated-p 
     	(get-buffer-window esplash-buffer) 
     	t)))

(provide 'esplash)

;;; esplash.el ends here
