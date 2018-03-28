	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_xor32
	.p2align	4, 0x90
_xor32:                                 ## @xor32
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	_xor32.y(%rip), %eax
	movl	%eax, %ecx
	shll	$13, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$17, %edx
	xorl	%ecx, %edx
	movl	%edx, %eax
	shll	$15, %eax
	xorl	%edx, %eax
	movl	%eax, _xor32.y(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_xor64
	.p2align	4, 0x90
_xor64:                                 ## @xor64
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	movl	_xor64.x(%rip), %ecx
	movl	%ecx, %eax
	shll	$10, %eax
	xorl	%ecx, %eax
	movl	_xor64.y(%rip), %ecx
	movl	%ecx, _xor64.x(%rip)
	movl	%ecx, %edx
	shrl	$10, %edx
	xorl	%ecx, %edx
	xorl	%eax, %edx
	shrl	$13, %eax
	xorl	%edx, %eax
	movl	%eax, _xor64.y(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_xor96
	.p2align	4, 0x90
_xor96:                                 ## @xor96
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	_xor96.x(%rip), %ecx
	movl	%ecx, %eax
	shll	$10, %eax
	xorl	%ecx, %eax
	movl	_xor96.y(%rip), %ecx
	movl	%ecx, _xor96.x(%rip)
	movl	_xor96.z(%rip), %ecx
	movl	%ecx, _xor96.y(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	xorl	%ecx, %eax
	shrl	$26, %ecx
	xorl	%edx, %eax
	xorl	%ecx, %eax
	movl	%eax, _xor96.z(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_xor128
	.p2align	4, 0x90
_xor128:                                ## @xor128
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	movl	_xor128.x(%rip), %ecx
	movl	%ecx, %eax
	shll	$11, %eax
	xorl	%ecx, %eax
	movl	_xor128.y(%rip), %ecx
	movl	%ecx, _xor128.x(%rip)
	movl	_xor128.z(%rip), %ecx
	movl	%ecx, _xor128.y(%rip)
	movl	_xor128.w(%rip), %ecx
	movl	%ecx, _xor128.z(%rip)
	movl	%eax, %edx
	shrl	$8, %edx
	xorl	%ecx, %eax
	shrl	$19, %ecx
	xorl	%edx, %eax
	xorl	%ecx, %eax
	movl	%eax, _xor128.w(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_xor160
	.p2align	4, 0x90
_xor160:                                ## @xor160
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	movl	_xor160.x(%rip), %ecx
	leal	(,%rcx,4), %eax
	xorl	%ecx, %eax
	movl	_xor160.y(%rip), %ecx
	movl	%ecx, _xor160.x(%rip)
	movl	_xor160.z(%rip), %ecx
	movl	%ecx, _xor160.y(%rip)
	movl	_xor160.w(%rip), %ecx
	movl	%ecx, _xor160.z(%rip)
	movl	_xor160.v(%rip), %ecx
	movl	%ecx, _xor160.w(%rip)
	movl	%eax, %edx
	shrl	%edx
	xorl	%ecx, %eax
	shrl	$4, %ecx
	xorl	%edx, %eax
	xorl	%ecx, %eax
	movl	%eax, _xor160.v(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_xorwow
	.p2align	4, 0x90
_xorwow:                                ## @xorwow
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	movl	_xorwow.x(%rip), %eax
	movl	%eax, %ecx
	shrl	$2, %ecx
	xorl	%eax, %ecx
	movl	_xorwow.y(%rip), %eax
	movl	%eax, _xorwow.x(%rip)
	movl	_xorwow.z(%rip), %eax
	movl	%eax, _xorwow.y(%rip)
	movl	_xorwow.w(%rip), %eax
	movl	%eax, _xorwow.z(%rip)
	movl	_xorwow.v(%rip), %eax
	movl	%eax, _xorwow.w(%rip)
	leal	(%rcx,%rcx), %edx
	xorl	%eax, %ecx
	shll	$4, %eax
	xorl	%edx, %ecx
	xorl	%eax, %ecx
	movl	%ecx, _xorwow.v(%rip)
	movl	_xorwow.d(%rip), %eax
	leal	362437(%rax), %edx
	movl	%edx, _xorwow.d(%rip)
	leal	362437(%rax,%rcx), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_progress_generation
	.p2align	4, 0x90
_progress_generation:                   ## @progress_generation
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi21:
	.cfi_offset %rbx, -56
Lcfi22:
	.cfi_offset %r12, -48
Lcfi23:
	.cfi_offset %r13, -40
Lcfi24:
	.cfi_offset %r14, -32
Lcfi25:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movl	%esi, %r13d
	movl	%edi, %r15d
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movl	$0, -64(%rbp)
	cmpl	$65536, %edx            ## imm = 0x10000
	jne	LBB6_34
## BB#1:
	movl	%ecx, -84(%rbp)         ## 4-byte Spill
	movslq	%ecx, %rax
	imulq	$-2004318071, %rax, %r12 ## imm = 0x88888889
	shrq	$32, %r12
	addl	%eax, %r12d
	movl	%r12d, %ecx
	shrl	$31, %ecx
	sarl	$3, %r12d
	addl	%ecx, %r12d
	cmpl	$15, %eax
	jl	LBB6_7
## BB#2:
	xorl	%r8d, %r8d
	movl	_xor32.y(%rip), %eax
	.p2align	4, 0x90
LBB6_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shll	$13, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %r10d
	shrl	$17, %r10d
	xorl	%ecx, %r10d
	movl	%r10d, %r9d
	shll	$15, %r9d
	xorl	%r10d, %r9d
	movl	%r9d, %edx
	shll	$13, %edx
	xorl	%r9d, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %ebx
	shll	$15, %ebx
	xorl	%ecx, %ebx
	movl	%r10d, %esi
	shrl	$2, %esi
	movl	%ebx, %edi
	shrl	$16, %edi
	movl	%r10d, %edx
	andb	$3, %dl
	cmpb	$3, %dl
	je	LBB6_5
## BB#4:                                ##   in Loop: Header=BB6_3 Depth=1
	testb	%dl, %dl
	jne	LBB6_11
LBB6_5:                                 ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edi
	setl	%dl
	addb	%dl, %dl
	cmpl	%r13d, %edi
	setl	%cl
	orb	%dl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_21
	.p2align	4, 0x90
LBB6_11:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dl
	cmpl	%r13d, %edi
	jg	LBB6_15
## BB#12:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edi
	jle	LBB6_13
## BB#14:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dil
	movb	%dil, %dl
	jmp	LBB6_15
LBB6_13:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edx, %edx
LBB6_15:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%bx, %edi
	cmpl	%r13d, %edi
	jle	LBB6_18
## BB#16:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dl
	jmp	LBB6_17
LBB6_18:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edi
	jle	LBB6_17
## BB#19:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dl, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_20
	.p2align	4, 0x90
LBB6_17:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dl, %ecx
LBB6_20:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_21:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%ebx, %edx
	shll	$13, %edx
	xorl	%ebx, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edi
	shll	$15, %edi
	xorl	%ecx, %edi
	movl	%r10d, %ebx
	shrl	$4, %ebx
	movl	%edi, %edx
	shrl	$16, %edx
	andb	$3, %sil
	je	LBB6_23
## BB#22:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpb	$3, %sil
	jne	LBB6_36
LBB6_23:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %edx
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_45
	.p2align	4, 0x90
LBB6_36:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_40
## BB#37:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_38
## BB#39:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_40
LBB6_38:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_40:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%di, %edx
	cmpl	%r13d, %edx
	jle	LBB6_41
## BB#43:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_44
LBB6_41:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_44
## BB#42:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_46
	.p2align	4, 0x90
LBB6_44:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %eax
LBB6_45:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_46:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %eax
	shll	$13, %eax
	xorl	%edi, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %edx
	shll	$15, %edx
	xorl	%ecx, %edx
	movl	%r10d, %edi
	shrl	$6, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	andb	$3, %bl
	cmpb	$3, %bl
	je	LBB6_48
## BB#47:                               ##   in Loop: Header=BB6_3 Depth=1
	testb	%bl, %bl
	jne	LBB6_49
LBB6_48:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %esi
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %esi
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_58
	.p2align	4, 0x90
LBB6_49:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %bl
	cmpl	%r13d, %esi
	jg	LBB6_53
## BB#50:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %esi
	jle	LBB6_51
## BB#52:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %sil
	movb	%sil, %bl
	jmp	LBB6_53
LBB6_51:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%ebx, %ebx
LBB6_53:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%dx, %esi
	cmpl	%r13d, %esi
	jle	LBB6_54
## BB#56:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %bl
	jmp	LBB6_57
LBB6_54:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %esi
	jle	LBB6_57
## BB#55:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%bl, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_59
	.p2align	4, 0x90
LBB6_57:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%bl, %eax
LBB6_58:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_59:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%edx, %eax
	shll	$13, %eax
	xorl	%edx, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %ebx
	shll	$15, %ebx
	xorl	%ecx, %ebx
	movl	%r10d, %esi
	shrl	$8, %esi
	movl	%ebx, %edx
	shrl	$16, %edx
	andb	$3, %dil
	cmpb	$3, %dil
	je	LBB6_61
## BB#60:                               ##   in Loop: Header=BB6_3 Depth=1
	testb	%dil, %dil
	jne	LBB6_62
LBB6_61:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %edx
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_71
	.p2align	4, 0x90
LBB6_62:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dil
	cmpl	%r13d, %edx
	jg	LBB6_66
## BB#63:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_64
## BB#65:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %dil
	jmp	LBB6_66
LBB6_64:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edi, %edi
LBB6_66:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%bx, %edx
	cmpl	%r13d, %edx
	jle	LBB6_67
## BB#69:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dil
	jmp	LBB6_70
LBB6_67:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_70
## BB#68:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_72
	.p2align	4, 0x90
LBB6_70:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %eax
LBB6_71:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_72:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%ebx, %eax
	shll	$13, %eax
	xorl	%ebx, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %ebx
	shll	$15, %ebx
	xorl	%ecx, %ebx
	movl	%r10d, %edi
	shrl	$10, %edi
	movl	%ebx, %edx
	shrl	$16, %edx
	andb	$3, %sil
	cmpb	$3, %sil
	je	LBB6_74
## BB#73:                               ##   in Loop: Header=BB6_3 Depth=1
	testb	%sil, %sil
	jne	LBB6_75
LBB6_74:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %edx
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_84
	.p2align	4, 0x90
LBB6_75:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_79
## BB#76:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_77
## BB#78:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_79
LBB6_77:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_79:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%bx, %edx
	cmpl	%r13d, %edx
	jle	LBB6_80
## BB#82:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_83
LBB6_80:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_83
## BB#81:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_85
	.p2align	4, 0x90
LBB6_83:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %eax
LBB6_84:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_85:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%ebx, %eax
	shll	$13, %eax
	xorl	%ebx, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %esi
	shll	$15, %esi
	xorl	%ecx, %esi
	shrl	$12, %r10d
	movl	%esi, %edx
	shrl	$16, %edx
	andb	$3, %dil
	cmpb	$3, %dil
	je	LBB6_87
## BB#86:                               ##   in Loop: Header=BB6_3 Depth=1
	testb	%dil, %dil
	jne	LBB6_88
LBB6_87:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %edx
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_97
	.p2align	4, 0x90
LBB6_88:                                ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dil
	cmpl	%r13d, %edx
	jg	LBB6_92
## BB#89:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_90
## BB#91:                               ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %dil
	jmp	LBB6_92
LBB6_90:                                ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edi, %edi
LBB6_92:                                ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%si, %edx
	cmpl	%r13d, %edx
	jle	LBB6_93
## BB#95:                               ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dil
	jmp	LBB6_96
LBB6_93:                                ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_96
## BB#94:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_98
	.p2align	4, 0x90
LBB6_96:                                ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %eax
LBB6_97:                                ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_98:                                ##   in Loop: Header=BB6_3 Depth=1
	movl	%esi, %eax
	shll	$13, %eax
	xorl	%esi, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %edi
	shll	$15, %edi
	xorl	%ecx, %edi
	movl	%r9d, %esi
	shrl	$14, %esi
	movl	%edi, %edx
	shrl	$16, %edx
	andb	$3, %r10b
	cmpb	$3, %r10b
	je	LBB6_100
## BB#99:                               ##   in Loop: Header=BB6_3 Depth=1
	testb	%r10b, %r10b
	jne	LBB6_101
LBB6_100:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%al
	addb	%al, %al
	cmpl	%r13d, %edx
	setl	%cl
	orb	%al, %cl
	movl	$4, %eax
	shrl	%cl, %eax
	jmp	LBB6_110
	.p2align	4, 0x90
LBB6_101:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %al
	cmpl	%r13d, %edx
	jg	LBB6_105
## BB#102:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_103
## BB#104:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %al
	jmp	LBB6_105
LBB6_103:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_105:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%di, %edx
	cmpl	%r13d, %edx
	jle	LBB6_106
## BB#108:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %al
	jmp	LBB6_109
LBB6_106:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_109
## BB#107:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%al, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	incl	-80(%rbp,%rcx,4)
	jmp	LBB6_111
	.p2align	4, 0x90
LBB6_109:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%al, %eax
LBB6_110:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rax,4)
LBB6_111:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %eax
	shll	$13, %eax
	xorl	%edi, %eax
	movl	%eax, %ecx
	shrl	$17, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %edi
	shrl	$16, %edi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %sil
	cmpb	$3, %sil
	je	LBB6_113
## BB#112:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%sil, %sil
	jne	LBB6_114
LBB6_113:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_124
	.p2align	4, 0x90
LBB6_114:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_118
## BB#115:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_116
## BB#117:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_118
LBB6_116:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_118:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_119
## BB#121:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_122
LBB6_119:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_122
## BB#120:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_123
	.p2align	4, 0x90
LBB6_122:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %ecx
LBB6_123:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_124:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %esi
	shrl	$18, %esi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %dil
	cmpb	$3, %dil
	je	LBB6_126
## BB#125:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%dil, %dil
	jne	LBB6_127
LBB6_126:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_137
	.p2align	4, 0x90
LBB6_127:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dil
	cmpl	%r13d, %edx
	jg	LBB6_131
## BB#128:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_129
## BB#130:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %dil
	jmp	LBB6_131
LBB6_129:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edi, %edi
LBB6_131:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_132
## BB#134:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dil
	jmp	LBB6_135
LBB6_132:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_135
## BB#133:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_136
	.p2align	4, 0x90
LBB6_135:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %ecx
LBB6_136:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_137:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %edi
	shrl	$20, %edi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %sil
	cmpb	$3, %sil
	je	LBB6_139
## BB#138:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%sil, %sil
	jne	LBB6_140
LBB6_139:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_150
	.p2align	4, 0x90
LBB6_140:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_144
## BB#141:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_142
## BB#143:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_144
LBB6_142:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_144:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_145
## BB#147:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_148
LBB6_145:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_148
## BB#146:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_149
	.p2align	4, 0x90
LBB6_148:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %ecx
LBB6_149:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_150:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %esi
	shrl	$22, %esi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %dil
	cmpb	$3, %dil
	je	LBB6_152
## BB#151:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%dil, %dil
	jne	LBB6_153
LBB6_152:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_163
	.p2align	4, 0x90
LBB6_153:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dil
	cmpl	%r13d, %edx
	jg	LBB6_157
## BB#154:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_155
## BB#156:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %dil
	jmp	LBB6_157
LBB6_155:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edi, %edi
LBB6_157:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_158
## BB#160:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dil
	jmp	LBB6_161
LBB6_158:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_161
## BB#159:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_162
	.p2align	4, 0x90
LBB6_161:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %ecx
LBB6_162:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_163:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %edi
	shrl	$24, %edi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %sil
	cmpb	$3, %sil
	je	LBB6_165
## BB#164:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%sil, %sil
	jne	LBB6_166
LBB6_165:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_176
	.p2align	4, 0x90
LBB6_166:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_170
## BB#167:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_168
## BB#169:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_170
LBB6_168:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_170:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_171
## BB#173:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_174
LBB6_171:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_174
## BB#172:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_175
	.p2align	4, 0x90
LBB6_174:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %ecx
LBB6_175:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_176:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%r9d, %esi
	shrl	$26, %esi
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %dil
	cmpb	$3, %dil
	je	LBB6_178
## BB#177:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%dil, %dil
	jne	LBB6_179
LBB6_178:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_189
	.p2align	4, 0x90
LBB6_179:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %dil
	cmpl	%r13d, %edx
	jg	LBB6_183
## BB#180:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_181
## BB#182:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %dil
	jmp	LBB6_183
LBB6_181:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%edi, %edi
LBB6_183:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_184
## BB#186:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %dil
	jmp	LBB6_187
LBB6_184:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_187
## BB#185:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_188
	.p2align	4, 0x90
LBB6_187:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%dil, %ecx
LBB6_188:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_189:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	shrl	$28, %r9d
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %sil
	cmpb	$3, %sil
	je	LBB6_191
## BB#190:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%sil, %sil
	jne	LBB6_192
LBB6_191:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_202
	.p2align	4, 0x90
LBB6_192:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_196
## BB#193:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_194
## BB#195:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_196
LBB6_194:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_196:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_197
## BB#199:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_200
LBB6_197:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_200
## BB#198:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_201
	.p2align	4, 0x90
LBB6_200:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %ecx
LBB6_201:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_202:                               ##   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	shll	$13, %edx
	xorl	%eax, %edx
	movl	%edx, %ecx
	shrl	$17, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %eax
	shll	$15, %eax
	xorl	%ecx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$3, %r9b
	cmpb	$3, %r9b
	je	LBB6_204
## BB#203:                              ##   in Loop: Header=BB6_3 Depth=1
	testb	%r9b, %r9b
	jne	LBB6_205
LBB6_204:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	setl	%bl
	addb	%bl, %bl
	cmpl	%r13d, %edx
	setl	%cl
	orb	%bl, %cl
	movl	$4, %edx
	shrl	%cl, %edx
	incl	-80(%rbp,%rdx,4)
	jmp	LBB6_215
	.p2align	4, 0x90
LBB6_205:                               ##   in Loop: Header=BB6_3 Depth=1
	movb	$1, %sil
	cmpl	%r13d, %edx
	jg	LBB6_209
## BB#206:                              ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_207
## BB#208:                              ##   in Loop: Header=BB6_3 Depth=1
	andb	$1, %dl
	movb	%dl, %sil
	jmp	LBB6_209
LBB6_207:                               ##   in Loop: Header=BB6_3 Depth=1
	xorl	%esi, %esi
LBB6_209:                               ##   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %edx
	cmpl	%r13d, %edx
	jle	LBB6_210
## BB#212:                              ##   in Loop: Header=BB6_3 Depth=1
	orb	$2, %sil
	jmp	LBB6_213
LBB6_210:                               ##   in Loop: Header=BB6_3 Depth=1
	cmpl	%r15d, %edx
	jle	LBB6_213
## BB#211:                              ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %edx
	andl	$2, %ecx
	orl	%edx, %ecx
	jmp	LBB6_214
	.p2align	4, 0x90
LBB6_213:                               ##   in Loop: Header=BB6_3 Depth=1
	movzbl	%sil, %ecx
LBB6_214:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	-80(%rbp,%rcx,4)
LBB6_215:                               ##   in Loop: Header=BB6_3 Depth=1
	incl	%r8d
	cmpl	%r12d, %r8d
	jl	LBB6_3
## BB#6:
	movl	%eax, _xor32.y(%rip)
LBB6_7:
	callq	_random
	movq	%rax, %rbx
	imull	$-15, %r12d, %r12d
	addl	-84(%rbp), %r12d        ## 4-byte Folded Reload
	testl	%r12d, %r12d
	jle	LBB6_34
	.p2align	4, 0x90
LBB6_8:                                 ## =>This Inner Loop Header: Depth=1
	callq	_random
	movl	%eax, %ecx
	shrl	$15, %ecx
	movl	%ebx, %edx
	andb	$3, %dl
	cmpb	$3, %dl
	je	LBB6_10
## BB#9:                                ##   in Loop: Header=BB6_8 Depth=1
	testb	%dl, %dl
	jne	LBB6_24
LBB6_10:                                ##   in Loop: Header=BB6_8 Depth=1
	movzwl	%cx, %eax
	xorl	%edx, %edx
	cmpl	%r15d, %eax
	setl	%dl
	xorl	%ecx, %ecx
	cmpl	%r13d, %eax
	setl	%cl
	addl	%edx, %ecx
	movl	$2, %eax
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %eax
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_24:                                ##   in Loop: Header=BB6_8 Depth=1
	addl	%eax, %eax
	movzwl	%cx, %esi
	movb	$1, %dl
	cmpl	%r13d, %esi
	jg	LBB6_28
## BB#25:                               ##   in Loop: Header=BB6_8 Depth=1
	cmpl	%r15d, %esi
	jle	LBB6_26
## BB#27:                               ##   in Loop: Header=BB6_8 Depth=1
	andb	$1, %cl
	movb	%cl, %dl
	jmp	LBB6_28
LBB6_26:                                ##   in Loop: Header=BB6_8 Depth=1
	xorl	%edx, %edx
LBB6_28:                                ##   in Loop: Header=BB6_8 Depth=1
	movl	%eax, %ecx
	andl	$65534, %ecx            ## imm = 0xFFFE
	cmpl	%r13d, %ecx
	jle	LBB6_31
## BB#29:                               ##   in Loop: Header=BB6_8 Depth=1
	orb	$2, %dl
	jmp	LBB6_30
LBB6_31:                                ##   in Loop: Header=BB6_8 Depth=1
	cmpl	%r15d, %ecx
	jle	LBB6_30
## BB#32:                               ##   in Loop: Header=BB6_8 Depth=1
	movzbl	%dl, %ecx
	andl	$2, %eax
	orl	%ecx, %eax
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_30:                                ##   in Loop: Header=BB6_8 Depth=1
	movzbl	%dl, %eax
LBB6_33:                                ##   in Loop: Header=BB6_8 Depth=1
	incl	-80(%rbp,%rax,4)
	sarl	$2, %ebx
	decl	%r12d
	jne	LBB6_8
LBB6_34:
	movl	-80(%rbp), %eax
	movl	%eax, (%r14)
	movl	-72(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, 4(%r14)
	movl	-64(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, 8(%r14)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB6_216
## BB#35:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_216:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_pthread_handler
	.p2align	4, 0x90
_pthread_handler:                       ## @pthread_handler
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi26:
	.cfi_def_cfa_offset 16
Lcfi27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi28:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Lcfi29:
	.cfi_offset %rbx, -56
Lcfi30:
	.cfi_offset %r12, -48
Lcfi31:
	.cfi_offset %r13, -40
Lcfi32:
	.cfi_offset %r14, -32
Lcfi33:
	.cfi_offset %r15, -24
	movq	%rdi, %rax
	movl	(%rax), %edi
	movl	4(%rax), %esi
	movl	8(%rax), %edx
	movl	12(%rax), %r13d
	movl	16(%rax), %ecx
	movq	24(%rax), %r15
	movq	40(%rax), %rbx
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movl	48(%rax), %eax
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	%ecx, -44(%rbp)         ## 4-byte Spill
	testl	%ecx, %ecx
	jle	LBB7_6
## BB#1:
	xorl	%r12d, %r12d
	leaq	-88(%rbp), %r14
	.p2align	4, 0x90
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movl	%r13d, %ecx
	leaq	-56(%rbp), %r8
	callq	_progress_generation
	movq	%rbx, %rdi
	callq	_sem_wait
	movl	-56(%rbp), %eax
	addl	%eax, (%r15)
	movl	-52(%rbp), %eax
	addl	%eax, 4(%r15)
	movl	-48(%rbp), %eax
	addl	%eax, 8(%r15)
	movq	%rbx, %rdi
	callq	_sem_post
	jmp	LBB7_4
	.p2align	4, 0x90
LBB7_3:                                 ##   in Loop: Header=BB7_4 Depth=2
	movq	L_pthread_handler.time_to_sleep+8(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	L_pthread_handler.time_to_sleep(%rip), %rax
	movq	%rax, -88(%rbp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_nanosleep
LBB7_4:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r15), %edi
	movl	4(%r15), %esi
	addl	%edi, %esi
	movl	8(%r15), %eax
	addl	%esi, %eax
	cmpl	$65536, %eax            ## imm = 0x10000
	jne	LBB7_3
## BB#5:                                ##   in Loop: Header=BB7_2 Depth=1
	addq	$12, %r15
	incl	%r12d
	movl	$65536, %edx            ## imm = 0x10000
	cmpl	-44(%rbp), %r12d        ## 4-byte Folded Reload
	jne	LBB7_2
LBB7_6:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	movl	-60(%rbp), %esi         ## 4-byte Reload
	movl	-44(%rbp), %edx         ## 4-byte Reload
	callq	_printf
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_pthread_exit
	.cfi_endproc

	.globl	_initialize_generation
	.p2align	4, 0x90
_initialize_generation:                 ## @initialize_generation
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi34:
	.cfi_def_cfa_offset 16
Lcfi35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Lcfi37:
	.cfi_offset %rbx, -56
Lcfi38:
	.cfi_offset %r12, -48
Lcfi39:
	.cfi_offset %r13, -40
Lcfi40:
	.cfi_offset %r14, -32
Lcfi41:
	.cfi_offset %r15, -24
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movl	%edi, %r15d
	xorl	%r12d, %r12d
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	cmpl	$8, %r15d
	movl	$0, %r14d
	movl	$0, %r13d
	jl	LBB8_43
## BB#1:
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%r15d, %eax
	movl	%eax, %r15d
	sarl	$3, %r15d
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	callq	_random
	movl	%eax, %ecx
	andb	$3, %cl
	cmpb	$3, %cl
	je	LBB8_5
## BB#3:                                ##   in Loop: Header=BB8_2 Depth=1
	testb	%cl, %cl
	jne	LBB8_6
## BB#4:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_7
	.p2align	4, 0x90
LBB8_5:                                 ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_7
	.p2align	4, 0x90
LBB8_6:                                 ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_7:                                 ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrb	$2, %cl
	andb	$3, %cl
	je	LBB8_10
## BB#8:                                ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_11
## BB#9:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_12
	.p2align	4, 0x90
LBB8_10:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_12
	.p2align	4, 0x90
LBB8_11:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_12:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrb	$4, %cl
	andb	$3, %cl
	je	LBB8_15
## BB#13:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_16
## BB#14:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_17
	.p2align	4, 0x90
LBB8_15:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_17
	.p2align	4, 0x90
LBB8_16:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_17:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrb	$6, %cl
	je	LBB8_20
## BB#18:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_21
## BB#19:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_22
	.p2align	4, 0x90
LBB8_20:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_22
	.p2align	4, 0x90
LBB8_21:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_22:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrl	$8, %ecx
	andb	$3, %cl
	je	LBB8_25
## BB#23:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_26
## BB#24:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_27
	.p2align	4, 0x90
LBB8_25:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_27
	.p2align	4, 0x90
LBB8_26:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_27:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrl	$10, %ecx
	andb	$3, %cl
	je	LBB8_30
## BB#28:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_31
## BB#29:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_32
	.p2align	4, 0x90
LBB8_30:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_32
	.p2align	4, 0x90
LBB8_31:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_32:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%eax, %ecx
	shrl	$12, %ecx
	andb	$3, %cl
	je	LBB8_35
## BB#33:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %cl
	jne	LBB8_36
## BB#34:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_37
	.p2align	4, 0x90
LBB8_35:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_37
	.p2align	4, 0x90
LBB8_36:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_37:                                ##   in Loop: Header=BB8_2 Depth=1
	shrl	$14, %eax
	andb	$3, %al
	je	LBB8_40
## BB#38:                               ##   in Loop: Header=BB8_2 Depth=1
	cmpb	$3, %al
	jne	LBB8_41
## BB#39:                               ##   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	jmp	LBB8_42
	.p2align	4, 0x90
LBB8_40:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r13d
	jmp	LBB8_42
	.p2align	4, 0x90
LBB8_41:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%r12d
LBB8_42:                                ##   in Loop: Header=BB8_2 Depth=1
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	LBB8_2
LBB8_43:
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	%r13d, (%rax)
	movl	%r12d, 4(%rax)
	movl	%r14d, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Lcfi45:
	.cfi_offset %rbx, -56
Lcfi46:
	.cfi_offset %r12, -48
Lcfi47:
	.cfi_offset %r13, -40
Lcfi48:
	.cfi_offset %r14, -32
Lcfi49:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	_srandomdev
	leaq	L_.str.1(%rip), %rdi
	movl	$65536, %esi            ## imm = 0x10000
	movl	$1000, %edx             ## imm = 0x3E8
	xorl	%eax, %eax
	callq	_printf
	leaq	-60(%rbp), %rsi
	movl	$65536, %edi            ## imm = 0x10000
	callq	_initialize_generation
	movl	-60(%rbp), %r14d
	movl	-56(%rbp), %ebx
	addl	%r14d, %ebx
	movl	-52(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movl	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB9_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_2 Depth 2
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	xorl	%esi, %esi
	leaq	-112(%rbp), %rdi
	callq	_gettimeofday
	movl	$100, %r15d
	movl	-76(%rbp), %edx         ## 4-byte Reload
	.p2align	4, 0x90
LBB9_2:                                 ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$65536, %ecx            ## imm = 0x10000
	movl	%r14d, %edi
	movl	%ebx, %esi
	leaq	-72(%rbp), %r8
	callq	_progress_generation
	movl	-72(%rbp), %r14d
	movl	-68(%rbp), %r13d
	leal	(%r13,%r14), %ebx
	movl	-64(%rbp), %r12d
	leal	(%rbx,%r12), %edx
	decl	%r15d
	jne	LBB9_2
## BB#3:                                ##   in Loop: Header=BB9_1 Depth=1
	movl	%edx, -76(%rbp)         ## 4-byte Spill
	xorl	%esi, %esi
	leaq	-96(%rbp), %rdi
	callq	_gettimeofday
	movq	-96(%rbp), %rax
	movslq	-88(%rbp), %rsi
	movslq	-104(%rbp), %rcx
	subq	-112(%rbp), %rax
	imulq	$1000000, %rax, %rax    ## imm = 0xF4240
	subq	%rcx, %rsi
	addq	%rax, %rsi
	xorl	%eax, %eax
	leaq	L_.str.2(%rip), %rdi
	callq	_printf
	xorl	%eax, %eax
	leaq	L_.str.3(%rip), %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	callq	_printf
	movl	-80(%rbp), %eax         ## 4-byte Reload
	incl	%eax
	cmpl	$10, %eax
	jne	LBB9_1
## BB#4:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB9_6
## BB#5:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_6:
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__DATA,__data
	.p2align	2               ## @xor32.y
_xor32.y:
	.long	2463534242              ## 0x92d68ca2

	.p2align	2               ## @xor64.x
_xor64.x:
	.long	123456789               ## 0x75bcd15

	.p2align	2               ## @xor64.y
_xor64.y:
	.long	362436069               ## 0x159a55e5

	.p2align	2               ## @xor96.x
_xor96.x:
	.long	123456789               ## 0x75bcd15

	.p2align	2               ## @xor96.y
_xor96.y:
	.long	362436069               ## 0x159a55e5

	.p2align	2               ## @xor96.z
_xor96.z:
	.long	521288629               ## 0x1f123bb5

	.p2align	2               ## @xor128.x
_xor128.x:
	.long	123456789               ## 0x75bcd15

	.p2align	2               ## @xor128.y
_xor128.y:
	.long	362436069               ## 0x159a55e5

	.p2align	2               ## @xor128.z
_xor128.z:
	.long	521288629               ## 0x1f123bb5

	.p2align	2               ## @xor128.w
_xor128.w:
	.long	88675123                ## 0x5491333

	.p2align	2               ## @xor160.x
_xor160.x:
	.long	123456789               ## 0x75bcd15

	.p2align	2               ## @xor160.y
_xor160.y:
	.long	362436069               ## 0x159a55e5

	.p2align	2               ## @xor160.z
_xor160.z:
	.long	521288629               ## 0x1f123bb5

	.p2align	2               ## @xor160.w
_xor160.w:
	.long	88675123                ## 0x5491333

	.p2align	2               ## @xor160.v
_xor160.v:
	.long	5783321                 ## 0x583f19

	.p2align	2               ## @xorwow.x
_xorwow.x:
	.long	123456789               ## 0x75bcd15

	.p2align	2               ## @xorwow.y
_xorwow.y:
	.long	362436069               ## 0x159a55e5

	.p2align	2               ## @xorwow.z
_xorwow.z:
	.long	521288629               ## 0x1f123bb5

	.p2align	2               ## @xorwow.w
_xorwow.w:
	.long	88675123                ## 0x5491333

	.p2align	2               ## @xorwow.v
_xorwow.v:
	.long	5783321                 ## 0x583f19

	.p2align	2               ## @xorwow.d
_xorwow.d:
	.long	6615241                 ## 0x64f0c9

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3               ## @pthread_handler.time_to_sleep
L_pthread_handler.time_to_sleep:
	.quad	0                       ## 0x0
	.quad	20000                   ## 0x4e20

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Thread %d is ending. num_generations is %d.\n"

L_.str.1:                               ## @.str.1
	.asciz	"Beginning simulation of %d organisms for %d generations\n"

L_.str.2:                               ## @.str.2
	.asciz	"%ld microseconds\t"

L_.str.3:                               ## @.str.3
	.asciz	"aa: %d\tab:%d\tbb:%d\n"


.subsections_via_symbols
