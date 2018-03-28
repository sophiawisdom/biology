	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_xor32
	.p2align	4, 0x90
_xor32:                                 ## @xor32
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
	mov	eax, dword ptr [rip + _xor32.y]
	shl	eax, 13
	xor	eax, dword ptr [rip + _xor32.y]
	mov	dword ptr [rip + _xor32.y], eax
	mov	eax, dword ptr [rip + _xor32.y]
	shr	eax, 17
	xor	eax, dword ptr [rip + _xor32.y]
	mov	dword ptr [rip + _xor32.y], eax
	mov	eax, dword ptr [rip + _xor32.y]
	shl	eax, 15
	xor	eax, dword ptr [rip + _xor32.y]
	mov	dword ptr [rip + _xor32.y], eax
	pop	rbp
	ret
	.cfi_endproc

	.globl	_xor64
	.p2align	4, 0x90
_xor64:                                 ## @xor64
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi5:
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _xor64.x]
	mov	ecx, dword ptr [rip + _xor64.x]
	shl	ecx, 10
	xor	eax, ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rip + _xor64.y]
	mov	dword ptr [rip + _xor64.x], eax
	mov	eax, dword ptr [rip + _xor64.y]
	mov	ecx, dword ptr [rip + _xor64.y]
	shr	ecx, 10
	xor	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 4]
	shr	edx, 13
	xor	ecx, edx
	xor	eax, ecx
	mov	dword ptr [rip + _xor64.y], eax
	pop	rbp
	ret
	.cfi_endproc

	.globl	_xor96
	.p2align	4, 0x90
_xor96:                                 ## @xor96
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
	mov	eax, dword ptr [rip + _xor96.x]
	mov	ecx, dword ptr [rip + _xor96.x]
	shl	ecx, 10
	xor	eax, ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rip + _xor96.y]
	mov	dword ptr [rip + _xor96.x], eax
	mov	eax, dword ptr [rip + _xor96.z]
	mov	dword ptr [rip + _xor96.y], eax
	mov	eax, dword ptr [rip + _xor96.z]
	mov	ecx, dword ptr [rip + _xor96.z]
	shr	ecx, 26
	xor	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 4]
	shr	edx, 5
	xor	ecx, edx
	xor	eax, ecx
	mov	dword ptr [rip + _xor96.z], eax
	pop	rbp
	ret
	.cfi_endproc

	.globl	_xor128
	.p2align	4, 0x90
_xor128:                                ## @xor128
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi11:
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _xor128.x]
	mov	ecx, dword ptr [rip + _xor128.x]
	shl	ecx, 11
	xor	eax, ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rip + _xor128.y]
	mov	dword ptr [rip + _xor128.x], eax
	mov	eax, dword ptr [rip + _xor128.z]
	mov	dword ptr [rip + _xor128.y], eax
	mov	eax, dword ptr [rip + _xor128.w]
	mov	dword ptr [rip + _xor128.z], eax
	mov	eax, dword ptr [rip + _xor128.w]
	mov	ecx, dword ptr [rip + _xor128.w]
	shr	ecx, 19
	xor	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 4]
	shr	edx, 8
	xor	ecx, edx
	xor	eax, ecx
	mov	dword ptr [rip + _xor128.w], eax
	pop	rbp
	ret
	.cfi_endproc

	.globl	_xor160
	.p2align	4, 0x90
_xor160:                                ## @xor160
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi14:
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _xor160.x]
	mov	ecx, dword ptr [rip + _xor160.x]
	shl	ecx, 2
	xor	eax, ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rip + _xor160.y]
	mov	dword ptr [rip + _xor160.x], eax
	mov	eax, dword ptr [rip + _xor160.z]
	mov	dword ptr [rip + _xor160.y], eax
	mov	eax, dword ptr [rip + _xor160.w]
	mov	dword ptr [rip + _xor160.z], eax
	mov	eax, dword ptr [rip + _xor160.v]
	mov	dword ptr [rip + _xor160.w], eax
	mov	eax, dword ptr [rip + _xor160.v]
	mov	ecx, dword ptr [rip + _xor160.v]
	shr	ecx, 4
	xor	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 4]
	shr	edx, 1
	xor	ecx, edx
	xor	eax, ecx
	mov	dword ptr [rip + _xor160.v], eax
	pop	rbp
	ret
	.cfi_endproc

	.globl	_xorwow
	.p2align	4, 0x90
_xorwow:                                ## @xorwow
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi17:
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _xorwow.x]
	mov	ecx, dword ptr [rip + _xorwow.x]
	shr	ecx, 2
	xor	eax, ecx
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rip + _xorwow.y]
	mov	dword ptr [rip + _xorwow.x], eax
	mov	eax, dword ptr [rip + _xorwow.z]
	mov	dword ptr [rip + _xorwow.y], eax
	mov	eax, dword ptr [rip + _xorwow.w]
	mov	dword ptr [rip + _xorwow.z], eax
	mov	eax, dword ptr [rip + _xorwow.v]
	mov	dword ptr [rip + _xorwow.w], eax
	mov	eax, dword ptr [rip + _xorwow.v]
	mov	ecx, dword ptr [rip + _xorwow.v]
	shl	ecx, 4
	xor	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 4]
	shl	edx, 1
	xor	ecx, edx
	xor	eax, ecx
	mov	dword ptr [rip + _xorwow.v], eax
	mov	eax, dword ptr [rip + _xorwow.d]
	add	eax, 362437
	mov	dword ptr [rip + _xorwow.d], eax
	add	eax, dword ptr [rip + _xorwow.v]
	pop	rbp
	ret
	.cfi_endproc

	.globl	_progress_generation
	.p2align	4, 0x90
_progress_generation:                   ## @progress_generation
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi20:
	.cfi_def_cfa_register rbp
	push	rbx
	sub	rsp, 120
Lcfi21:
	.cfi_offset rbx, -24
	xor	eax, eax
	mov	r9d, 20
	mov	r10d, r9d
	lea	r11, [rbp - 48]
	mov	rbx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rbp - 16], rbx
	mov	dword ptr [rbp - 52], edi
	mov	dword ptr [rbp - 56], esi
	mov	dword ptr [rbp - 60], edx
	mov	dword ptr [rbp - 64], ecx
	mov	qword ptr [rbp - 72], r8
	mov	rdi, r11
	mov	esi, eax
	mov	rdx, r10
	call	_memset
	cmp	dword ptr [rbp - 60], 65536
	jne	LBB6_44
## BB#1:
	mov	dword ptr [rbp - 76], 0
LBB6_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
	mov	eax, 15
	mov	ecx, dword ptr [rbp - 76]
	mov	edx, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	mov	eax, edx
	cdq
	mov	esi, dword ptr [rbp - 120] ## 4-byte Reload
	idiv	esi
	cmp	ecx, eax
	jge	LBB6_24
## BB#3:                                ##   in Loop: Header=BB6_2 Depth=1
	call	_xor32
	mov	dword ptr [rbp - 80], eax
	mov	dword ptr [rbp - 84], 0
LBB6_4:                                 ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 84], 15
	jge	LBB6_22
## BB#5:                                ##   in Loop: Header=BB6_4 Depth=2
	call	_xor32
	mov	dword ptr [rbp - 88], eax
	mov	eax, dword ptr [rbp - 80]
	and	eax, 3
	mov	cl, al
	mov	byte ptr [rbp - 89], cl
	mov	eax, dword ptr [rbp - 80]
	sar	eax, 2
	mov	dword ptr [rbp - 80], eax
	mov	eax, dword ptr [rbp - 88]
	shr	eax, 16
	mov	dx, ax
	mov	word ptr [rbp - 92], dx
	movsx	eax, byte ptr [rbp - 89]
	cmp	eax, 0
	je	LBB6_7
## BB#6:                                ##   in Loop: Header=BB6_4 Depth=2
	movsx	eax, byte ptr [rbp - 89]
	cmp	eax, 3
	jne	LBB6_8
LBB6_7:                                 ##   in Loop: Header=BB6_4 Depth=2
	mov	eax, 4
	movzx	ecx, word ptr [rbp - 92]
	cmp	ecx, dword ptr [rbp - 52]
	setl	dl
	and	dl, 1
	movzx	ecx, dl
	shl	ecx, 1
	movzx	esi, word ptr [rbp - 92]
	cmp	esi, dword ptr [rbp - 56]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
                                        ## kill: %CL<def> %ECX<kill>
	sar	eax, cl
	movsxd	rdi, eax
	mov	eax, dword ptr [rbp + 4*rdi - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rdi - 48], eax
	jmp	LBB6_20
LBB6_8:                                 ##   in Loop: Header=BB6_4 Depth=2
	mov	eax, dword ptr [rbp - 88]
	and	eax, 65535
	mov	cx, ax
	mov	word ptr [rbp - 94], cx
	mov	byte ptr [rbp - 95], 0
	movzx	eax, word ptr [rbp - 92]
	cmp	eax, dword ptr [rbp - 56]
	jle	LBB6_10
## BB#9:                                ##   in Loop: Header=BB6_4 Depth=2
	mov	byte ptr [rbp - 95], 1
	jmp	LBB6_13
LBB6_10:                                ##   in Loop: Header=BB6_4 Depth=2
	movzx	eax, word ptr [rbp - 92]
	cmp	eax, dword ptr [rbp - 52]
	jle	LBB6_12
## BB#11:                               ##   in Loop: Header=BB6_4 Depth=2
	movzx	eax, word ptr [rbp - 92]
	and	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 95], cl
LBB6_12:                                ##   in Loop: Header=BB6_4 Depth=2
	jmp	LBB6_13
LBB6_13:                                ##   in Loop: Header=BB6_4 Depth=2
	movzx	eax, word ptr [rbp - 94]
	cmp	eax, dword ptr [rbp - 56]
	jle	LBB6_15
## BB#14:                               ##   in Loop: Header=BB6_4 Depth=2
	movsx	eax, byte ptr [rbp - 95]
	add	eax, 2
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rcx - 48], eax
	jmp	LBB6_19
LBB6_15:                                ##   in Loop: Header=BB6_4 Depth=2
	movzx	eax, word ptr [rbp - 94]
	cmp	eax, dword ptr [rbp - 52]
	jle	LBB6_17
## BB#16:                               ##   in Loop: Header=BB6_4 Depth=2
	movsx	eax, byte ptr [rbp - 95]
	movzx	ecx, word ptr [rbp - 94]
	and	ecx, 2
	add	eax, ecx
	movsxd	rdx, eax
	mov	eax, dword ptr [rbp + 4*rdx - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rdx - 48], eax
	jmp	LBB6_18
LBB6_17:                                ##   in Loop: Header=BB6_4 Depth=2
	movsx	rax, byte ptr [rbp - 95]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 48], ecx
LBB6_18:                                ##   in Loop: Header=BB6_4 Depth=2
	jmp	LBB6_19
LBB6_19:                                ##   in Loop: Header=BB6_4 Depth=2
	jmp	LBB6_20
LBB6_20:                                ##   in Loop: Header=BB6_4 Depth=2
	jmp	LBB6_21
LBB6_21:                                ##   in Loop: Header=BB6_4 Depth=2
	mov	eax, dword ptr [rbp - 84]
	add	eax, 1
	mov	dword ptr [rbp - 84], eax
	jmp	LBB6_4
LBB6_22:                                ##   in Loop: Header=BB6_2 Depth=1
	jmp	LBB6_23
LBB6_23:                                ##   in Loop: Header=BB6_2 Depth=1
	mov	eax, dword ptr [rbp - 76]
	add	eax, 1
	mov	dword ptr [rbp - 76], eax
	jmp	LBB6_2
LBB6_24:
	call	_random
	mov	ecx, eax
	mov	dword ptr [rbp - 100], ecx
	mov	dword ptr [rbp - 104], 0
LBB6_25:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, 15
	mov	ecx, dword ptr [rbp - 104]
	mov	edx, dword ptr [rbp - 64]
	mov	esi, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	eax, esi
	mov	dword ptr [rbp - 128], edx ## 4-byte Spill
	cdq
	mov	esi, dword ptr [rbp - 124] ## 4-byte Reload
	idiv	esi
	imul	eax, eax, 15
	mov	edi, dword ptr [rbp - 128] ## 4-byte Reload
	sub	edi, eax
	cmp	ecx, edi
	jge	LBB6_43
## BB#26:                               ##   in Loop: Header=BB6_25 Depth=1
	call	_random
	shl	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 108], ecx
	mov	ecx, dword ptr [rbp - 100]
	and	ecx, 3
	mov	dl, cl
	mov	byte ptr [rbp - 109], dl
	mov	ecx, dword ptr [rbp - 100]
	sar	ecx, 2
	mov	dword ptr [rbp - 100], ecx
	mov	ecx, dword ptr [rbp - 108]
	shr	ecx, 16
	mov	si, cx
	mov	word ptr [rbp - 112], si
	movsx	ecx, byte ptr [rbp - 109]
	cmp	ecx, 0
	je	LBB6_28
## BB#27:                               ##   in Loop: Header=BB6_25 Depth=1
	movsx	eax, byte ptr [rbp - 109]
	cmp	eax, 3
	jne	LBB6_29
LBB6_28:                                ##   in Loop: Header=BB6_25 Depth=1
	mov	eax, 2
	movzx	ecx, word ptr [rbp - 112]
	cmp	ecx, dword ptr [rbp - 52]
	setl	dl
	and	dl, 1
	movzx	ecx, dl
	movzx	esi, word ptr [rbp - 112]
	cmp	esi, dword ptr [rbp - 56]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
                                        ## kill: %CL<def> %ECX<kill>
	sar	eax, cl
	movsxd	rdi, eax
	mov	eax, dword ptr [rbp + 4*rdi - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rdi - 48], eax
	jmp	LBB6_41
LBB6_29:                                ##   in Loop: Header=BB6_25 Depth=1
	mov	eax, dword ptr [rbp - 108]
	and	eax, 65535
	mov	cx, ax
	mov	word ptr [rbp - 114], cx
	mov	byte ptr [rbp - 115], 0
	movzx	eax, word ptr [rbp - 112]
	cmp	eax, dword ptr [rbp - 56]
	jle	LBB6_31
## BB#30:                               ##   in Loop: Header=BB6_25 Depth=1
	mov	byte ptr [rbp - 115], 1
	jmp	LBB6_34
LBB6_31:                                ##   in Loop: Header=BB6_25 Depth=1
	movzx	eax, word ptr [rbp - 112]
	cmp	eax, dword ptr [rbp - 52]
	jle	LBB6_33
## BB#32:                               ##   in Loop: Header=BB6_25 Depth=1
	movzx	eax, word ptr [rbp - 112]
	and	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 115], cl
LBB6_33:                                ##   in Loop: Header=BB6_25 Depth=1
	jmp	LBB6_34
LBB6_34:                                ##   in Loop: Header=BB6_25 Depth=1
	movzx	eax, word ptr [rbp - 114]
	cmp	eax, dword ptr [rbp - 56]
	jle	LBB6_36
## BB#35:                               ##   in Loop: Header=BB6_25 Depth=1
	movsx	eax, byte ptr [rbp - 115]
	add	eax, 2
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rcx - 48], eax
	jmp	LBB6_40
LBB6_36:                                ##   in Loop: Header=BB6_25 Depth=1
	movzx	eax, word ptr [rbp - 114]
	cmp	eax, dword ptr [rbp - 52]
	jle	LBB6_38
## BB#37:                               ##   in Loop: Header=BB6_25 Depth=1
	movsx	eax, byte ptr [rbp - 115]
	movzx	ecx, word ptr [rbp - 114]
	and	ecx, 2
	add	eax, ecx
	movsxd	rdx, eax
	mov	eax, dword ptr [rbp + 4*rdx - 48]
	add	eax, 1
	mov	dword ptr [rbp + 4*rdx - 48], eax
	jmp	LBB6_39
LBB6_38:                                ##   in Loop: Header=BB6_25 Depth=1
	movsx	rax, byte ptr [rbp - 115]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 48], ecx
LBB6_39:                                ##   in Loop: Header=BB6_25 Depth=1
	jmp	LBB6_40
LBB6_40:                                ##   in Loop: Header=BB6_25 Depth=1
	jmp	LBB6_41
LBB6_41:                                ##   in Loop: Header=BB6_25 Depth=1
	jmp	LBB6_42
LBB6_42:                                ##   in Loop: Header=BB6_25 Depth=1
	mov	eax, dword ptr [rbp - 104]
	add	eax, 1
	mov	dword ptr [rbp - 104], eax
	jmp	LBB6_25
LBB6_43:
	jmp	LBB6_44
LBB6_44:
	mov	eax, dword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 72]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 44]
	add	eax, dword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 72]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 72]
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 16]
	cmp	rcx, rdx
	jne	LBB6_46
## BB#45:
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
LBB6_46:
	call	___stack_chk_fail
	.cfi_endproc

	.globl	_pthread_handler
	.p2align	4, 0x90
_pthread_handler:                       ## @pthread_handler
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi22:
	.cfi_def_cfa_offset 16
Lcfi23:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi24:
	.cfi_def_cfa_register rbp
	sub	rsp, 224
	xor	esi, esi
	mov	eax, 12
	mov	edx, eax
	lea	rcx, [rbp - 148]
	mov	eax, 56
	mov	r8d, eax
	lea	r9, [rbp - 72]
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 176], rdi ## 8-byte Spill
	mov	rdi, r9
	mov	r9, qword ptr [rbp - 176] ## 8-byte Reload
	mov	dword ptr [rbp - 180], esi ## 4-byte Spill
	mov	rsi, r9
	mov	qword ptr [rbp - 192], rdx ## 8-byte Spill
	mov	rdx, r8
	mov	qword ptr [rbp - 200], rcx ## 8-byte Spill
	call	_memcpy
	mov	eax, dword ptr [rbp - 72]
	mov	dword ptr [rbp - 76], eax
	mov	eax, dword ptr [rbp - 68]
	mov	dword ptr [rbp - 80], eax
	mov	eax, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 84], eax
	mov	eax, dword ptr [rbp - 56]
	mov	dword ptr [rbp - 88], eax
	mov	eax, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 92], eax
	mov	rcx, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 104], rcx
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 112], rcx
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 116], eax
	mov	rcx, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 128], rcx
	mov	dword ptr [rbp - 132], 65536
	mov	dword ptr [rbp - 136], 0
	mov	rcx, qword ptr [rbp - 200] ## 8-byte Reload
	mov	rdi, rcx
	mov	esi, dword ptr [rbp - 180] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 192] ## 8-byte Reload
	call	_memset
	mov	dword ptr [rbp - 152], 0
LBB7_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_3 Depth 2
	mov	eax, dword ptr [rbp - 152]
	cmp	eax, dword ptr [rbp - 88]
	jge	LBB7_7
## BB#2:                                ##   in Loop: Header=BB7_1 Depth=1
	lea	r8, [rbp - 148]
	mov	edi, dword ptr [rbp - 76]
	mov	esi, dword ptr [rbp - 80]
	mov	edx, dword ptr [rbp - 84]
	mov	ecx, dword ptr [rbp - 92]
	call	_progress_generation
	mov	rdi, qword ptr [rbp - 128]
	call	_sem_wait
	mov	ecx, dword ptr [rbp - 148]
	mov	rdi, qword ptr [rbp - 104]
	add	ecx, dword ptr [rdi]
	mov	dword ptr [rdi], ecx
	mov	ecx, dword ptr [rbp - 144]
	mov	rdi, qword ptr [rbp - 104]
	add	ecx, dword ptr [rdi + 4]
	mov	dword ptr [rdi + 4], ecx
	mov	ecx, dword ptr [rbp - 140]
	mov	rdi, qword ptr [rbp - 104]
	add	ecx, dword ptr [rdi + 8]
	mov	dword ptr [rdi + 8], ecx
	mov	rdi, qword ptr [rbp - 128]
	mov	dword ptr [rbp - 204], eax ## 4-byte Spill
	call	_sem_post
	mov	dword ptr [rbp - 208], eax ## 4-byte Spill
LBB7_3:                                 ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 104]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 104]
	add	ecx, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 104]
	add	ecx, dword ptr [rax + 8]
	cmp	ecx, dword ptr [rbp - 132]
	je	LBB7_5
## BB#4:                                ##   in Loop: Header=BB7_3 Depth=2
	lea	rdi, [rbp - 168]
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rip + L_pthread_handler.time_to_sleep]
	mov	qword ptr [rbp - 168], rcx
	mov	rcx, qword ptr [rip + L_pthread_handler.time_to_sleep+8]
	mov	qword ptr [rbp - 160], rcx
	call	_nanosleep
	mov	dword ptr [rbp - 212], eax ## 4-byte Spill
	jmp	LBB7_3
LBB7_5:                                 ##   in Loop: Header=BB7_1 Depth=1
	mov	rax, qword ptr [rbp - 104]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 76], ecx
	mov	ecx, dword ptr [rbp - 76]
	mov	rax, qword ptr [rbp - 104]
	add	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 80], ecx
	mov	ecx, dword ptr [rbp - 80]
	mov	rax, qword ptr [rbp - 104]
	add	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 84], ecx
	mov	rax, qword ptr [rbp - 104]
	add	rax, 12
	mov	qword ptr [rbp - 104], rax
## BB#6:                                ##   in Loop: Header=BB7_1 Depth=1
	mov	eax, dword ptr [rbp - 152]
	add	eax, 1
	mov	dword ptr [rbp - 152], eax
	jmp	LBB7_1
LBB7_7:
	lea	rdi, [rip + L_.str]
	mov	esi, dword ptr [rbp - 116]
	mov	edx, dword ptr [rbp - 88]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 216], eax ## 4-byte Spill
	call	_pthread_exit
	.cfi_endproc

	.globl	_initialize_generation
	.p2align	4, 0x90
_initialize_generation:                 ## @initialize_generation
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi25:
	.cfi_def_cfa_offset 16
Lcfi26:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi27:
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	lea	rax, [rbp - 48]
	xor	ecx, ecx
	mov	edx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], 0
	mov	rdi, rax
	mov	rsi, rdx
	call	_gettimeofday
	mov	dword ptr [rbp - 68], 0
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
LBB8_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
	mov	eax, 8
	mov	ecx, dword ptr [rbp - 68]
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	eax, edx
	cdq
	mov	esi, dword ptr [rbp - 88] ## 4-byte Reload
	idiv	esi
	cmp	ecx, eax
	jge	LBB8_14
## BB#2:                                ##   in Loop: Header=BB8_1 Depth=1
	call	_random
	mov	ecx, eax
	mov	dword ptr [rbp - 72], ecx
	mov	dword ptr [rbp - 76], 0
LBB8_3:                                 ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 76], 8
	jge	LBB8_12
## BB#4:                                ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 72]
	and	eax, 3
	mov	cl, al
	mov	byte ptr [rbp - 77], cl
	movsx	eax, byte ptr [rbp - 77]
	cmp	eax, 0
	jne	LBB8_6
## BB#5:                                ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB8_10
LBB8_6:                                 ##   in Loop: Header=BB8_3 Depth=2
	movsx	eax, byte ptr [rbp - 77]
	cmp	eax, 3
	jne	LBB8_8
## BB#7:                                ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB8_9
LBB8_8:                                 ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
LBB8_9:                                 ##   in Loop: Header=BB8_3 Depth=2
	jmp	LBB8_10
LBB8_10:                                ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 72]
	sar	eax, 2
	mov	dword ptr [rbp - 72], eax
## BB#11:                               ##   in Loop: Header=BB8_3 Depth=2
	mov	eax, dword ptr [rbp - 76]
	add	eax, 1
	mov	dword ptr [rbp - 76], eax
	jmp	LBB8_3
LBB8_12:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_13
LBB8_13:                                ##   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB8_1
LBB8_14:
	lea	rdi, [rbp - 64]
	xor	eax, eax
	mov	esi, eax
	call	_gettimeofday
	mov	ecx, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], ecx
	mov	ecx, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi + 4], ecx
	mov	ecx, dword ptr [rbp - 28]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi + 8], ecx
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi28:
	.cfi_def_cfa_offset 16
Lcfi29:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi30:
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], edi
	mov	qword ptr [rbp - 48], rsi
	call	_srandomdev
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 52], 65536
	mov	dword ptr [rbp - 56], 1000
	mov	esi, dword ptr [rbp - 52]
	mov	edx, dword ptr [rbp - 56]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 20]
	mov	edi, dword ptr [rbp - 52]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	call	_initialize_generation
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 64], eax
	mov	eax, dword ptr [rbp - 64]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 68], eax
	imul	eax, dword ptr [rbp - 56], 3
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rsi
	call	_malloc
	xor	esi, esi
	mov	edx, 12
                                        ## kill: %RDX<def> %EDX<kill>
	lea	rdi, [rbp - 32]
	mov	qword ptr [rbp - 80], rax
	call	_memset
	mov	dword ptr [rbp - 84], 0
LBB9_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	mov	eax, 100
	mov	ecx, dword ptr [rbp - 84]
	mov	edx, dword ptr [rbp - 56]
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	eax, edx
	cdq
	mov	esi, dword ptr [rbp - 132] ## 4-byte Reload
	idiv	esi
	cmp	ecx, eax
	jge	LBB9_8
## BB#2:                                ##   in Loop: Header=BB9_1 Depth=1
	lea	rdi, [rbp - 104]
	xor	eax, eax
	mov	esi, eax
	call	_gettimeofday
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
LBB9_3:                                 ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 124], 100
	jge	LBB9_6
## BB#4:                                ##   in Loop: Header=BB9_3 Depth=2
	lea	r8, [rbp - 32]
	mov	edi, dword ptr [rbp - 60]
	mov	esi, dword ptr [rbp - 64]
	mov	edx, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp - 52]
	call	_progress_generation
	lea	r8, [rbp - 32]
	mov	ecx, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 60], ecx
	mov	ecx, dword ptr [rbp - 60]
	add	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 64], ecx
	mov	ecx, dword ptr [rbp - 64]
	add	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 68], ecx
	mov	rax, qword ptr [rbp - 80]
	imul	ecx, dword ptr [rbp - 84], 100
	add	ecx, dword ptr [rbp - 124]
	movsxd	r9, ecx
	mov	qword ptr [rax + 8*r9], r8
## BB#5:                                ##   in Loop: Header=BB9_3 Depth=2
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB9_3
LBB9_6:                                 ##   in Loop: Header=BB9_1 Depth=1
	lea	rdi, [rbp - 120]
	xor	eax, eax
	mov	esi, eax
	call	_gettimeofday
	lea	rdi, [rip + L_.str.2]
	imul	rsi, qword ptr [rbp - 120], 1000000
	movsxd	rcx, dword ptr [rbp - 112]
	add	rsi, rcx
	imul	rcx, qword ptr [rbp - 104], 1000000
	movsxd	rdx, dword ptr [rbp - 96]
	add	rcx, rdx
	sub	rsi, rcx
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	esi, dword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
## BB#7:                                ##   in Loop: Header=BB9_1 Depth=1
	mov	eax, dword ptr [rbp - 84]
	add	eax, 1
	mov	dword ptr [rbp - 84], eax
	jmp	LBB9_1
LBB9_8:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB9_10
## BB#9:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB9_10:
	call	___stack_chk_fail
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
