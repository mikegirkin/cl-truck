(in-package #:truck)

(defvar *app* nil)

(defun handler (env)
  (declare (ignore env))
  '(200 (:content-type "text/html") ("Hello, Clack!")))

(defun start ()
  (print "Starting...")
  (setf *app* (clack:clackup #'handler)))

(defun stop ()
  (print "Stopping...")
  (clack:stop *app*)
  (setf *app* nil))

(defun restart ()
  (when (not (eq *app* nil))
    (stop))
  (start))

(defun main ()
  (start))
