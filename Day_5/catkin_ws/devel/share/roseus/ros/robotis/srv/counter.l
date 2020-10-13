;; Auto-generated. Do not edit!


(when (boundp 'robotis::counter)
  (if (not (find-package "ROBOTIS"))
    (make-package "ROBOTIS"))
  (shadow 'counter (find-package "ROBOTIS")))
(unless (find-package "ROBOTIS::COUNTER")
  (make-package "ROBOTIS::COUNTER"))
(unless (find-package "ROBOTIS::COUNTERREQUEST")
  (make-package "ROBOTIS::COUNTERREQUEST"))
(unless (find-package "ROBOTIS::COUNTERRESPONSE")
  (make-package "ROBOTIS::COUNTERRESPONSE"))

(in-package "ROS")





(defclass robotis::counterRequest
  :super ros::object
  :slots (_x ))

(defmethod robotis::counterRequest
  (:init
   (&key
    ((:x __x) "")
    )
   (send-super :init)
   (setq _x (string __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; string _x
    4 (length _x)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotis::counterResponse
  :super ros::object
  :slots (_y ))

(defmethod robotis::counterResponse
  (:init
   (&key
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _y (round __y))
   self)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotis::counter
  :super ros::object
  :slots ())

(setf (get robotis::counter :md5sum-) "7a568b073f7ad956a756ca8771eb90bd")
(setf (get robotis::counter :datatype-) "robotis/counter")
(setf (get robotis::counter :request) robotis::counterRequest)
(setf (get robotis::counter :response) robotis::counterResponse)

(defmethod robotis::counterRequest
  (:response () (instance robotis::counterResponse :init)))

(setf (get robotis::counterRequest :md5sum-) "7a568b073f7ad956a756ca8771eb90bd")
(setf (get robotis::counterRequest :datatype-) "robotis/counterRequest")
(setf (get robotis::counterRequest :definition-)
      "string x

---

int32 y

")

(setf (get robotis::counterResponse :md5sum-) "7a568b073f7ad956a756ca8771eb90bd")
(setf (get robotis::counterResponse :datatype-) "robotis/counterResponse")
(setf (get robotis::counterResponse :definition-)
      "string x

---

int32 y

")



(provide :robotis/counter "7a568b073f7ad956a756ca8771eb90bd")


