;;;;

(defparameter *array-a*
  (make-array 10 :initial-contents '(1 2 4 6 5 3 9 8 7 10)))

(defun bubble-sort (array)   ;冒泡排序,数组
  (let ((array-test array)
	(var nil))
    (dotimes (i (1- (length array)) array-test)
      (dotimes (j (- (length array) 1))             ; 两次循环排序
	(if (> (aref array-test j) (aref array-test (1+ j))) ;如果前一个数组元素比后一个数组元素大，则交换他们的值
	    (progn
	      (setf var (aref array-test j))
	      (setf (aref array-test j)
		    (aref array-test (1+ j))) 
	      (setf (aref array-test (1+ j))
		    var))   ;以上三条语句，执行数组元素的交换
	    nil)))))

;; 缺陷  ，使用函数之后，*array-a* 也改变了，



(defun sort-number(lst)      ;    列表元素（数字）
  (let ((temp 0)
	(list (copy-list lst)))  ;使用copy-list 可以让原列表不受到损害(相对于数组的优点）
    (do ((i 0 (1+ i)))
	((> i (1- (length list))) list)
      (do ((j 0 (1+ j )))
	  ((> j (1- (length list))))
	(if (< (nth j list) (nth i list))
	    (progn
	      (setf temp (nth i list))
	      (setf (nth i list) (nth j list))
	      (setf (nth j list ) temp)))))))  ;使用列表存储元素（数字） 并进行排序 ，冒泡排序
