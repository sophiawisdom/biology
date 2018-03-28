	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi2:
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 8388640
Lcfi3:
	.cfi_offset rbx, -48
Lcfi4:
	.cfi_offset r12, -40
Lcfi5:
	.cfi_offset r14, -32
Lcfi6:
	.cfi_offset r15, -24
	mov	rbx, rsi
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 40], rax
	lea	rdi, [rip + L_str]
	call	_puts
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rip + L_.str.1]
	mov	edx, 6
	call	_strncmp
	test	eax, eax
	je	LBB0_1
## BB#2:
	lea	rdi, [rip + L_str.7]
	call	_puts
	xor	r14d, r14d
	jmp	LBB0_3
LBB0_1:
	lea	rdi, [rip + L_str.8]
	call	_puts
	mov	r14b, 1
LBB0_3:
	lea	rdi, [rbp - 8388672]
	xor	esi, esi
	call	_gettimeofday
	mov	r12, qword ptr [rbp - 8388672]
	movsxd	r15, dword ptr [rbp - 8388664]
	call	_sranddev
	test	r14b, r14b
	je	LBB0_6
## BB#4:
	mov	ebx, 8192
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	call	_random
	dec	ebx
	jne	LBB0_5
	jmp	LBB0_8
LBB0_6:
	xor	eax, eax
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388656], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388592], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388528], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388464], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388400], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388336], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388272], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388208], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388144], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388080], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8388016], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387952], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387888], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387824], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387760], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387696], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387632], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387568], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387504], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387440], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387376], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387312], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387248], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387184], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387120], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8387056], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386992], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386928], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386864], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386800], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386736], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386672], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386608], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386544], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386480], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386416], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386352], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386288], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386224], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386160], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386096], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8386032], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385968], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385904], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385840], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385776], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385712], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385648], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385584], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385520], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385456], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385392], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385328], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385264], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385200], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385136], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385072], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8385008], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384944], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384880], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384816], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384752], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384688], rcx
	rdrand	rcx
	mov	qword ptr [rbp + rax - 8384624], rcx
	add	rax, 4096
	cmp	eax, 33554432
	jne	LBB0_7
LBB0_8:
	lea	rdi, [rbp - 8388656]
	xor	esi, esi
	call	_gettimeofday
	mov	rax, qword ptr [rbp - 8388656]
	movsxd	rbx, dword ptr [rbp - 8388648]
	sub	rax, r12
	imul	rax, rax, 1000000
	sub	rbx, r15
	add	rbx, rax
	test	r14b, r14b
	je	LBB0_10
## BB#9:
	lea	rdi, [rip + L_.str.4]
	jmp	LBB0_11
LBB0_10:
	lea	rdi, [rip + L_.str.5]
LBB0_11:
	xor	eax, eax
	mov	rsi, rbx
	call	_printf
	mov	eax, 4000000
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	lea	rdi, [rip + L_.str.6]
	xor	eax, eax
	mov	rsi, rcx
	call	_printf
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 40]
	jne	LBB0_13
## BB#12:
	xor	eax, eax
	add	rsp, 8388640
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB0_13:
	call	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"random"

L_.str.4:                               ## @.str.4
	.asciz	"It took %ld microseconds to generate 1m random numbers using random()\n"

L_.str.5:                               ## @.str.5
	.asciz	"It took %ld microseconds to generate 1m random numbers using rand()\n"

L_.str.6:                               ## @.str.6
	.asciz	"This is equivalent to %ld bytes/microsecond\n"

L_str:                                  ## @str
	.asciz	"test"

L_str.7:                                ## @str.7
	.asciz	"Using rand()"

L_str.8:                                ## @str.8
	.asciz	"Using random()"


.subsections_via_symbols
