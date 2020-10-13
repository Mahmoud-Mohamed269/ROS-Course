; Auto-generated. Do not edit!


(cl:in-package robotis-srv)


;//! \htmlinclude counter-request.msg.html

(cl:defclass <counter-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:string
    :initform ""))
)

(cl:defclass counter-request (<counter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <counter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'counter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotis-srv:<counter-request> is deprecated: use robotis-srv:counter-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <counter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotis-srv:x-val is deprecated.  Use robotis-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <counter-request>) ostream)
  "Serializes a message object of type '<counter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'x))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <counter-request>) istream)
  "Deserializes a message object of type '<counter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'x) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<counter-request>)))
  "Returns string type for a service object of type '<counter-request>"
  "robotis/counterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'counter-request)))
  "Returns string type for a service object of type 'counter-request"
  "robotis/counterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<counter-request>)))
  "Returns md5sum for a message object of type '<counter-request>"
  "7a568b073f7ad956a756ca8771eb90bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'counter-request)))
  "Returns md5sum for a message object of type 'counter-request"
  "7a568b073f7ad956a756ca8771eb90bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<counter-request>)))
  "Returns full string definition for message of type '<counter-request>"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'counter-request)))
  "Returns full string definition for message of type 'counter-request"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <counter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'x))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <counter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'counter-request
    (cl:cons ':x (x msg))
))
;//! \htmlinclude counter-response.msg.html

(cl:defclass <counter-response> (roslisp-msg-protocol:ros-message)
  ((y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass counter-response (<counter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <counter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'counter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotis-srv:<counter-response> is deprecated: use robotis-srv:counter-response instead.")))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <counter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotis-srv:y-val is deprecated.  Use robotis-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <counter-response>) ostream)
  "Serializes a message object of type '<counter-response>"
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <counter-response>) istream)
  "Deserializes a message object of type '<counter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<counter-response>)))
  "Returns string type for a service object of type '<counter-response>"
  "robotis/counterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'counter-response)))
  "Returns string type for a service object of type 'counter-response"
  "robotis/counterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<counter-response>)))
  "Returns md5sum for a message object of type '<counter-response>"
  "7a568b073f7ad956a756ca8771eb90bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'counter-response)))
  "Returns md5sum for a message object of type 'counter-response"
  "7a568b073f7ad956a756ca8771eb90bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<counter-response>)))
  "Returns full string definition for message of type '<counter-response>"
  (cl:format cl:nil "~%int32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'counter-response)))
  "Returns full string definition for message of type 'counter-response"
  (cl:format cl:nil "~%int32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <counter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <counter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'counter-response
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'counter)))
  'counter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'counter)))
  'counter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'counter)))
  "Returns string type for a service object of type '<counter>"
  "robotis/counter")