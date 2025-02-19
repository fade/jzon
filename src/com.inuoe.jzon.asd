(defsystem #:com.inuoe.jzon
  :version "1.1.3"
  :description "A correct and safe(er) JSON RFC 8259 parser with sane defaults."
  :author "Wilfredo Velázquez-Rodríguez <zulu.inuoe@gmail.com>"
  :license "MIT"
  :depends-on (#:closer-mop
               #:flexi-streams
               (:feature (:not :ecl) #:float-features)
               #:trivial-gray-streams
               #:uiop)
  :in-order-to ((test-op (test-op "com.inuoe.jzon-tests")))
  :components ((:file "eisel-lemire")
               (:file "ratio-to-double")
               (:file "schubfach")
               (:file "jzon" :depends-on ("eisel-lemire" "ratio-to-double" "schubfach"))))
