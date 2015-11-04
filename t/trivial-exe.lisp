(in-package :cl-user)
(defpackage trivial-exe-test
  (:use :cl :fiveam)
  (:export :run-tests))
(in-package :trivial-exe-test)

(def-suite tests
  :description "trivial-exe tests.")
(in-suite tests)

(test simple-test
  (is-true
   (pathnamep (trivial-exe:executable-pathname))))

(defun run-tests ()
  (run! 'tests))
