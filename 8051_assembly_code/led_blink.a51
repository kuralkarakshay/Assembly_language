ORG 0000H      ; Start at address 0
MOV P1, #00H   ; Configure Port 1 as output
AGAIN:
    MOV P1, #0FFH  ; Turn ON LEDs
    ACALL DELAY
    MOV P1, #00H   ; Turn OFF LEDs
    ACALL DELAY
    SJMP AGAIN     ; Loop forever


DELAY:
    MOV R7, #20   ; Outer loop (controls overall delay)
L1: MOV R6, #250  ; Middle loop
L2: MOV R5, #250  ; Inner loop
L3: DJNZ R5, L3   ; Decrement R5, loop until 0
    DJNZ R6, L2   ; Decrement R6, loop until 0
    DJNZ R7, L1   ; Decrement R7, loop until 0
    RET