; Auto-generated. Do not edit!


(cl:in-package hello-srv)


;//! \htmlinclude ser-request.msg.html

(cl:defclass <ser-request> (roslisp-msg-protocol:ros-message)
  ((pwd
    :reader pwd
    :initarg :pwd
    :type cl:integer
    :initform 0))
)

(cl:defclass ser-request (<ser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-srv:<ser-request> is deprecated: use hello-srv:ser-request instead.")))

(cl:ensure-generic-function 'pwd-val :lambda-list '(m))
(cl:defmethod pwd-val ((m <ser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:pwd-val is deprecated.  Use hello-srv:pwd instead.")
  (pwd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ser-request>) ostream)
  "Serializes a message object of type '<ser-request>"
  (cl:let* ((signed (cl:slot-value msg 'pwd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ser-request>) istream)
  "Deserializes a message object of type '<ser-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pwd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ser-request>)))
  "Returns string type for a service object of type '<ser-request>"
  "hello/serRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ser-request)))
  "Returns string type for a service object of type 'ser-request"
  "hello/serRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ser-request>)))
  "Returns md5sum for a message object of type '<ser-request>"
  "4a5b2215d3a4f1a449d3560719406531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ser-request)))
  "Returns md5sum for a message object of type 'ser-request"
  "4a5b2215d3a4f1a449d3560719406531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ser-request>)))
  "Returns full string definition for message of type '<ser-request>"
  (cl:format cl:nil "int32 pwd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ser-request)))
  "Returns full string definition for message of type 'ser-request"
  (cl:format cl:nil "int32 pwd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ser-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ser-request
    (cl:cons ':pwd (pwd msg))
))
;//! \htmlinclude ser-response.msg.html

(cl:defclass <ser-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ser-response (<ser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-srv:<ser-response> is deprecated: use hello-srv:ser-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:result-val is deprecated.  Use hello-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ser-response>) ostream)
  "Serializes a message object of type '<ser-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ser-response>) istream)
  "Deserializes a message object of type '<ser-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ser-response>)))
  "Returns string type for a service object of type '<ser-response>"
  "hello/serResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ser-response)))
  "Returns string type for a service object of type 'ser-response"
  "hello/serResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ser-response>)))
  "Returns md5sum for a message object of type '<ser-response>"
  "4a5b2215d3a4f1a449d3560719406531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ser-response)))
  "Returns md5sum for a message object of type 'ser-response"
  "4a5b2215d3a4f1a449d3560719406531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ser-response>)))
  "Returns full string definition for message of type '<ser-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ser-response)))
  "Returns full string definition for message of type 'ser-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ser-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ser-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ser)))
  'ser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ser)))
  'ser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ser)))
  "Returns string type for a service object of type '<ser>"
  "hello/ser")