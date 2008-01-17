;(autoload 'essai-test "essai")

(defun try-check (value1 value2)
  (unless (equal value1 value2)
    (debug nil "Check error" value1 value2)))

(defun try-lisp ()
  ;; Test function to play with! :-)
  (interactive)
  (try-check (pymacs-eval "`2L**111`") "2596148429267413814265248164610048L")
  (pymacs-load "os")
  (os-getcwd)
  (pymacs-load "pymacs-test" "try-")
  ;;
  (pop-to-buffer pymacs-transit-buffer)
  (sit-for 0)
  (try-check (try-test '(allo)) '("Bonjour" "chez vous!"))
  ;;
  (let ((pymacs-trace-transit t))
    nil)
  (end-of-buffer)
  (recenter -1))
