;;; -*- Mode: Lisp; Package: System -*-
;;;
;;; **********************************************************************
;;; This code was written as part of the CMU Common Lisp project at
;;; Carnegie Mellon University, and has been placed in the public domain.
;;;
(ext:file-comment
  "$Header: src/code/generic-site.lisp $")
;;;
;;; **********************************************************************
;;;
;;; This file is installed as "library:site-init" in binary
;;; distributions of CMUCL.
;;;
(in-package "SYSTEM")

;;; Put your site name here...
(setq *short-site-name* "Abrantes")
(setq *long-site-name* "Abrantes Araújo Silva Filho")

;;; We would appreciate it if each site establishes a local maintainer who can
;;; filter bug reports from novice users to make sure that they really have
;;; found a bug.  Fill in the maintainer's address here..
(when *herald-items*
  (rplaca
   (cdr (member :bugs *herald-items*))
   '("Send questions and bug reports to your local CMUCL maintainer, " terpri
     "or see <http://www.cmucl.org/support.html>." terpri
     "Loaded subsystems:" terpri)))

;;; If you have sources installed on your system, un-comment the following form
;;; and change it to point to the source location.  This will allow the Hemlock
;;; "Edit Definition" command and the debugger to find sources for functions in
;;; the core.
;;;
;;; The definition below assumes the default tree structure in a CMUCL
;;; distribution:
;;;
;;; top
;;;   bin/
;;;   lib/
;;;    cmucl/
;;;     lib/
;;;      lisp*.coore
;;;   man/
;;;   src/
;;;
;;; If your sources are located somewhere else, change this
;;; accordingly.
#|
(setf (search-list "target:")
      (list
       (namestring
	(make-pathname
	 :directory (pathname-directory
		     (merge-pathnames (make-pathname
				       :directory '(:relative :up :up
						    :up "src"))
				      (pathname lisp::*cmucl-core-path*)))))))
|#

;;; Carrega subsistemas:
(require :asdf)
(require :gray-streams)
(require :clx)
(require :clm)
(require :hemlock)
(require :defsystem)

;;; Desabilita o Motif para o debugger:
(setf interface:*interface-style* :tty)

;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames ".lisp/cmucl/quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; Carrega o SDRAW para o CMUCL
;(load "/home/abrantesasf/Lisp/common_lisp_gentle_introduction/utils/sdraw/sdraw.cmucl")

;;; Carrega o DTRACE para o CMUCL
;(load "/home/abrantesasf/Lisp/common_lisp_gentle_introduction/utils/dtrace/dtrace.cmucl")
