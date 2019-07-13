IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
	x dw 100
	y dw 50
	
	x2 dw 200
	y2 dw 150
	
	x3 dw 150
	y3 dw 100
	
	gtma dw 0
	gtmv dw 0
	
	btma dw 0
	btmv dw 0
	
	rtma dw 0
	rtmv dw 0
	
	conter dw  2182   ; 1091
	mconter dw  0
	
	bluec dw 0
	greenc dw 0
	redc dw 0
	
	gtr db 0
	gtrc db 0 
	btrb db 0
	btrc db 0
	rtrb db 0
	rtrc db 0
	
	
	tr db 0
	bltr db 0
	rltr db 0
	
	trc db 0
	color1 db 0
	color2 db 0
	color3 db 0
	amont1 dw 0
	amont2 dw 0
	weelcolor db 0
	; colors
	yelow db 14
	red db 12
	pink db 13
	drakred db 4
	waite db 15
	green db 2
	lithgreen db 10
	browen db 6
	blue db 1
	litheblue db 9
	cyan db 3
	lith_cyan db 11
	
	sm db "",10,13
	db "    ___  ___   _____  ________ ",10,13
	db "   / _ \/ _ | /  _/ |/ /_  __/ ",10,13
	db "  / ___/ __ |_/ //    / / /    ",10,13
	db " /_/__/_/_|_/___/_/|_/_/_/__" ,10,13
	db "  / _ \/ _ \/  _/ __/_  __/   ",10,13
	db " / // / , _// // _/  / /  ",10,13
	db "/____/_/|_/___/_/   /_/   ",10,13
	db " ",10,13
	db "roles:",10,13
	db "the goal of the game is to paint as much",10,13
	db "of the screen in your colour as possible",10,13
	db "you control the speed of your character ",10,13
	db "",10,13
	db "red:   up left down right  ",10,13
	db "green:   w a s d  ",10,13
	db "blue:  i j k l ",10,13
	db "",10,13
	db "press anything to continue -->"
 
  
                                                                                                                                                                                 
	numstr db '$$$$$$'
	bps db 'blue score is $'
	gps db 'green score is $'
	rps db 'red score is $'
	
	
	saveKey db  0
	
	msg1 db 'Start$'
	msg2 db 'Stop$'
	black db 0
	Clock equ es:6Ch
	
	
	Filename db 'test.txt',0
	filehandle dw ?
	NumOfBytes dw 20
	buffer db 20 dup(?),"$"
	ErrorMsg db ?
	
a0      dw   43388       ;   27.5000 hz
ais0    dw   40953       ;   29.1353 hz
h0      dw   38655       ;   30.8677 hz
c1      dw   36485       ;   32.7032 hz
cis1    dw   34437       ;   34.6479 hz
d1      dw   32505       ;   36.7081 hz
dis1    dw   30680       ;   38.8909 hz
e1      dw   28958       ;   41.2035 hz
f1      dw   27333       ;   43.6536 hz
fis1    dw   25799       ;   46.2493 hz
g1      dw   24351       ;   48.9995 hz
gis1    dw   22984       ;   51.9130 hz
a1      dw   21694       ;   55.0000 hz
ais1    dw   20477       ;   58.2705 hz
h1      dw   19327       ;   61.7354 hz
c2      dw   18243       ;   65.4064 hz
cis2    dw   17219       ;   69.2957 hz
d2      dw   16252       ;   73.4162 hz
dis2    dw   15340       ;   77.7817 hz
e2      dw   14479       ;   82.4069 hz
f2      dw   13666       ;   87.3071 hz
fis2    dw   12899       ;   92.4986 hz
g2      dw   12175       ;   97.9989 hz
gis2    dw   11492       ;  103.8260 hz
a2      dw   10847       ;  110.0000 hz
ais2    dw   10238       ;  116.5410 hz
h2      dw   9664        ;  123.4710 hz
c3      dw   9121        ;  130.8130 hz
cis3    dw   8609        ;  138.5910 hz
d3      dw   8126        ;  146.8320 hz
dis3    dw   7670        ;  155.5630 hz
e3      dw   7240        ;  164.8140 hz
f3      dw   6833        ;  174.6140 hz
fis3    dw   6450        ;  184.9970 hz
g3      dw   6088        ;  195.9980 hz
gis3    dw   5746        ;  207.6520 hz
a3      dw   5424        ;  220.0000 hz
ais3    dw   5119        ;  233.0820 hz
h3      dw   4832        ;  246.9420 hz
c4      dw   4561        ;  261.6260 hz
cis4    dw   4305        ;  277.1830 hz
d4      dw   4063        ;  293.6650 hz
dis4    dw   3835        ;  311.1270 hz
e4      dw   3620        ;  329.6280 hz
f4      dw   3417        ;  349.2280 hz
fis4    dw   3225        ;  369.9940 hz
g4      dw   3044        ;  391.9950 hz
gis4    dw   2873        ;  415.3050 hz
a4      dw   2712        ;  440.0000 hz
ais4    dw   2560        ;  466.1640 hz
h4      dw   2416        ;  493.8830 hz
c5      dw   2280        ;  523.2510 hz
cis5    dw   2152        ;  554.3650 hz
d5      dw   2032        ;  587.3300 hz
dis5    dw   1918        ;  622.2540 hz
e5      dw   1810        ;  659.2550 hz
f5      dw   1708        ;  698.4560 hz
fis5    dw   1612        ;  739.9890 hz
g5      dw   1522        ;  783.9910 hz
gis5    dw   1437        ;  830.6090 hz
a5      dw   1356        ;  880.0000 hz
ais5    dw   1280        ;  932.3280 hz
h5      dw   1208        ;  987.7670 hz
c6      dw   1140        ; 1046.5000 hz
cis6    dw   1076        ; 1108.7300 hz
d6      dw   1016        ; 1174.6600 hz
dis6    dw    959        ; 1244.5100 hz
e6      dw    905        ; 1318.5100 hz
f6      dw    854        ; 1396.9100 hz
fis6    dw    806        ; 1479.9800 hz
g6      dw    761        ; 1567.9800 hz
gis6    dw    718        ; 1661.2200 hz
a6      dw    678        ; 1760.0000 hz
ais6    dw    640        ; 1864.6600 hz
h6      dw    604        ; 1975.5300 hz
c7      dw    570        ; 2093.0000 hz
cis7    dw    538        ; 2217.4600 hz
d7      dw    508        ; 2349.3200 hz
dis7    dw    479        ; 2489.0200 hz
e7      dw    452        ; 2637.0200 hz
f7      dw    427        ; 2793.8300 hz
fis7    dw    403        ; 2959.9600 hz
g7      dw    380        ; 3135.9600 hz
gis7    dw    359        ; 3322.4400 hz
a7      dw    339        ; 3520.0000 hz
ais7    dw    320        ; 3729.3100 hz
h7      dw    302        ; 3951.0700 hz
c8      dw    285        ; 4186.0100 hz
	
; --------------------------
CODESEG
proc new_line   
; לרדת שורה +להכזיר את הכרי להתחלה 
	mov dl, 13
	mov ah,2
	int 21h
	mov dl, 10
	mov ah,2
	int 21h
	ret
endp new_line

proc Play	
; play a tune
	push ax  
	push bx 
	push dx 
	;preserve ax just in case you use it elsewhere.
	in 	al, 61h         ;activate the speaker by reading from port 61h, 
	or 	al, 00000011b   ;turning on the two rightmost bits & writing it back.
	out 61h, al
	

	
	
	mov al, 0b6h         ;ports 43h and 42h are used for the sound. 43h gets 0b6h    
	out 43h, al       
	
	;port 42h gets a value which is a 'divisor' of: 1193180 to produce a certain sound.
	;For example: If we want the sound of 'La' in the first octave, it is 440hz, so the
	;divisor will be: 2712  ( 1193180 / 2712 is about 440). So 2712 in hexa is: 0A98h.
	;port 42h is only 8 bits, so we first pass the low order (98h) and then the high (0Ah)	
    ;We can only use ax or al for moving values to 42h.	 A note higher would be 440 times
    ;12th root of 2 (about 1.059), hence: 461, and the divisor would be 2559 (09ffh)  
	mov ax, bx
	mov bx ,256
	xor dx,dx
	div bx
	mov bx,ax
	mov ax,dx
	
     ;0FFh  ; for a note higher
	out 42h, ax
	mov ax,bx
	 ;09h   ; for a note higher
	out 42h, ax
	pop dx
	pop bx
	pop ax
	ret
endp Play

proc Stop	
; stop playing
	push ax
	in 	al, 61h         ;Turning off the speaker by turning off
	and al, 11111100b   ;the rightmost two bits. 
	out 61h, al
	pop ax
	ret
endp Stop
proc first1_1 ; play g5
	call stop
	mov bx, [g5]
	call play
	ret
endp first1_1
proc first1_2	; play e5
	call stop
	mov bx, [e5]
	call play
	ret
endp first1_2
proc first1_3	; play d5
	call stop
	mov bx, [d5]
	call play
	ret
endp first1_3
proc first1_4	; play c5
	call stop
	mov bx, [c5]
	call play
	ret
endp first1_4
proc first2_1	; play a4
	call stop
	mov bx, [a4]
	call play
	ret
endp first2_1
proc first2_2	; play g4
	call stop
	mov bx, [g4]
	call play
	ret
endp first2_2
proc first2_3	; play e4
	call stop
	mov bx, [e4]
	call play
	ret
endp first2_3
proc first2_4	; play d4
	call stop
	mov bx, [d4]
	call play
	ret
endp first2_4








proc playmusic
; ניגון המוזיקה
	push ax  
	push bx 
	push dx 
	
	mov ax,[mconter]
	xor dx,dx
	mov bx,64
	div bx
	xor dx,dx
	mov bx,7
	div bx
	
	cmp dx,1
	je bait1
	cmp dx,0
	je bait1
	cmp dx,3
	je bait1
	cmp dx,2
	je jb2
	cmp dx,4
	je jb2
	cmp dx,5
	je jb3
	cmp dx,6
	je jb3
	
	jb3:
	jmp bait3
	
	jb2: 
	jmp bait2
	
	
bait1:
	mov ax,[mconter]
	xor dx,dx
	mov bx,64
	div bx
	cmp dx,0
	jne no1
	call first1_1
	no1:
	cmp dx,4
	jne no2
	call stop
	no2:
	cmp dx,8
	jne no3
	call first1_2
	no3:
	cmp dx,12
	jne no4
	call stop
	no4:
	cmp dx,16
	jne no5
	call first1_3
	no5:
	cmp dx,20
	jne no6
	call stop
	no6:
	cmp dx,24
	jne no7
	call first1_4
	no7:
	cmp dx,28
	jne no8
	call first1_3
	no8:
	cmp dx,32
	jne no9
	call first1_2
	no9:
	cmp dx,36
	jne no10
	call stop
	no10:
	cmp dx,40
	jne no11
	call first1_3
	no11:
	cmp dx,44
	jne no12
	call first1_4
	no12:
	cmp dx,56
	jne no13
	call first1_3
	no13:
	cmp dx,60
	jne no14
	call first1_2
	no14:
		
	
	jmp mend	
bait2:
	mov ax,[mconter]
	xor dx,dx
	mov bx,64
	div bx
	cmp dx,0
	jne no15
	call first2_1
	no15:
	cmp dx,8
	jne no16
	call first2_2
	no16:
	cmp dx,16
	jne no17
	call first2_3
	no17:
	cmp dx,24
	jne no18
	call first2_4
	no18:
	cmp dx,32
	jne no19
	call first2_2
	no19:
	cmp dx,40
	jne no20
	call first2_1
	no20:
	cmp dx,48
	jne no21
	call first1_4
	no21:
	cmp dx,50
	jne no22
	call stop
	no22:
	cmp dx,52
	jne no23
	call first1_4
	no23:
	cmp dx,54
	jne no24
	call stop
	no24:
	cmp dx,56
	jne no25
	call first1_4
	no25:
	cmp dx,58
	jne no26
	call stop
	no26:
	cmp dx,60
	jne no27
	call first1_4
	no27:
	cmp dx,62
	jne no28
	call stop
	no28:
		
	
	jmp mend	
bait3:
	
	mov ax,[mconter]
	xor dx,dx
	mov bx,64
	div bx
	cmp dx,0
	jne no29
	call first2_1
	no29:
	cmp dx,4
	jne no30
	call first1_3
	no30:
	cmp dx,8
	jne no31
	call first2_2
	no31:
	cmp dx,12
	jne no32
	call first1_2
	no32:
	cmp dx,16
	jne no33
	call first2_1
	no33:
	cmp dx,20
	jne no34
	call first1_3
	no34:
	cmp dx,24
	jne no35
	call first1_2
	no35:
	cmp dx,28
	jne no36
	call first1_1
	no36:
	cmp dx,32
	jne no37
	call first2_1
	no37:
	cmp dx,36
	jne no38
	call first1_2
	no38:
	cmp dx,40
	jne no39
	call first1_4
	no39:
	cmp dx,44
	jne no40
	call first2_1
	no40:
	cmp dx,48
	jne no41
	call first1_2
	no41:
	cmp dx,52
	jne no42
	call first1_3
	no42:
	cmp dx,56
	jne no43
	call first1_4
	no43:
	cmp dx,60
	jne no44
	call first2_1
	no44:
	
	jmp mend	



mend:
	pop dx
	pop bx
	pop ax
	ret
endp playmusic


proc weitscreen
; מצייר על כול המסך לבן
	push ax
	push bx
	push cx
	push dx
	mov bh,0h
	
	mov dx,200
	mov al,[waite]
	mov ah,0ch
Yloop:
mov cx,320
xloop:

	
	int 10h
	
	loop xloop
	dec dx
	cmp dx,-1
jne yloop
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp weitscreen

proc checkscreen
; סופר את מספר המסבצות האדום ירוקות וכחולות
	push ax
	push bx
	push cx
	push dx
	
	mov bh,0h
	mov dx,200
	
	mov ah,0Dh
Yloop1:
mov cx,320
xloop1:

	mov ah,0Dh
	int 10h
	mov ah,0
	cmp al,[green]
	jne not_green
	inc [greenc]
	jmp endi
not_green:
	cmp al,[blue]
	jne not_blue
	inc [bluec]
	jmp endi
not_blue:	
	cmp al,[red]
	jne not_red
	inc [redc]
	jmp endi
not_red:
	endi:
	loop xloop1
	dec dx
	cmp dx,-1
jne yloop1
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp checkscreen



proc terned
; לצייר את הטנק בהפוך של 90 מעלות
	mov bh,0h
	mov al,[weelcolor]
	mov ah,0ch
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	
	mov al,[color1]
	add dx,[amont2]
	add cx,1
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	
	add dx,[amont2]
	add cx,1	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]
	mov al,[color2]
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	
	add dx,[amont2]
	add cx,1	
	int 10h
	mov al,[color2]
	add dx,[amont1]
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]
	
	int 10h
	add dx,[amont1]
	mov al,[color3]
	int 10h
	add dx,[amont1]
	mov al,[color2]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	
	add dx,[amont2]
	add cx,1	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]
	mov al,[color2]
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	
	add dx,[amont2]
	add cx,1	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	add dx,[amont1]	
	int 10h
	
	add dx,[amont2]
	add cx,1
	mov al,[weelcolor]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	add dx,[amont1]
	mov al,[color1]
	int 10h
	add dx,[amont1]
	mov al,[weelcolor]
	int 10h
	
	
	ret
endp terned

;---------------------------------------------------------------------------      
; Convert number to a string of digits for print. Requires in DATASEG:
; numstr db '$$$$$'. Proc dollars fills numstr with $ signs and proc
; number2str receive a number in ax and create the string in numstr.

proc          dollars        ;No parms. Fills area in memory with "$" 
              push cx  
              push di              
              mov  cx, 5
              mov  di, offset numstr
dollars_loop: mov  bl, '$'      
              mov  [ di ], bl
              inc  di
              loop dollars_loop
              pop  di
              pop  cx	
              ret
endp          dollars
;---------------------------------------------------------------------------
proc          number2string  
              push cx
              push ax
              push dx
              push bx
			  
              mov  Si, offset numstr
			  
              call dollars  ;FILL STRING WITH $.
              mov  bx, 10   ;DIGITS ARE EXTRACTED DIVIDING BY 10.
              mov  cx, 0    ;COUNTER FOR EXTRACTED DIGITS.
;EXTRACT DIGITS               
cycle1:       mov  dx, 0    ;NECESSARY TO DIVIDE BY BX.       
              div  bx       ;DX:AX / 10 = AX:QUOTIENT DX:REMAINDER.
              push dx       ;PRESERVE DIGIT EXTRACTED FOR LATER.
              inc  cx       ;INCREASE COUNTER FOR EVERY DIGIT EXTRACTED.
              cmp  ax, 0    ;IF NUMBER IS NOT YET ZERO, LOOP.
              jne  cycle1   ; 
;NOW RETRIEVE PUSHED DIGITS.
cycle2:       pop  dx           
              add  dl, 48   ;CONVERT DIGIT TO CHARACTER. 48 is '0' in ASCII 
              mov  [ si ], dl
              inc  si
              loop cycle2  
              pop bx
              pop dx
              pop ax
              pop cx
              ret
endp          number2string

proc Tank
; לצייר את הטנק
	push ax
	push bx
	push cx
	push dx
	
	mov ah,[tr]
	cmp ah,1h
	jne nright
	mov [amont1],1
	mov [amont2],-6
	
	add cx, -3
	
	add dx ,-3
nright:
	cmp ah,2h
	jne nleft
	mov [amont1],-1
	mov [amont2],6
	
	add cx, 3
	
	add dx ,-3
	
nleft:
	cmp ah,3h
	jne nup
	mov [amont1],-1
	mov [amont2],6
	
	add cx, -3
	
	add dx, 3
	call terned
	pop dx
	pop cx
	pop bx
	pop ax
	ret
nup:
	cmp ah,4h
	jne ndown
	mov [amont1],1
	mov [amont2],-6
	
	add cx, -3
	
	add dx ,-3
	call terned
	pop dx
	pop cx
	pop bx
	pop ax
	ret
ndown:
	mov bh,0h
	mov al,[weelcolor]
	mov ah,0ch
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	
	mov al,[color1]
	add cx,[amont2]
	add dx,1
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	
	add cx,[amont2]
	add dx,1	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]
	mov al,[color2]
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	
	add cx,[amont2]
	add dx,1	
	int 10h
	mov al,[color2]
	add cx,[amont1]
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]
	
	int 10h
	add cx,[amont1]
	mov al,[color3]
	int 10h
	add cx,[amont1]
	mov al,[color2]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	
	add cx,[amont2]
	add dx,1	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]
	mov al,[color2]
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	
	add cx,[amont2]
	add dx,1	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	add cx,[amont1]	
	int 10h
	
	add cx,[amont2]
	add dx,1
	mov al,[weelcolor]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	add cx,[amont1]
	mov al,[color1]
	int 10h
	add cx,[amont1]
	mov al,[weelcolor]
	int 10h
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp Tank

proc GreenLook
; לשנות את הפרמטרים של הצבעים של הטנק למראה ירוק
	mov dl,[browen]
	mov [weelcolor],dl
	mov dl,[green]
	mov [color1],dl
	mov dl,[lithgreen]
	mov [color2],dl
	mov dl,[yelow]
	mov [color3],dl
	ret
endp GreenLook
proc RedLook
; לשנות את הפרמטרים של הצבעים של הטנק למראה אדום
	mov dl,[browen]
	mov [weelcolor],dl
	mov dl,[drakred]
	mov [color1],dl
	mov dl,[red]
	mov [color2],dl
	mov dl,[pink]
	mov [color3],dl
	ret
endp RedLook
proc blueLook
; לשנות את הפרמטרים של הצבעים של הטנק למראה כחול
	mov dl,[browen]
	mov [weelcolor],dl
	mov dl,[blue]
	mov [color1],dl
	mov dl,[cyan]
	mov [color2],dl
	mov dl,[litheblue]
	mov [color3],dl
	ret
endp blueLook
proc ubdettank
	; מעדכן את מיקום של הטנק
	dec [conter]
	
	call greentile
	mov cx,[x]
	mov dx,[y]
	call Tank
	call GreenLook
	mov cx,[gtma]
	add [x],cx
	mov cx,[x]
	mov dx,[gtmv]
	add [y],dx
	mov dx,[y]
	call Tank
	
	call bluetile
	mov cx,[x2]
	mov dx,[y2]
	call Tank
	call blueLook
	mov cx,[btma]
	add [x2],cx
	mov cx,[x2]
	mov dx,[btmv]
	add [y2],dx
	mov dx,[y2]
	call Tank
	
	call redtile
	mov cx,[x3]
	mov dx,[y3]
	call Tank
	call RedLook
	mov cx,[rtma]
	add [x3],cx
	mov cx,[x3]
	mov dx,[rtmv]
	add [y3],dx
	mov dx,[y3]
	call Tank
	ret

endp ubdettank
proc endiii 
 ; פרוצרה שמתחילה את סוף התוכנית
	call greentile
	mov cx,[x]
	mov dx,[y]
	call Tank
	
	call bluetile
	mov cx,[x2]
	mov dx,[y2]
	call Tank
	
	call checkscreen
	
	mov ah, 0
	mov al, 2
	int 10h
	
	mov dx, offset gps
	mov ah,9
	int 21h
	
	mov ax, [greenc]
	call number2string
	mov dx, offset numstr
	mov ah,9
	int 21h
	
	call new_line
	
	mov dx, offset bps
	mov ah,9
	int 21h
	
	mov ax, [bluec]
	call number2string
	mov dx, offset numstr
	mov ah,9
	int 21h
	
	call new_line
	
	mov cx ,20
	mov ax, [Clock]
	
sec10:	
FT:
	
	cmp ax, [Clock]
	je FT
	mov ax, [Clock]
	
	loop sec10
	
	mov ax, 4c00h
	int 21h

	ret
endp endiii
proc BlackLook
; מראה שחור לטנק 
	mov dl,[black]
	mov [weelcolor],dl
	mov [color1],dl
	mov [color2],dl
	mov [color3],dl
	ret
endp BlackLook
proc redtile
; מראה אדום לכולוטין לטנק כדי להשעיר שביל אדום
	mov dl,[red]
	mov [weelcolor],dl
	mov [color1],dl
	mov [color2],dl
	mov [color3],dl
	ret
endp redtile
proc greentile
; מראה ירוק לכולוטין לטנק כדי להשעיר שביל ירוק
	mov dl,[green]
	mov [weelcolor],dl
	mov [color1],dl
	mov [color2],dl
	mov [color3],dl
	ret
endp greentile

proc bluetile
; מראה כחול לכולוטין לטנק כדי להשעיר שביל כחול
	mov dl,[blue]
	mov [weelcolor],dl
	mov [color1],dl
	mov [color2],dl
	mov [color3],dl
	ret
endp bluetile

start:
	mov ax, @data
	mov ds, ax



mov ax, 13h
int 10h

mov dx, offset sm
mov ah,9
int 21h

mov ah, 0
int 16h

call weitscreen

call GreenLook
mov [tr],1h
mov dx,[y]
mov cx,[x]

call Tank

call RedLook
mov [tr],1h
mov dx,[y3]
mov cx,[x3]

call Tank

call blueLook
mov [tr],1h
mov dx,[y2]
mov cx,[x2]

call Tank


call playmusic

jmp until_esc


	
until_esc:
	mov ax, 40h
	mov es, ax
	mov ax, [Clock]
FirstTick:
	push ax
	
	
	;check if there is a a new key in buffer
	in al, 64h
	cmp al, 10b
	jne cotino
	jmp ceckclock
		cotino:
		in al, 60h		  ; read key
		;check if the key is same as already pressed
		cmp al, [saveKey]
		jne coni2
		jmp ceckclock
			coni2:
		;new key- store it
		mov [saveKey], al
		;check if the key was pressed or released
		mov ah,al
		and ah, 80h
		
		jz KeyPressed
	KeyReleased:	 
		jmp middel
	KeyPressed:
		cmp al, 11h
		jne s1
		cmp [gtmv],-7
		je s1
		add [gtmv],-1
		mov [tr],4
		
	s1:	
		cmp al, 1Eh
		jne s2
		cmp [gtma],-7
		je s2
		add [gtma],-1
		mov [tr],1
	s2:	
		cmp al, 20h
		jne s3
		cmp [gtma],7
		je s3
		add [gtma],1
		mov [tr],2
	s3:	
		cmp al, 1Fh
		jne s4
		cmp [gtmv],7
		je s4
		add [gtmv],1
		mov [tr],3
		jmp s4
	
	middel:
		jmp until_esc
	s4:	
		cmp al, 17h
		jne s5
		cmp [btmv],-7
		je s5
		add [btmv],-1
		mov [tr],4
		
	s5:	
		cmp al, 24h
		jne s6
		cmp [btma],-7
		je s6
		add [btma],-1
		mov [tr],1
	s6:	
		cmp al, 26h
		jne s7
		cmp [btma],7
		je s7
		add [btma],1
		mov [tr],2
	s7:	
		cmp al, 25h
		jne s8
		cmp [btmv],7
		je s8
		add [btmv],1
		mov [tr],3
		
	s8:
		cmp al, 48h
		jne s9
		cmp [rtmv],-7
		je s9
		add [rtmv],-1
		mov [tr],4
		
	s9:	
		cmp al, 4bh
		jne s10
		cmp [rtma],-7
		je s10
		add [rtma],-1
		mov [tr],1
	s10:	
		cmp al, 4dh
		jne s11
		cmp [rtma],7
		je s11
		add [rtma],1
		mov [tr],2
	s11:	
		cmp al, 50h
		jne s12
		cmp [rtmv],7
		je s12
		add [rtmv],1
		mov [tr],3
	s12:
		cmp al, 1h  ; exit if ESC pressed
		je endiy
		
		
	
	ceckclock:
	
	pop ax
	cmp ax, [Clock]
	jne hiii
	jmp FirstTick
	hiii:
	call ubdettank
	inc [mconter]
	call playmusic
	
	mov ax, [conter]
	cmp ax,0
	je  endiy
	jmp until_esc
	
	
	

endiy :		
	call stop
	
	call greentile
	mov cx,[x]
	mov dx,[y]
	call Tank
	
	call bluetile
	mov cx,[x2]
	mov dx,[y2]
	call Tank
	
	call redtile
	mov cx,[x3]
	mov dx,[y3]
	call Tank
	
	
	call checkscreen
	
	mov ah, 0
	mov al, 2
	int 10h
	
	mov dx, offset gps
	mov ah,9
	int 21h
	
	mov ax, [greenc]
	call number2string
	mov dx, offset numstr
	mov ah,9
	int 21h
	
	call new_line
	
	mov dx, offset bps
	mov ah,9
	int 21h
	
	mov ax, [bluec]
	call number2string
	mov dx, offset numstr
	mov ah,9
	int 21h
	
	call new_line
	
	mov dx, offset rps
	mov ah,9
	int 21h
	
	mov ax, [redc]
	call number2string
	mov dx, offset numstr
	mov ah,9
	int 21h
	
	
	exit:
	
	
	mov ax, 4c00h
	int 21h
END start

