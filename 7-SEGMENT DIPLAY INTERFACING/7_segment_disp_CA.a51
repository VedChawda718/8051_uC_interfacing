org 0h
	sjmp main 
	org 30h
		db 0c0h,0f9h,0a4h,0b0h,99h,92h,82h,0f8h,80h,98h
			org 50h
				main: mov dptr, #0030h
				l3: mov a,#00h
				movc a, @a+dptr
				mov p2, a
				acall delay
				inc dptr
				mov a, dpl
				cjne a, #3bh, l3
				sjmp main
				
				delay: mov r0,#4
				l1:mov r1, #255
				l2:mov r2, #255
				djnz r2, $
					djnz r1 ,l2
					djnz r0 ,l1
					ret
					end