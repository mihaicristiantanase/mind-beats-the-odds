;;;; mind-beats-the-odds.lisp

(in-package #:mind-beats-the-odds)

(defun same-n-times (elem n)
  (let ((memory)
        (generation 0))
    (lambda (x)
      (push x memory)
      (incf generation)
      ;; remove extra elements
      (loop for partial on memory
            for idx from 0
            when (>= idx (- n 1))
              do (setf (cdr partial) nil)
                 (return))
      (when (and (= (length memory) n)
               (every #'(lambda (x) (= x elem)) memory))
          (format t "~&Detected after ~a generations.~%" generation)
          (setf memory nil)))))

(defun gen-random-numbers (detector &optional (n 1000000))
  (format t "Focus now!")
  (sleep 1)
  (terpri)
  (loop repeat n do (funcall detector (random 2)))
  (format t "Was anything detected?~%")
  (values))

(defun mind-beats-the-odds-p ()
  (gen-random-numbers (same-n-times 0 24) 30000000))
