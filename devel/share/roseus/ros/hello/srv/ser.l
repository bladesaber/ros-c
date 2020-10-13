;; Auto-generated. Do not edit!


(when (boundp 'hello::ser)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'ser (find-package "HELLO")))
(unless (find-package "HELLO::SER")
  (make-package "HELLO::SER"))
(unless (find-package "HELLO::SERREQUEST")
  (make-package "HELLO::SERREQUEST"))
(unless (find-package "HELLO::SERRESPONSE")
  (make-package "HELLO::SERRESPONSE"))

(in-package "ROS")





(defclass hello::serRequest
  :super ros::object
  :slots (_pwd ))

(defmethod hello::serRequest
  (:init
   (&key
    ((:pwd __pwd) 0)
    )
   (send-super :init)
   (setq _pwd (round __pwd))
   self)
  (:pwd
   (&optional __pwd)
   (if __pwd (setq _pwd __pwd)) _pwd)
  (:serialization-length
   ()
   (+
    ;; int32 _pwd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pwd
       (write-long _pwd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pwd
     (setq _pwd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello::serResponse
  :super ros::object
  :slots (_result ))

(defmethod hello::serResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hello::ser
  :super ros::object
  :slots ())

(setf (get hello::ser :md5sum-) "4a5b2215d3a4f1a449d3560719406531")
(setf (get hello::ser :datatype-) "hello/ser")
(setf (get hello::ser :request) hello::serRequest)
(setf (get hello::ser :response) hello::serResponse)

(defmethod hello::serRequest
  (:response () (instance hello::serResponse :init)))

(setf (get hello::serRequest :md5sum-) "4a5b2215d3a4f1a449d3560719406531")
(setf (get hello::serRequest :datatype-) "hello/serRequest")
(setf (get hello::serRequest :definition-)
      "int32 pwd
---
bool result
")

(setf (get hello::serResponse :md5sum-) "4a5b2215d3a4f1a449d3560719406531")
(setf (get hello::serResponse :datatype-) "hello/serResponse")
(setf (get hello::serResponse :definition-)
      "int32 pwd
---
bool result
")



(provide :hello/ser "4a5b2215d3a4f1a449d3560719406531")


