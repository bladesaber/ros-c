; Auto-generated. Do not edit!


(cl:in-package hello-msg)


;//! \htmlinclude person.msg.html

(cl:defclass <person> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (bool_v
    :reader bool_v
    :initarg :bool_v
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass person (<person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-msg:<person> is deprecated: use hello-msg:person instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:name-val is deprecated.  Use hello-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:number-val is deprecated.  Use hello-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:id-val is deprecated.  Use hello-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bool_v-val :lambda-list '(m))
(cl:defmethod bool_v-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-msg:bool_v-val is deprecated.  Use hello-msg:bool_v instead.")
  (bool_v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <person>) ostream)
  "Serializes a message object of type '<person>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bool_v) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <person>) istream)
  "Deserializes a message object of type '<person>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'number) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'bool_v) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<person>)))
  "Returns string type for a message object of type '<person>"
  "hello/person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'person)))
  "Returns string type for a message object of type 'person"
  "hello/person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<person>)))
  "Returns md5sum for a message object of type '<person>"
  "5fd2889dce4f9a84f1828a597bc67ac3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'person)))
  "Returns md5sum for a message object of type 'person"
  "5fd2889dce4f9a84f1828a597bc67ac3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<person>)))
  "Returns full string definition for message of type '<person>"
  (cl:format cl:nil "string name~%float32 number~%int8 id~%bool bool_v~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'person)))
  "Returns full string definition for message of type 'person"
  (cl:format cl:nil "string name~%float32 number~%int8 id~%bool bool_v~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <person>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <person>))
  "Converts a ROS message object to a list"
  (cl:list 'person
    (cl:cons ':name (name msg))
    (cl:cons ':number (number msg))
    (cl:cons ':id (id msg))
    (cl:cons ':bool_v (bool_v msg))
))
