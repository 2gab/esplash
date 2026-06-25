;;; esplash-effect.el --- Visual effects for the esplash screen -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2025  Free Software Foundation, Inc.

;; Author: 2gab <2gabrielhdasilva@gmail.com>
;; Maintainer: 2gab <2gabrielhdasilva@gmail.com>
;; Source: https://github.com/emacs-splash/startup.el
;; Keywords: effect, weather, snow
;; Version: 0.1.0
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
;;  Visual effects for the esplash screen.
;;  To activate snow on startup, call after (esplash):
;;
;;    (add-hook 'emacs-startup-hook #'esplash-effect-snow)

;;; Code:

(require 'cl-lib)

;;; Face

(defface esplash-effect-snow-flake
  '((t :foreground "white" :weight light))
  "Face for snow flake characters.")

;;; Configuration

(defvar esplash-effect-snow-rate 0.1
  "Seconds between snow animation frames.")

(defvar esplash-effect-snow-max-flakes 20
  "Maximum number of simultaneous snow flakes.")

(defvar esplash-effect-snow-chars
  (list (propertize "❄" 'face 'esplash-effect-snow-flake)
        (propertize "*" 'face '(:foreground "#cccccc"))
        (propertize "·" 'face '(:foreground "#999999")))
  "Characters used for snow flakes.")

;;; Internal state

(defvar esplash-effect--snow-timer nil)
(defvar esplash-effect--snow-flakes nil
  "Active flakes: each is (col row char-string).")
(defvar esplash-effect--snow-overlays nil
  "All active snow overlays, rebuilt each frame.")
(defvar esplash-effect--snow-row-ovs nil
  "Hash table: row -> overlay, for blank-line before-string accumulation.")

;;; Public API

(defun esplash-effect-snow ()
  "Start snow effect on the *esplash* buffer."
  (interactive)
  (let ((buf (get-buffer "*esplash*")))
    (unless buf (user-error "No active *esplash* buffer"))
    (esplash-effect--snow-stop)
    (setq esplash-effect--snow-flakes nil
          esplash-effect--snow-overlays nil
          esplash-effect--snow-row-ovs (make-hash-table :test #'eql))
    (setq esplash-effect--snow-timer
          (run-with-timer 0 esplash-effect-snow-rate
                          #'esplash-effect--snow-frame buf))
    (with-current-buffer buf
      (add-hook 'kill-buffer-hook #'esplash-effect--snow-stop nil t))))

;;; Internal

(defun esplash-effect--snow-stop ()
  "Stop snow and remove all overlays."
  (when (timerp esplash-effect--snow-timer)
    (cancel-timer esplash-effect--snow-timer)
    (setq esplash-effect--snow-timer nil))
  (mapc #'delete-overlay (or esplash-effect--snow-overlays nil))
  (setq esplash-effect--snow-flakes nil
        esplash-effect--snow-overlays nil
        esplash-effect--snow-row-ovs nil))

(defun esplash-effect--snow-frame (buf)
  "Advance snow by one frame in BUF."
  (when (and esplash-effect--snow-timer (buffer-live-p buf))
    (with-current-buffer buf
      (let* ((win (get-buffer-window buf t))
             (h   (if win (window-body-height win) 40))
             (w   (if win (window-body-width  win) 80)))
        ;; Erase last frame's overlays
        (mapc #'delete-overlay esplash-effect--snow-overlays)
        (setq esplash-effect--snow-overlays nil
              esplash-effect--snow-row-ovs (make-hash-table :test #'eql))
        ;; Move flakes down one row; drop those that leave the window
        (setq esplash-effect--snow-flakes
              (cl-loop for (col row char) in esplash-effect--snow-flakes
                       when (< (1+ row) h)
                       collect (list col (1+ row) char)))
        ;; Spawn one flake per frame with probability max-flakes/h
        (when (and (< (length esplash-effect--snow-flakes) esplash-effect-snow-max-flakes)
                   (< (random (max 1 h)) esplash-effect-snow-max-flakes))
          (push (list (random w)
                      0
                      (nth (random (length esplash-effect-snow-chars))
                           esplash-effect-snow-chars))
                esplash-effect--snow-flakes))
        ;; Draw all flakes
        (dolist (f esplash-effect--snow-flakes)
          (esplash-effect--snow-draw (car f) (cadr f) (caddr f)))))))

(defun esplash-effect--snow-draw (col row char-str)
  "Draw CHAR-STR at COL, ROW in the current buffer."
  (save-excursion
    (goto-char (point-min))
    (when (zerop (forward-line row))
      (let* ((bol (point))
             (eol (line-end-position))
             (len (- eol bol)))
        (if (zerop len)
            ;; Blank line: one overlay per row, before-string accumulates all flakes on it
            (let* ((ov (or (gethash row esplash-effect--snow-row-ovs)
                           (let ((o (make-overlay bol (1+ bol))))
                             (puthash row o esplash-effect--snow-row-ovs)
                             (push o esplash-effect--snow-overlays)
                             o)))
                   (cur    (or (overlay-get ov 'before-string) ""))
                   (canvas (concat cur (make-string (max 0 (- (1+ col) (length cur))) ?\s)))
                   (new    (concat (substring canvas 0 col)
                                   char-str
                                   (substring canvas (1+ col)))))
              (overlay-put ov 'before-string new))
          ;; Content line: only draw on whitespace (centering padding spaces)
          (when (and (< col len)
                     (eq ?\s (char-after (+ bol col))))
            (let ((ov (make-overlay (+ bol col) (1+ (+ bol col)))))
              (overlay-put ov 'display char-str)
              (push ov esplash-effect--snow-overlays))))))))

(provide 'esplash-effect)

;;; esplash-effect.el ends here
