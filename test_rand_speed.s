	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_InitFastRand
	.p2align	4, 0x90
_InitFastRand:                          ## @InitFastRand
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
	push	rbx
	sub	rsp, 104
Lcfi3:
	.cfi_offset rbx, -40
Lcfi4:
	.cfi_offset r14, -32
Lcfi5:
	.cfi_offset r15, -24
	mov	rbx, rdi
	mov	edi, 32
	call	_malloc
	mov	r14, rax
	lea	rdi, [rip + L_.str]
	xor	esi, esi
	xor	eax, eax
	call	_open
	mov	r15d, eax
	cmp	r15d, -1
	jne	LBB0_2
## BB#1:
	call	___error
	mov	edi, dword ptr [rax]
	call	_strerror
	mov	rcx, rax
	lea	rdi, [rip + L_.str.1]
	xor	eax, eax
	mov	rsi, rcx
	call	_printf
LBB0_2:
	mov	edx, 32
	mov	edi, r15d
	mov	rsi, r14
	call	_read
	cmp	rax, 32
	je	LBB0_4
## BB#3:
	call	___error
	mov	edi, dword ptr [rax]
	call	_strerror
	mov	rcx, rax
	lea	rdi, [rip + L_.str.2]
	xor	eax, eax
	mov	rsi, rcx
	call	_printf
LBB0_4:
	mov	edi, r15d
	call	_close
	lea	rdi, [rbp - 96]
	lea	rsi, [rip + L_.memset_pattern]
	mov	edx, 16
	call	_memset_pattern16
	lea	rdi, [rbp - 80]
	lea	rsi, [rip + L_.memset_pattern.14]
	mov	edx, 16
	call	_memset_pattern16
	lea	rdi, [rbp - 64]
	lea	rsi, [rip + L_.memset_pattern.15]
	mov	edx, 16
	call	_memset_pattern16
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rbp - 128], xmm0
	movups	xmm0, xmmword ptr [r14 + 16]
	movaps	xmmword ptr [rbp - 112], xmm0
	movaps	xmm0, xmmword ptr [rbp - 48]
	movups	xmmword ptr [rbx + 80], xmm0
	movaps	xmm0, xmmword ptr [rbp - 64]
	movups	xmmword ptr [rbx + 64], xmm0
	movaps	xmm0, xmmword ptr [rbp - 128]
	movaps	xmm1, xmmword ptr [rbp - 112]
	movaps	xmm2, xmmword ptr [rbp - 96]
	movaps	xmm3, xmmword ptr [rbp - 80]
	movups	xmmword ptr [rbx + 48], xmm3
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	mov	rax, rbx
	add	rsp, 104
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi8:
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 120
Lcfi9:
	.cfi_offset rbx, -56
Lcfi10:
	.cfi_offset r12, -48
Lcfi11:
	.cfi_offset r13, -40
Lcfi12:
	.cfi_offset r14, -32
Lcfi13:
	.cfi_offset r15, -24
	mov	rbx, rsi
	lea	rdi, [rip + L_str]
	call	_puts
	lea	rdi, [rip + L_str.11]
	call	_puts
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rip + L_.str.5]
	mov	edx, 6
	call	_strncmp
	test	eax, eax
	je	LBB1_1
## BB#2:
	lea	rdi, [rip + L_str.12]
	call	_puts
	xor	r14d, r14d
	jmp	LBB1_3
LBB1_1:
	lea	rdi, [rip + L_str.13]
	call	_puts
	mov	r14b, 1
LBB1_3:
	xor	ebx, ebx
	lea	rdi, [rbp - 56]
	xor	esi, esi
	call	_gettimeofday
	mov	r12, qword ptr [rbp - 56]
	movsxd	r15, dword ptr [rbp - 48]
	call	_sranddev
	test	r14b, r14b
	je	LBB1_8
## BB#4:
	xor	r13d, r13d
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_6 Depth 2
	mov	ebx, 128
	.p2align	4, 0x90
LBB1_6:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	call	_random
	dec	ebx
	jne	LBB1_6
## BB#7:                                ##   in Loop: Header=BB1_5 Depth=1
	inc	r13d
	cmp	r13d, 8192
	jne	LBB1_5
	jmp	LBB1_13
LBB1_8:
	lea	rdi, [rbp - 160]
	call	_InitFastRand
	movdqa	xmm3, xmmword ptr [rbp - 160]
	movdqa	xmm4, xmmword ptr [rbp - 144]
	movdqa	xmm0, xmmword ptr [rbp - 128]
	movdqa	xmm1, xmmword ptr [rbp - 112]
	movdqa	xmm2, xmmword ptr [rbp - 96]
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	mov	eax, 32
	movdqa	xmm5, xmm4
	movdqa	xmm6, xmm3
	.p2align	4, 0x90
LBB1_10:                                ##   Parent Loop BB1_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	pand	xmm6, xmm0
	psrld	xmm3, 16
	pmulld	xmm6, xmm1
	paddd	xmm6, xmm3
	pand	xmm5, xmm0
	psrld	xmm4, 16
	pmulld	xmm5, xmm2
	paddd	xmm5, xmm4
	movdqa	xmm3, xmm0
	pand	xmm3, xmm6
	psrld	xmm6, 16
	pmulld	xmm3, xmm1
	paddd	xmm3, xmm6
	movdqa	xmm4, xmm0
	pand	xmm4, xmm5
	psrld	xmm5, 16
	pmulld	xmm4, xmm2
	paddd	xmm4, xmm5
	add	eax, -2
	movdqa	xmm5, xmm4
	movdqa	xmm6, xmm3
	jne	LBB1_10
## BB#11:                               ##   in Loop: Header=BB1_9 Depth=1
	inc	ebx
	cmp	ebx, 8192
	jne	LBB1_9
## BB#12:
	movdqa	xmmword ptr [rbp - 160], xmm3
	movdqa	xmmword ptr [rbp - 144], xmm4
LBB1_13:
	lea	rdi, [rbp - 160]
	xor	esi, esi
	call	_gettimeofday
	mov	rax, qword ptr [rbp - 160]
	movsxd	rbx, dword ptr [rbp - 152]
	sub	rax, r12
	imul	rax, rax, 1000000
	sub	rbx, r15
	add	rbx, rax
	test	r14b, r14b
	je	LBB1_15
## BB#14:
	lea	rdi, [rip + L_.str.8]
	jmp	LBB1_16
LBB1_15:
	lea	rdi, [rip + L_.str.9]
LBB1_16:
	xor	eax, eax
	mov	rsi, rbx
	call	_printf
	mov	eax, 4000000
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	lea	rdi, [rip + L_.str.10]
	xor	eax, eax
	mov	rsi, rcx
	call	_printf
	xor	eax, eax
	add	rsp, 120
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"/dev/random"

L_.str.1:                               ## @.str.1
	.asciz	"Open() failed: %s\n"

L_.str.2:                               ## @.str.2
	.asciz	"Read() failed: %s\n"

L_.str.5:                               ## @.str.5
	.asciz	"random"

L_.str.8:                               ## @.str.8
	.asciz	"It took %ld microseconds to generate 1m random numbers using random()\n"

L_.str.9:                               ## @.str.9
	.asciz	"It took %ld microseconds to generate 1m random numbers using FastRand()\n"

L_.str.10:                              ## @.str.10
	.asciz	"This is equivalent to %ld bytes/microsecond\n"

	.p2align	4               ## @str
L_str:
	.asciz	"Very first thing"

L_str.11:                               ## @str.11
	.asciz	"test"

L_str.12:                               ## @str.12
	.asciz	"Using rand()"

L_str.13:                               ## @str.13
	.asciz	"Using random()"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @.memset_pattern
L_.memset_pattern:
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff

	.p2align	4               ## @.memset_pattern.14
L_.memset_pattern.14:
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650

	.p2align	4               ## @.memset_pattern.15
L_.memset_pattern.15:
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7


.subsections_via_symbols
