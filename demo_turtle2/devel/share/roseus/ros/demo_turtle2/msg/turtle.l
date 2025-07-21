;; Auto-generated. Do not edit!


(when (boundp 'demo_turtle2::turtle)
  (if (not (find-package "DEMO_TURTLE2"))
    (make-package "DEMO_TURTLE2"))
  (shadow 'turtle (find-package "DEMO_TURTLE2")))
(unless (find-package "DEMO_TURTLE2::TURTLE")
  (make-package "DEMO_TURTLE2::TURTLE"))

(in-package "ROS")
;;//! \htmlinclude turtle.msg.html


(defclass demo_turtle2::turtle
  :super ros::object
  :slots (_linear_vx _linear_vy _linear_vz ))

(defmethod demo_turtle2::turtle
  (:init
   (&key
    ((:linear_vx __linear_vx) 0.0)
    ((:linear_vy __linear_vy) 0.0)
    ((:linear_vz __linear_vz) 0.0)
    )
   (send-super :init)
   (setq _linear_vx (float __linear_vx))
   (setq _linear_vy (float __linear_vy))
   (setq _linear_vz (float __linear_vz))
   self)
  (:linear_vx
   (&optional __linear_vx)
   (if __linear_vx (setq _linear_vx __linear_vx)) _linear_vx)
  (:linear_vy
   (&optional __linear_vy)
   (if __linear_vy (setq _linear_vy __linear_vy)) _linear_vy)
  (:linear_vz
   (&optional __linear_vz)
   (if __linear_vz (setq _linear_vz __linear_vz)) _linear_vz)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_vx
    4
    ;; float32 _linear_vy
    4
    ;; float32 _linear_vz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_vx
       (sys::poke _linear_vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_vy
       (sys::poke _linear_vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_vz
       (sys::poke _linear_vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_vx
     (setq _linear_vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_vy
     (setq _linear_vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_vz
     (setq _linear_vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get demo_turtle2::turtle :md5sum-) "5bcb1a3b1dca3c9e55294fb33328a77b")
(setf (get demo_turtle2::turtle :datatype-) "demo_turtle2/turtle")
(setf (get demo_turtle2::turtle :definition-)
      "float32 linear_vx
float32 linear_vy
float32 linear_vz
")



(provide :demo_turtle2/turtle "5bcb1a3b1dca3c9e55294fb33328a77b")


