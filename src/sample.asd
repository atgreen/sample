;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: SAMPLE; Base: 10 -*-
;;;
;;; Copyright (C) 2021  Anthony Green <green@moxielogic.com>
;;;
;;; This program is free software: you can redistribute it and/or
;;; modify it under the terms of the GNU Affero General Public License
;;; as published by the Free Software Foundation, either version 3 of
;;; the License, or (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Affero General Public License for more details.
;;;
;;; You should have received a copy of the GNU Affero General Public
;;; License along with this program.  If not, see
;;; <http://www.gnu.org/licenses/>.

(asdf:defsystem #:sample
  :description "A simple sample application"
  :author "Anthony Green <green@moxielogic.com"
  :version "0"
  :serial t
  :components ((:file "package")
	       (:file "sample"))
  :depends-on (:markup :cl-toml :cl-json
               :inferior-shell
	       :hunchentoot :cl-json-util :cl-fad :str :log4cl
	       :cl-ppcre :prometheus :easy-routes
	       :prometheus.formats.text
	       :prometheus.exposers.hunchentoot
	       :prometheus.collectors.sbcl
	       :prometheus.collectors.process))
