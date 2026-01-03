;;; vectors.asd -- Rasterizer and paths manipulation library
;;;; Copyright (C) 2007-2013  Frédéric Jolliton <frederic@jolliton.com>
;;;; This code is licensed under the MIT license.

(defsystem "vec/aa"
  :description "polygon rasterizer"
  :author "Frederic Jolliton <frederic@jolliton.com>"
  :licence "MIT"
  :components ((:file "aa") (:file "aa-bin")))

(defsystem "vec/aa/misc"
  :description "some tools related to vec/aa"
  :author "Frederic Jolliton <frederic@jolliton.com>"
  :licence "MIT"
  :components ((:file "aa-misc")))

(defsystem "vec/paths"
  :description "vectorial paths manipulation"
  :author "Frederic Jolliton <frederic@jolliton.com>"
  :licence "MIT"
  :components 
  ((:file "pkg")
   (:file "paths")
   (:file "annotation")))

(defsystem "vec/paths/ttf"
  :description "TTF vector path manipulation"
  :author "Frederic Jolliton <frederic@jolliton.com>"
  :licence "MIT"
  :depends-on ("vec/paths" "dat")
  :components ((:file "ttf")))

(defsystem "vec"
  :description "vectorial paths manipulation"
  :author "Frederic Jolliton <frederic@jolliton.com>"
  :licence "MIT"
  :depends-on ("vec/aa" "vec/paths")
  :components ((:file "vec")))
