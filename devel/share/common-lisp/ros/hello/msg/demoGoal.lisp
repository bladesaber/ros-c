; Auto-generated. Do not edit!


(cl:in-package hello-msg)


;//! \htmlinclude demoGoal.msg.html

(cl:defclass <demoGoal> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass demoGoal (<demoGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demoGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demoGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-msg:<demoGoal> is deprecated: use hello-msg:demoGoal instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <demoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:count-val is deprecated.  Use hello-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demoGoal>) ostream)
  "Serializes a message object of type '<demoGoal>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demoGoal>) istream)
  "Deserializes a message object of type '<demoGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demoGoal>)))
  "Returns string type for a message object of type '<demoGoal>"
  "hello/demoGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demoGoal)))
  "Returns string type for a message object of type 'demoGoal"
  "hello/demoGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demoGoal>)))
  "Returns md5sum for a message object of type '<demoGoal>"
  "602d642babe509c7c59f497c23e716a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demoGoal)))
  "Returns md5sum for a message object of type 'demoGoal"
  "602d642babe509c7c59f497c23e716a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demoGoal>)))
  "Returns full string definition for message of type '<demoGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#part1: the goal message, to be sent by the client~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demoGoal)))
  "Returns full string definition for message of type 'demoGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#part1: the goal message, to be sent by the client~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demoGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demoGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'demoGoal
    (cl:cons ':count (count msg))
))
