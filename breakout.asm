;;;;;;;;;;;;;;;;;;;;;;;;;;;;clear_screen;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
clear_screen
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #124
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L1_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_all_blocks;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_all_blocks
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L3_breakout
	CONST R7, #112
	HICONST R7, #7
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #14
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L4_breakout
	LEA R7, i
	LDR R3, R7, #0
	CONST R2, #16
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #128
	CMP R7, R3
	BRn L3_breakout
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L7_breakout
	CONST R7, #0
	HICONST R7, #124
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #14
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #11
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L8_breakout
	LEA R7, i
	LDR R3, R7, #0
	CONST R2, #16
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #128
	CMP R7, R3
	BRn L7_breakout
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L11_breakout
	CONST R7, #0
	HICONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #14
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #21
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L12_breakout
	LEA R7, i
	LDR R3, R7, #0
	CONST R2, #16
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #128
	CMP R7, R3
	BRn L11_breakout
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L15_breakout
	CONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #14
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #31
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L16_breakout
	LEA R7, i
	LDR R3, R7, #0
	CONST R2, #16
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #128
	CMP R7, R3
	BRn L15_breakout
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L19_breakout
	CONST R7, #0
	HICONST R7, #246
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #14
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #41
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L20_breakout
	LEA R7, i
	LDR R3, R7, #0
	CONST R2, #16
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #128
	CMP R7, R3
	BRn L19_breakout
L2_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;clear_block;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
clear_block
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #4
	SLL R7, R7, #4
	ADD R7, R7, #-16
	STR R7, R5, #-1
	CONST R7, #10
	LDR R3, R5, #3
	MUL R7, R7, R3
	ADD R7, R7, #-10
	STR R7, R5, #-2
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L24_breakout
	LEA R7, j
	CONST R3, #0
	STR R3, R7, #0
L28_breakout
	LEA R7, i
	LDR R7, R7, #0
	LDR R3, R5, #3
	ADD R3, R3, #-1
	CMP R7, R3
	BRnp L32_breakout
	LEA R7, j
	LDR R7, R7, #0
	LDR R3, R5, #4
	ADD R3, R3, #-1
	CMP R7, R3
	BRnp L32_breakout
	LDR R7, R5, #4
	ADD R7, R7, #-1
	LDR R3, R5, #3
	SLL R3, R3, #3
	LEA R2, block_colors
	ADD R2, R2, #-8
	ADD R3, R3, R2
	ADD R7, R7, R3
	CONST R3, #0
	STR R3, R7, #0
L32_breakout
L29_breakout
	LEA R7, j
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LEA R7, j
	LDR R7, R7, #0
	CONST R3, #8
	CMP R7, R3
	BRn L28_breakout
L25_breakout
	LEA R7, i
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #5
	CMP R7, R3
	BRn L24_breakout
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #10
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #16
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L23_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;redraw_ball;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
redraw_ball
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #4
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #255
	HICONST R7, #255
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #6
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L34_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;redraw_paddle;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
redraw_paddle
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #3
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #11
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #119
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #3
	ADD R7, R7, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #255
	HICONST R7, #255
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #3
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #11
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #119
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #4
	ADD R7, R7, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L35_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;reset_ball;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
reset_ball
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LEA R7, ball_x
	CONST R3, #64
	STR R3, R7, #0
	LEA R3, ball_y
	CONST R2, #60
	STR R2, R3, #0
	CONST R3, #0
	LEA R2, ball_vel_x
	STR R3, R2, #0
	LEA R2, ball_vel_y
	STR R3, R2, #0
	LEA R3, ball_x_scaled
	LDR R7, R7, #0
	SLL R7, R7, #3
	STR R7, R3, #0
L36_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;reset_game;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
reset_game
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, lives_left
	CONST R3, #3
	STR R3, R7, #0
	CONST R7, #0
	LEA R3, blocks_smashed
	STR R7, R3, #0
	LEA R3, paddle_x
	CONST R2, #64
	STR R2, R3, #0
	LEA R3, paddle_vel_x
	STR R7, R3, #0
	JSR reset_ball
	ADD R6, R6, #0	;; free space for arguments
	CONST R7, #0
	STR R7, R5, #-1
L38_breakout
	LDR R7, R5, #-1
	LEA R3, block_colors
	ADD R7, R7, R3
	CONST R3, #112
	HICONST R3, #7
	STR R3, R7, #0
L39_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #8
	CMP R7, R3
	BRn L38_breakout
	CONST R7, #0
	STR R7, R5, #-1
L42_breakout
	LDR R7, R5, #-1
	LEA R3, block_colors
	ADD R3, R3, #8
	ADD R7, R7, R3
	CONST R3, #0
	HICONST R3, #124
	STR R3, R7, #0
L43_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #8
	CMP R7, R3
	BRn L42_breakout
	CONST R7, #0
	STR R7, R5, #-1
L46_breakout
	LDR R7, R5, #-1
	LEA R3, block_colors
	CONST R2, #16
	ADD R3, R3, R2
	ADD R7, R7, R3
	CONST R3, #0
	HICONST R3, #51
	STR R3, R7, #0
L47_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #8
	CMP R7, R3
	BRn L46_breakout
	CONST R7, #0
	STR R7, R5, #-1
L50_breakout
	LDR R7, R5, #-1
	LEA R3, block_colors
	CONST R2, #24
	ADD R3, R3, R2
	ADD R7, R7, R3
	CONST R3, #51
	STR R3, R7, #0
L51_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #8
	CMP R7, R3
	BRn L50_breakout
	CONST R7, #0
	STR R7, R5, #-1
L54_breakout
	LDR R7, R5, #-1
	LEA R3, block_colors
	CONST R2, #32
	ADD R3, R3, R2
	ADD R7, R7, R3
	CONST R3, #0
	HICONST R3, #246
	STR R3, R7, #0
L55_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #8
	CMP R7, R3
	BRn L54_breakout
	JSR clear_screen
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_all_blocks
	ADD R6, R6, #0	;; free space for arguments
	LEA R7, ball_y
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R3, ball_x
	LDR R3, R3, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	JSR redraw_ball
	ADD R6, R6, #4	;; free space for arguments
	LEA R7, paddle_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR redraw_paddle
	ADD R6, R6, #2	;; free space for arguments
L37_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;serve_ball;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
serve_ball
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LEA R7, ball_vel_y
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L59_breakout
	LEA R7, ball_x
	CONST R3, #64
	STR R3, R7, #0
	LEA R3, ball_y
	CONST R2, #60
	STR R2, R3, #0
	LEA R3, ball_vel_y
	CONST R2, #1
	STR R2, R3, #0
	LEA R3, ball_vel_x
	CONST R2, #8
	STR R2, R3, #0
	LEA R3, ball_x_scaled
	LDR R7, R7, #0
	SLL R7, R7, #3
	STR R7, R3, #0
L59_breakout
L58_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_paddle_state;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_paddle_state
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, lives_left
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnz L62_breakout
	LEA R7, paddle_x
	LDR R7, R7, #0
	STR R7, R5, #-1
	LDR R7, R5, #3
	CONST R3, #106
	CMP R7, R3
	BRnp L64_breakout
	LEA R7, paddle_vel_x
	LDR R3, R7, #0
	ADD R3, R3, #-1
	STR R3, R7, #0
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRn L66_breakout
	LEA R7, paddle_vel_x
	CONST R3, #-1
	STR R3, R7, #0
L66_breakout
	LEA R7, paddle_vel_x
	LDR R7, R7, #0
	CONST R3, #-4
	CMP R7, R3
	BRzp L68_breakout
	LEA R7, paddle_vel_x
	CONST R3, #-4
	STR R3, R7, #0
L68_breakout
L64_breakout
	LDR R7, R5, #3
	CONST R3, #107
	CMP R7, R3
	BRnp L70_breakout
	LEA R7, paddle_vel_x
	CONST R3, #0
	STR R3, R7, #0
L70_breakout
	LDR R7, R5, #3
	CONST R3, #108
	CMP R7, R3
	BRnp L72_breakout
	LEA R7, paddle_vel_x
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRp L74_breakout
	LEA R7, paddle_vel_x
	CONST R3, #1
	STR R3, R7, #0
L74_breakout
	LEA R7, paddle_vel_x
	LDR R7, R7, #0
	CONST R3, #4
	CMP R7, R3
	BRnz L76_breakout
	LEA R7, paddle_vel_x
	CONST R3, #4
	STR R3, R7, #0
L76_breakout
L72_breakout
	LEA R7, paddle_x
	LDR R3, R7, #0
	LEA R2, paddle_vel_x
	LDR R2, R2, #0
	ADD R3, R3, R2
	STR R3, R7, #0
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRzp L78_breakout
	LEA R7, paddle_x
	CONST R3, #0
	STR R3, R7, #0
L78_breakout
	LEA R7, paddle_x
	LDR R7, R7, #0
	CONST R3, #127
	CMP R7, R3
	BRnz L80_breakout
	LEA R7, paddle_x
	CONST R3, #127
	STR R3, R7, #0
L80_breakout
	LDR R7, R5, #-1
	LEA R3, paddle_x
	LDR R3, R3, #0
	CMP R7, R3
	BRnp L84_breakout
	LEA R7, ball_y
	LDR R7, R7, #0
	CONST R3, #119
	CMP R7, R3
	BRn L82_breakout
L84_breakout
	LEA R7, paddle_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR redraw_paddle
	ADD R6, R6, #2	;; free space for arguments
L82_breakout
L62_breakout
L61_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_ball_position;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_ball_position
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	LEA R7, ball_x
	LDR R7, R7, #0
	STR R7, R5, #-1
	LEA R7, ball_y
	LDR R7, R7, #0
	STR R7, R5, #-2
	LEA R7, ball_y
	LDR R3, R7, #0
	LEA R2, ball_vel_y
	LDR R2, R2, #0
	ADD R3, R3, R2
	STR R3, R7, #0
	LEA R3, ball_x_scaled
	LDR R2, R3, #0
	LEA R1, ball_vel_x
	LDR R1, R1, #0
	ADD R2, R2, R1
	STR R2, R3, #0
	LEA R2, ball_x
	LDR R3, R3, #0
	CONST R1, #8
	DIV R3, R3, R1
	STR R3, R2, #0
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R2, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR redraw_ball
	ADD R6, R6, #4	;; free space for arguments
L85_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;handle_collision_with_walls;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
handle_collision_with_walls
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, ball_y
	LDR R7, R7, #0
	CONST R3, #124
	CMP R7, R3
	BRn L87_breakout
	LEA R7, lives_left
	LDR R7, R7, #0
	ADD R7, R7, #-1
	CONST R3, #0
	CMP R7, R3
	BRnp L89_breakout
	LEA R7, lives_left
	LDR R3, R7, #0
	ADD R3, R3, #-1
	STR R3, R7, #0
	LEA R7, L91_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	JMP L90_breakout
L89_breakout
	LEA R7, lives_left
	LDR R3, R7, #0
	ADD R3, R3, #-1
	STR R3, R7, #0
	JSR reset_ball
	ADD R6, R6, #0	;; free space for arguments
L90_breakout
L87_breakout
	LEA R7, ball_y
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRp L92_breakout
	LEA R7, ball_vel_y
	CONST R3, #-1
	LDR R2, R7, #0
	MUL R3, R3, R2
	STR R3, R7, #0
L92_breakout
	LEA R7, ball_x
	LDR R7, R7, #0
	STR R7, R5, #-1
	CONST R3, #0
	CMP R7, R3
	BRnz L96_breakout
	CONST R7, #128
	LDR R3, R5, #-1
	CMP R3, R7
	BRn L94_breakout
L96_breakout
	LEA R7, ball_vel_x
	CONST R3, #-1
	LDR R2, R7, #0
	MUL R3, R3, R2
	STR R3, R7, #0
L94_breakout
L86_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;handle_collision_with_paddle;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
handle_collision_with_paddle
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, ball_y
	LDR R7, R7, #0
	CONST R3, #120
	CMP R7, R3
	BRnp L98_breakout
	LEA R7, ball_x
	LDR R7, R7, #0
	LEA R3, paddle_x
	LDR R3, R3, #0
	SUB R7, R7, R3
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #0
	CMP R7, R3
	BRzp L100_breakout
	LDR R7, R5, #-1
	NOT R7,R7
	ADD R7,R7,#1
	STR R7, R5, #-1
L100_breakout
	LDR R7, R5, #-1
	SLL R7, R7, #1
	CONST R3, #11
	CMP R7, R3
	BRzp L102_breakout
	LEA R7, ball_vel_y
	CONST R3, #-1
	STR R3, R7, #0
	LEA R7, ball_vel_x
	LDR R3, R7, #0
	LEA R2, paddle_vel_x
	LDR R2, R2, #0
	ADD R3, R3, R2
	STR R3, R7, #0
	LDR R7, R7, #0
	CONST R3, #8
	CMP R7, R3
	BRnz L104_breakout
	LEA R7, ball_vel_x
	CONST R3, #8
	STR R3, R7, #0
L104_breakout
	LEA R7, ball_vel_x
	LDR R7, R7, #0
	CONST R3, #-8
	CMP R7, R3
	BRzp L106_breakout
	LEA R7, ball_vel_x
	CONST R3, #-8
	STR R3, R7, #0
L106_breakout
L102_breakout
L98_breakout
L97_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;handle_collision_with_blocks;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
handle_collision_with_blocks
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-12	;; allocate stack space for local variables
	;; function body
	LEA R7, ball_x_scaled
	LDR R7, R7, #0
	LEA R3, ball_vel_x
	LDR R3, R3, #0
	ADD R7, R7, R3
	CONST R3, #8
	DIV R7, R7, R3
	STR R7, R5, #-3
	LEA R7, ball_y
	LDR R7, R7, #0
	LEA R3, ball_vel_y
	LDR R3, R3, #0
	ADD R7, R7, R3
	STR R7, R5, #-4
	LDR R7, R5, #-3
	CONST R3, #16
	DIV R7, R7, R3
	STR R7, R5, #-1
	LDR R7, R5, #-4
	CONST R3, #10
	DIV R7, R7, R3
	STR R7, R5, #-2
	LEA R7, i
	CONST R3, #0
	STR R3, R7, #0
L109_breakout
	LEA R7, j
	CONST R3, #0
	STR R3, R7, #0
L113_breakout
	LEA R7, i
	LDR R7, R7, #0
	STR R7, R5, #-5
	LDR R3, R5, #-2
	CMP R3, R7
	BRnp L117_breakout
	LEA R7, j
	LDR R7, R7, #0
	STR R7, R5, #-6
	LDR R3, R5, #-1
	CMP R3, R7
	BRnp L117_breakout
	LDR R7, R5, #-5
	SLL R7, R7, #3
	LEA R3, block_colors
	ADD R7, R7, R3
	LDR R3, R5, #-6
	ADD R7, R3, R7
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRz L117_breakout
	LEA R7, j
	LDR R7, R7, #0
	SLL R7, R7, #4
	STR R7, R5, #-8
	LDR R7, R5, #-8
	CONST R3, #16
	ADD R7, R7, R3
	STR R7, R5, #-10
	CONST R7, #10
	LEA R3, i
	LDR R3, R3, #0
	MUL R7, R7, R3
	STR R7, R5, #-7
	LDR R7, R5, #-7
	ADD R7, R7, #10
	STR R7, R5, #-9
	LEA R7, ball_y
	LDR R7, R7, #0
	STR R7, R5, #-11
	LDR R3, R5, #-9
	CMP R7, R3
	BRzp L121_breakout
	LDR R7, R5, #-7
	LDR R3, R5, #-11
	CMP R3, R7
	BRp L119_breakout
L121_breakout
	LEA R7, ball_vel_y
	CONST R3, #-1
	LDR R2, R7, #0
	MUL R3, R3, R2
	STR R3, R7, #0
	JMP L120_breakout
L119_breakout
	LEA R7, ball_x
	LDR R7, R7, #0
	STR R7, R5, #-12
	LDR R3, R5, #-8
	CMP R7, R3
	BRnz L124_breakout
	LDR R7, R5, #-10
	LDR R3, R5, #-12
	CMP R3, R7
	BRn L122_breakout
L124_breakout
	LEA R7, ball_vel_x
	CONST R3, #-1
	LDR R2, R7, #0
	MUL R3, R3, R2
	STR R3, R7, #0
L122_breakout
L120_breakout
	LEA R7, blocks_smashed
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LEA R7, j
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, i
	LDR R7, R7, #0
	ADD R7, R7, #1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR clear_block
	ADD R6, R6, #2	;; free space for arguments
L117_breakout
L114_breakout
	LEA R7, j
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LEA R7, j
	LDR R7, R7, #0
	CONST R3, #8
	CMP R7, R3
	BRn L113_breakout
L110_breakout
	LEA R7, i
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	LEA R7, i
	LDR R7, R7, #0
	CONST R3, #5
	CMP R7, R3
	BRn L109_breakout
L108_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;concatenate;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
concatenate
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-2	;; allocate stack space for local variables
	;; function body
	CONST R7, #0
	STR R7, R5, #-1
	JMP L127_breakout
L126_breakout
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L127_breakout
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L126_breakout
	CONST R7, #0
	STR R7, R5, #-2
	JMP L130_breakout
L129_breakout
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	LDR R3, R5, #-2
	LDR R2, R5, #4
	ADD R3, R3, R2
	LDR R3, R3, #0
	STR R3, R7, #0
	LDR R7, R5, #-2
	ADD R7, R7, #1
	STR R7, R5, #-2
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
L130_breakout
	LDR R7, R5, #-2
	LDR R3, R5, #4
	ADD R7, R7, R3
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L129_breakout
	LDR R7, R5, #-1
	LDR R3, R5, #3
	ADD R7, R7, R3
	CONST R3, #0
	STR R3, R7, #0
L125_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_score;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_score
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LEA R7, score
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, text
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR concatenate
	ADD R6, R6, #2	;; free space for arguments
	LEA R7, text
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
L132_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
main
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, L134_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L135_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L136_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L137_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L138_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L139_breakout
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_set_timer
	ADD R6, R6, #1	;; free space for arguments
	JSR reset_game
	ADD R6, R6, #0	;; free space for arguments
	JMP L141_breakout
L140_breakout
	JSR lc4_check_timer
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	CONST R3, #0
	CMP R7, R3
	BRzp L143_breakout
	JSR lc4_getc
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #122
	CMP R7, R3
	BRnp L145_breakout
	JSR reset_game
	ADD R6, R6, #0	;; free space for arguments
L145_breakout
	LDR R7, R5, #-1
	CONST R3, #113
	CMP R7, R3
	BRnp L147_breakout
	LEA R7, lives_left
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnz L147_breakout
	JSR serve_ball
	ADD R6, R6, #0	;; free space for arguments
L147_breakout
	JSR update_ball_position
	ADD R6, R6, #0	;; free space for arguments
	JSR handle_collision_with_paddle
	ADD R6, R6, #0	;; free space for arguments
	JSR handle_collision_with_walls
	ADD R6, R6, #0	;; free space for arguments
	JSR handle_collision_with_blocks
	ADD R6, R6, #0	;; free space for arguments
	JSR update_score
	ADD R6, R6, #0	;; free space for arguments
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR update_paddle_state
	ADD R6, R6, #1	;; free space for arguments
L143_breakout
L141_breakout
	JMP L140_breakout
	CONST R7, #0
L133_breakout
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
j 		.BLKW 1
		.DATA
i 		.BLKW 1
		.DATA
score 		.BLKW 4
		.DATA
text 		.BLKW 15
		.DATA
blocks_smashed 		.BLKW 1
		.DATA
lives_left 		.BLKW 1
		.DATA
block_colors 		.BLKW 40
		.DATA
paddle_vel_x 		.BLKW 1
		.DATA
paddle_x 		.BLKW 1
		.DATA
bot_y 		.BLKW 1
		.DATA
top_y 		.BLKW 1
		.DATA
right_x 		.BLKW 1
		.DATA
left_x 		.BLKW 1
		.DATA
y_next 		.BLKW 1
		.DATA
x_next 		.BLKW 1
		.DATA
ball_vel_y 		.BLKW 1
		.DATA
ball_vel_x 		.BLKW 1
		.DATA
ball_x_scaled 		.BLKW 1
		.DATA
ball_y 		.BLKW 1
		.DATA
ball_x 		.BLKW 1
		.DATA
L139_breakout 		.STRINGZ "Press z to reset game\n"
		.DATA
L138_breakout 		.STRINGZ "Press q to reset/serve ball\n"
		.DATA
L137_breakout 		.STRINGZ "Press l to move paddle right\n"
		.DATA
L136_breakout 		.STRINGZ "Press k to stop the paddle\n"
		.DATA
L135_breakout 		.STRINGZ "Press j to move paddle left\n"
		.DATA
L134_breakout 		.STRINGZ "!!! Welcome to Breakout !!!\n"
		.DATA
L91_breakout 		.STRINGZ "GAME OVER\n"
