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
  :slots (_mystring ))

(defmethod robotis::counterRequest
  (:init
   (&key
    ((:mystring __mystring) "")
    )
   (send-super :init)
   (setq _mystring (string __mystring))
   self)
  (:mystring
   (&optional __mystring)
   (if __mystring (setq _mystring __mystring)) _mystring)
  (:serialization-length
   ()
   (+
    ;; string _mystring
    4 (length _mystring)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mystring
       (write-long (length _mystring) s) (princ _mystring s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mystring
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mystring (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotis::counterResponse
  :super ros::object
  :slots (_count ))

(defmethod robotis::counterResponse
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

(defclass robotis::counter
  :super ros::object
  :slots ())

(setf (get robotis::counter :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotis::counter :datatype-) "robotis/counter")
(setf (get robotis::counter :request) robotis::counterRequest)
(setf (get robotis::counter :response) robotis::counterResponse)

(defmethod robotis::counterRequest
  (:response () (instance robotis::counterResponse :init)))

(setf (get robotis::counterRequest :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotis::counterRequest :datatype-) "robotis/counterRequest")
(setf (get robotis::counterRequest :definition-)
      "string mystring

---

int32 count

")

(setf (get robotis::counterResponse :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotis::counterResponse :datatype-) "robotis/counterResponse")
(setf (get robotis::counterResponse :definition-)
      "string mystring

---

int32 count

")



(provide :robotis/counter "b4834320f090e9235da913886638fb4e")


