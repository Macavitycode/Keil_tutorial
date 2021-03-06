				INCLUDE MSP432xx_constants.s          
				INCLUDE MSP432xx_tim_constants.s   
				AREA    main, CODE, READONLY
				EXPORT	__main	      
				ENTRY
				
				; Program to do subtraction of 2 64 bit numbers
				
__main			PROC
				
				; INTEGER 1 [R1 R0]
				LDR r0,= 0x22222222	;LSB
				LDR r1,= 0x88888888	;MSB
				
				; INTEGER 2 [R3 R2]
				LDR r2,= 0x12222222	;LSB
				LDR r3,= 0x96666666	;MSB
				
				; SUBTRACTION [[R3 R2] - [R1 R0]]
				SUBS r4, r2, r0	;LSB
				SBC r5, r3, r1	;MSB
				
				;Final integer is [R4 R5]
				
__stop			B __stop
				ENDP