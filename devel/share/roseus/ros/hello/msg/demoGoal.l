;; Auto-generated. Do not edit!


(when (boundp 'hello::demoGoal)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'demoGoal (find-package "HELLO")))
(unless (find-package "HELLO::DEMOGOAL")
  (make-package "HELLO::DEMOGOAL"))

(in-package "ROS")
;;//! \htmlinclude demoGoal.msg.html


(defclass hello::demoGoal
  :super ros::object
  :slots (_count ))

(defmethod hello::demoGoal
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hello::demoGoal :md5sum-) "602d642babe509c7c59f497c23e716a9")
(setf (get hello::demoGoal :datatype-) "hello/demoGoal")
(setf (get hello::demoGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#part1: the goal message, to be sent by the client
int32 count

")



(provide :hello/demoGoal "602d642babe509c7c59f497c23e716a9")


