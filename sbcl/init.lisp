
;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames ".lisp/sbcl/quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; Load cs325.lisp to create the cs325 package.
;(eval-when (:compile-toplevel :load-toplevel :execute)
;  (ql:quickload "cs325")
;  (setq *package* (find-package :cs325-user)))

;;; Carrega o SDRAW, utilitário para desenhar listas como cadeias de CONS,
;;; conforme detalhado no livro "Common Lisp: A Gentle Introduction to
;;; Symbolic Computation" (https://www.cs.cmu.edu/~dst/LispBook/)
;(load "/home/abrantesasf/repositoriosGit/common_lisp_gentle_introduction/utils/sdraw/sdraw.generic")
