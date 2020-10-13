;; Auto-generated. Do not edit!


(when (boundp 'hello::person)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'person (find-package "HELLO")))
(unless (find-package "HELLO::PERSON")
  (make-package "HELLO::PERSON"))

(in-package "ROS")
;;//! \htmlinclude person.msg.html


(defclass hello::person
  :super ros::object
  :slots (_name _number _id _bool_v ))

(defmethod hello::person
  (:init
   (&key
    ((:name __name) "")
    ((:number __number) 0.0)
    ((:id __id) 0)
    ((:bool_v __bool_v) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _number (float __number))
   (setq _id (round __id))
   (setq _bool_v __bool_v)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:bool_v
   (&optional __bool_v)
   (if __bool_v (setq _bool_v __bool_v)) _bool_v)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _number
    4
    ;; int8 _id
    1
    ;; bool _bool_v
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _number
       (sys::poke _number (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _id
       (write-byte _id s)
     ;; bool _bool_v
       (if _bool_v (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _number
     (setq _number (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; bool _bool_v
     (setq _bool_v (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hello::person :md5sum-) "5fd2889dce4f9a84f1828a597bc67ac3")
(setf (get hello::person :datatype-) "hello/person")
(setf (get hello::person :definition-)
      "string name
float32 number
int8 id
bool bool_v
")



(provide :hello/person "5fd2889dce4f9a84f1828a597bc67ac3")


