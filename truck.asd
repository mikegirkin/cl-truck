(asdf:defsystem #:truck
  :description "Truck system"
  :author "Mike Girkin <mikegirkin@gmail.com>"
  :version "0.0.1"
  :license "MIT"
  :serial t
  :depends-on (:clack)
  :components ((:file "package")
               (:file "main")))

