(defun say-hello()
	(princ "Please enter your name: ")
	(let ((name (read-line)))
		(princ "Nice to meet you,")
		(princ name)))

(defun add-five()
	(princ "Please enter a number: ")
	(let ((number (read)))
		(princ "When I add five I get")
		(princ (+ number 5))))