; Auto-generated. Do not edit!


(cl:in-package opt_msgs-msg)


;//! \htmlinclude HumanEntry.msg.html

(cl:defclass <HumanEntry> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (personID
    :reader personID
    :initarg :personID
    :type cl:integer
    :initform 0)
   (personCentroidX
    :reader personCentroidX
    :initarg :personCentroidX
    :type cl:float
    :initform 0.0)
   (personCentroidY
    :reader personCentroidY
    :initarg :personCentroidY
    :type cl:float
    :initform 0.0)
   (personCentroidZ
    :reader personCentroidZ
    :initarg :personCentroidZ
    :type cl:float
    :initform 0.0)
   (personBoundingBoxTopCenterX
    :reader personBoundingBoxTopCenterX
    :initarg :personBoundingBoxTopCenterX
    :type cl:float
    :initform 0.0)
   (personBoundingBoxTopCenterY
    :reader personBoundingBoxTopCenterY
    :initarg :personBoundingBoxTopCenterY
    :type cl:float
    :initform 0.0)
   (personBoundingBoxTopCenterZ
    :reader personBoundingBoxTopCenterZ
    :initarg :personBoundingBoxTopCenterZ
    :type cl:float
    :initform 0.0)
   (Xvelocity
    :reader Xvelocity
    :initarg :Xvelocity
    :type cl:float
    :initform 0.0)
   (Yvelocity
    :reader Yvelocity
    :initarg :Yvelocity
    :type cl:float
    :initform 0.0)
   (Zvelocity
    :reader Zvelocity
    :initarg :Zvelocity
    :type cl:float
    :initform 0.0)
   (ROIwidth
    :reader ROIwidth
    :initarg :ROIwidth
    :type cl:float
    :initform 0.0)
   (ROIheight
    :reader ROIheight
    :initarg :ROIheight
    :type cl:float
    :initform 0.0)
   (Xsigma
    :reader Xsigma
    :initarg :Xsigma
    :type cl:float
    :initform 0.0)
   (Ysigma
    :reader Ysigma
    :initarg :Ysigma
    :type cl:float
    :initform 0.0)
   (Zsigma
    :reader Zsigma
    :initarg :Zsigma
    :type cl:float
    :initform 0.0))
)

(cl:defclass HumanEntry (<HumanEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opt_msgs-msg:<HumanEntry> is deprecated: use opt_msgs-msg:HumanEntry instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:stamp-val is deprecated.  Use opt_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'personID-val :lambda-list '(m))
(cl:defmethod personID-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personID-val is deprecated.  Use opt_msgs-msg:personID instead.")
  (personID m))

(cl:ensure-generic-function 'personCentroidX-val :lambda-list '(m))
(cl:defmethod personCentroidX-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personCentroidX-val is deprecated.  Use opt_msgs-msg:personCentroidX instead.")
  (personCentroidX m))

(cl:ensure-generic-function 'personCentroidY-val :lambda-list '(m))
(cl:defmethod personCentroidY-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personCentroidY-val is deprecated.  Use opt_msgs-msg:personCentroidY instead.")
  (personCentroidY m))

(cl:ensure-generic-function 'personCentroidZ-val :lambda-list '(m))
(cl:defmethod personCentroidZ-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personCentroidZ-val is deprecated.  Use opt_msgs-msg:personCentroidZ instead.")
  (personCentroidZ m))

(cl:ensure-generic-function 'personBoundingBoxTopCenterX-val :lambda-list '(m))
(cl:defmethod personBoundingBoxTopCenterX-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personBoundingBoxTopCenterX-val is deprecated.  Use opt_msgs-msg:personBoundingBoxTopCenterX instead.")
  (personBoundingBoxTopCenterX m))

(cl:ensure-generic-function 'personBoundingBoxTopCenterY-val :lambda-list '(m))
(cl:defmethod personBoundingBoxTopCenterY-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personBoundingBoxTopCenterY-val is deprecated.  Use opt_msgs-msg:personBoundingBoxTopCenterY instead.")
  (personBoundingBoxTopCenterY m))

(cl:ensure-generic-function 'personBoundingBoxTopCenterZ-val :lambda-list '(m))
(cl:defmethod personBoundingBoxTopCenterZ-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:personBoundingBoxTopCenterZ-val is deprecated.  Use opt_msgs-msg:personBoundingBoxTopCenterZ instead.")
  (personBoundingBoxTopCenterZ m))

(cl:ensure-generic-function 'Xvelocity-val :lambda-list '(m))
(cl:defmethod Xvelocity-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Xvelocity-val is deprecated.  Use opt_msgs-msg:Xvelocity instead.")
  (Xvelocity m))

(cl:ensure-generic-function 'Yvelocity-val :lambda-list '(m))
(cl:defmethod Yvelocity-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Yvelocity-val is deprecated.  Use opt_msgs-msg:Yvelocity instead.")
  (Yvelocity m))

(cl:ensure-generic-function 'Zvelocity-val :lambda-list '(m))
(cl:defmethod Zvelocity-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Zvelocity-val is deprecated.  Use opt_msgs-msg:Zvelocity instead.")
  (Zvelocity m))

(cl:ensure-generic-function 'ROIwidth-val :lambda-list '(m))
(cl:defmethod ROIwidth-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:ROIwidth-val is deprecated.  Use opt_msgs-msg:ROIwidth instead.")
  (ROIwidth m))

(cl:ensure-generic-function 'ROIheight-val :lambda-list '(m))
(cl:defmethod ROIheight-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:ROIheight-val is deprecated.  Use opt_msgs-msg:ROIheight instead.")
  (ROIheight m))

(cl:ensure-generic-function 'Xsigma-val :lambda-list '(m))
(cl:defmethod Xsigma-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Xsigma-val is deprecated.  Use opt_msgs-msg:Xsigma instead.")
  (Xsigma m))

(cl:ensure-generic-function 'Ysigma-val :lambda-list '(m))
(cl:defmethod Ysigma-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Ysigma-val is deprecated.  Use opt_msgs-msg:Ysigma instead.")
  (Ysigma m))

(cl:ensure-generic-function 'Zsigma-val :lambda-list '(m))
(cl:defmethod Zsigma-val ((m <HumanEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opt_msgs-msg:Zsigma-val is deprecated.  Use opt_msgs-msg:Zsigma instead.")
  (Zsigma m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanEntry>) ostream)
  "Serializes a message object of type '<HumanEntry>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'personID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'personID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personCentroidX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personCentroidY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personCentroidZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personBoundingBoxTopCenterX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personBoundingBoxTopCenterY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'personBoundingBoxTopCenterZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Xvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Yvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Zvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ROIwidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ROIheight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Xsigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Ysigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Zsigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanEntry>) istream)
  "Deserializes a message object of type '<HumanEntry>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'personID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personCentroidX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personCentroidY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personCentroidZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personBoundingBoxTopCenterX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personBoundingBoxTopCenterY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'personBoundingBoxTopCenterZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Xvelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Yvelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Zvelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ROIwidth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ROIheight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Xsigma) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ysigma) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Zsigma) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanEntry>)))
  "Returns string type for a message object of type '<HumanEntry>"
  "opt_msgs/HumanEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanEntry)))
  "Returns string type for a message object of type 'HumanEntry"
  "opt_msgs/HumanEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanEntry>)))
  "Returns md5sum for a message object of type '<HumanEntry>"
  "62ab54a7d1e278036ce98ff633f1bef9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanEntry)))
  "Returns md5sum for a message object of type 'HumanEntry"
  "62ab54a7d1e278036ce98ff633f1bef9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanEntry>)))
  "Returns full string definition for message of type '<HumanEntry>"
  (cl:format cl:nil "time stamp~%uint64 personID~%float64 personCentroidX~%float64 personCentroidY~%float64 personCentroidZ~%float64 personBoundingBoxTopCenterX~%float64 personBoundingBoxTopCenterY~%float64 personBoundingBoxTopCenterZ~%float64 Xvelocity~%float64 Yvelocity~%float64 Zvelocity~%float64 ROIwidth~%float64 ROIheight~%float64 Xsigma~%float64 Ysigma~%float64 Zsigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanEntry)))
  "Returns full string definition for message of type 'HumanEntry"
  (cl:format cl:nil "time stamp~%uint64 personID~%float64 personCentroidX~%float64 personCentroidY~%float64 personCentroidZ~%float64 personBoundingBoxTopCenterX~%float64 personBoundingBoxTopCenterY~%float64 personBoundingBoxTopCenterZ~%float64 Xvelocity~%float64 Yvelocity~%float64 Zvelocity~%float64 ROIwidth~%float64 ROIheight~%float64 Xsigma~%float64 Ysigma~%float64 Zsigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanEntry>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanEntry
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':personID (personID msg))
    (cl:cons ':personCentroidX (personCentroidX msg))
    (cl:cons ':personCentroidY (personCentroidY msg))
    (cl:cons ':personCentroidZ (personCentroidZ msg))
    (cl:cons ':personBoundingBoxTopCenterX (personBoundingBoxTopCenterX msg))
    (cl:cons ':personBoundingBoxTopCenterY (personBoundingBoxTopCenterY msg))
    (cl:cons ':personBoundingBoxTopCenterZ (personBoundingBoxTopCenterZ msg))
    (cl:cons ':Xvelocity (Xvelocity msg))
    (cl:cons ':Yvelocity (Yvelocity msg))
    (cl:cons ':Zvelocity (Zvelocity msg))
    (cl:cons ':ROIwidth (ROIwidth msg))
    (cl:cons ':ROIheight (ROIheight msg))
    (cl:cons ':Xsigma (Xsigma msg))
    (cl:cons ':Ysigma (Ysigma msg))
    (cl:cons ':Zsigma (Zsigma msg))
))
