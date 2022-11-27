org 0h
	ljmp main
	org 100h
		main: mov p2, #00h
		acall delay
		mov p2,#0ffh
		acall delay
		sjmp main
		
		delay: mov r0 ,#255
		l1: mov r1 , #255
		djnz r1 ,$
	    djnz r0 ,l1
		ret
		