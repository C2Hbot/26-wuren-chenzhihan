; Auto-generated. Do not edit!


(cl:in-package demo_turtle2-msg)


;//! \htmlinclude turtle.msg.html

(cl:defclass <turtle> (roslisp-msg-protocol:ros-message)
  ((linear_vx
    :reader linear_vx
    :initarg :linear_vx
    :type cl:float
    :initform 0.0)
   (linear_vy
    :reader linear_vy
    :initarg :linear_vy
    :type cl:float
    :initform 0.0)
   (linear_vz
    :reader linear_vz
    :initarg :linear_vz
    :type cl:float
    :initform 0.0))
)

(cl:defclass turtle (<turtle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo_turtle2-msg:<turtle> is deprecated: use demo_turtle2-msg:turtle instead.")))

(cl:ensure-generic-function 'linear_vx-val :lambda-list '(m))
(cl:defmethod linear_vx-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_turtle2-msg:linear_vx-val is deprecated.  Use demo_turtle2-msg:linear_vx instead.")
  (linear_vx m))

(cl:ensure-generic-function 'linear_vy-val :lambda-list '(m))
(cl:defmethod linear_vy-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_turtle2-msg:linear_vy-val is deprecated.  Use demo_turtle2-msg:linear_vy instead.")
  (linear_vy m))

(cl:ensure-generic-function 'linear_vz-val :lambda-list '(m))
(cl:defmethod linear_vz-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_turtle2-msg:linear_vz-val is deprecated.  Use demo_turtle2-msg:linear_vz instead.")
  (linear_vz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle>) ostream)
  "Serializes a message object of type '<turtle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle>) istream)
  "Deserializes a message object of type '<turtle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_vz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle>)))
  "Returns string type for a message object of type '<turtle>"
  "demo_turtle2/turtle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle)))
  "Returns string type for a message object of type 'turtle"
  "demo_turtle2/turtle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle>)))
  "Returns md5sum for a message object of type '<turtle>"
  "5bcb1a3b1dca3c9e55294fb33328a77b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle)))
  "Returns md5sum for a message object of type 'turtle"
  "5bcb1a3b1dca3c9e55294fb33328a77b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle>)))
  "Returns full string definition for message of type '<turtle>"
  (cl:format cl:nil "float32 linear_vx~%float32 linear_vy~%float32 linear_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle)))
  "Returns full string definition for message of type 'turtle"
  (cl:format cl:nil "float32 linear_vx~%float32 linear_vy~%float32 linear_vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle
    (cl:cons ':linear_vx (linear_vx msg))
    (cl:cons ':linear_vy (linear_vy msg))
    (cl:cons ':linear_vz (linear_vz msg))
))
