# main.s
.data

str1:
    .string "%ld "

str2:
    .string "ERROR"

str3:
    .string "DONE"

.text

.global main

check:
stp	x29, x30, [sp, #-64]!
mov	x29, sp
str	x0, [sp, #24]
ldr	x0, [sp, #24]
ldr	x0, [x0]
str	x0, [sp, #56]
ldr	x0, [sp, #24]
ldr	x0, [x0, #8]
str	x0, [sp, #48]
ldr	x0, [sp, #24]
ldr	x0, [x0, #16]
str	x0, [sp, #40]
b	.B1
.B4:
ldr	x1, [sp, #40]
adrp	x0, str1
add	x0, x0, :lo12:str1
bl	printf
ldr	x1, [sp, #56]
ldr	x0, [sp, #48]
add	x0, x1, x0
ldr	x1, [sp, #40]
cmp	x1, x0
b.eq	.B2
adrp	x0, str2
add	x0, x0, :lo12:str2
bl	puts
b	.B3
.B2:
ldr	x0, [sp, #24]
ldr	x0, [x0]
str	x0, [sp, #56]
ldr	x0, [sp, #24]
ldr	x0, [x0, #8]
str	x0, [sp, #48]
ldr	x0, [sp, #24]
ldr	x0, [x0, #16]
str	x0, [sp, #40]
ldr	x0, [sp, #24]
add	x0, x0, #0x8
str	x0, [sp, #24]
.B1:
adrp	x0, check
add	x0, x0, :lo12:check
ldr	x1, [sp, #40]
cmp	x1, x0
b.ne	.B4
adrp	x0, str3
add	x0, x0, :lo12:str3
bl	puts
.B3:
ldp	x29, x30, [sp], #64
ret

main:
stp	x29, x30, [sp, #-144]!
mov	x29, sp
adrp	x0, check
add	x0, x0, :lo12:check
str	x0, [sp, #120]
mov	w0, #0x2                   	
str	w0, [sp, #140]
str	xzr, [sp, #128]
str	xzr, [sp, #24]
mov	x0, #0x1                   	
str	x0, [sp, #32]
mov	x0, #0x1                  
str	x0, [sp, #40]
b	.B5
.B6:
ldr	w0, [sp, #140]
sub	w0, w0, #0x1
sxtw	x0, w0
lsl	x0, x0, #3
add	x1, sp, #0x18
ldr	x1, [x1, x0]
ldr	w0, [sp, #140]
sub	w0, w0, #0x2
sxtw	x0, w0
lsl	x0, x0, #3
add	x2, sp, #0x18
ldr	x0, [x2, x0]
add	x0, x1, x0
str	x0, [sp, #128]
ldr	w0, [sp, #140]
add	w1, w0, #0x1
cmp w0, #12
beq     .B7
str	w1, [sp, #140]
sxtw	x0, w0
lsl	x0, x0, #3
add	x1, sp, #0x18
ldr	x2, [sp, #128]
str	x2, [x1, x0]
.B5:
ldr	x1, [sp, #128]
mov	x0, #0xe7ff 
movk	x0, #0x4876, lsl #16
movk	x0, #0x17, lsl #32
cmp	x1, x0
b.le	.B6
.B7:
add	x0, sp, #0x18
ldr	x1, [sp, #120]
blr	x1
mov	w0, #0x0                   	
ldp	x29, x30, [sp], #144
ret