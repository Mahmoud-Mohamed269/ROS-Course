;; Auto-generated. Do not edit!


(when (boundp 'robotis::mahmoud)
  (if (not (find-package "ROBOTIS"))
    (make-package "ROBOTIS"))
  (shadow 'mahmoud (find-package "ROBOTIS")))
(unless (find-package "ROBOTIS::MAHMOUD")
  (make-package "ROBOTIS::MAHMOUD"))

(in-package "ROS")
;;//! \htmlinclude mahmoud.msg.html


(defclass robotis::mahmoud
  :super ros::object
  :slots (_x _y ))

(defmethod robotis::mahmoud
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotis::mahmoud :md5sum-) "bd7b43fd41d4c47bf5c703cc7d016709")
(setf (get robotis::mahmoud :datatype-) "robotis/mahmoud")
(setf (get robotis::mahmoud :definition-)
      "int32 x
int32 y

")



(provide :robotis/mahmoud "bd7b43fd41d4c47bf5c703cc7d016709")


