	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.file	1 "generations.c"
	.file	2 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/sys" "semaphore.h"
	.file	3 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.0.0/include" "emmintrin.h"
	.file	4 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.0.0/include" "xmmintrin.h"
	.globl	_InitFastRand
	.p2align	4, 0x90
_InitFastRand:                          ## @InitFastRand
Lfunc_begin0:
	.file	5 "." "fast_rand.h"
	.loc	5 29 0                  ## ./fast_rand.h:29:0
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
	push	rbx
	sub	rsp, 104
Lcfi3:
	.cfi_offset rbx, -24
	mov	rbx, rdi
Ltmp0:
	##DEBUG_VALUE: InitFastRand:i <- 0
	.loc	5 40 5 prologue_end discriminator 1 ## ./fast_rand.h:40:5
	lea	rdi, [rbp - 72]
Ltmp1:
	.loc	5 41 18                 ## ./fast_rand.h:41:18
	lea	rsi, [rip + L_.memset_pattern]
	mov	edx, 16
	call	_memset_pattern16
Ltmp2:
	.loc	5 40 5 discriminator 1  ## ./fast_rand.h:40:5
	lea	rdi, [rbp - 56]
Ltmp3:
	.loc	5 42 16                 ## ./fast_rand.h:42:16
	lea	rsi, [rip + L_.memset_pattern.6]
	mov	edx, 16
	call	_memset_pattern16
Ltmp4:
	.loc	5 40 5 discriminator 1  ## ./fast_rand.h:40:5
	lea	rdi, [rbp - 40]
Ltmp5:
	.loc	5 43 16                 ## ./fast_rand.h:43:16
	lea	rsi, [rip + L_.memset_pattern.7]
	mov	edx, 16
	call	_memset_pattern16
Ltmp6:
	.loc	5 46 14                 ## ./fast_rand.h:46:14
	call	_random
	.loc	5 46 12 is_stmt 0       ## ./fast_rand.h:46:12
	mov	dword ptr [rbp - 104], eax
	.loc	5 47 14 is_stmt 1       ## ./fast_rand.h:47:14
	call	_random
	.loc	5 47 12 is_stmt 0       ## ./fast_rand.h:47:12
	mov	dword ptr [rbp - 100], eax
	.loc	5 48 14 is_stmt 1       ## ./fast_rand.h:48:14
	call	_random
	.loc	5 48 12 is_stmt 0       ## ./fast_rand.h:48:12
	mov	dword ptr [rbp - 96], eax
	.loc	5 49 14 is_stmt 1       ## ./fast_rand.h:49:14
	call	_random
	.loc	5 49 12 is_stmt 0       ## ./fast_rand.h:49:12
	mov	dword ptr [rbp - 92], eax
	.loc	5 50 14 is_stmt 1       ## ./fast_rand.h:50:14
	call	_random
	.loc	5 50 12 is_stmt 0       ## ./fast_rand.h:50:12
	mov	dword ptr [rbp - 88], eax
	.loc	5 51 14 is_stmt 1       ## ./fast_rand.h:51:14
	call	_random
	.loc	5 51 12 is_stmt 0       ## ./fast_rand.h:51:12
	mov	dword ptr [rbp - 84], eax
	.loc	5 52 14 is_stmt 1       ## ./fast_rand.h:52:14
	call	_random
	.loc	5 52 12 is_stmt 0       ## ./fast_rand.h:52:12
	mov	dword ptr [rbp - 80], eax
	.loc	5 53 14 is_stmt 1       ## ./fast_rand.h:53:14
	call	_random
	.loc	5 53 12 is_stmt 0       ## ./fast_rand.h:53:12
	mov	dword ptr [rbp - 76], eax
	.loc	5 54 12 is_stmt 1       ## ./fast_rand.h:54:12
	movups	xmm0, xmmword ptr [rbp - 24]
	movups	xmmword ptr [rbx + 80], xmm0
	movups	xmm0, xmmword ptr [rbp - 40]
	movups	xmmword ptr [rbx + 64], xmm0
	movups	xmm0, xmmword ptr [rbp - 104]
	movups	xmm1, xmmword ptr [rbp - 88]
	movups	xmm2, xmmword ptr [rbp - 72]
	movups	xmm3, xmmword ptr [rbp - 56]
	movups	xmmword ptr [rbx + 48], xmm3
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	.loc	5 55 1                  ## ./fast_rand.h:55:1
	mov	rax, rbx
	add	rsp, 104
	pop	rbx
	pop	rbp
	ret
Ltmp7:
Lfunc_end0:
	.cfi_endproc

	.globl	_progress_generation
	.p2align	4, 0x90
_progress_generation:                   ## @progress_generation
Lfunc_begin1:
	.loc	1 39 0                  ## generations.c:39:0
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi4:
	.cfi_def_cfa_offset 16
Lcfi5:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi6:
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 232
Lcfi7:
	.cfi_offset rbx, -56
Lcfi8:
	.cfi_offset r12, -48
Lcfi9:
	.cfi_offset r13, -40
Lcfi10:
	.cfi_offset r14, -32
Lcfi11:
	.cfi_offset r15, -24
	##DEBUG_VALUE: progress_generation:thresh_aa <- %EDI
	##DEBUG_VALUE: progress_generation:thresh_ab <- %ESI
	##DEBUG_VALUE: progress_generation:thresh_bb <- %EDX
	##DEBUG_VALUE: progress_generation:next_members <- %ECX
	##DEBUG_VALUE: progress_generation:result <- %R8
	mov	r14, r8
Ltmp8:
	##DEBUG_VALUE: progress_generation:result <- %R14
	mov	r15d, ecx
Ltmp9:
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	mov	r13d, esi
Ltmp10:
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	mov	r12d, edi
Ltmp11:
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 48], rax
Ltmp12:
	.loc	1 64 9 prologue_end     ## generations.c:64:9
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 80], xmm0
	mov	dword ptr [rbp - 64], 0
	lea	rdi, [rbp - 176]
Ltmp13:
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	.loc	1 66 27                 ## generations.c:66:27
	call	_InitFastRand
Ltmp14:
	.loc	1 0 27 is_stmt 0        ## generations.c:0:27
	lea	rdi, [rbp - 272]
Ltmp15:
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	.loc	1 67 28 is_stmt 1       ## generations.c:67:28
	call	_InitFastRand
Ltmp16:
	##DEBUG_VALUE: i <- 0
	.loc	1 0 28 is_stmt 0        ## generations.c:0:28
	mov	r8d, r15d
	sar	r8d, 6
	movdqa	xmm11, xmmword ptr [rbp - 272]
	movdqa	xmm12, xmmword ptr [rbp - 256]
	movdqa	xmm10, xmmword ptr [rbp - 240]
Ltmp17:
	##DEBUG_VALUE: FastRand:mask <- %XMM10
	movdqa	xmm8, xmmword ptr [rbp - 224]
	movdqa	xmm9, xmmword ptr [rbp - 208]
	movdqa	xmm1, xmmword ptr [rbp - 144]
Ltmp18:
	##DEBUG_VALUE: FastRand:mask <- %XMM1
	##DEBUG_VALUE: FastRand:mask <- %XMM1
	movdqa	xmm13, xmmword ptr [rbp - 128]
	movdqa	xmm2, xmmword ptr [rbp - 112]
	xor	r9d, r9d
	jmp	LBB1_1
Ltmp19:
	.p2align	4, 0x90
LBB1_808:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp20:
	##DEBUG_VALUE: j <- 1
	.loc	1 69 43 is_stmt 1 discriminator 3 ## generations.c:69:43
	inc	r9d
Ltmp21:
	##DEBUG_VALUE: i <- %R9D
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: FastRand:mask <- %XMM10
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: i <- %R9D
	.loc	1 69 23 is_stmt 0 discriminator 1 ## generations.c:69:23
	cmp	r9d, r8d
Ltmp22:
	.loc	5 67 22 is_stmt 1       ## ./fast_rand.h:67:22
	movdqa	xmm0, xmm11
	.loc	5 66 21                 ## ./fast_rand.h:66:21
	pand	xmm11, xmm10
Ltmp23:
	##DEBUG_VALUE: FastRand:amask <- %XMM11
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm11, xmm8
Ltmp24:
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm11, xmm0
Ltmp25:
	##DEBUG_VALUE: FastRand:anew <- %XMM11
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 272], xmm11
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	movdqa	xmm0, xmm12
	.loc	5 72 21                 ## ./fast_rand.h:72:21
	pand	xmm12, xmm10
Ltmp26:
	##DEBUG_VALUE: FastRand:bmask <- %XMM12
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm0, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm12, xmm9
Ltmp27:
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm12, xmm0
Ltmp28:
	##DEBUG_VALUE: FastRand:bnew <- %XMM12
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 256], xmm12
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm11
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm7, xmm12
	pand	xmm7, xmm10
	paddd	xmm7, xmm0
Ltmp29:
	##DEBUG_VALUE: FastRand:res <- %XMM7
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 192], xmm7
Ltmp30:
	.loc	1 69 5 discriminator 1  ## generations.c:69:5
	movd	r11d, xmm7
Ltmp31:
	##DEBUG_VALUE: FastRand:b <- %XMM12
	##DEBUG_VALUE: FastRand:a <- %XMM11
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: choiceEntropy <- %R11D
	jge	LBB1_5
Ltmp32:
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: choiceEntropy <- %R11D
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: i <- %R9D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	movq	rcx, xmm7
Ltmp33:
	##DEBUG_VALUE: j <- 0
	.loc	1 0 5 is_stmt 0 discriminator 1 ## generations.c:0:5
	movdqa	xmm0, xmmword ptr [rbp - 176]
Ltmp34:
	##DEBUG_VALUE: FastRand:a <- %XMM0
	movdqa	xmm3, xmmword ptr [rbp - 160]
Ltmp35:
	##DEBUG_VALUE: FastRand:b <- %XMM3
	.loc	5 66 21 is_stmt 1       ## ./fast_rand.h:66:21
	movdqa	xmm5, xmm1
	pand	xmm5, xmm0
Ltmp36:
	##DEBUG_VALUE: FastRand:amask <- %XMM5
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
Ltmp37:
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm5, xmm13
Ltmp38:
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm5, xmm0
Ltmp39:
	##DEBUG_VALUE: FastRand:anew <- %XMM5
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm5
	.loc	5 72 21                 ## ./fast_rand.h:72:21
	movdqa	xmm4, xmm1
	pand	xmm4, xmm3
Ltmp40:
	##DEBUG_VALUE: FastRand:bmask <- %XMM4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
Ltmp41:
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm4, xmm2
Ltmp42:
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm4, xmm3
Ltmp43:
	##DEBUG_VALUE: FastRand:bnew <- %XMM4
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm4
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm5
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm4
	pand	xmm3, xmm1
	paddd	xmm0, xmm3
Ltmp44:
	##DEBUG_VALUE: FastRand:res <- %XMM0
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp45:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm0
Ltmp46:
	##DEBUG_VALUE: indexEntropy <- %EAX
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 2
	.loc	1 88 62                 ## generations.c:88:62
	mov	edx, eax
shr	edx, 16 ## edx = firstIndex
Ltmp47:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edi, xmm0, 1
	and	cl, 3
	je	LBB1_4
Ltmp48:
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	cmp	cl, 3
	jne	LBB1_12
Ltmp49:
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
cmp	edx, r12d ## Refer to line 356 & 357. edx is firstIndex
setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
add	al, al ## Isn't this equivalent to shr 1?  if firstIndex<thresh_aa al = 2 else al = 0
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edx, r13d
setl	cl # if firstIndex < thresh_ab cl = 1 else cl = 0
	.loc	1 95 61                 ## generations.c:95:61
or	cl, al ## 1 if al, 2 if cl, 3 if al & cl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
shr	eax, cl # 4 >> (al & cl)
	jmp	LBB1_21
Ltmp50:
	.p2align	4, 0x90
LBB1_12:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp51:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edx, r13d
Ltmp52:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
jg	LBB1_16 # if(firstIndex > thresh_ab)
Ltmp53:
## BB#13:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edx, r12d
Ltmp54:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
jle	LBB1_14 # elif firstIndex < thresh_aa
Ltmp55:
## BB#15:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dl, 1
Ltmp56:
	##DEBUG_VALUE: allele <- %DL
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	mov	cl, dl
	jmp	LBB1_16
Ltmp57:
LBB1_14:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	xor	ecx, ecx
Ltmp58:
LBB1_16:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edx, r13d
Ltmp59:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_19
Ltmp60:
## BB#17:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_18
Ltmp61:
LBB1_19:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edx, r12d
Ltmp62:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_18
Ltmp63:
## BB#20:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_21
Ltmp64:
	.p2align	4, 0x90
LBB1_18:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, cl
Ltmp65:
LBB1_21:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp66:
	##DEBUG_VALUE: allele <- %CL
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp67:
	.loc	1 87 35                 ## generations.c:87:35
	mov	ebx, r11d
	shr	ebx, 4
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
Ltmp68:
	shr	ecx, 16
Ltmp69:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	je	LBB1_23
Ltmp70:
## BB#22:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	cmp	sil, 3
	jne	LBB1_38
Ltmp71:
LBB1_23:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_47
Ltmp72:
	.p2align	4, 0x90
LBB1_38:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp73:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp74:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_42
Ltmp75:
## BB#39:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp76:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_40
Ltmp77:
## BB#41:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_42
Ltmp78:
LBB1_40:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp79:
LBB1_42:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp80:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_43
Ltmp81:
## BB#45:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_46
Ltmp82:
LBB1_43:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp83:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_46
Ltmp84:
## BB#44:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_47
Ltmp85:
	.p2align	4, 0x90
LBB1_46:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp86:
LBB1_47:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm0, 3
Ltmp87:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 6
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp88:
	.loc	1 90 37                 ## generations.c:90:37
	and	bl, 3
	cmp	bl, 3
	je	LBB1_49
Ltmp89:
## BB#48:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	bl, bl
	jne	LBB1_50
Ltmp90:
LBB1_49:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_59
Ltmp91:
	.p2align	4, 0x90
LBB1_50:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dl, 1
Ltmp92:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp93:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_54
Ltmp94:
## BB#51:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp95:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_52
Ltmp96:
## BB#53:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_54
Ltmp97:
LBB1_52:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp98:
LBB1_54:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp99:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_55
Ltmp100:
## BB#57:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_58
Ltmp101:
LBB1_55:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp102:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_58
Ltmp103:
## BB#56:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_59
Ltmp104:
	.p2align	4, 0x90
LBB1_58:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dl
Ltmp105:
LBB1_59:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 8
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp106:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_61
Ltmp107:
## BB#60:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_62
Ltmp108:
LBB1_61:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_71
Ltmp109:
	.p2align	4, 0x90
LBB1_62:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp110:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp111:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_66
Ltmp112:
## BB#63:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp113:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_64
Ltmp114:
## BB#65:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_66
Ltmp115:
LBB1_64:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp116:
LBB1_66:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp117:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_67
Ltmp118:
## BB#69:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_70
Ltmp119:
LBB1_67:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp120:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_70
Ltmp121:
## BB#68:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_71
Ltmp122:
	.p2align	4, 0x90
LBB1_70:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp123:
LBB1_71:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm5
Ltmp124:
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm5, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm5
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm4, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm4
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm6, xmm3
	pand	xmm6, xmm1
	paddd	xmm4, xmm6
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp125:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 10
	.loc	1 88 62                 ## generations.c:88:62
	mov	edx, ecx
	shr	edx, 16
Ltmp126:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	ebx, xmm4, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_73
Ltmp127:
## BB#72:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_74
Ltmp128:
LBB1_73:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_83
Ltmp129:
	.p2align	4, 0x90
LBB1_74:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp130:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edx, r13d
Ltmp131:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_78
Ltmp132:
## BB#75:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edx, r12d
Ltmp133:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_76
Ltmp134:
## BB#77:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dl, 1
	mov	al, dl
	jmp	LBB1_78
Ltmp135:
LBB1_76:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp136:
LBB1_78:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edx, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edx, r13d
Ltmp137:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_79
Ltmp138:
## BB#81:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_82
Ltmp139:
LBB1_79:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edx, r12d
Ltmp140:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_82
Ltmp141:
## BB#80:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_84
Ltmp142:
	.p2align	4, 0x90
LBB1_82:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp143:
LBB1_83:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp144:
LBB1_84:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm4, 2
Ltmp145:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 12
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, ebx
	shr	ecx, 16
Ltmp146:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_86
Ltmp147:
## BB#85:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_87
Ltmp148:
LBB1_86:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_96
Ltmp149:
	.p2align	4, 0x90
LBB1_87:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp150:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp151:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_91
Ltmp152:
## BB#88:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp153:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_89
Ltmp154:
## BB#90:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_91
Ltmp155:
LBB1_89:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp156:
LBB1_91:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, bx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp157:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_92
Ltmp158:
## BB#94:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_95
Ltmp159:
LBB1_92:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp160:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_95
Ltmp161:
## BB#93:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ebx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ebx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rbx - 80]
	jmp	LBB1_96
Ltmp162:
	.p2align	4, 0x90
LBB1_95:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp163:
LBB1_96:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm4, 3
Ltmp164:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r11d
	shr	edx, 14
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp165:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_98
Ltmp166:
## BB#97:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_99
Ltmp167:
LBB1_98:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_108
Ltmp168:
	.p2align	4, 0x90
LBB1_99:                                ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp169:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp170:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_103
Ltmp171:
## BB#100:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp172:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_101
Ltmp173:
## BB#102:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_103
Ltmp174:
LBB1_101:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp175:
LBB1_103:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp176:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_104
Ltmp177:
## BB#106:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_107
Ltmp178:
LBB1_104:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp179:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_107
Ltmp180:
## BB#105:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_108
Ltmp181:
	.p2align	4, 0x90
LBB1_107:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp182:
LBB1_108:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 16
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp183:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_110
Ltmp184:
## BB#109:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_111
Ltmp185:
LBB1_110:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_120
Ltmp186:
	.p2align	4, 0x90
LBB1_111:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp187:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp188:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_115
Ltmp189:
## BB#112:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp190:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_113
Ltmp191:
## BB#114:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_115
Ltmp192:
LBB1_113:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp193:
LBB1_115:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp194:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_116
Ltmp195:
## BB#118:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_119
Ltmp196:
LBB1_116:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp197:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_119
Ltmp198:
## BB#117:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_120
Ltmp199:
	.p2align	4, 0x90
LBB1_119:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp200:
LBB1_120:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm5, xmm1
	pand	xmm5, xmm0
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm5, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm5, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm5
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm6, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm6, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm6
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm5
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm6
	pand	xmm3, xmm1
	paddd	xmm0, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp201:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 18
	.loc	1 88 62                 ## generations.c:88:62
	mov	edx, ecx
	shr	edx, 16
Ltmp202:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	ebx, xmm0, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_122
Ltmp203:
## BB#121:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_123
Ltmp204:
LBB1_122:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_132
Ltmp205:
	.p2align	4, 0x90
LBB1_123:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp206:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edx, r13d
Ltmp207:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_127
Ltmp208:
## BB#124:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edx, r12d
Ltmp209:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_125
Ltmp210:
## BB#126:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dl, 1
	mov	al, dl
	jmp	LBB1_127
Ltmp211:
LBB1_125:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp212:
LBB1_127:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edx, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edx, r13d
Ltmp213:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_128
Ltmp214:
## BB#130:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_131
Ltmp215:
LBB1_128:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edx, r12d
Ltmp216:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_131
Ltmp217:
## BB#129:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_133
Ltmp218:
	.p2align	4, 0x90
LBB1_131:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp219:
LBB1_132:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp220:
LBB1_133:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp221:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 20
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, ebx
	shr	ecx, 16
Ltmp222:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_135
Ltmp223:
## BB#134:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_136
Ltmp224:
LBB1_135:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_145
Ltmp225:
	.p2align	4, 0x90
LBB1_136:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp226:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp227:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_140
Ltmp228:
## BB#137:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp229:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_138
Ltmp230:
## BB#139:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_140
Ltmp231:
LBB1_138:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp232:
LBB1_140:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, bx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp233:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_141
Ltmp234:
## BB#143:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_144
Ltmp235:
LBB1_141:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp236:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_144
Ltmp237:
## BB#142:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ebx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ebx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rbx - 80]
	jmp	LBB1_145
Ltmp238:
	.p2align	4, 0x90
LBB1_144:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp239:
LBB1_145:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm0, 3
Ltmp240:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r11d
	shr	edx, 22
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp241:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_147
Ltmp242:
## BB#146:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_148
Ltmp243:
LBB1_147:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_157
Ltmp244:
	.p2align	4, 0x90
LBB1_148:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp245:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp246:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_152
Ltmp247:
## BB#149:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp248:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_150
Ltmp249:
## BB#151:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_152
Ltmp250:
LBB1_150:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp251:
LBB1_152:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp252:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_153
Ltmp253:
## BB#155:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_156
Ltmp254:
LBB1_153:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp255:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_156
Ltmp256:
## BB#154:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_157
Ltmp257:
	.p2align	4, 0x90
LBB1_156:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp258:
LBB1_157:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 24
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp259:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_159
Ltmp260:
## BB#158:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_160
Ltmp261:
LBB1_159:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_169
Ltmp262:
	.p2align	4, 0x90
LBB1_160:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp263:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp264:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_164
Ltmp265:
## BB#161:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp266:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_162
Ltmp267:
## BB#163:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_164
Ltmp268:
LBB1_162:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp269:
LBB1_164:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp270:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_165
Ltmp271:
## BB#167:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_168
Ltmp272:
LBB1_165:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp273:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_168
Ltmp274:
## BB#166:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_169
Ltmp275:
	.p2align	4, 0x90
LBB1_168:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp276:
LBB1_169:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm5
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm5, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm5
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm6, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm6
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm5, xmm3
	pand	xmm5, xmm1
	paddd	xmm0, xmm5
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp277:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 26
	.loc	1 88 62                 ## generations.c:88:62
	mov	edx, ecx
	shr	edx, 16
Ltmp278:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	ebx, xmm0, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_171
Ltmp279:
## BB#170:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_172
Ltmp280:
LBB1_171:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_181
Ltmp281:
	.p2align	4, 0x90
LBB1_172:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp282:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edx, r13d
Ltmp283:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_176
Ltmp284:
## BB#173:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edx, r12d
Ltmp285:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_174
Ltmp286:
## BB#175:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dl, 1
	mov	al, dl
	jmp	LBB1_176
Ltmp287:
LBB1_174:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp288:
LBB1_176:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edx, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edx, r13d
Ltmp289:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_177
Ltmp290:
## BB#179:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_180
Ltmp291:
LBB1_177:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edx, r12d
Ltmp292:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_180
Ltmp293:
## BB#178:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_182
Ltmp294:
	.p2align	4, 0x90
LBB1_180:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp295:
LBB1_181:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp296:
LBB1_182:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp297:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 28
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, ebx
	shr	ecx, 16
Ltmp298:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_184
Ltmp299:
## BB#183:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_185
Ltmp300:
LBB1_184:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_194
Ltmp301:
	.p2align	4, 0x90
LBB1_185:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp302:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp303:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_189
Ltmp304:
## BB#186:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp305:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_187
Ltmp306:
## BB#188:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_189
Ltmp307:
LBB1_187:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp308:
LBB1_189:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, bx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp309:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_190
Ltmp310:
## BB#192:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_193
Ltmp311:
LBB1_190:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp312:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_193
Ltmp313:
## BB#191:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ebx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ebx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rbx - 80]
	jmp	LBB1_194
Ltmp314:
	.p2align	4, 0x90
LBB1_193:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp315:
LBB1_194:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm0, 3
Ltmp316:
	.loc	1 87 35                 ## generations.c:87:35
	shr	r11d, 30
Ltmp317:
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp318:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_196
Ltmp319:
## BB#195:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_197
Ltmp320:
LBB1_196:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_206
Ltmp321:
	.p2align	4, 0x90
LBB1_197:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dl, 1
Ltmp322:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp323:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_201
Ltmp324:
## BB#198:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp325:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_199
Ltmp326:
## BB#200:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_201
Ltmp327:
LBB1_199:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp328:
LBB1_201:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp329:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_202
Ltmp330:
## BB#204:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_205
Ltmp331:
LBB1_202:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp332:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_205
Ltmp333:
## BB#203:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_206
Ltmp334:
	.p2align	4, 0x90
LBB1_205:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dl
Ltmp335:
LBB1_206:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 69 5 is_stmt 1 discriminator 1 ## generations.c:69:5
	pextrd	r10d, xmm7, 1
Ltmp336:
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edi
	shr	eax, 16
Ltmp337:
	.loc	1 90 37                 ## generations.c:90:37
	and	r11b, 3
	cmp	r11b, 3
	je	LBB1_208
Ltmp338:
## BB#207:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	r11b, r11b
	jne	LBB1_209
Ltmp339:
LBB1_208:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_218
Ltmp340:
	.p2align	4, 0x90
LBB1_209:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp341:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp342:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_213
Ltmp343:
## BB#210:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp344:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_211
Ltmp345:
## BB#212:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_213
Ltmp346:
LBB1_211:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp347:
LBB1_213:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp348:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_214
Ltmp349:
## BB#216:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_217
Ltmp350:
LBB1_214:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp351:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_217
Ltmp352:
## BB#215:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_219
Ltmp353:
	.p2align	4, 0x90
LBB1_217:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp354:
LBB1_218:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp355:
LBB1_219:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
Ltmp356:
	##DEBUG_VALUE: j <- 0
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm5, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm5, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm5
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm3, xmm0
	pslld	xmm3, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm6, xmm5
	pand	xmm6, xmm1
	paddd	xmm3, xmm6
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm3
Ltmp357:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm3
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 2
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp358:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm3, 1
	mov	ebx, r10d
	and	bl, 3
	cmp	bl, 3
	je	LBB1_221
Ltmp359:
## BB#220:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	bl, bl
	jne	LBB1_222
Ltmp360:
LBB1_221:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_231
Ltmp361:
	.p2align	4, 0x90
LBB1_222:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dil, 1
Ltmp362:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp363:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_226
Ltmp364:
## BB#223:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp365:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_224
Ltmp366:
## BB#225:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_226
Ltmp367:
LBB1_224:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp368:
LBB1_226:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp369:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_227
Ltmp370:
## BB#229:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_230
Ltmp371:
LBB1_227:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp372:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_230
Ltmp373:
## BB#228:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_231
Ltmp374:
	.p2align	4, 0x90
LBB1_230:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dil
Ltmp375:
LBB1_231:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm3, 2
Ltmp376:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 4
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp377:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_233
Ltmp378:
## BB#232:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_234
Ltmp379:
LBB1_233:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_243
Ltmp380:
	.p2align	4, 0x90
LBB1_234:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	sil, 1
Ltmp381:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp382:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_238
Ltmp383:
## BB#235:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp384:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_236
Ltmp385:
## BB#237:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_238
Ltmp386:
LBB1_236:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp387:
LBB1_238:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp388:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_239
Ltmp389:
## BB#241:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_242
Ltmp390:
LBB1_239:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp391:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_242
Ltmp392:
## BB#240:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_243
Ltmp393:
	.p2align	4, 0x90
LBB1_242:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, sil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp394:
LBB1_243:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm3, 3
Ltmp395:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 6
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp396:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_245
Ltmp397:
## BB#244:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_246
Ltmp398:
LBB1_245:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_255
Ltmp399:
	.p2align	4, 0x90
LBB1_246:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dil, 1
Ltmp400:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp401:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_250
Ltmp402:
## BB#247:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp403:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_248
Ltmp404:
## BB#249:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_250
Ltmp405:
LBB1_248:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp406:
LBB1_250:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp407:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_251
Ltmp408:
## BB#253:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_254
Ltmp409:
LBB1_251:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp410:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_254
Ltmp411:
## BB#252:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_255
Ltmp412:
	.p2align	4, 0x90
LBB1_254:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dil
Ltmp413:
LBB1_255:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 8
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp414:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_257
Ltmp415:
## BB#256:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_258
Ltmp416:
LBB1_257:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_267
Ltmp417:
	.p2align	4, 0x90
LBB1_258:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp418:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp419:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_262
Ltmp420:
## BB#259:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp421:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_260
Ltmp422:
## BB#261:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_262
Ltmp423:
LBB1_260:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp424:
LBB1_262:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp425:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_263
Ltmp426:
## BB#265:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_266
Ltmp427:
LBB1_263:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp428:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_266
Ltmp429:
## BB#264:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_267
Ltmp430:
	.p2align	4, 0x90
LBB1_266:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp431:
LBB1_267:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
Ltmp432:
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm5, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm6, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm6, xmm5
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm6
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm6
	pand	xmm3, xmm1
	paddd	xmm0, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp433:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 10
	.loc	1 88 62                 ## generations.c:88:62
	mov	edi, ecx
	shr	edi, 16
Ltmp434:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm0, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_269
Ltmp435:
## BB#268:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_270
Ltmp436:
LBB1_269:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_279
Ltmp437:
	.p2align	4, 0x90
LBB1_270:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp438:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edi, r13d
Ltmp439:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_274
Ltmp440:
## BB#271:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edi, r12d
Ltmp441:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_272
Ltmp442:
## BB#273:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dil, 1
	mov	al, dil
	jmp	LBB1_274
Ltmp443:
LBB1_272:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp444:
LBB1_274:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edi, r13d
Ltmp445:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_275
Ltmp446:
## BB#277:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_278
Ltmp447:
LBB1_275:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edi, r12d
Ltmp448:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_278
Ltmp449:
## BB#276:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_280
Ltmp450:
	.p2align	4, 0x90
LBB1_278:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp451:
LBB1_279:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp452:
LBB1_280:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp453:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 12
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp454:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_282
Ltmp455:
## BB#281:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_283
Ltmp456:
LBB1_282:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_292
Ltmp457:
	.p2align	4, 0x90
LBB1_283:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	sil, 1
Ltmp458:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp459:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_287
Ltmp460:
## BB#284:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp461:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_285
Ltmp462:
## BB#286:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_287
Ltmp463:
LBB1_285:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp464:
LBB1_287:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp465:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_288
Ltmp466:
## BB#290:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_291
Ltmp467:
LBB1_288:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp468:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_291
Ltmp469:
## BB#289:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_292
Ltmp470:
	.p2align	4, 0x90
LBB1_291:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, sil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp471:
LBB1_292:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm0, 3
Ltmp472:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 14
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp473:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_294
Ltmp474:
## BB#293:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_295
Ltmp475:
LBB1_294:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_304
Ltmp476:
	.p2align	4, 0x90
LBB1_295:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dil, 1
Ltmp477:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp478:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_299
Ltmp479:
## BB#296:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp480:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_297
Ltmp481:
## BB#298:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_299
Ltmp482:
LBB1_297:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp483:
LBB1_299:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp484:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_300
Ltmp485:
## BB#302:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_303
Ltmp486:
LBB1_300:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp487:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_303
Ltmp488:
## BB#301:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_304
Ltmp489:
	.p2align	4, 0x90
LBB1_303:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dil
Ltmp490:
LBB1_304:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 16
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp491:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_306
Ltmp492:
## BB#305:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_307
Ltmp493:
LBB1_306:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_316
Ltmp494:
	.p2align	4, 0x90
LBB1_307:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp495:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp496:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_311
Ltmp497:
## BB#308:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp498:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_309
Ltmp499:
## BB#310:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_311
Ltmp500:
LBB1_309:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp501:
LBB1_311:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp502:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_312
Ltmp503:
## BB#314:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_315
Ltmp504:
LBB1_312:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp505:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_315
Ltmp506:
## BB#313:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_316
Ltmp507:
	.p2align	4, 0x90
LBB1_315:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp508:
LBB1_316:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm6, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm6
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm5, xmm3
	pand	xmm5, xmm1
	paddd	xmm4, xmm5
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp509:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 18
	.loc	1 88 62                 ## generations.c:88:62
	mov	edi, ecx
	shr	edi, 16
Ltmp510:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm4, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_318
Ltmp511:
## BB#317:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_319
Ltmp512:
LBB1_318:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_328
Ltmp513:
	.p2align	4, 0x90
LBB1_319:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp514:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edi, r13d
Ltmp515:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_323
Ltmp516:
## BB#320:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edi, r12d
Ltmp517:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_321
Ltmp518:
## BB#322:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dil, 1
	mov	al, dil
	jmp	LBB1_323
Ltmp519:
LBB1_321:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp520:
LBB1_323:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edi, r13d
Ltmp521:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_324
Ltmp522:
## BB#326:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_327
Ltmp523:
LBB1_324:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edi, r12d
Ltmp524:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_327
Ltmp525:
## BB#325:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_329
Ltmp526:
	.p2align	4, 0x90
LBB1_327:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp527:
LBB1_328:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp528:
LBB1_329:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm4, 2
Ltmp529:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 20
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp530:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_331
Ltmp531:
## BB#330:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_332
Ltmp532:
LBB1_331:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_341
Ltmp533:
	.p2align	4, 0x90
LBB1_332:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	sil, 1
Ltmp534:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp535:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_336
Ltmp536:
## BB#333:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp537:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_334
Ltmp538:
## BB#335:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_336
Ltmp539:
LBB1_334:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp540:
LBB1_336:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp541:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_337
Ltmp542:
## BB#339:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_340
Ltmp543:
LBB1_337:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp544:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_340
Ltmp545:
## BB#338:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_341
Ltmp546:
	.p2align	4, 0x90
LBB1_340:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, sil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp547:
LBB1_341:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm4, 3
Ltmp548:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 22
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp549:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_343
Ltmp550:
## BB#342:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_344
Ltmp551:
LBB1_343:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_353
Ltmp552:
	.p2align	4, 0x90
LBB1_344:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dil, 1
Ltmp553:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp554:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_348
Ltmp555:
## BB#345:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp556:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_346
Ltmp557:
## BB#347:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_348
Ltmp558:
LBB1_346:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp559:
LBB1_348:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp560:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_349
Ltmp561:
## BB#351:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_352
Ltmp562:
LBB1_349:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp563:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_352
Ltmp564:
## BB#350:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_353
Ltmp565:
	.p2align	4, 0x90
LBB1_352:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dil
Ltmp566:
LBB1_353:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 24
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp567:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_355
Ltmp568:
## BB#354:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_356
Ltmp569:
LBB1_355:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_365
Ltmp570:
	.p2align	4, 0x90
LBB1_356:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp571:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp572:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_360
Ltmp573:
## BB#357:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp574:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_358
Ltmp575:
## BB#359:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_360
Ltmp576:
LBB1_358:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp577:
LBB1_360:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp578:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_361
Ltmp579:
## BB#363:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_364
Ltmp580:
LBB1_361:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp581:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_364
Ltmp582:
## BB#362:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_365
Ltmp583:
	.p2align	4, 0x90
LBB1_364:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp584:
LBB1_365:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm5, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm5, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm5
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm6, xmm5
	pand	xmm6, xmm1
	paddd	xmm0, xmm6
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp585:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 26
	.loc	1 88 62                 ## generations.c:88:62
	mov	edi, ecx
	shr	edi, 16
Ltmp586:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm0, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_367
Ltmp587:
## BB#366:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_368
Ltmp588:
LBB1_367:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	edi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	edi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_377
Ltmp589:
	.p2align	4, 0x90
LBB1_368:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp590:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	edi, r13d
Ltmp591:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_372
Ltmp592:
## BB#369:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	edi, r12d
Ltmp593:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_370
Ltmp594:
## BB#371:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	dil, 1
	mov	al, dil
	jmp	LBB1_372
Ltmp595:
LBB1_370:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp596:
LBB1_372:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	edi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	edi, r13d
Ltmp597:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_373
Ltmp598:
## BB#375:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_376
Ltmp599:
LBB1_373:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	edi, r12d
Ltmp600:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_376
Ltmp601:
## BB#374:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_378
Ltmp602:
	.p2align	4, 0x90
LBB1_376:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp603:
LBB1_377:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp604:
LBB1_378:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp605:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 28
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp606:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_380
Ltmp607:
## BB#379:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_381
Ltmp608:
LBB1_380:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_390
Ltmp609:
	.p2align	4, 0x90
LBB1_381:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	sil, 1
Ltmp610:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp611:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_385
Ltmp612:
## BB#382:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp613:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_383
Ltmp614:
## BB#384:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_385
Ltmp615:
LBB1_383:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp616:
LBB1_385:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp617:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_386
Ltmp618:
## BB#388:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_389
Ltmp619:
LBB1_386:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp620:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_389
Ltmp621:
## BB#387:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_390
Ltmp622:
	.p2align	4, 0x90
LBB1_389:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, sil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp623:
LBB1_390:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edx, xmm0, 3
Ltmp624:
	.loc	1 87 35                 ## generations.c:87:35
	shr	r10d, 30
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp625:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_392
Ltmp626:
## BB#391:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_393
Ltmp627:
LBB1_392:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_402
Ltmp628:
	.p2align	4, 0x90
LBB1_393:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp629:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp630:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_397
Ltmp631:
## BB#394:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp632:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_395
Ltmp633:
## BB#396:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_397
Ltmp634:
LBB1_395:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp635:
LBB1_397:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp636:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_398
Ltmp637:
## BB#400:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_401
Ltmp638:
LBB1_398:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp639:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_401
Ltmp640:
## BB#399:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_402
Ltmp641:
	.p2align	4, 0x90
LBB1_401:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp642:
LBB1_402:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 69 5 is_stmt 1 discriminator 1 ## generations.c:69:5
	pextrd	r11d, xmm7, 2
Ltmp643:
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edx
	shr	eax, 16
Ltmp644:
	.loc	1 90 37                 ## generations.c:90:37
	and	r10b, 3
	cmp	r10b, 3
	je	LBB1_404
Ltmp645:
## BB#403:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	r10b, r10b
	jne	LBB1_405
Ltmp646:
LBB1_404:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_414
Ltmp647:
	.p2align	4, 0x90
LBB1_405:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp648:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp649:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_409
Ltmp650:
## BB#406:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp651:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_407
Ltmp652:
## BB#408:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_409
Ltmp653:
LBB1_407:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp654:
LBB1_409:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp655:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_410
Ltmp656:
## BB#412:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_413
Ltmp657:
LBB1_410:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp658:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_413
Ltmp659:
## BB#411:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_415
Ltmp660:
	.p2align	4, 0x90
LBB1_413:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp661:
LBB1_414:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp662:
LBB1_415:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
Ltmp663:
	##DEBUG_VALUE: j <- 0
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm5, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm6, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm6, xmm5
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm6
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm6
	pand	xmm3, xmm1
	paddd	xmm4, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp664:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 2
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp665:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm4, 1
	mov	ebx, r11d
	and	bl, 3
	cmp	bl, 3
	je	LBB1_417
Ltmp666:
## BB#416:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	bl, bl
	jne	LBB1_418
Ltmp667:
LBB1_417:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_427
Ltmp668:
	.p2align	4, 0x90
LBB1_418:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp669:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp670:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_422
Ltmp671:
## BB#419:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp672:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_420
Ltmp673:
## BB#421:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_422
Ltmp674:
LBB1_420:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp675:
LBB1_422:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp676:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_423
Ltmp677:
## BB#425:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_426
Ltmp678:
LBB1_423:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp679:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_426
Ltmp680:
## BB#424:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_427
Ltmp681:
	.p2align	4, 0x90
LBB1_426:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp682:
LBB1_427:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm4, 2
Ltmp683:
	.loc	1 87 35                 ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 4
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp684:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_429
Ltmp685:
## BB#428:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_430
Ltmp686:
LBB1_429:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_439
Ltmp687:
	.p2align	4, 0x90
LBB1_430:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp688:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp689:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_434
Ltmp690:
## BB#431:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp691:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_432
Ltmp692:
## BB#433:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_434
Ltmp693:
LBB1_432:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp694:
LBB1_434:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp695:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_435
Ltmp696:
## BB#437:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_438
Ltmp697:
LBB1_435:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp698:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_438
Ltmp699:
## BB#436:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_439
Ltmp700:
	.p2align	4, 0x90
LBB1_438:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp701:
LBB1_439:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm4, 3
Ltmp702:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r11d
	shr	edx, 6
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp703:
	.loc	1 90 37                 ## generations.c:90:37
	and	al, 3
	cmp	al, 3
	je	LBB1_441
Ltmp704:
## BB#440:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_442
Ltmp705:
LBB1_441:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_451
Ltmp706:
	.p2align	4, 0x90
LBB1_442:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp707:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp708:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_446
Ltmp709:
## BB#443:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp710:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_444
Ltmp711:
## BB#445:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	al, cl
	jmp	LBB1_446
Ltmp712:
LBB1_444:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp713:
LBB1_446:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp714:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_447
Ltmp715:
## BB#449:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_450
Ltmp716:
LBB1_447:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp717:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_450
Ltmp718:
## BB#448:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_452
Ltmp719:
	.p2align	4, 0x90
LBB1_450:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp720:
LBB1_451:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp721:
LBB1_452:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 8
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edi
	shr	eax, 16
Ltmp722:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_454
Ltmp723:
## BB#453:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_455
Ltmp724:
LBB1_454:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_464
Ltmp725:
	.p2align	4, 0x90
LBB1_455:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp726:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp727:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_459
Ltmp728:
## BB#456:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp729:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_457
Ltmp730:
## BB#458:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_459
Ltmp731:
LBB1_457:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp732:
LBB1_459:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp733:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_460
Ltmp734:
## BB#462:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_463
Ltmp735:
LBB1_460:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp736:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_463
Ltmp737:
## BB#461:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_465
Ltmp738:
	.p2align	4, 0x90
LBB1_463:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp739:
LBB1_464:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp740:
LBB1_465:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
Ltmp741:
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm6, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm6
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm6, xmm3
	pand	xmm6, xmm1
	paddd	xmm0, xmm6
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp742:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 10
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp743:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm0, 1
	and	sil, 3
	cmp	sil, 3
	je	LBB1_467
Ltmp744:
## BB#466:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_468
Ltmp745:
LBB1_467:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_477
Ltmp746:
	.p2align	4, 0x90
LBB1_468:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp747:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp748:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_472
Ltmp749:
## BB#469:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp750:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_470
Ltmp751:
## BB#471:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_472
Ltmp752:
LBB1_470:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp753:
LBB1_472:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp754:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_473
Ltmp755:
## BB#475:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_476
Ltmp756:
LBB1_473:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp757:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_476
Ltmp758:
## BB#474:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_477
Ltmp759:
	.p2align	4, 0x90
LBB1_476:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp760:
LBB1_477:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm0, 2
Ltmp761:
	.loc	1 87 35                 ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 12
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp762:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_479
Ltmp763:
## BB#478:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_480
Ltmp764:
LBB1_479:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_489
Ltmp765:
	.p2align	4, 0x90
LBB1_480:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp766:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp767:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_484
Ltmp768:
## BB#481:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp769:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_482
Ltmp770:
## BB#483:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_484
Ltmp771:
LBB1_482:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp772:
LBB1_484:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp773:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_485
Ltmp774:
## BB#487:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_488
Ltmp775:
LBB1_485:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp776:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_488
Ltmp777:
## BB#486:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_489
Ltmp778:
	.p2align	4, 0x90
LBB1_488:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp779:
LBB1_489:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm0, 3
Ltmp780:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r11d
	shr	edx, 14
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp781:
	.loc	1 90 37                 ## generations.c:90:37
	and	al, 3
	cmp	al, 3
	je	LBB1_491
Ltmp782:
## BB#490:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_492
Ltmp783:
LBB1_491:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_501
Ltmp784:
	.p2align	4, 0x90
LBB1_492:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp785:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp786:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_496
Ltmp787:
## BB#493:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp788:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_494
Ltmp789:
## BB#495:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	al, cl
	jmp	LBB1_496
Ltmp790:
LBB1_494:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp791:
LBB1_496:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp792:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_497
Ltmp793:
## BB#499:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_500
Ltmp794:
LBB1_497:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp795:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_500
Ltmp796:
## BB#498:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_502
Ltmp797:
	.p2align	4, 0x90
LBB1_500:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp798:
LBB1_501:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp799:
LBB1_502:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 16
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edi
	shr	eax, 16
Ltmp800:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_504
Ltmp801:
## BB#503:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_505
Ltmp802:
LBB1_504:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_514
Ltmp803:
	.p2align	4, 0x90
LBB1_505:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp804:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp805:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_509
Ltmp806:
## BB#506:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp807:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_507
Ltmp808:
## BB#508:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_509
Ltmp809:
LBB1_507:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp810:
LBB1_509:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp811:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_510
Ltmp812:
## BB#512:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_513
Ltmp813:
LBB1_510:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp814:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_513
Ltmp815:
## BB#511:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_515
Ltmp816:
	.p2align	4, 0x90
LBB1_513:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp817:
LBB1_514:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp818:
LBB1_515:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm6, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm6, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm6
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm6
	pand	xmm3, xmm1
	paddd	xmm4, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp819:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 18
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp820:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm4, 1
	and	sil, 3
	cmp	sil, 3
	je	LBB1_517
Ltmp821:
## BB#516:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_518
Ltmp822:
LBB1_517:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_527
Ltmp823:
	.p2align	4, 0x90
LBB1_518:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp824:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp825:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_522
Ltmp826:
## BB#519:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp827:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_520
Ltmp828:
## BB#521:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_522
Ltmp829:
LBB1_520:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp830:
LBB1_522:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp831:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_523
Ltmp832:
## BB#525:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_526
Ltmp833:
LBB1_523:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp834:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_526
Ltmp835:
## BB#524:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_527
Ltmp836:
	.p2align	4, 0x90
LBB1_526:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp837:
LBB1_527:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm4, 2
Ltmp838:
	.loc	1 87 35                 ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 20
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp839:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_529
Ltmp840:
## BB#528:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_530
Ltmp841:
LBB1_529:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_539
Ltmp842:
	.p2align	4, 0x90
LBB1_530:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp843:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp844:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_534
Ltmp845:
## BB#531:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp846:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_532
Ltmp847:
## BB#533:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_534
Ltmp848:
LBB1_532:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp849:
LBB1_534:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp850:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_535
Ltmp851:
## BB#537:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_538
Ltmp852:
LBB1_535:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp853:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_538
Ltmp854:
## BB#536:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_539
Ltmp855:
	.p2align	4, 0x90
LBB1_538:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp856:
LBB1_539:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm4, 3
Ltmp857:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r11d
	shr	edx, 22
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp858:
	.loc	1 90 37                 ## generations.c:90:37
	and	al, 3
	cmp	al, 3
	je	LBB1_541
Ltmp859:
## BB#540:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_542
Ltmp860:
LBB1_541:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_551
Ltmp861:
	.p2align	4, 0x90
LBB1_542:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp862:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp863:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_546
Ltmp864:
## BB#543:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp865:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_544
Ltmp866:
## BB#545:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	al, cl
	jmp	LBB1_546
Ltmp867:
LBB1_544:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp868:
LBB1_546:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp869:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_547
Ltmp870:
## BB#549:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_550
Ltmp871:
LBB1_547:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp872:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_550
Ltmp873:
## BB#548:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_552
Ltmp874:
	.p2align	4, 0x90
LBB1_550:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp875:
LBB1_551:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp876:
LBB1_552:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	esi, r11d
	shr	esi, 24
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edi
	shr	eax, 16
Ltmp877:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_554
Ltmp878:
## BB#553:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_555
Ltmp879:
LBB1_554:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_564
Ltmp880:
	.p2align	4, 0x90
LBB1_555:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp881:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp882:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_559
Ltmp883:
## BB#556:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp884:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_557
Ltmp885:
## BB#558:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_559
Ltmp886:
LBB1_557:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp887:
LBB1_559:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp888:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_560
Ltmp889:
## BB#562:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_563
Ltmp890:
LBB1_560:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp891:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_563
Ltmp892:
## BB#561:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_565
Ltmp893:
	.p2align	4, 0x90
LBB1_563:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp894:
LBB1_564:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp895:
LBB1_565:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm6, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm6
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm5, xmm3
	pand	xmm5, xmm1
	paddd	xmm0, xmm5
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp896:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r11d
	shr	edi, 26
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp897:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm0, 1
	and	sil, 3
	cmp	sil, 3
	je	LBB1_567
Ltmp898:
## BB#566:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_568
Ltmp899:
LBB1_567:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_577
Ltmp900:
	.p2align	4, 0x90
LBB1_568:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp901:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp902:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_572
Ltmp903:
## BB#569:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp904:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_570
Ltmp905:
## BB#571:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_572
Ltmp906:
LBB1_570:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp907:
LBB1_572:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp908:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_573
Ltmp909:
## BB#575:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_576
Ltmp910:
LBB1_573:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp911:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_576
Ltmp912:
## BB#574:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_577
Ltmp913:
	.p2align	4, 0x90
LBB1_576:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp914:
LBB1_577:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	esi, xmm0, 2
Ltmp915:
	.loc	1 87 35                 ## generations.c:87:35
	mov	eax, r11d
	shr	eax, 28
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp916:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_579
Ltmp917:
## BB#578:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_580
Ltmp918:
LBB1_579:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_589
Ltmp919:
	.p2align	4, 0x90
LBB1_580:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp920:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp921:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_584
Ltmp922:
## BB#581:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp923:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_582
Ltmp924:
## BB#583:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_584
Ltmp925:
LBB1_582:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp926:
LBB1_584:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp927:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_585
Ltmp928:
## BB#587:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_588
Ltmp929:
LBB1_585:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp930:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_588
Ltmp931:
## BB#586:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_589
Ltmp932:
	.p2align	4, 0x90
LBB1_588:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp933:
LBB1_589:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edx, xmm0, 3
Ltmp934:
	.loc	1 87 35                 ## generations.c:87:35
	shr	r11d, 30
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, esi
	shr	ecx, 16
Ltmp935:
	.loc	1 90 37                 ## generations.c:90:37
	and	al, 3
	cmp	al, 3
	je	LBB1_591
Ltmp936:
## BB#590:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_592
Ltmp937:
LBB1_591:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_601
Ltmp938:
	.p2align	4, 0x90
LBB1_592:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp939:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp940:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_596
Ltmp941:
## BB#593:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp942:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_594
Ltmp943:
## BB#595:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	al, cl
	jmp	LBB1_596
Ltmp944:
LBB1_594:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp945:
LBB1_596:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, si
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp946:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_597
Ltmp947:
## BB#599:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_600
Ltmp948:
LBB1_597:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp949:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_600
Ltmp950:
## BB#598:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	esi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	esi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rsi - 80]
	jmp	LBB1_602
Ltmp951:
	.p2align	4, 0x90
LBB1_600:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp952:
LBB1_601:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp953:
LBB1_602:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 69 5 is_stmt 1 discriminator 1 ## generations.c:69:5
	pextrd	r10d, xmm7, 3
Ltmp954:
	.loc	1 88 62                 ## generations.c:88:62
	mov	eax, edx
	shr	eax, 16
Ltmp955:
	.loc	1 90 37                 ## generations.c:90:37
	and	r11b, 3
	cmp	r11b, 3
	je	LBB1_604
Ltmp956:
## BB#603:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	r11b, r11b
	jne	LBB1_605
Ltmp957:
LBB1_604:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_614
Ltmp958:
	.p2align	4, 0x90
LBB1_605:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp959:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp960:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_609
Ltmp961:
## BB#606:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp962:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_607
Ltmp963:
## BB#608:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_609
Ltmp964:
LBB1_607:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp965:
LBB1_609:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp966:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_610
Ltmp967:
## BB#612:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_613
Ltmp968:
LBB1_610:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp969:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_613
Ltmp970:
## BB#611:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_615
Ltmp971:
	.p2align	4, 0x90
LBB1_613:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, cl
Ltmp972:
LBB1_614:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp973:
LBB1_615:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
Ltmp974:
	##DEBUG_VALUE: j <- 0
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm5, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm5, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm5
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm5
	pand	xmm3, xmm1
	paddd	xmm4, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp975:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	eax, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 2
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp976:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm4, 1
	mov	ebx, r10d
	and	bl, 3
	cmp	bl, 3
	je	LBB1_617
Ltmp977:
## BB#616:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	bl, bl
	jne	LBB1_618
Ltmp978:
LBB1_617:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_627
Ltmp979:
	.p2align	4, 0x90
LBB1_618:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp980:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp981:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_622
Ltmp982:
## BB#619:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp983:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_620
Ltmp984:
## BB#621:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_622
Ltmp985:
LBB1_620:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp986:
LBB1_622:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp987:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_623
Ltmp988:
## BB#625:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_626
Ltmp989:
LBB1_623:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp990:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_626
Ltmp991:
## BB#624:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_627
Ltmp992:
	.p2align	4, 0x90
LBB1_626:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp993:
LBB1_627:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm4, 2
Ltmp994:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 4
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp995:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_629
Ltmp996:
## BB#628:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_630
Ltmp997:
LBB1_629:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_639
Ltmp998:
	.p2align	4, 0x90
LBB1_630:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp999:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1000:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_634
Ltmp1001:
## BB#631:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1002:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_632
Ltmp1003:
## BB#633:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_634
Ltmp1004:
LBB1_632:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp1005:
LBB1_634:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1006:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_635
Ltmp1007:
## BB#637:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_638
Ltmp1008:
LBB1_635:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1009:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_638
Ltmp1010:
## BB#636:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_639
Ltmp1011:
	.p2align	4, 0x90
LBB1_638:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1012:
LBB1_639:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm4, 3
Ltmp1013:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 6
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp1014:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_641
Ltmp1015:
## BB#640:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_642
Ltmp1016:
LBB1_641:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_651
Ltmp1017:
	.p2align	4, 0x90
LBB1_642:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp1018:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1019:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_646
Ltmp1020:
## BB#643:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1021:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_644
Ltmp1022:
## BB#645:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_646
Ltmp1023:
LBB1_644:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp1024:
LBB1_646:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1025:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_647
Ltmp1026:
## BB#649:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_650
Ltmp1027:
LBB1_647:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1028:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_650
Ltmp1029:
## BB#648:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_651
Ltmp1030:
	.p2align	4, 0x90
LBB1_650:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp1031:
LBB1_651:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 8
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp1032:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_653
Ltmp1033:
## BB#652:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_654
Ltmp1034:
LBB1_653:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_663
Ltmp1035:
	.p2align	4, 0x90
LBB1_654:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp1036:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1037:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_658
Ltmp1038:
## BB#655:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1039:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_656
Ltmp1040:
## BB#657:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_658
Ltmp1041:
LBB1_656:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp1042:
LBB1_658:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1043:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_659
Ltmp1044:
## BB#661:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_662
Ltmp1045:
LBB1_659:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1046:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_662
Ltmp1047:
## BB#660:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_663
Ltmp1048:
	.p2align	4, 0x90
LBB1_662:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1049:
LBB1_663:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
Ltmp1050:
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm5, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm5
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm0, xmm4
	pslld	xmm0, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm6, xmm3
	pand	xmm6, xmm1
	paddd	xmm0, xmm6
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp1051:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm0
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 10
	.loc	1 88 62                 ## generations.c:88:62
	mov	esi, ecx
	shr	esi, 16
Ltmp1052:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm0, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_665
Ltmp1053:
## BB#664:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_666
Ltmp1054:
LBB1_665:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	esi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	esi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_675
Ltmp1055:
	.p2align	4, 0x90
LBB1_666:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp1056:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	esi, r13d
Ltmp1057:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_670
Ltmp1058:
## BB#667:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	esi, r12d
Ltmp1059:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_668
Ltmp1060:
## BB#669:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	sil, 1
	mov	al, sil
	jmp	LBB1_670
Ltmp1061:
LBB1_668:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp1062:
LBB1_670:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	esi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	esi, r13d
Ltmp1063:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_671
Ltmp1064:
## BB#673:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_674
Ltmp1065:
LBB1_671:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	esi, r12d
Ltmp1066:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_674
Ltmp1067:
## BB#672:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_676
Ltmp1068:
	.p2align	4, 0x90
LBB1_674:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp1069:
LBB1_675:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp1070:
LBB1_676:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm0, 2
Ltmp1071:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 12
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp1072:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_678
Ltmp1073:
## BB#677:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_679
Ltmp1074:
LBB1_678:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_688
Ltmp1075:
	.p2align	4, 0x90
LBB1_679:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp1076:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1077:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_683
Ltmp1078:
## BB#680:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1079:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_681
Ltmp1080:
## BB#682:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_683
Ltmp1081:
LBB1_681:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp1082:
LBB1_683:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1083:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_684
Ltmp1084:
## BB#686:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_687
Ltmp1085:
LBB1_684:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1086:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_687
Ltmp1087:
## BB#685:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_688
Ltmp1088:
	.p2align	4, 0x90
LBB1_687:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1089:
LBB1_688:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm0, 3
Ltmp1090:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 14
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp1091:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_690
Ltmp1092:
## BB#689:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_691
Ltmp1093:
LBB1_690:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_700
Ltmp1094:
	.p2align	4, 0x90
LBB1_691:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp1095:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1096:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_695
Ltmp1097:
## BB#692:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1098:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_693
Ltmp1099:
## BB#694:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_695
Ltmp1100:
LBB1_693:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp1101:
LBB1_695:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1102:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_696
Ltmp1103:
## BB#698:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_699
Ltmp1104:
LBB1_696:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1105:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_699
Ltmp1106:
## BB#697:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_700
Ltmp1107:
	.p2align	4, 0x90
LBB1_699:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp1108:
LBB1_700:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 16
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp1109:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_702
Ltmp1110:
## BB#701:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_703
Ltmp1111:
LBB1_702:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_712
Ltmp1112:
	.p2align	4, 0x90
LBB1_703:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp1113:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1114:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_707
Ltmp1115:
## BB#704:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1116:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_705
Ltmp1117:
## BB#706:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_707
Ltmp1118:
LBB1_705:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp1119:
LBB1_707:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1120:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_708
Ltmp1121:
## BB#710:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_711
Ltmp1122:
LBB1_708:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1123:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_711
Ltmp1124:
## BB#709:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_712
Ltmp1125:
	.p2align	4, 0x90
LBB1_711:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1126:
LBB1_712:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm0, xmm1
	pand	xmm0, xmm4
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm4, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm0, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm0, xmm4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm6, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm6, xmm3
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm6
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	movdqa	xmm4, xmm0
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	movdqa	xmm3, xmm6
	pand	xmm3, xmm1
	paddd	xmm4, xmm3
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm4
Ltmp1127:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm4
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 18
	.loc	1 88 62                 ## generations.c:88:62
	mov	esi, ecx
	shr	esi, 16
Ltmp1128:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm4, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_714
Ltmp1129:
## BB#713:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_715
Ltmp1130:
LBB1_714:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	esi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	esi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_724
Ltmp1131:
	.p2align	4, 0x90
LBB1_715:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp1132:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	esi, r13d
Ltmp1133:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_719
Ltmp1134:
## BB#716:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	esi, r12d
Ltmp1135:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_717
Ltmp1136:
## BB#718:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	sil, 1
	mov	al, sil
	jmp	LBB1_719
Ltmp1137:
LBB1_717:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp1138:
LBB1_719:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	esi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	esi, r13d
Ltmp1139:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_720
Ltmp1140:
## BB#722:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_723
Ltmp1141:
LBB1_720:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	esi, r12d
Ltmp1142:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_723
Ltmp1143:
## BB#721:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_725
Ltmp1144:
	.p2align	4, 0x90
LBB1_723:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp1145:
LBB1_724:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp1146:
LBB1_725:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm4, 2
Ltmp1147:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 20
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp1148:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_727
Ltmp1149:
## BB#726:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_728
Ltmp1150:
LBB1_727:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_737
Ltmp1151:
	.p2align	4, 0x90
LBB1_728:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp1152:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1153:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_732
Ltmp1154:
## BB#729:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1155:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_730
Ltmp1156:
## BB#731:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_732
Ltmp1157:
LBB1_730:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp1158:
LBB1_732:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1159:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_733
Ltmp1160:
## BB#735:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_736
Ltmp1161:
LBB1_733:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1162:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_736
Ltmp1163:
## BB#734:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_737
Ltmp1164:
	.p2align	4, 0x90
LBB1_736:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1165:
LBB1_737:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm4, 3
Ltmp1166:
	.loc	1 87 35                 ## generations.c:87:35
	mov	edx, r10d
	shr	edx, 22
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp1167:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_739
Ltmp1168:
## BB#738:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_740
Ltmp1169:
LBB1_739:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_749
Ltmp1170:
	.p2align	4, 0x90
LBB1_740:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	sil, 1
Ltmp1171:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1172:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_744
Ltmp1173:
## BB#741:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1174:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_742
Ltmp1175:
## BB#743:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	sil, cl
	jmp	LBB1_744
Ltmp1176:
LBB1_742:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	esi, esi
Ltmp1177:
LBB1_744:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1178:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_745
Ltmp1179:
## BB#747:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	sil, 2
	jmp	LBB1_748
Ltmp1180:
LBB1_745:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1181:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_748
Ltmp1182:
## BB#746:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, sil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_749
Ltmp1183:
	.p2align	4, 0x90
LBB1_748:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, sil
Ltmp1184:
LBB1_749:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 87 35 is_stmt 1       ## generations.c:87:35
	mov	eax, r10d
	shr	eax, 24
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edi
	shr	ecx, 16
Ltmp1185:
	.loc	1 90 37                 ## generations.c:90:37
	and	dl, 3
	cmp	dl, 3
	je	LBB1_751
Ltmp1186:
## BB#750:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dl, dl
	jne	LBB1_752
Ltmp1187:
LBB1_751:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_761
Ltmp1188:
	.p2align	4, 0x90
LBB1_752:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dl, 1
Ltmp1189:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1190:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_756
Ltmp1191:
## BB#753:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1192:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_754
Ltmp1193:
## BB#755:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_756
Ltmp1194:
LBB1_754:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp1195:
LBB1_756:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1196:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_757
Ltmp1197:
## BB#759:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_760
Ltmp1198:
LBB1_757:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1199:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_760
Ltmp1200:
## BB#758:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
	jmp	LBB1_761
Ltmp1201:
	.p2align	4, 0x90
LBB1_760:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dl
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1202:
LBB1_761:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 68 20 is_stmt 1       ## ./fast_rand.h:68:20
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
	##DEBUG_VALUE: j <- 1
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm6, 16
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm3, xmm2
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm3, xmm6
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm3
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	pslld	xmm4, 16
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	pand	xmm3, xmm1
	paddd	xmm3, xmm4
	.loc	5 81 5                  ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm3
Ltmp1203:
	##DEBUG_VALUE: k <- 0
	.loc	1 85 49                 ## generations.c:85:49
	movd	ecx, xmm3
	.loc	1 87 35                 ## generations.c:87:35
	mov	edi, r10d
	shr	edi, 26
	.loc	1 88 62                 ## generations.c:88:62
	mov	esi, ecx
	shr	esi, 16
Ltmp1204:
	.loc	1 90 37                 ## generations.c:90:37
	pextrd	edx, xmm3, 1
	and	al, 3
	cmp	al, 3
	je	LBB1_763
Ltmp1205:
## BB#762:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	al, al
	jne	LBB1_764
Ltmp1206:
LBB1_763:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	esi, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	esi, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_773
Ltmp1207:
	.p2align	4, 0x90
LBB1_764:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	al, 1
Ltmp1208:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	esi, r13d
Ltmp1209:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_768
Ltmp1210:
## BB#765:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	esi, r12d
Ltmp1211:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_766
Ltmp1212:
## BB#767:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	sil, 1
	mov	al, sil
	jmp	LBB1_768
Ltmp1213:
LBB1_766:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	eax, eax
Ltmp1214:
LBB1_768:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	esi, cx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	esi, r13d
Ltmp1215:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_769
Ltmp1216:
## BB#771:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	al, 2
	jmp	LBB1_772
Ltmp1217:
LBB1_769:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	esi, r12d
Ltmp1218:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_772
Ltmp1219:
## BB#770:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, al
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	ecx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	ecx, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rcx - 80]
	jmp	LBB1_774
Ltmp1220:
	.p2align	4, 0x90
LBB1_772:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	eax, al
Ltmp1221:
LBB1_773:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
Ltmp1222:
LBB1_774:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	eax, xmm3, 2
Ltmp1223:
	.loc	1 87 35                 ## generations.c:87:35
	mov	esi, r10d
	shr	esi, 28
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, edx
	shr	ecx, 16
Ltmp1224:
	.loc	1 90 37                 ## generations.c:90:37
	and	dil, 3
	cmp	dil, 3
	je	LBB1_776
Ltmp1225:
## BB#775:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	dil, dil
	jne	LBB1_777
Ltmp1226:
LBB1_776:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	edx, 4
	shr	edx, cl
	.loc	1 95 91                 ## generations.c:95:91
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_786
Ltmp1227:
	.p2align	4, 0x90
LBB1_777:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 91                  ## generations.c:0:91
	mov	dil, 1
Ltmp1228:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1229:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_781
Ltmp1230:
## BB#778:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1231:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_779
Ltmp1232:
## BB#780:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dil, cl
	jmp	LBB1_781
Ltmp1233:
LBB1_779:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edi, edi
Ltmp1234:
LBB1_781:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, dx
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1235:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_782
Ltmp1236:
## BB#784:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dil, 2
	jmp	LBB1_785
Ltmp1237:
LBB1_782:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1238:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_785
Ltmp1239:
## BB#783:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dil
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edx, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edx, ecx
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_786
Ltmp1240:
	.p2align	4, 0x90
LBB1_785:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 60                  ## generations.c:0:60
	movzx	ecx, dil
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1241:
LBB1_786:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 90 37 is_stmt 1       ## generations.c:90:37
	pextrd	edi, xmm3, 3
Ltmp1242:
	.loc	1 87 35                 ## generations.c:87:35
	shr	r10d, 30
	.loc	1 88 62                 ## generations.c:88:62
	mov	ecx, eax
	shr	ecx, 16
Ltmp1243:
	.loc	1 90 37                 ## generations.c:90:37
	and	sil, 3
	cmp	sil, 3
	je	LBB1_788
Ltmp1244:
## BB#787:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	sil, sil
	jne	LBB1_789
Ltmp1245:
LBB1_788:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	ecx, r12d
	setl	al
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	al, al
	.loc	1 95 77                 ## generations.c:95:77
	cmp	ecx, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, al
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_798
Ltmp1246:
	.p2align	4, 0x90
LBB1_789:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	dl, 1
Ltmp1247:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	ecx, r13d
Ltmp1248:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_793
Ltmp1249:
## BB#790:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	ecx, r12d
Ltmp1250:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_791
Ltmp1251:
## BB#792:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	cl, 1
	mov	dl, cl
	jmp	LBB1_793
Ltmp1252:
LBB1_791:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	edx, edx
Ltmp1253:
LBB1_793:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	ecx, ax
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	ecx, r13d
Ltmp1254:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_794
Ltmp1255:
## BB#796:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	dl, 2
	jmp	LBB1_797
Ltmp1256:
LBB1_794:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	ecx, r12d
Ltmp1257:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_797
Ltmp1258:
## BB#795:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	ecx, dl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	eax, 2
	.loc	1 131 42                ## generations.c:131:42
	or	eax, ecx
	jmp	LBB1_798
Ltmp1259:
	.p2align	4, 0x90
LBB1_797:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 42                  ## generations.c:0:42
	movzx	eax, dl
Ltmp1260:
LBB1_798:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rax - 80]
	.loc	1 88 62 is_stmt 1       ## generations.c:88:62
	mov	eax, edi
	shr	eax, 16
Ltmp1261:
	.loc	1 90 37                 ## generations.c:90:37
	and	r10b, 3
	cmp	r10b, 3
	je	LBB1_800
Ltmp1262:
## BB#799:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 37 is_stmt 0        ## generations.c:0:37
	test	r10b, r10b
	jne	LBB1_801
Ltmp1263:
LBB1_800:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 95 50 is_stmt 1       ## generations.c:95:50
	cmp	eax, r12d
	setl	dl
	.loc	1 95 61 is_stmt 0       ## generations.c:95:61
	add	dl, dl
	.loc	1 95 77                 ## generations.c:95:77
	cmp	eax, r13d
	setl	cl
	.loc	1 95 61                 ## generations.c:95:61
	or	cl, dl
	.loc	1 95 34                 ## generations.c:95:34
	mov	eax, 4
	shr	eax, cl
	jmp	LBB1_808
Ltmp1264:
	.p2align	4, 0x90
LBB1_801:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 34                  ## generations.c:0:34
	mov	cl, 1
Ltmp1265:
	.loc	1 111 40 is_stmt 1      ## generations.c:111:40
	cmp	eax, r13d
Ltmp1266:
	.loc	1 111 29 is_stmt 0      ## generations.c:111:29
	jg	LBB1_805
Ltmp1267:
## BB#802:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 114 45 is_stmt 1      ## generations.c:114:45
	cmp	eax, r12d
Ltmp1268:
	.loc	1 114 34 is_stmt 0      ## generations.c:114:34
	jle	LBB1_803
Ltmp1269:
## BB#804:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 115 38 is_stmt 1      ## generations.c:115:38
	and	al, 1
	mov	cl, al
	jmp	LBB1_805
Ltmp1270:
LBB1_803:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 38 is_stmt 0        ## generations.c:0:38
	xor	ecx, ecx
Ltmp1271:
LBB1_805:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 122 29 is_stmt 1      ## generations.c:122:29
	movzx	eax, di
	.loc	1 122 41 is_stmt 0      ## generations.c:122:41
	cmp	eax, r13d
Ltmp1272:
	.loc	1 122 29                ## generations.c:122:29
	jle	LBB1_806
Ltmp1273:
## BB#810:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 123 42 is_stmt 1      ## generations.c:123:42
	or	cl, 2
	jmp	LBB1_807
Ltmp1274:
LBB1_806:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 130 46                ## generations.c:130:46
	cmp	eax, r12d
Ltmp1275:
	.loc	1 130 34 is_stmt 0      ## generations.c:130:34
	jle	LBB1_807
Ltmp1276:
## BB#809:                              ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 131 36 is_stmt 1      ## generations.c:131:36
	movzx	eax, cl
	.loc	1 131 55 is_stmt 0      ## generations.c:131:55
	and	edi, 2
	.loc	1 131 42                ## generations.c:131:42
	or	edi, eax
	.loc	1 131 60                ## generations.c:131:60
	inc	dword ptr [rbp + 4*rdi - 80]
Ltmp1277:
	##DEBUG_VALUE: j <- 1
	.loc	1 69 43 is_stmt 1 discriminator 3 ## generations.c:69:43
	inc	r9d
Ltmp1278:
	##DEBUG_VALUE: i <- %R9D
	.loc	1 0 43 is_stmt 0 discriminator 3 ## generations.c:0:43
	jmp	LBB1_1
Ltmp1279:
	.p2align	4, 0x90
LBB1_807:                               ##   in Loop: Header=BB1_1 Depth=1
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	movzx	eax, cl
	jmp	LBB1_808
Ltmp1280:
LBB1_5:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:next_members <- %R15D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: i <- 0
	.loc	1 155 61 is_stmt 1 discriminator 1 ## generations.c:155:61
	shl	r8d, 6
	.loc	1 155 23 is_stmt 0 discriminator 1 ## generations.c:155:23
	sub	r15d, r8d
Ltmp1281:
	.loc	1 155 5 discriminator 1 ## generations.c:155:5
	jle	LBB1_25
Ltmp1282:
## BB#6:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 5 discriminator 1   ## generations.c:0:5
	xor	eax, eax
Ltmp1283:
	.p2align	4, 0x90
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 156 20 is_stmt 1      ## generations.c:156:20
	test	al, 15
Ltmp1284:
	.loc	1 156 13 is_stmt 0      ## generations.c:156:13
	jne	LBB1_9
Ltmp1285:
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 157 47 is_stmt 1      ## generations.c:157:47
	mov	ecx, eax
	sar	ecx, 4
	.loc	1 157 30 is_stmt 0      ## generations.c:157:30
	movsxd	rcx, ecx
	mov	r11d, dword ptr [rbp + 4*rcx - 192]
Ltmp1286:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
LBB1_9:                                 ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 30                  ## generations.c:0:30
	movdqa	xmm0, xmmword ptr [rbp - 176]
Ltmp1287:
	##DEBUG_VALUE: FastRand:a <- %XMM0
	movdqa	xmm3, xmmword ptr [rbp - 160]
Ltmp1288:
	##DEBUG_VALUE: FastRand:b <- %XMM3
	.loc	5 66 21 is_stmt 1       ## ./fast_rand.h:66:21
	movdqa	xmm4, xmm1
	pand	xmm4, xmm0
Ltmp1289:
	##DEBUG_VALUE: FastRand:amask <- %XMM4
	.loc	5 67 22                 ## ./fast_rand.h:67:22
	psrld	xmm0, 16
Ltmp1290:
	.loc	5 68 20                 ## ./fast_rand.h:68:20
	pmulld	xmm4, xmm13
Ltmp1291:
	.loc	5 69 20                 ## ./fast_rand.h:69:20
	paddd	xmm4, xmm0
Ltmp1292:
	##DEBUG_VALUE: FastRand:anew <- %XMM4
	.loc	5 70 5                  ## ./fast_rand.h:70:5
	movdqa	xmmword ptr [rbp - 176], xmm4
	.loc	5 72 21                 ## ./fast_rand.h:72:21
	movdqa	xmm0, xmm1
	pand	xmm0, xmm3
Ltmp1293:
	##DEBUG_VALUE: FastRand:bmask <- %XMM0
	.loc	5 73 22                 ## ./fast_rand.h:73:22
	psrld	xmm3, 16
Ltmp1294:
	.loc	5 74 20                 ## ./fast_rand.h:74:20
	pmulld	xmm0, xmm2
Ltmp1295:
	.loc	5 75 20                 ## ./fast_rand.h:75:20
	paddd	xmm0, xmm3
Ltmp1296:
	##DEBUG_VALUE: FastRand:bnew <- %XMM0
	.loc	5 76 5                  ## ./fast_rand.h:76:5
	movdqa	xmmword ptr [rbp - 160], xmm0
	.loc	5 79 25                 ## ./fast_rand.h:79:25
	pslld	xmm4, 16
Ltmp1297:
	.loc	5 80 19                 ## ./fast_rand.h:80:19
	pand	xmm0, xmm1
Ltmp1298:
	paddd	xmm0, xmm4
Ltmp1299:
	##DEBUG_VALUE: FastRand:res <- %XMM0
	.loc	1 160 28                ## generations.c:160:28
	movd	ecx, xmm0
Ltmp1300:
	##DEBUG_VALUE: indexEntropy <- %ECX
	.loc	1 163 50                ## generations.c:163:50
	mov	edx, ecx
	shr	edx, 16
Ltmp1301:
	.loc	1 164 25                ## generations.c:164:25
	mov	ebx, r11d
	and	bl, 3
	cmp	bl, 3
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	je	LBB1_11
Ltmp1302:
## BB#10:                               ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 25 is_stmt 0        ## generations.c:0:25
	test	bl, bl
	jne	LBB1_27
Ltmp1303:
LBB1_11:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 168 38 is_stmt 1      ## generations.c:168:38
	cmp	edx, r12d
	setl	bl
	.loc	1 168 49 is_stmt 0      ## generations.c:168:49
	add	bl, bl
	.loc	1 168 65                ## generations.c:168:65
	cmp	edx, r13d
	setl	cl
	.loc	1 168 49                ## generations.c:168:49
	or	cl, bl
	.loc	1 168 22                ## generations.c:168:22
	mov	edx, 4
	shr	edx, cl
	.loc	1 168 79                ## generations.c:168:79
	inc	dword ptr [rbp + 4*rdx - 80]
	jmp	LBB1_37
Ltmp1304:
	.p2align	4, 0x90
LBB1_27:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- 0
	.loc	1 0 79                  ## generations.c:0:79
	mov	sil, 1
Ltmp1305:
	.loc	1 180 28 is_stmt 1      ## generations.c:180:28
	cmp	edx, r13d
Ltmp1306:
	.loc	1 180 17 is_stmt 0      ## generations.c:180:17
	jg	LBB1_31
Ltmp1307:
## BB#28:                               ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 183 33 is_stmt 1      ## generations.c:183:33
	cmp	edx, r12d
Ltmp1308:
	.loc	1 183 22 is_stmt 0      ## generations.c:183:22
	jle	LBB1_29
Ltmp1309:
## BB#30:                               ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 184 26 is_stmt 1      ## generations.c:184:26
	and	dl, 1
Ltmp1310:
	##DEBUG_VALUE: allele <- %DL
	.loc	1 0 26 is_stmt 0        ## generations.c:0:26
	mov	sil, dl
	jmp	LBB1_31
Ltmp1311:
LBB1_29:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	xor	esi, esi
Ltmp1312:
LBB1_31:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 189 17 is_stmt 1      ## generations.c:189:17
	movzx	edx, cx
	.loc	1 189 29 is_stmt 0      ## generations.c:189:29
	cmp	edx, r13d
Ltmp1313:
	.loc	1 189 17                ## generations.c:189:17
	jle	LBB1_34
Ltmp1314:
## BB#32:                               ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 190 30 is_stmt 1      ## generations.c:190:30
	or	sil, 2
	jmp	LBB1_33
Ltmp1315:
LBB1_34:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 196 34                ## generations.c:196:34
	cmp	edx, r12d
Ltmp1316:
	.loc	1 196 22 is_stmt 0      ## generations.c:196:22
	jle	LBB1_33
Ltmp1317:
## BB#35:                               ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 197 24 is_stmt 1      ## generations.c:197:24
	movzx	edx, sil
	.loc	1 197 43 is_stmt 0      ## generations.c:197:43
	and	ecx, 2
	.loc	1 197 30                ## generations.c:197:30
	or	ecx, edx
	jmp	LBB1_36
Ltmp1318:
	.p2align	4, 0x90
LBB1_33:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	##DEBUG_VALUE: allele <- %SIL
	.loc	1 0 30                  ## generations.c:0:30
	movzx	ecx, sil
Ltmp1319:
LBB1_36:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	inc	dword ptr [rbp + 4*rcx - 80]
Ltmp1320:
LBB1_37:                                ##   in Loop: Header=BB1_7 Depth=1
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 162 24 is_stmt 1      ## generations.c:162:24
	sar	r11d, 2
Ltmp1321:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	.loc	1 155 69 discriminator 3 ## generations.c:155:69
	inc	eax
Ltmp1322:
	##DEBUG_VALUE: i <- %EAX
	.loc	1 155 23 is_stmt 0 discriminator 1 ## generations.c:155:23
	cmp	r15d, eax
Ltmp1323:
	.loc	1 155 5 discriminator 1 ## generations.c:155:5
	jne	LBB1_7
Ltmp1324:
## BB#24:
	##DEBUG_VALUE: i <- %EAX
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	5 81 5 is_stmt 1        ## ./fast_rand.h:81:5
	movdqa	xmmword ptr [rbp - 96], xmm0
Ltmp1325:
LBB1_25:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 229 17                ## generations.c:229:17
	mov	eax, dword ptr [rbp - 80]
	.loc	1 229 15 is_stmt 0      ## generations.c:229:15
	mov	dword ptr [r14], eax
	.loc	1 230 29 is_stmt 1      ## generations.c:230:29
	mov	eax, dword ptr [rbp - 72]
	.loc	1 230 27 is_stmt 0      ## generations.c:230:27
	add	eax, dword ptr [rbp - 76]
	.loc	1 230 15                ## generations.c:230:15
	mov	dword ptr [r14 + 4], eax
	.loc	1 231 29 is_stmt 1      ## generations.c:231:29
	mov	eax, dword ptr [rbp - 64]
	.loc	1 231 27 is_stmt 0      ## generations.c:231:27
	add	eax, dword ptr [rbp - 68]
	.loc	1 231 15                ## generations.c:231:15
	mov	dword ptr [r14 + 8], eax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 48]
	jne	LBB1_811
Ltmp1326:
## BB#26:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 232 1 is_stmt 1       ## generations.c:232:1
	add	rsp, 232
	pop	rbx
	pop	r12
Ltmp1327:
	pop	r13
Ltmp1328:
	pop	r14
Ltmp1329:
	pop	r15
	pop	rbp
	ret
Ltmp1330:
LBB1_811:
	##DEBUG_VALUE: progress_generation:choice_entropy <- %R11D
	##DEBUG_VALUE: progress_generation:rand_choice <- [%RBP+-272]
	##DEBUG_VALUE: progress_generation:rand_index <- [%RBP+-176]
	##DEBUG_VALUE: progress_generation:thresh_aa <- %R12D
	##DEBUG_VALUE: progress_generation:thresh_ab <- %R13D
	##DEBUG_VALUE: progress_generation:result <- %R14
	.loc	1 0 1 is_stmt 0         ## generations.c:0:1
	call	___stack_chk_fail
Ltmp1331:
Lfunc_end1:
	.cfi_endproc

	.globl	_pthread_handler
	.p2align	4, 0x90
_pthread_handler:                       ## @pthread_handler
Lfunc_begin2:
	.loc	1 234 0 is_stmt 1       ## generations.c:234:0
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
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
Lcfi15:
	.cfi_offset rbx, -56
Lcfi16:
	.cfi_offset r12, -48
Lcfi17:
	.cfi_offset r13, -40
Lcfi18:
	.cfi_offset r14, -32
Lcfi19:
	.cfi_offset r15, -24
	##DEBUG_VALUE: pthread_handler:args <- %RDI
Ltmp1332:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value, DW_OP_LLVM_fragment 64 32] %RDI
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] %RDI
	mov	rax, rdi
Ltmp1333:
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] %RAX
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value, DW_OP_LLVM_fragment 64 32] %RAX
	##DEBUG_VALUE: pthread_handler:args <- %RAX
	.loc	1 235 32 prologue_end   ## generations.c:235:32
	mov	edi, dword ptr [rax]
Ltmp1334:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 0 32] %EDI
	##DEBUG_VALUE: pthread_handler:thresh_aa <- %EDI
	mov	esi, dword ptr [rax + 4]
Ltmp1335:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 32 32] %ESI
	##DEBUG_VALUE: pthread_handler:thresh_ab <- %ESI
	mov	r13d, dword ptr [rax + 12]
Ltmp1336:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 96 32] %R13D
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	mov	ecx, dword ptr [rax + 16]
Ltmp1337:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] %ECX
	##DEBUG_VALUE: pthread_handler:num_generations <- %ECX
	mov	r15, qword ptr [rax + 24]
Ltmp1338:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 192 64] %R15
	##DEBUG_VALUE: pthread_handler:results <- %R15
	mov	rbx, qword ptr [rax + 40]
Ltmp1339:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 320 64] %RBX
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	.loc	1 0 32 is_stmt 0        ## generations.c:0:32
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
Ltmp1340:
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value, DW_OP_LLVM_fragment 64 32] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	.loc	1 235 32                ## generations.c:235:32
	mov	eax, dword ptr [rax + 48]
Ltmp1341:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 384 32] [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:timeslept <- 0
	##DEBUG_VALUE: pthread_handler:total_members_per_generation <- 65536
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	.loc	1 248 9 is_stmt 1       ## generations.c:248:9
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	dword ptr [rbp - 48], 0
	mov	qword ptr [rbp - 56], 0
Ltmp1342:
	##DEBUG_VALUE: i <- 0
	.loc	1 0 9 is_stmt 0         ## generations.c:0:9
	mov	dword ptr [rbp - 44], ecx ## 4-byte Spill
Ltmp1343:
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	.loc	1 250 23 is_stmt 1 discriminator 1 ## generations.c:250:23
	test	ecx, ecx
Ltmp1344:
	.loc	1 250 5 is_stmt 0 discriminator 1 ## generations.c:250:5
	jle	LBB2_6
Ltmp1345:
## BB#1:
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	##DEBUG_VALUE: pthread_handler:thresh_ab <- %ESI
	##DEBUG_VALUE: pthread_handler:thresh_aa <- %EDI
	.loc	1 0 5 discriminator 1   ## generations.c:0:5
	xor	r12d, r12d
	lea	r14, [rbp - 96]
Ltmp1346:
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_4 Depth 2
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	##DEBUG_VALUE: pthread_handler:thresh_ab <- %ESI
	##DEBUG_VALUE: pthread_handler:thresh_aa <- %EDI
	.loc	1 254 9 is_stmt 1       ## generations.c:254:9
	mov	ecx, r13d
	lea	r8, [rbp - 56]
	call	_progress_generation
Ltmp1347:
	.loc	1 258 9                 ## generations.c:258:9
	mov	rdi, rbx
	call	_sem_wait
	.loc	1 259 23                ## generations.c:259:23
	mov	eax, dword ptr [rbp - 56]
	.loc	1 259 20 is_stmt 0      ## generations.c:259:20
	add	dword ptr [r15], eax
	.loc	1 260 23 is_stmt 1      ## generations.c:260:23
	mov	eax, dword ptr [rbp - 52]
	.loc	1 260 20 is_stmt 0      ## generations.c:260:20
	add	dword ptr [r15 + 4], eax
	.loc	1 261 23 is_stmt 1      ## generations.c:261:23
	mov	eax, dword ptr [rbp - 48]
	.loc	1 261 20 is_stmt 0      ## generations.c:261:20
	add	dword ptr [r15 + 8], eax
	.loc	1 262 9 is_stmt 1       ## generations.c:262:9
	mov	rdi, rbx
	call	_sem_post
	jmp	LBB2_4
Ltmp1348:
	.p2align	4, 0x90
LBB2_3:                                 ##   in Loop: Header=BB2_4 Depth=2
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	.loc	1 269 29                ## generations.c:269:29
	movups	xmm0, xmmword ptr [rip + L_pthread_handler.time_to_sleep]
	movaps	xmmword ptr [rbp - 96], xmm0
Ltmp1349:
	##DEBUG_VALUE: time_to_sleep <- [%RBP+-96]
	.loc	1 270 13                ## generations.c:270:13
	xor	esi, esi
	mov	rdi, r14
	call	_nanosleep
Ltmp1350:
LBB2_4:                                 ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	.loc	1 268 17 discriminator 1 ## generations.c:268:17
	mov	edi, dword ptr [r15]
	mov	esi, dword ptr [r15 + 4]
	.loc	1 268 28 is_stmt 0 discriminator 1 ## generations.c:268:28
	add	esi, edi
	mov	eax, dword ptr [r15 + 8]
	.loc	1 268 41 discriminator 1 ## generations.c:268:41
	add	eax, esi
	.loc	1 268 55 discriminator 1 ## generations.c:268:55
	cmp	eax, 65536
	.loc	1 268 9 discriminator 1 ## generations.c:268:9
	jne	LBB2_3
Ltmp1351:
## BB#5:                                ##   in Loop: Header=BB2_2 Depth=1
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	.loc	1 275 17 is_stmt 1      ## generations.c:275:17
	add	r15, 12
Ltmp1352:
	##DEBUG_VALUE: pthread_handler:results <- %R15
	.loc	1 250 43 discriminator 3 ## generations.c:250:43
	inc	r12d
Ltmp1353:
	##DEBUG_VALUE: i <- %R12D
	.loc	1 250 23 is_stmt 0 discriminator 1 ## generations.c:250:23
	cmp	r12d, dword ptr [rbp - 44] ## 4-byte Folded Reload
Ltmp1354:
	.loc	1 250 5 discriminator 1 ## generations.c:250:5
	jne	LBB2_2
Ltmp1355:
LBB2_6:
	##DEBUG_VALUE: pthread_handler:num_generations <- [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:myinfo <- [DW_OP_LLVM_fragment 128 32] [%RBP+-44]
	##DEBUG_VALUE: pthread_handler:thread_id <- [%RBP+-60]
	##DEBUG_VALUE: pthread_handler:args <- [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:thresh_bb <- [DW_OP_plus 8, DW_OP_deref, DW_OP_stack_value] [%RBP+-72]
	##DEBUG_VALUE: pthread_handler:semaphore <- %RBX
	##DEBUG_VALUE: pthread_handler:results <- %R15
	##DEBUG_VALUE: pthread_handler:next_members <- %R13D
	.loc	1 281 5 is_stmt 1       ## generations.c:281:5
	lea	rdi, [rip + L_.str]
	xor	eax, eax
	mov	esi, dword ptr [rbp - 60] ## 4-byte Reload
	mov	edx, dword ptr [rbp - 44] ## 4-byte Reload
	call	_printf
	.loc	1 282 5                 ## generations.c:282:5
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	call	_pthread_exit
Ltmp1356:
Lfunc_end2:
	.cfi_endproc

	.globl	_initialize_generation
	.p2align	4, 0x90
_initialize_generation:                 ## @initialize_generation
Lfunc_begin3:
	.loc	1 285 0                 ## generations.c:285:0
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi20:
	.cfi_def_cfa_offset 16
Lcfi21:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi22:
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
Lcfi23:
	.cfi_offset rbx, -56
Lcfi24:
	.cfi_offset r12, -48
Lcfi25:
	.cfi_offset r13, -40
Lcfi26:
	.cfi_offset r14, -32
Lcfi27:
	.cfi_offset r15, -24
	##DEBUG_VALUE: initialize_generation:number <- %EDI
	##DEBUG_VALUE: initialize_generation:gen <- %RSI
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
Ltmp1357:
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	mov	r15d, edi
Ltmp1358:
	##DEBUG_VALUE: initialize_generation:num_bb <- 0
	##DEBUG_VALUE: initialize_generation:num_ab <- 0
	##DEBUG_VALUE: initialize_generation:num_aa <- 0
	##DEBUG_VALUE: initialize_generation:number <- %R15D
	xor	r12d, r12d
	lea	rdi, [rbp - 80]
Ltmp1359:
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	.loc	1 294 5 prologue_end    ## generations.c:294:5
	xor	esi, esi
	call	_gettimeofday
Ltmp1360:
	##DEBUG_VALUE: i <- 0
	.loc	1 296 22 discriminator 1 ## generations.c:296:22
	cmp	r15d, 8
	mov	r14d, 0
	mov	r13d, 0
Ltmp1361:
	.loc	1 296 5 is_stmt 0 discriminator 1 ## generations.c:296:5
	jl	LBB3_43
Ltmp1362:
## BB#1:
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:number <- %R15D
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 296 30 discriminator 1 ## generations.c:296:30
	mov	eax, r15d
	sar	eax, 31
	shr	eax, 29
	add	eax, r15d
	mov	r15d, eax
Ltmp1363:
	sar	r15d, 3
	xor	r13d, r13d
	xor	ebx, ebx
	xor	r14d, r14d
	xor	r12d, r12d
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1364:
	.loc	1 298 17 is_stmt 1      ## generations.c:298:17
	call	_random
Ltmp1365:
	##DEBUG_VALUE: j <- 0
	##DEBUG_VALUE: n <- %EAX
	.loc	1 303 17                ## generations.c:303:17
	mov	ecx, eax
	and	cl, 3
	cmp	cl, 3
	je	LBB3_5
Ltmp1366:
## BB#3:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	test	cl, cl
	jne	LBB3_6
## BB#4:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1367:
	.loc	1 304 24 is_stmt 1      ## generations.c:304:24
	inc	r13d
Ltmp1368:
	##DEBUG_VALUE: initialize_generation:num_aa <- %R13D
	.loc	1 0 24 is_stmt 0        ## generations.c:0:24
	jmp	LBB3_7
Ltmp1369:
	.p2align	4, 0x90
LBB3_5:                                 ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: n <- %EAX
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
Ltmp1370:
	##DEBUG_VALUE: initialize_generation:num_bb <- %R14D
	.loc	1 0 24 is_stmt 0        ## generations.c:0:24
	jmp	LBB3_7
Ltmp1371:
	.p2align	4, 0x90
LBB3_6:                                 ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: initialize_generation:num_ab <- %R12D
	.loc	1 310 24 is_stmt 1      ## generations.c:310:24
	inc	r12d
Ltmp1372:
LBB3_7:                                 ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 303 17                ## generations.c:303:17
	mov	ecx, eax
	shr	cl, 2
	and	cl, 3
	je	LBB3_10
## BB#8:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_11
## BB#9:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1373:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
Ltmp1374:
	##DEBUG_VALUE: initialize_generation:num_bb <- %R14D
	.loc	1 0 24 is_stmt 0        ## generations.c:0:24
	jmp	LBB3_12
Ltmp1375:
	.p2align	4, 0x90
LBB3_10:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24 is_stmt 1      ## generations.c:304:24
	inc	r13d
Ltmp1376:
	##DEBUG_VALUE: initialize_generation:num_aa <- %R13D
	.loc	1 0 24 is_stmt 0        ## generations.c:0:24
	jmp	LBB3_12
Ltmp1377:
	.p2align	4, 0x90
LBB3_11:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24 is_stmt 1      ## generations.c:310:24
	inc	r12d
Ltmp1378:
	##DEBUG_VALUE: initialize_generation:num_ab <- %R12D
LBB3_12:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 303 17                ## generations.c:303:17
	mov	ecx, eax
	shr	cl, 4
	and	cl, 3
	je	LBB3_15
## BB#13:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_16
## BB#14:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1379:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_17
Ltmp1380:
	.p2align	4, 0x90
LBB3_15:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_17
Ltmp1381:
	.p2align	4, 0x90
LBB3_16:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1382:
LBB3_17:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 303 17                ## generations.c:303:17
	mov	ecx, eax
	shr	cl, 6
	je	LBB3_20
## BB#18:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_21
## BB#19:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1383:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_22
Ltmp1384:
	.p2align	4, 0x90
LBB3_20:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_22
Ltmp1385:
	.p2align	4, 0x90
LBB3_21:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1386:
LBB3_22:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 312 15                ## generations.c:312:15
	mov	ecx, eax
	shr	ecx, 8
	.loc	1 303 17                ## generations.c:303:17
	and	cl, 3
	je	LBB3_25
## BB#23:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_26
## BB#24:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1387:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_27
Ltmp1388:
	.p2align	4, 0x90
LBB3_25:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_27
Ltmp1389:
	.p2align	4, 0x90
LBB3_26:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1390:
LBB3_27:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 312 15                ## generations.c:312:15
	mov	ecx, eax
	shr	ecx, 10
	.loc	1 303 17                ## generations.c:303:17
	and	cl, 3
	je	LBB3_30
## BB#28:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_31
## BB#29:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1391:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_32
Ltmp1392:
	.p2align	4, 0x90
LBB3_30:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_32
Ltmp1393:
	.p2align	4, 0x90
LBB3_31:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1394:
LBB3_32:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 312 15                ## generations.c:312:15
	mov	ecx, eax
	shr	ecx, 12
	.loc	1 303 17                ## generations.c:303:17
	and	cl, 3
	je	LBB3_35
## BB#33:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	cl, 3
	jne	LBB3_36
## BB#34:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1395:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_37
Ltmp1396:
	.p2align	4, 0x90
LBB3_35:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_37
Ltmp1397:
	.p2align	4, 0x90
LBB3_36:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1398:
LBB3_37:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 312 15                ## generations.c:312:15
	shr	eax, 14
	.loc	1 303 17                ## generations.c:303:17
	and	al, 3
	je	LBB3_40
## BB#38:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 17 is_stmt 0        ## generations.c:0:17
	cmp	al, 3
	jne	LBB3_41
## BB#39:                               ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
Ltmp1399:
	.loc	1 307 24 is_stmt 1      ## generations.c:307:24
	inc	r14d
	jmp	LBB3_42
Ltmp1400:
	.p2align	4, 0x90
LBB3_40:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 304 24                ## generations.c:304:24
	inc	r13d
	jmp	LBB3_42
Ltmp1401:
	.p2align	4, 0x90
LBB3_41:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 310 24                ## generations.c:310:24
	inc	r12d
Ltmp1402:
LBB3_42:                                ##   in Loop: Header=BB3_2 Depth=1
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	##DEBUG_VALUE: j <- 1
	.loc	1 296 35 discriminator 3 ## generations.c:296:35
	inc	ebx
Ltmp1403:
	##DEBUG_VALUE: i <- %EBX
	.loc	1 296 22 is_stmt 0 discriminator 1 ## generations.c:296:22
	cmp	ebx, r15d
Ltmp1404:
	.loc	1 296 5 discriminator 1 ## generations.c:296:5
	jl	LBB3_2
Ltmp1405:
LBB3_43:
	##DEBUG_VALUE: initialize_generation:start <- [%RBP+-80]
	##DEBUG_VALUE: initialize_generation:gen <- [%RBP+-48]
	.loc	1 0 5 discriminator 1   ## generations.c:0:5
	lea	rdi, [rbp - 64]
Ltmp1406:
	##DEBUG_VALUE: initialize_generation:end <- [%RBP+-64]
	.loc	1 316 5 is_stmt 1       ## generations.c:316:5
	xor	esi, esi
	call	_gettimeofday
	mov	rax, qword ptr [rbp - 48] ## 8-byte Reload
	.loc	1 322 12                ## generations.c:322:12
	mov	dword ptr [rax], r13d
	.loc	1 323 12                ## generations.c:323:12
	mov	dword ptr [rax + 4], r12d
	.loc	1 324 12                ## generations.c:324:12
	mov	dword ptr [rax + 8], r14d
	.loc	1 325 1                 ## generations.c:325:1
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
Ltmp1407:
Lfunc_end3:
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin4:
	.loc	1 327 0                 ## generations.c:327:0
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
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 72
Lcfi31:
	.cfi_offset rbx, -56
Lcfi32:
	.cfi_offset r12, -48
Lcfi33:
	.cfi_offset r13, -40
Lcfi34:
	.cfi_offset r14, -32
Lcfi35:
	.cfi_offset r15, -24
	##DEBUG_VALUE: main:argc <- %EDI
	##DEBUG_VALUE: main:argv <- %RSI
	mov	r12, rsi
Ltmp1408:
	##DEBUG_VALUE: main:argv <- %R12
	mov	ebx, edi
Ltmp1409:
	##DEBUG_VALUE: main:argc <- %EBX
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 48], rax
Ltmp1410:
	##DEBUG_VALUE: main:num_generations <- 0
	##DEBUG_VALUE: main:num_organisms <- 0
	.loc	1 330 14 prologue_end   ## generations.c:330:14
	cmp	ebx, 3
Ltmp1411:
	.loc	1 330 9 is_stmt 0       ## generations.c:330:9
	jge	LBB4_2
Ltmp1412:
## BB#1:
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:argv <- %R12
	.loc	1 0 9                   ## generations.c:0:9
	mov	r14d, 65536
	mov	ecx, 10000
	jmp	LBB4_3
Ltmp1413:
LBB4_2:
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:argv <- %R12
	.loc	1 343 30 is_stmt 1      ## generations.c:343:30
	mov	rdi, qword ptr [r12 + 8]
	.loc	1 343 25 is_stmt 0      ## generations.c:343:25
	call	_atoi
	mov	r14d, eax
Ltmp1414:
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 344 32 is_stmt 1      ## generations.c:344:32
	mov	rdi, qword ptr [r12 + 16]
	.loc	1 344 27 is_stmt 0      ## generations.c:344:27
	call	_atoi
	mov	ecx, eax
Ltmp1415:
	##DEBUG_VALUE: main:num_generations <- %ECX
LBB4_3:
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:argv <- %R12
	.loc	1 346 5 is_stmt 1       ## generations.c:346:5
	lea	rdi, [rip + L_.str.1]
Ltmp1416:
	##DEBUG_VALUE: main:num_generations <- %ECX
	##DEBUG_VALUE: main:num_organisms <- %R14D
	xor	eax, eax
	mov	esi, r14d
	mov	dword ptr [rbp - 76], ecx ## 4-byte Spill
Ltmp1417:
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	mov	edx, ecx
	call	_printf
	.loc	1 347 5                 ## generations.c:347:5
	call	_srandomdev
	lea	rsi, [rbp - 60]
Ltmp1418:
	##DEBUG_VALUE: main:initial_values <- [%RSI+0]
	.loc	1 349 5                 ## generations.c:349:5
	mov	edi, r14d
	call	_initialize_generation
Ltmp1419:
	.loc	1 350 21                ## generations.c:350:21
	mov	r13d, dword ptr [rbp - 60]
Ltmp1420:
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	.loc	1 0 21 is_stmt 0        ## generations.c:0:21
	mov	r15d, dword ptr [rbp - 56]
	.loc	1 351 31 is_stmt 1      ## generations.c:351:31
	add	r15d, r13d
Ltmp1421:
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	.loc	1 354 9                 ## generations.c:354:9
	mov	dword ptr [rbp - 64], 0
	mov	qword ptr [rbp - 72], 0
Ltmp1422:
	.loc	1 439 14                ## generations.c:439:14
	cmp	ebx, 4
Ltmp1423:
	.loc	1 439 9 is_stmt 0       ## generations.c:439:9
	jne	LBB4_4
Ltmp1424:
## BB#5:
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:argv <- %R12
	.loc	1 440 20 is_stmt 1      ## generations.c:440:20
	mov	r12, qword ptr [r12 + 24]
Ltmp1425:
	##DEBUG_VALUE: main:fifoname <- %R12
	.loc	1 0 20 is_stmt 0        ## generations.c:0:20
	jmp	LBB4_6
Ltmp1426:
LBB4_4:
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:argv <- %R12
	lea	r12, [rip + L_.str.2]
Ltmp1427:
LBB4_6:
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: main:fifoname <- %R12
	.loc	1 443 9 is_stmt 1       ## generations.c:443:9
	mov	esi, 511
	mov	rdi, r12
	call	_mkfifo
	.loc	1 443 32 is_stmt 0      ## generations.c:443:32
	cmp	eax, -1
Ltmp1428:
	.loc	1 443 9                 ## generations.c:443:9
	jne	LBB4_8
Ltmp1429:
## BB#7:
	##DEBUG_VALUE: main:fifoname <- %R12
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	.loc	1 444 56 is_stmt 1      ## generations.c:444:56
	call	___error
	mov	edi, dword ptr [rax]
	.loc	1 444 47 is_stmt 0 discriminator 1 ## generations.c:444:47
	call	_strerror
	mov	rcx, rax
	.loc	1 444 9 discriminator 2 ## generations.c:444:9
	lea	rdi, [rip + L_.str.3]
	xor	eax, eax
	mov	rsi, rcx
	call	_printf
Ltmp1430:
LBB4_8:
	##DEBUG_VALUE: main:fifoname <- %R12
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	.loc	1 447 14 is_stmt 1      ## generations.c:447:14
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r12
	call	_open
	mov	ecx, eax
Ltmp1431:
	##DEBUG_VALUE: main:fd <- %ECX
	.loc	1 449 5                 ## generations.c:449:5
	lea	rdi, [rip + L_.str.4]
	xor	eax, eax
	mov	rsi, r12
	mov	dword ptr [rbp - 80], ecx ## 4-byte Spill
Ltmp1432:
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	mov	edx, ecx
	call	_printf
	.loc	1 451 26                ## generations.c:451:26
	mov	edi, 200
	call	_malloc
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
Ltmp1433:
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	.loc	1 0 26 is_stmt 0        ## generations.c:0:26
	mov	eax, dword ptr [rbp - 76] ## 4-byte Reload
Ltmp1434:
	.loc	1 453 23 is_stmt 1 discriminator 1 ## generations.c:453:23
	cmp	eax, 100
Ltmp1435:
	.loc	1 453 5 is_stmt 0 discriminator 1 ## generations.c:453:5
	jl	LBB4_17
Ltmp1436:
## BB#9:
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:fifoname <- %R12
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	.loc	1 453 40 discriminator 1 ## generations.c:453:40
	cdqe
	imul	rcx, rax, 1374389535
	mov	rax, rcx
	shr	rax, 63
	sar	rcx, 37
	add	ecx, eax
	lea	r12, [rbp - 72]
Ltmp1437:
	.loc	1 0 40 discriminator 1  ## generations.c:0:40
	mov	dword ptr [rbp - 76], 0 ## 4-byte Folded Spill
	mov	qword ptr [rbp - 96], rcx ## 8-byte Spill
Ltmp1438:
	.p2align	4, 0x90
LBB4_10:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_11 Depth 2
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: main:argc <- %EBX
	##DEBUG_VALUE: j <- 0
	mov	ebx, 100
Ltmp1439:
	.p2align	4, 0x90
LBB4_11:                                ##   Parent Loop BB4_10 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 455 13 is_stmt 1      ## generations.c:455:13
	mov	edi, r13d
	mov	esi, r15d
	mov	ecx, r14d
	mov	r8, r12
	call	_progress_generation
	.loc	1 456 25                ## generations.c:456:25
	mov	r13d, dword ptr [rbp - 72]
Ltmp1440:
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	.loc	1 457 37                ## generations.c:457:37
	mov	r9d, dword ptr [rbp - 68]
	.loc	1 457 35 is_stmt 0      ## generations.c:457:35
	lea	r15d, [r9 + r13]
Ltmp1441:
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	.loc	1 454 27 is_stmt 1 discriminator 1 ## generations.c:454:27
	dec	ebx
Ltmp1442:
	.loc	1 454 9 is_stmt 0 discriminator 1 ## generations.c:454:9
	jne	LBB4_11
Ltmp1443:
## BB#12:                               ##   in Loop: Header=BB4_10 Depth=1
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 461 29 is_stmt 1      ## generations.c:461:29
	mov	eax, dword ptr [rbp - 64]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	dword ptr [rsp], eax
	mov	esi, 0
	mov	edx, 200
	xor	eax, eax
	mov	rbx, qword ptr [rbp - 104] ## 8-byte Reload
	mov	rdi, rbx
	lea	rcx, [rip + L_.str.5]
	mov	r8d, r13d
                                        ## kill: %R9D<def> %R9D<kill> %R9<kill>
	call	___sprintf_chk
Ltmp1444:
	##DEBUG_VALUE: string_length <- %EAX
	.loc	1 462 33                ## generations.c:462:33
	movsxd	rdx, eax
	.loc	1 462 9 is_stmt 0       ## generations.c:462:9
	mov	edi, dword ptr [rbp - 80] ## 4-byte Reload
	mov	rsi, rbx
	mov	rbx, rdx
	call	_write
Ltmp1445:
	.loc	1 463 41 is_stmt 1 discriminator 1 ## generations.c:463:41
	cmp	dword ptr [rbp - 84], 0 ## 4-byte Folded Reload
	.loc	1 463 28 is_stmt 0      ## generations.c:463:28
	je	LBB4_14
Ltmp1446:
## BB#13:                               ##   in Loop: Header=BB4_10 Depth=1
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 0 28                  ## generations.c:0:28
	test	r13d, r13d
	je	LBB4_14
Ltmp1447:
## BB#16:                               ##   in Loop: Header=BB4_10 Depth=1
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	##DEBUG_VALUE: j <- [%RBP+-76]
	mov	eax, dword ptr [rbp - 76] ## 4-byte Reload
Ltmp1448:
	##DEBUG_VALUE: j <- %EAX
	.loc	1 453 47 is_stmt 1 discriminator 3 ## generations.c:453:47
	inc	eax
Ltmp1449:
	##DEBUG_VALUE: i <- %EAX
	.loc	1 0 47 is_stmt 0 discriminator 3 ## generations.c:0:47
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
Ltmp1450:
	##DEBUG_VALUE: i <- [%RBP+-76]
	.loc	1 453 23 discriminator 1 ## generations.c:453:23
	cmp	eax, ecx
Ltmp1451:
	.loc	1 453 5 discriminator 1 ## generations.c:453:5
	jl	LBB4_10
	jmp	LBB4_17
Ltmp1452:
LBB4_14:
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_ab <- %R15D
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 0 5 discriminator 1   ## generations.c:0:5
	mov	r15, qword ptr [rbp - 96] ## 8-byte Reload
Ltmp1453:
	.loc	1 464 31 is_stmt 1 discriminator 1 ## generations.c:464:31
	cmp	dword ptr [rbp - 76], r15d ## 4-byte Folded Reload
Ltmp1454:
	.loc	1 464 13 is_stmt 0 discriminator 1 ## generations.c:464:13
	jge	LBB4_17
Ltmp1455:
	.p2align	4, 0x90
LBB4_15:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 465 17 is_stmt 1      ## generations.c:465:17
	mov	edi, dword ptr [rbp - 80] ## 4-byte Reload
	mov	rsi, qword ptr [rbp - 104] ## 8-byte Reload
	mov	rdx, rbx
	call	_write
Ltmp1456:
	.loc	1 464 31 discriminator 1 ## generations.c:464:31
	dec	r15d
	cmp	r15d, dword ptr [rbp - 76] ## 4-byte Folded Reload
Ltmp1457:
	.loc	1 464 13 is_stmt 0 discriminator 1 ## generations.c:464:13
	jne	LBB4_15
Ltmp1458:
LBB4_17:
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 470 5 is_stmt 1       ## generations.c:470:5
	mov	edi, dword ptr [rbp - 80] ## 4-byte Reload
	call	_close
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 48]
	jne	LBB4_19
Ltmp1459:
## BB#18:
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 475 1                 ## generations.c:475:1
	xor	eax, eax
	add	rsp, 72
	pop	rbx
	pop	r12
	pop	r13
Ltmp1460:
	pop	r14
Ltmp1461:
	pop	r15
	pop	rbp
	ret
Ltmp1462:
LBB4_19:
	##DEBUG_VALUE: main:write_string <- [%RBP+-104]
	##DEBUG_VALUE: main:fd <- [%RBP+-80]
	##DEBUG_VALUE: main:thresh_aa <- %R13D
	##DEBUG_VALUE: main:num_generations <- [%RBP+-76]
	##DEBUG_VALUE: main:num_organisms <- %R14D
	.loc	1 0 1 is_stmt 0         ## generations.c:0:1
	call	___stack_chk_fail
Lfunc_end4:
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3               ## @pthread_handler.time_to_sleep
L_pthread_handler.time_to_sleep:
	.quad	0                       ## 0x0
	.quad	20000                   ## 0x4e20

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Thread %d is ending. num_generations is %d.\n"

L_.str.1:                               ## @.str.1
	.asciz	"Simulating %d organisms for %d generations\n"

L_.str.2:                               ## @.str.2
	.asciz	"results"

L_.str.3:                               ## @.str.3
	.asciz	"Failure in making fifo: %s\n"

L_.str.4:                               ## @.str.4
	.asciz	"Writing results to FIFO device %s with fd %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"aa: %d\tab:%d\tbb:%d\n"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @.memset_pattern
L_.memset_pattern:
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff
	.long	65535                   ## 0xffff

	.p2align	4               ## @.memset_pattern.6
L_.memset_pattern.6:
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650
	.long	18000                   ## 0x4650

	.p2align	4               ## @.memset_pattern.7
L_.memset_pattern.7:
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7
	.long	30903                   ## 0x78b7

	.file	6 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/_types" "_uint8_t.h"
	.file	7 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/i386" "_types.h"
	.file	8 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/sys/_types" "_timespec.h"
	.file	9 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/sys/_types" "_timeval.h"
	.file	10 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk/usr/include/sys" "_types.h"
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 9.0.0 (clang-900.0.39.2)" ## string offset=0
	.asciz	"generations.c"         ## string offset=44
	.asciz	"/Users/wisdomw18/biology" ## string offset=58
	.asciz	"threadinfo"            ## string offset=83
	.asciz	"thresh_aa"             ## string offset=94
	.asciz	"int"                   ## string offset=104
	.asciz	"thresh_ab"             ## string offset=108
	.asciz	"thresh_bb"             ## string offset=118
	.asciz	"next_members"          ## string offset=128
	.asciz	"num_generations"       ## string offset=141
	.asciz	"results"               ## string offset=157
	.asciz	"unsigned int"          ## string offset=165
	.asciz	"alldone"               ## string offset=178
	.asciz	"semaphore"             ## string offset=186
	.asciz	"sem_t"                 ## string offset=196
	.asciz	"thread_id"             ## string offset=202
	.asciz	"__m128i"               ## string offset=212
	.asciz	"long long int"         ## string offset=220
	.asciz	"sizetype"              ## string offset=234
	.asciz	"__v2du"                ## string offset=243
	.asciz	"long long unsigned int" ## string offset=250
	.asciz	"__v4si"                ## string offset=273
	.asciz	"__v4su"                ## string offset=280
	.asciz	"InitFastRand"          ## string offset=287
	.asciz	"FastRand"              ## string offset=300
	.asciz	"f"                     ## string offset=309
	.asciz	"fastrand"              ## string offset=311
	.asciz	"fastrand_t"            ## string offset=320
	.asciz	"a"                     ## string offset=331
	.asciz	"b"                     ## string offset=333
	.asciz	"mask"                  ## string offset=335
	.asciz	"m1"                    ## string offset=340
	.asciz	"m2"                    ## string offset=343
	.asciz	"res"                   ## string offset=346
	.asciz	"amask"                 ## string offset=350
	.asciz	"anew"                  ## string offset=356
	.asciz	"bmask"                 ## string offset=361
	.asciz	"bnew"                  ## string offset=367
	.asciz	"ashift"                ## string offset=372
	.asciz	"amul"                  ## string offset=379
	.asciz	"bshift"                ## string offset=384
	.asciz	"bmul"                  ## string offset=391
	.asciz	"bmasknew"              ## string offset=396
	.asciz	"ashiftnew"             ## string offset=405
	.asciz	"progress_generation"   ## string offset=415
	.asciz	"pthread_handler"       ## string offset=435
	.asciz	"initialize_generation" ## string offset=451
	.asciz	"main"                  ## string offset=473
	.asciz	"i"                     ## string offset=478
	.asciz	"uint8_t"               ## string offset=480
	.asciz	"unsigned char"         ## string offset=488
	.asciz	"counts"                ## string offset=502
	.asciz	"result"                ## string offset=509
	.asciz	"rand_index"            ## string offset=516
	.asciz	"rand_choice"           ## string offset=527
	.asciz	"j"                     ## string offset=539
	.asciz	"choice_entropy"        ## string offset=541
	.asciz	"choiceEntropy"         ## string offset=556
	.asciz	"k"                     ## string offset=570
	.asciz	"indexEntropy"          ## string offset=572
	.asciz	"allele"                ## string offset=585
	.asciz	"char"                  ## string offset=592
	.asciz	"n"                     ## string offset=597
	.asciz	"choice"                ## string offset=599
	.asciz	"firstIndex"            ## string offset=606
	.asciz	"unsigned short"        ## string offset=617
	.asciz	"secondIndex"           ## string offset=632
	.asciz	"preliminary_results"   ## string offset=644
	.asciz	"args"                  ## string offset=664
	.asciz	"myinfo"                ## string offset=669
	.asciz	"timeslept"             ## string offset=676
	.asciz	"total_members_per_generation" ## string offset=686
	.asciz	"time_to_sleep"         ## string offset=715
	.asciz	"timespec"              ## string offset=729
	.asciz	"tv_sec"                ## string offset=738
	.asciz	"__darwin_time_t"       ## string offset=745
	.asciz	"long int"              ## string offset=761
	.asciz	"tv_nsec"               ## string offset=770
	.asciz	"number"                ## string offset=778
	.asciz	"gen"                   ## string offset=785
	.asciz	"num_bb"                ## string offset=789
	.asciz	"num_ab"                ## string offset=796
	.asciz	"num_aa"                ## string offset=803
	.asciz	"start"                 ## string offset=810
	.asciz	"timeval"               ## string offset=816
	.asciz	"tv_usec"               ## string offset=824
	.asciz	"__darwin_suseconds_t"  ## string offset=832
	.asciz	"__int32_t"             ## string offset=853
	.asciz	"end"                   ## string offset=863
	.asciz	"organism"              ## string offset=867
	.asciz	"initial_values"        ## string offset=876
	.asciz	"argc"                  ## string offset=891
	.asciz	"argv"                  ## string offset=896
	.asciz	"num_organisms"         ## string offset=901
	.asciz	"fifoname"              ## string offset=915
	.asciz	"fd"                    ## string offset=924
	.asciz	"write_string"          ## string offset=927
	.asciz	"string_length"         ## string offset=940
	.asciz	"format_string"         ## string offset=954
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
Lset0 = Lfunc_begin1-Lfunc_begin0
	.quad	Lset0
Lset1 = Ltmp11-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
Lset2 = Ltmp11-Lfunc_begin0
	.quad	Lset2
Lset3 = Ltmp1327-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	92                      ## super-register DW_OP_reg12
Lset4 = Ltmp1330-Lfunc_begin0
	.quad	Lset4
Lset5 = Lfunc_end1-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	92                      ## super-register DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc1:
Lset6 = Lfunc_begin1-Lfunc_begin0
	.quad	Lset6
Lset7 = Ltmp10-Lfunc_begin0
	.quad	Lset7
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
Lset8 = Ltmp10-Lfunc_begin0
	.quad	Lset8
Lset9 = Ltmp1328-Lfunc_begin0
	.quad	Lset9
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
Lset10 = Ltmp1330-Lfunc_begin0
	.quad	Lset10
Lset11 = Lfunc_end1-Lfunc_begin0
	.quad	Lset11
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc2:
Lset12 = Lfunc_begin1-Lfunc_begin0
	.quad	Lset12
Lset13 = Ltmp14-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	81                      ## super-register DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc3:
Lset14 = Lfunc_begin1-Lfunc_begin0
	.quad	Lset14
Lset15 = Ltmp9-Lfunc_begin0
	.quad	Lset15
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset16 = Ltmp9-Lfunc_begin0
	.quad	Lset16
Lset17 = Ltmp1281-Lfunc_begin0
	.quad	Lset17
	.short	1                       ## Loc expr size
	.byte	95                      ## super-register DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc4:
Lset18 = Lfunc_begin1-Lfunc_begin0
	.quad	Lset18
Lset19 = Ltmp8-Lfunc_begin0
	.quad	Lset19
	.short	1                       ## Loc expr size
	.byte	88                      ## DW_OP_reg8
Lset20 = Ltmp8-Lfunc_begin0
	.quad	Lset20
Lset21 = Ltmp1329-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset22 = Ltmp1330-Lfunc_begin0
	.quad	Lset22
Lset23 = Lfunc_end1-Lfunc_begin0
	.quad	Lset23
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc5:
Lset24 = Ltmp13-Lfunc_begin0
	.quad	Lset24
Lset25 = Lfunc_end1-Lfunc_begin0
	.quad	Lset25
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	208                     ## -176
	.byte	126                     ## 
	.quad	0
	.quad	0
Ldebug_loc6:
Lset26 = Ltmp15-Lfunc_begin0
	.quad	Lset26
Lset27 = Lfunc_end1-Lfunc_begin0
	.quad	Lset27
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	240                     ## -272
	.byte	125                     ## 
	.quad	0
	.quad	0
Ldebug_loc7:
Lset28 = Ltmp16-Lfunc_begin0
	.quad	Lset28
Lset29 = Ltmp21-Lfunc_begin0
	.quad	Lset29
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset30 = Ltmp21-Lfunc_begin0
	.quad	Lset30
Lset31 = Ltmp48-Lfunc_begin0
	.quad	Lset31
	.short	1                       ## Loc expr size
	.byte	89                      ## super-register DW_OP_reg9
Lset32 = Ltmp1278-Lfunc_begin0
	.quad	Lset32
Lset33 = Ltmp1279-Lfunc_begin0
	.quad	Lset33
	.short	1                       ## Loc expr size
	.byte	89                      ## super-register DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc8:
Lset34 = Ltmp17-Lfunc_begin0
	.quad	Lset34
Lset35 = Ltmp19-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	107                     ## DW_OP_reg27
Lset36 = Ltmp21-Lfunc_begin0
	.quad	Lset36
Lset37 = Ltmp32-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	107                     ## DW_OP_reg27
	.quad	0
	.quad	0
Ldebug_loc9:
Lset38 = Ltmp18-Lfunc_begin0
	.quad	Lset38
Lset39 = Ltmp19-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	98                      ## DW_OP_reg18
	.quad	0
	.quad	0
Ldebug_loc10:
Lset40 = Ltmp18-Lfunc_begin0
	.quad	Lset40
Lset41 = Ltmp19-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	98                      ## DW_OP_reg18
	.quad	0
	.quad	0
Ldebug_loc11:
Lset42 = Ltmp20-Lfunc_begin0
	.quad	Lset42
Lset43 = Ltmp33-Lfunc_begin0
	.quad	Lset43
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
Lset44 = Ltmp33-Lfunc_begin0
	.quad	Lset44
Lset45 = Ltmp124-Lfunc_begin0
	.quad	Lset45
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset46 = Ltmp124-Lfunc_begin0
	.quad	Lset46
Lset47 = Ltmp356-Lfunc_begin0
	.quad	Lset47
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
Lset48 = Ltmp356-Lfunc_begin0
	.quad	Lset48
Lset49 = Ltmp432-Lfunc_begin0
	.quad	Lset49
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset50 = Ltmp432-Lfunc_begin0
	.quad	Lset50
Lset51 = Ltmp663-Lfunc_begin0
	.quad	Lset51
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
Lset52 = Ltmp663-Lfunc_begin0
	.quad	Lset52
Lset53 = Ltmp741-Lfunc_begin0
	.quad	Lset53
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset54 = Ltmp741-Lfunc_begin0
	.quad	Lset54
Lset55 = Ltmp974-Lfunc_begin0
	.quad	Lset55
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
Lset56 = Ltmp974-Lfunc_begin0
	.quad	Lset56
Lset57 = Ltmp1050-Lfunc_begin0
	.quad	Lset57
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset58 = Ltmp1050-Lfunc_begin0
	.quad	Lset58
Lset59 = Lfunc_end1-Lfunc_begin0
	.quad	Lset59
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc12:
Lset60 = Ltmp23-Lfunc_begin0
	.quad	Lset60
Lset61 = Ltmp24-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	108                     ## DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc13:
Lset62 = Ltmp25-Lfunc_begin0
	.quad	Lset62
Lset63 = Ltmp32-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	108                     ## DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc14:
Lset64 = Ltmp26-Lfunc_begin0
	.quad	Lset64
Lset65 = Ltmp27-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	109                     ## DW_OP_reg29
	.quad	0
	.quad	0
Ldebug_loc15:
Lset66 = Ltmp28-Lfunc_begin0
	.quad	Lset66
Lset67 = Ltmp32-Lfunc_begin0
	.quad	Lset67
	.short	1                       ## Loc expr size
	.byte	109                     ## DW_OP_reg29
	.quad	0
	.quad	0
Ldebug_loc16:
Lset68 = Ltmp29-Lfunc_begin0
	.quad	Lset68
Lset69 = Ltmp32-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	104                     ## DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc17:
Lset70 = Ltmp31-Lfunc_begin0
	.quad	Lset70
Lset71 = Ltmp32-Lfunc_begin0
	.quad	Lset71
	.short	1                       ## Loc expr size
	.byte	109                     ## DW_OP_reg29
	.quad	0
	.quad	0
Ldebug_loc18:
Lset72 = Ltmp31-Lfunc_begin0
	.quad	Lset72
Lset73 = Ltmp32-Lfunc_begin0
	.quad	Lset73
	.short	1                       ## Loc expr size
	.byte	108                     ## DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc19:
Lset74 = Ltmp31-Lfunc_begin0
	.quad	Lset74
Lset75 = Ltmp317-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	91                      ## super-register DW_OP_reg11
Lset76 = Ltmp1280-Lfunc_begin0
	.quad	Lset76
Lset77 = Ltmp1331-Lfunc_begin0
	.quad	Lset77
	.short	1                       ## Loc expr size
	.byte	91                      ## super-register DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc20:
Lset78 = Ltmp31-Lfunc_begin0
	.quad	Lset78
Lset79 = Ltmp48-Lfunc_begin0
	.quad	Lset79
	.short	1                       ## Loc expr size
	.byte	91                      ## super-register DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc21:
Lset80 = Ltmp34-Lfunc_begin0
	.quad	Lset80
Lset81 = Ltmp37-Lfunc_begin0
	.quad	Lset81
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc22:
Lset82 = Ltmp35-Lfunc_begin0
	.quad	Lset82
Lset83 = Ltmp41-Lfunc_begin0
	.quad	Lset83
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc23:
Lset84 = Ltmp36-Lfunc_begin0
	.quad	Lset84
Lset85 = Ltmp38-Lfunc_begin0
	.quad	Lset85
	.short	1                       ## Loc expr size
	.byte	102                     ## DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc24:
Lset86 = Ltmp39-Lfunc_begin0
	.quad	Lset86
Lset87 = Ltmp48-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	102                     ## DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc25:
Lset88 = Ltmp40-Lfunc_begin0
	.quad	Lset88
Lset89 = Ltmp42-Lfunc_begin0
	.quad	Lset89
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc26:
Lset90 = Ltmp43-Lfunc_begin0
	.quad	Lset90
Lset91 = Ltmp48-Lfunc_begin0
	.quad	Lset91
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc27:
Lset92 = Ltmp44-Lfunc_begin0
	.quad	Lset92
Lset93 = Ltmp48-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc28:
Lset94 = Ltmp46-Lfunc_begin0
	.quad	Lset94
Lset95 = Ltmp48-Lfunc_begin0
	.quad	Lset95
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc29:
Lset96 = Ltmp50-Lfunc_begin0
	.quad	Lset96
Lset97 = Ltmp56-Lfunc_begin0
	.quad	Lset97
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset98 = Ltmp56-Lfunc_begin0
	.quad	Lset98
Lset99 = Ltmp57-Lfunc_begin0
	.quad	Lset99
	.short	1                       ## Loc expr size
	.byte	81                      ## super-register DW_OP_reg1
Lset100 = Ltmp66-Lfunc_begin0
	.quad	Lset100
Lset101 = Ltmp68-Lfunc_begin0
	.quad	Lset101
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset102 = Ltmp72-Lfunc_begin0
	.quad	Lset102
Lset103 = Lfunc_end1-Lfunc_begin0
	.quad	Lset103
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc30:
Lset104 = Ltmp1280-Lfunc_begin0
	.quad	Lset104
Lset105 = Ltmp1322-Lfunc_begin0
	.quad	Lset105
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset106 = Ltmp1322-Lfunc_begin0
	.quad	Lset106
Lset107 = Ltmp1325-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc31:
Lset108 = Ltmp1287-Lfunc_begin0
	.quad	Lset108
Lset109 = Ltmp1290-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc32:
Lset110 = Ltmp1288-Lfunc_begin0
	.quad	Lset110
Lset111 = Ltmp1294-Lfunc_begin0
	.quad	Lset111
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc33:
Lset112 = Ltmp1289-Lfunc_begin0
	.quad	Lset112
Lset113 = Ltmp1291-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc34:
Lset114 = Ltmp1292-Lfunc_begin0
	.quad	Lset114
Lset115 = Ltmp1297-Lfunc_begin0
	.quad	Lset115
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc35:
Lset116 = Ltmp1293-Lfunc_begin0
	.quad	Lset116
Lset117 = Ltmp1295-Lfunc_begin0
	.quad	Lset117
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc36:
Lset118 = Ltmp1296-Lfunc_begin0
	.quad	Lset118
Lset119 = Ltmp1298-Lfunc_begin0
	.quad	Lset119
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc37:
Lset120 = Ltmp1299-Lfunc_begin0
	.quad	Lset120
Lset121 = Ltmp1302-Lfunc_begin0
	.quad	Lset121
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc38:
Lset122 = Ltmp1300-Lfunc_begin0
	.quad	Lset122
Lset123 = Ltmp1302-Lfunc_begin0
	.quad	Lset123
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc39:
Lset124 = Ltmp1304-Lfunc_begin0
	.quad	Lset124
Lset125 = Ltmp1310-Lfunc_begin0
	.quad	Lset125
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset126 = Ltmp1310-Lfunc_begin0
	.quad	Lset126
Lset127 = Ltmp1311-Lfunc_begin0
	.quad	Lset127
	.short	1                       ## Loc expr size
	.byte	81                      ## super-register DW_OP_reg1
Lset128 = Ltmp1318-Lfunc_begin0
	.quad	Lset128
Lset129 = Ltmp1319-Lfunc_begin0
	.quad	Lset129
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc40:
Lset130 = Lfunc_begin2-Lfunc_begin0
	.quad	Lset130
Lset131 = Ltmp1333-Lfunc_begin0
	.quad	Lset131
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset132 = Ltmp1333-Lfunc_begin0
	.quad	Lset132
Lset133 = Ltmp1340-Lfunc_begin0
	.quad	Lset133
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
Lset134 = Ltmp1340-Lfunc_begin0
	.quad	Lset134
Lset135 = Lfunc_end2-Lfunc_begin0
	.quad	Lset135
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc41:
Lset136 = Ltmp1332-Lfunc_begin0
	.quad	Lset136
Lset137 = Ltmp1333-Lfunc_begin0
	.quad	Lset137
	.short	8                       ## Loc expr size
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
	.byte	117                     ## DW_OP_breg5
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset138 = Ltmp1333-Lfunc_begin0
	.quad	Lset138
Lset139 = Ltmp1334-Lfunc_begin0
	.quad	Lset139
	.short	8                       ## Loc expr size
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset140 = Ltmp1334-Lfunc_begin0
	.quad	Lset140
Lset141 = Ltmp1335-Lfunc_begin0
	.quad	Lset141
	.short	11                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset142 = Ltmp1335-Lfunc_begin0
	.quad	Lset142
Lset143 = Ltmp1336-Lfunc_begin0
	.quad	Lset143
	.short	12                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset144 = Ltmp1336-Lfunc_begin0
	.quad	Lset144
Lset145 = Ltmp1337-Lfunc_begin0
	.quad	Lset145
	.short	15                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	93                      ## super-register DW_OP_reg13
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset146 = Ltmp1337-Lfunc_begin0
	.quad	Lset146
Lset147 = Ltmp1338-Lfunc_begin0
	.quad	Lset147
	.short	18                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	93                      ## super-register DW_OP_reg13
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	82                      ## super-register DW_OP_reg2
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Lset148 = Ltmp1338-Lfunc_begin0
	.quad	Lset148
Lset149 = Ltmp1339-Lfunc_begin0
	.quad	Lset149
	.short	23                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	93                      ## super-register DW_OP_reg13
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	82                      ## super-register DW_OP_reg2
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	95                      ## DW_OP_reg15
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
Lset150 = Ltmp1339-Lfunc_begin0
	.quad	Lset150
Lset151 = Ltmp1340-Lfunc_begin0
	.quad	Lset151
	.short	28                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	93                      ## super-register DW_OP_reg13
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	82                      ## super-register DW_OP_reg2
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	95                      ## DW_OP_reg15
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
	.byte	83                      ## DW_OP_reg3
	.byte	147                     ## DW_OP_piece
	.byte	8                       ## 8
Lset152 = Ltmp1340-Lfunc_begin0
	.quad	Lset152
Lset153 = Ltmp1341-Lfunc_begin0
	.quad	Lset153
	.short	31                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## DW_OP_plus_uconst
	.byte	35                      ## 8
	.byte	8                       ## DW_OP_deref
	.byte	6                       ## DW_OP_stack_value
	.byte	159                     ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## super-register DW_OP_reg13
	.byte	93                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## super-register DW_OP_reg2
	.byte	82                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_reg15
	.byte	95                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_reg3
	.byte	83                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## 
Lset154 = Ltmp1341-Lfunc_begin0
	.quad	Lset154
Lset155 = Ltmp1343-Lfunc_begin0
	.quad	Lset155
	.short	35                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## DW_OP_plus_uconst
	.byte	35                      ## 8
	.byte	8                       ## DW_OP_deref
	.byte	6                       ## DW_OP_stack_value
	.byte	159                     ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## super-register DW_OP_reg13
	.byte	93                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## super-register DW_OP_reg2
	.byte	82                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_reg15
	.byte	95                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_reg3
	.byte	83                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_breg6
	.byte	118                     ## -60
	.byte	68                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## 
Lset156 = Ltmp1343-Lfunc_begin0
	.quad	Lset156
Lset157 = Lfunc_end2-Lfunc_begin0
	.quad	Lset157
	.short	36                      ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	84                      ## super-register DW_OP_reg4
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## DW_OP_plus_uconst
	.byte	35                      ## 8
	.byte	8                       ## DW_OP_deref
	.byte	6                       ## DW_OP_stack_value
	.byte	159                     ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## super-register DW_OP_reg13
	.byte	93                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_breg6
	.byte	118                     ## -44
	.byte	84                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## DW_OP_reg15
	.byte	95                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_reg3
	.byte	83                      ## DW_OP_piece
	.byte	147                     ## 8
	.byte	8                       ## DW_OP_breg6
	.byte	118                     ## -60
	.byte	68                      ## DW_OP_piece
	.byte	147                     ## 4
	.byte	4                       ## 
	.quad	0
	.quad	0
Ldebug_loc42:
Lset158 = Ltmp1332-Lfunc_begin0
	.quad	Lset158
Lset159 = Ltmp1333-Lfunc_begin0
	.quad	Lset159
	.short	4                       ## Loc expr size
	.byte	117                     ## DW_OP_breg5
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
Lset160 = Ltmp1333-Lfunc_begin0
	.quad	Lset160
Lset161 = Ltmp1340-Lfunc_begin0
	.quad	Lset161
	.short	4                       ## Loc expr size
	.byte	112                     ## DW_OP_breg0
	.byte	8                       ## 8
	.byte	6                       ## DW_OP_deref
	.byte	159                     ## DW_OP_stack_value
Lset162 = Ltmp1340-Lfunc_begin0
	.quad	Lset162
Lset163 = Lfunc_end2-Lfunc_begin0
	.quad	Lset163
	.short	7                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## DW_OP_plus_uconst
	.byte	35                      ## 8
	.byte	8                       ## DW_OP_deref
	.byte	6                       ## DW_OP_stack_value
	.byte	159                     ## 
	.quad	0
	.quad	0
Ldebug_loc43:
Lset164 = Ltmp1334-Lfunc_begin0
	.quad	Lset164
Lset165 = Ltmp1347-Lfunc_begin0
	.quad	Lset165
	.short	1                       ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc44:
Lset166 = Ltmp1335-Lfunc_begin0
	.quad	Lset166
Lset167 = Ltmp1347-Lfunc_begin0
	.quad	Lset167
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc45:
Lset168 = Ltmp1336-Lfunc_begin0
	.quad	Lset168
Lset169 = Lfunc_end2-Lfunc_begin0
	.quad	Lset169
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc46:
Lset170 = Ltmp1337-Lfunc_begin0
	.quad	Lset170
Lset171 = Ltmp1343-Lfunc_begin0
	.quad	Lset171
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset172 = Ltmp1343-Lfunc_begin0
	.quad	Lset172
Lset173 = Lfunc_end2-Lfunc_begin0
	.quad	Lset173
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
	.quad	0
	.quad	0
Ldebug_loc47:
Lset174 = Ltmp1338-Lfunc_begin0
	.quad	Lset174
Lset175 = Lfunc_end2-Lfunc_begin0
	.quad	Lset175
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc48:
Lset176 = Ltmp1339-Lfunc_begin0
	.quad	Lset176
Lset177 = Lfunc_end2-Lfunc_begin0
	.quad	Lset177
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc49:
Lset178 = Ltmp1341-Lfunc_begin0
	.quad	Lset178
Lset179 = Lfunc_end2-Lfunc_begin0
	.quad	Lset179
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	68                      ## -60
	.quad	0
	.quad	0
Ldebug_loc50:
Lset180 = Ltmp1342-Lfunc_begin0
	.quad	Lset180
Lset181 = Ltmp1353-Lfunc_begin0
	.quad	Lset181
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset182 = Ltmp1353-Lfunc_begin0
	.quad	Lset182
Lset183 = Ltmp1355-Lfunc_begin0
	.quad	Lset183
	.short	1                       ## Loc expr size
	.byte	92                      ## super-register DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc51:
Lset184 = Ltmp1349-Lfunc_begin0
	.quad	Lset184
Lset185 = Lfunc_end2-Lfunc_begin0
	.quad	Lset185
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	160                     ## -96
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc52:
Lset186 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset186
Lset187 = Ltmp1358-Lfunc_begin0
	.quad	Lset187
	.short	1                       ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
Lset188 = Ltmp1358-Lfunc_begin0
	.quad	Lset188
Lset189 = Ltmp1363-Lfunc_begin0
	.quad	Lset189
	.short	1                       ## Loc expr size
	.byte	95                      ## super-register DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc53:
Lset190 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset190
Lset191 = Ltmp1357-Lfunc_begin0
	.quad	Lset191
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset192 = Ltmp1357-Lfunc_begin0
	.quad	Lset192
Lset193 = Lfunc_end3-Lfunc_begin0
	.quad	Lset193
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	80                      ## -48
	.quad	0
	.quad	0
Ldebug_loc54:
Lset194 = Ltmp1358-Lfunc_begin0
	.quad	Lset194
Lset195 = Ltmp1370-Lfunc_begin0
	.quad	Lset195
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset196 = Ltmp1370-Lfunc_begin0
	.quad	Lset196
Lset197 = Ltmp1371-Lfunc_begin0
	.quad	Lset197
	.short	1                       ## Loc expr size
	.byte	94                      ## super-register DW_OP_reg14
Lset198 = Ltmp1374-Lfunc_begin0
	.quad	Lset198
Lset199 = Ltmp1375-Lfunc_begin0
	.quad	Lset199
	.short	1                       ## Loc expr size
	.byte	94                      ## super-register DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc55:
Lset200 = Ltmp1358-Lfunc_begin0
	.quad	Lset200
Lset201 = Ltmp1371-Lfunc_begin0
	.quad	Lset201
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset202 = Ltmp1371-Lfunc_begin0
	.quad	Lset202
Lset203 = Ltmp1372-Lfunc_begin0
	.quad	Lset203
	.short	1                       ## Loc expr size
	.byte	92                      ## super-register DW_OP_reg12
Lset204 = Ltmp1378-Lfunc_begin0
	.quad	Lset204
Lset205 = Ltmp1378-Lfunc_begin0
	.quad	Lset205
	.short	1                       ## Loc expr size
	.byte	92                      ## super-register DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc56:
Lset206 = Ltmp1358-Lfunc_begin0
	.quad	Lset206
Lset207 = Ltmp1368-Lfunc_begin0
	.quad	Lset207
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset208 = Ltmp1368-Lfunc_begin0
	.quad	Lset208
Lset209 = Ltmp1369-Lfunc_begin0
	.quad	Lset209
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
Lset210 = Ltmp1376-Lfunc_begin0
	.quad	Lset210
Lset211 = Ltmp1377-Lfunc_begin0
	.quad	Lset211
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc57:
Lset212 = Ltmp1359-Lfunc_begin0
	.quad	Lset212
Lset213 = Lfunc_end3-Lfunc_begin0
	.quad	Lset213
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc58:
Lset214 = Ltmp1360-Lfunc_begin0
	.quad	Lset214
Lset215 = Ltmp1403-Lfunc_begin0
	.quad	Lset215
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset216 = Ltmp1403-Lfunc_begin0
	.quad	Lset216
Lset217 = Ltmp1405-Lfunc_begin0
	.quad	Lset217
	.short	1                       ## Loc expr size
	.byte	83                      ## super-register DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc59:
Lset218 = Ltmp1365-Lfunc_begin0
	.quad	Lset218
Lset219 = Ltmp1372-Lfunc_begin0
	.quad	Lset219
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset220 = Ltmp1372-Lfunc_begin0
	.quad	Lset220
Lset221 = Lfunc_end3-Lfunc_begin0
	.quad	Lset221
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc60:
Lset222 = Ltmp1365-Lfunc_begin0
	.quad	Lset222
Lset223 = Ltmp1366-Lfunc_begin0
	.quad	Lset223
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
Lset224 = Ltmp1369-Lfunc_begin0
	.quad	Lset224
Lset225 = Ltmp1371-Lfunc_begin0
	.quad	Lset225
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc61:
Lset226 = Ltmp1406-Lfunc_begin0
	.quad	Lset226
Lset227 = Lfunc_end3-Lfunc_begin0
	.quad	Lset227
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	64                      ## -64
	.quad	0
	.quad	0
Ldebug_loc62:
Lset228 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset228
Lset229 = Ltmp1409-Lfunc_begin0
	.quad	Lset229
	.short	1                       ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
Lset230 = Ltmp1409-Lfunc_begin0
	.quad	Lset230
Lset231 = Ltmp1439-Lfunc_begin0
	.quad	Lset231
	.short	1                       ## Loc expr size
	.byte	83                      ## super-register DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc63:
Lset232 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset232
Lset233 = Ltmp1408-Lfunc_begin0
	.quad	Lset233
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset234 = Ltmp1408-Lfunc_begin0
	.quad	Lset234
Lset235 = Ltmp1425-Lfunc_begin0
	.quad	Lset235
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
Lset236 = Ltmp1426-Lfunc_begin0
	.quad	Lset236
Lset237 = Ltmp1427-Lfunc_begin0
	.quad	Lset237
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc64:
Lset238 = Ltmp1410-Lfunc_begin0
	.quad	Lset238
Lset239 = Ltmp1415-Lfunc_begin0
	.quad	Lset239
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset240 = Ltmp1415-Lfunc_begin0
	.quad	Lset240
Lset241 = Ltmp1415-Lfunc_begin0
	.quad	Lset241
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset242 = Ltmp1416-Lfunc_begin0
	.quad	Lset242
Lset243 = Ltmp1417-Lfunc_begin0
	.quad	Lset243
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset244 = Ltmp1417-Lfunc_begin0
	.quad	Lset244
Lset245 = Lfunc_end4-Lfunc_begin0
	.quad	Lset245
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	180                     ## -76
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc65:
Lset246 = Ltmp1410-Lfunc_begin0
	.quad	Lset246
Lset247 = Ltmp1414-Lfunc_begin0
	.quad	Lset247
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset248 = Ltmp1414-Lfunc_begin0
	.quad	Lset248
Lset249 = Ltmp1415-Lfunc_begin0
	.quad	Lset249
	.short	1                       ## Loc expr size
	.byte	94                      ## super-register DW_OP_reg14
Lset250 = Ltmp1416-Lfunc_begin0
	.quad	Lset250
Lset251 = Ltmp1461-Lfunc_begin0
	.quad	Lset251
	.short	1                       ## Loc expr size
	.byte	94                      ## super-register DW_OP_reg14
Lset252 = Ltmp1462-Lfunc_begin0
	.quad	Lset252
Lset253 = Lfunc_end4-Lfunc_begin0
	.quad	Lset253
	.short	1                       ## Loc expr size
	.byte	94                      ## super-register DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc66:
Lset254 = Ltmp1420-Lfunc_begin0
	.quad	Lset254
Lset255 = Ltmp1460-Lfunc_begin0
	.quad	Lset255
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
Lset256 = Ltmp1462-Lfunc_begin0
	.quad	Lset256
Lset257 = Lfunc_end4-Lfunc_begin0
	.quad	Lset257
	.short	1                       ## Loc expr size
	.byte	93                      ## super-register DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc67:
Lset258 = Ltmp1421-Lfunc_begin0
	.quad	Lset258
Lset259 = Ltmp1453-Lfunc_begin0
	.quad	Lset259
	.short	1                       ## Loc expr size
	.byte	95                      ## super-register DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc68:
Lset260 = Ltmp1425-Lfunc_begin0
	.quad	Lset260
Lset261 = Ltmp1426-Lfunc_begin0
	.quad	Lset261
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
Lset262 = Ltmp1427-Lfunc_begin0
	.quad	Lset262
Lset263 = Ltmp1437-Lfunc_begin0
	.quad	Lset263
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc69:
Lset264 = Ltmp1431-Lfunc_begin0
	.quad	Lset264
Lset265 = Ltmp1432-Lfunc_begin0
	.quad	Lset265
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
Lset266 = Ltmp1432-Lfunc_begin0
	.quad	Lset266
Lset267 = Lfunc_end4-Lfunc_begin0
	.quad	Lset267
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc70:
Lset268 = Ltmp1433-Lfunc_begin0
	.quad	Lset268
Lset269 = Ltmp1449-Lfunc_begin0
	.quad	Lset269
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
Lset270 = Ltmp1449-Lfunc_begin0
	.quad	Lset270
Lset271 = Ltmp1450-Lfunc_begin0
	.quad	Lset271
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
Lset272 = Ltmp1450-Lfunc_begin0
	.quad	Lset272
Lset273 = Lfunc_end4-Lfunc_begin0
	.quad	Lset273
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	180                     ## -76
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc71:
Lset274 = Ltmp1433-Lfunc_begin0
	.quad	Lset274
Lset275 = Lfunc_end4-Lfunc_begin0
	.quad	Lset275
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	152                     ## -104
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc72:
Lset276 = Ltmp1444-Lfunc_begin0
	.quad	Lset276
Lset277 = Ltmp1445-Lfunc_begin0
	.quad	Lset277
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc73:
Lset278 = Ltmp1447-Lfunc_begin0
	.quad	Lset278
Lset279 = Ltmp1448-Lfunc_begin0
	.quad	Lset279
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	180                     ## -76
	.byte	127                     ## 
Lset280 = Ltmp1448-Lfunc_begin0
	.quad	Lset280
Lset281 = Ltmp1449-Lfunc_begin0
	.quad	Lset281
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.ascii	"\207B"                 ## DW_AT_GNU_vector
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	28                      ## DW_AT_const_value
	.byte	15                      ## DW_FORM_udata
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	24                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	25                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	85                      ## DW_AT_ranges
	.byte	23                      ## DW_FORM_sec_offset
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	26                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	85                      ## DW_AT_ranges
	.byte	23                      ## DW_FORM_sec_offset
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	27                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	28                      ## DW_AT_const_value
	.byte	13                      ## DW_FORM_sdata
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	28                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	29                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	30                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	31                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	32                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	33                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	34                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	35                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	28                      ## DW_AT_const_value
	.byte	13                      ## DW_FORM_sdata
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	2455                    ## Length of Unit
	.short	4                       ## DWARF version number
Lset282 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset282
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x990 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	44                      ## DW_AT_name
Lset283 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset283
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset284 = Lfunc_end4-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset284
	.byte	2                       ## Abbrev [2] 0x2a:0x5 DW_TAG_pointer_type
	.long	47                      ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x2f:0x75 DW_TAG_structure_type
	.long	83                      ## DW_AT_name
	.byte	56                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	27                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x37:0xc DW_TAG_member
	.long	94                      ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x43:0xc DW_TAG_member
	.long	108                     ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.byte	4                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x4f:0xc DW_TAG_member
	.long	118                     ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x5b:0xc DW_TAG_member
	.long	128                     ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	12                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x67:0xc DW_TAG_member
	.long	141                     ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x73:0xc DW_TAG_member
	.long	157                     ## DW_AT_name
	.long	171                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x7f:0xc DW_TAG_member
	.long	178                     ## DW_AT_name
	.long	183                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	32                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x8b:0xc DW_TAG_member
	.long	186                     ## DW_AT_name
	.long	188                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.byte	40                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x97:0xc DW_TAG_member
	.long	202                     ## DW_AT_name
	.long	164                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0xa4:0x7 DW_TAG_base_type
	.long	104                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0xab:0x5 DW_TAG_pointer_type
	.long	176                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xb0:0x7 DW_TAG_base_type
	.long	165                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0xb7:0x5 DW_TAG_pointer_type
	.long	164                     ## DW_AT_type
	.byte	2                       ## Abbrev [2] 0xbc:0x5 DW_TAG_pointer_type
	.long	193                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xc1:0xb DW_TAG_typedef
	.long	164                     ## DW_AT_type
	.long	196                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0xcc:0x1 DW_TAG_pointer_type
	.byte	2                       ## Abbrev [2] 0xcd:0x5 DW_TAG_pointer_type
	.long	210                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xd2:0x5 DW_TAG_const_type
	.long	215                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xd7:0xb DW_TAG_typedef
	.long	226                     ## DW_AT_type
	.long	212                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	9                       ## Abbrev [9] 0xe2:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	238                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0xe7:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	2                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0xee:0x7 DW_TAG_base_type
	.long	220                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	11                      ## Abbrev [11] 0xf5:0x7 DW_TAG_base_type
	.long	234                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## Abbrev [2] 0xfc:0x5 DW_TAG_pointer_type
	.long	215                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x101:0xb DW_TAG_typedef
	.long	268                     ## DW_AT_type
	.long	243                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.byte	9                       ## Abbrev [9] 0x10c:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	280                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x111:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	2                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x118:0x7 DW_TAG_base_type
	.long	250                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	6                       ## Abbrev [6] 0x11f:0xb DW_TAG_typedef
	.long	298                     ## DW_AT_type
	.long	273                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.byte	9                       ## Abbrev [9] 0x12a:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	164                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x12f:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	4                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x136:0xb DW_TAG_typedef
	.long	321                     ## DW_AT_type
	.long	280                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	9                       ## Abbrev [9] 0x141:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	176                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x146:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	4                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x14d:0x31 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset285 = Lfunc_end0-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset285
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	287                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.long	583                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	13                      ## Abbrev [13] 0x166:0xc DW_TAG_variable
	.byte	0                       ## DW_AT_const_value
	.long	478                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	38                      ## DW_AT_decl_line
	.long	2281                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x172:0xb DW_TAG_variable
	.long	309                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.long	583                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x17e:0xc4 DW_TAG_subprogram
	.long	300                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	16                      ## Abbrev [16] 0x186:0xb DW_TAG_formal_parameter
	.long	309                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
	.long	578                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x191:0xb DW_TAG_variable
	.long	335                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	62                      ## DW_AT_decl_line
	.long	210                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x19c:0xb DW_TAG_variable
	.long	350                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	66                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1a7:0xb DW_TAG_variable
	.long	356                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1b2:0xb DW_TAG_variable
	.long	361                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	72                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1bd:0xb DW_TAG_variable
	.long	367                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1c8:0xb DW_TAG_variable
	.long	346                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	80                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1d3:0xb DW_TAG_variable
	.long	333                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1de:0xb DW_TAG_variable
	.long	331                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	59                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1e9:0xb DW_TAG_variable
	.long	340                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	63                      ## DW_AT_decl_line
	.long	210                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1f4:0xb DW_TAG_variable
	.long	343                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	210                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1ff:0xb DW_TAG_variable
	.long	372                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x20a:0xb DW_TAG_variable
	.long	379                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x215:0xb DW_TAG_variable
	.long	384                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	73                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x220:0xb DW_TAG_variable
	.long	391                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x22b:0xb DW_TAG_variable
	.long	396                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x236:0xb DW_TAG_variable
	.long	405                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.long	215                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0x242:0x5 DW_TAG_pointer_type
	.long	583                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x247:0xb DW_TAG_typedef
	.long	594                     ## DW_AT_type
	.long	311                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x252:0x51 DW_TAG_structure_type
	.long	320                     ## DW_AT_name
	.byte	96                      ## DW_AT_byte_size
	.byte	5                       ## DW_AT_decl_file
	.byte	9                       ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x25a:0xc DW_TAG_member
	.long	331                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x266:0xc DW_TAG_member
	.long	333                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x272:0xc DW_TAG_member
	.long	335                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.byte	32                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x27e:0xc DW_TAG_member
	.long	340                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x28a:0xc DW_TAG_member
	.long	343                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.byte	64                      ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x296:0xc DW_TAG_member
	.long	346                     ## DW_AT_name
	.long	675                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	23                      ## DW_AT_decl_line
	.byte	80                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	17                      ## Abbrev [17] 0x2a3:0xc DW_TAG_array_type
	.long	164                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x2a8:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	4                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x2af:0x2c6 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
Lset286 = Lfunc_end1-Lfunc_begin1       ## DW_AT_high_pc
	.long	Lset286
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	415                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x2c4:0xf DW_TAG_formal_parameter
Lset287 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset287
	.long	94                      ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2d3:0xf DW_TAG_formal_parameter
Lset288 = Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset288
	.long	108                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2e2:0xf DW_TAG_formal_parameter
Lset289 = Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset289
	.long	118                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2f1:0xf DW_TAG_formal_parameter
Lset290 = Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset290
	.long	128                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x300:0xf DW_TAG_formal_parameter
Lset291 = Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset291
	.long	509                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	39                      ## DW_AT_decl_line
	.long	183                     ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x30f:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	502                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	2299                    ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x31e:0xf DW_TAG_variable
Lset292 = Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset292
	.long	516                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	66                      ## DW_AT_decl_line
	.long	583                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x32d:0xf DW_TAG_variable
Lset293 = Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset293
	.long	527                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
	.long	583                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x33c:0xf DW_TAG_variable
Lset294 = Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset294
	.long	541                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	154                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x34b:0x165 DW_TAG_lexical_block
	.quad	Ltmp20                  ## DW_AT_low_pc
Lset295 = Ltmp1279-Ltmp20               ## DW_AT_high_pc
	.long	Lset295
	.byte	21                      ## Abbrev [21] 0x358:0xf DW_TAG_variable
Lset296 = Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset296
	.long	478                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	23                      ## Abbrev [23] 0x367:0x5c DW_TAG_inlined_subroutine
	.long	382                     ## DW_AT_abstract_origin
	.quad	Ltmp22                  ## DW_AT_low_pc
Lset297 = Ltmp30-Ltmp22                 ## DW_AT_high_pc
	.long	Lset297
	.byte	1                       ## DW_AT_call_file
	.byte	75                      ## DW_AT_call_line
	.byte	24                      ## Abbrev [24] 0x37a:0x9 DW_TAG_variable
Lset298 = Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset298
	.long	401                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x383:0x9 DW_TAG_variable
Lset299 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset299
	.long	412                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x38c:0x9 DW_TAG_variable
Lset300 = Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset300
	.long	423                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x395:0x9 DW_TAG_variable
Lset301 = Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset301
	.long	434                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x39e:0x9 DW_TAG_variable
Lset302 = Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset302
	.long	445                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x3a7:0x9 DW_TAG_variable
Lset303 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset303
	.long	456                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x3b0:0x9 DW_TAG_variable
Lset304 = Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset304
	.long	467                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x3b9:0x9 DW_TAG_variable
Lset305 = Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset305
	.long	478                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x3c3:0xec DW_TAG_lexical_block
Lset306 = Ldebug_ranges6-Ldebug_range   ## DW_AT_ranges
	.long	Lset306
	.byte	14                      ## Abbrev [14] 0x3c8:0xb DW_TAG_variable
	.long	597                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x3d3:0xdb DW_TAG_lexical_block
Lset307 = Ldebug_ranges5-Ldebug_range   ## DW_AT_ranges
	.long	Lset307
	.byte	21                      ## Abbrev [21] 0x3d8:0xf DW_TAG_variable
Lset308 = Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset308
	.long	556                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x3e7:0xc6 DW_TAG_lexical_block
Lset309 = Ldebug_ranges4-Ldebug_range   ## DW_AT_ranges
	.long	Lset309
	.byte	21                      ## Abbrev [21] 0x3ec:0xf DW_TAG_variable
Lset310 = Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset310
	.long	539                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	26                      ## Abbrev [26] 0x3fb:0x54 DW_TAG_inlined_subroutine
	.long	382                     ## DW_AT_abstract_origin
Lset311 = Ldebug_ranges0-Ldebug_range   ## DW_AT_ranges
	.long	Lset311
	.byte	1                       ## DW_AT_call_file
	.byte	82                      ## DW_AT_call_line
	.byte	24                      ## Abbrev [24] 0x406:0x9 DW_TAG_variable
Lset312 = Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset312
	.long	401                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x40f:0x9 DW_TAG_variable
Lset313 = Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset313
	.long	478                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x418:0x9 DW_TAG_variable
Lset314 = Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset314
	.long	467                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x421:0x9 DW_TAG_variable
Lset315 = Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset315
	.long	412                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x42a:0x9 DW_TAG_variable
Lset316 = Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset316
	.long	423                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x433:0x9 DW_TAG_variable
Lset317 = Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset317
	.long	434                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x43c:0x9 DW_TAG_variable
Lset318 = Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset318
	.long	445                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x445:0x9 DW_TAG_variable
Lset319 = Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset319
	.long	456                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x44f:0x5d DW_TAG_lexical_block
Lset320 = Ldebug_ranges3-Ldebug_range   ## DW_AT_ranges
	.long	Lset320
	.byte	27                      ## Abbrev [27] 0x454:0xc DW_TAG_variable
	.byte	0                       ## DW_AT_const_value
	.long	570                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x460:0x4b DW_TAG_lexical_block
Lset321 = Ldebug_ranges2-Ldebug_range   ## DW_AT_ranges
	.long	Lset321
	.byte	21                      ## Abbrev [21] 0x465:0xf DW_TAG_variable
Lset322 = Ldebug_loc28-Lsection_debug_loc ## DW_AT_location
	.long	Lset322
	.long	572                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.long	176                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x474:0xb DW_TAG_variable
	.long	599                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.long	2311                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x47f:0xb DW_TAG_variable
	.long	606                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.long	2318                    ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x48a:0x20 DW_TAG_lexical_block
Lset323 = Ldebug_ranges1-Ldebug_range   ## DW_AT_ranges
	.long	Lset323
	.byte	21                      ## Abbrev [21] 0x48f:0xf DW_TAG_variable
Lset324 = Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset324
	.long	585                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	108                     ## DW_AT_decl_line
	.long	2311                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x49e:0xb DW_TAG_variable
	.long	632                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	103                     ## DW_AT_decl_line
	.long	2318                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	22                      ## Abbrev [22] 0x4b0:0xc4 DW_TAG_lexical_block
	.quad	Ltmp1280                ## DW_AT_low_pc
Lset325 = Ltmp1325-Ltmp1280             ## DW_AT_high_pc
	.long	Lset325
	.byte	21                      ## Abbrev [21] 0x4bd:0xf DW_TAG_variable
Lset326 = Ldebug_loc30-Lsection_debug_loc ## DW_AT_location
	.long	Lset326
	.long	478                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x4cc:0xa7 DW_TAG_lexical_block
Lset327 = Ldebug_ranges8-Ldebug_range   ## DW_AT_ranges
	.long	Lset327
	.byte	21                      ## Abbrev [21] 0x4d1:0xf DW_TAG_variable
Lset328 = Ldebug_loc38-Lsection_debug_loc ## DW_AT_location
	.long	Lset328
	.long	572                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	160                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x4e0:0xb DW_TAG_variable
	.long	599                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	161                     ## DW_AT_decl_line
	.long	2311                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x4eb:0xb DW_TAG_variable
	.long	606                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	163                     ## DW_AT_decl_line
	.long	2318                    ## DW_AT_type
	.byte	26                      ## Abbrev [26] 0x4f6:0x54 DW_TAG_inlined_subroutine
	.long	382                     ## DW_AT_abstract_origin
Lset329 = Ldebug_ranges7-Ldebug_range   ## DW_AT_ranges
	.long	Lset329
	.byte	1                       ## DW_AT_call_file
	.byte	159                     ## DW_AT_call_line
	.byte	24                      ## Abbrev [24] 0x501:0x9 DW_TAG_variable
Lset330 = Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset330
	.long	401                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x50a:0x9 DW_TAG_variable
Lset331 = Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset331
	.long	478                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x513:0x9 DW_TAG_variable
Lset332 = Ldebug_loc32-Lsection_debug_loc ## DW_AT_location
	.long	Lset332
	.long	467                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x51c:0x9 DW_TAG_variable
Lset333 = Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset333
	.long	412                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x525:0x9 DW_TAG_variable
Lset334 = Ldebug_loc34-Lsection_debug_loc ## DW_AT_location
	.long	Lset334
	.long	423                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x52e:0x9 DW_TAG_variable
Lset335 = Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset335
	.long	434                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x537:0x9 DW_TAG_variable
Lset336 = Ldebug_loc36-Lsection_debug_loc ## DW_AT_location
	.long	Lset336
	.long	445                     ## DW_AT_abstract_origin
	.byte	24                      ## Abbrev [24] 0x540:0x9 DW_TAG_variable
Lset337 = Ldebug_loc37-Lsection_debug_loc ## DW_AT_location
	.long	Lset337
	.long	456                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	22                      ## Abbrev [22] 0x54a:0x28 DW_TAG_lexical_block
	.quad	Ltmp1305                ## DW_AT_low_pc
Lset338 = Ltmp1318-Ltmp1305             ## DW_AT_high_pc
	.long	Lset338
	.byte	21                      ## Abbrev [21] 0x557:0xf DW_TAG_variable
Lset339 = Ldebug_loc39-Lsection_debug_loc ## DW_AT_location
	.long	Lset339
	.long	585                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	179                     ## DW_AT_decl_line
	.long	2311                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x566:0xb DW_TAG_variable
	.long	632                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	174                     ## DW_AT_decl_line
	.long	2318                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	28                      ## Abbrev [28] 0x575:0x11e DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
Lset340 = Lfunc_end2-Lfunc_begin2       ## DW_AT_high_pc
	.long	Lset340
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	435                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	234                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	204                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x58e:0xf DW_TAG_formal_parameter
Lset341 = Ldebug_loc40-Lsection_debug_loc ## DW_AT_location
	.long	Lset341
	.long	664                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	234                     ## DW_AT_decl_line
	.long	204                     ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x59d:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	72
	.long	644                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	248                     ## DW_AT_decl_line
	.long	2325                    ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5ab:0xf DW_TAG_variable
Lset342 = Ldebug_loc41-Lsection_debug_loc ## DW_AT_location
	.long	Lset342
	.long	669                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	235                     ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5ba:0xf DW_TAG_variable
Lset343 = Ldebug_loc42-Lsection_debug_loc ## DW_AT_location
	.long	Lset343
	.long	118                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	238                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5c9:0xf DW_TAG_variable
Lset344 = Ldebug_loc43-Lsection_debug_loc ## DW_AT_location
	.long	Lset344
	.long	94                      ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	236                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5d8:0xf DW_TAG_variable
Lset345 = Ldebug_loc44-Lsection_debug_loc ## DW_AT_location
	.long	Lset345
	.long	108                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	237                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5e7:0xf DW_TAG_variable
Lset346 = Ldebug_loc45-Lsection_debug_loc ## DW_AT_location
	.long	Lset346
	.long	128                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	240                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x5f6:0xf DW_TAG_variable
Lset347 = Ldebug_loc46-Lsection_debug_loc ## DW_AT_location
	.long	Lset347
	.long	141                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	239                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x605:0xf DW_TAG_variable
Lset348 = Ldebug_loc47-Lsection_debug_loc ## DW_AT_location
	.long	Lset348
	.long	157                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	241                     ## DW_AT_decl_line
	.long	171                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x614:0xf DW_TAG_variable
Lset349 = Ldebug_loc48-Lsection_debug_loc ## DW_AT_location
	.long	Lset349
	.long	186                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	244                     ## DW_AT_decl_line
	.long	188                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x623:0xc DW_TAG_variable
	.byte	0                       ## DW_AT_const_value
	.long	676                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	247                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x62f:0xe DW_TAG_variable
	.ascii	"\200\200\004"          ## DW_AT_const_value
	.long	686                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	246                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x63d:0xf DW_TAG_variable
Lset350 = Ldebug_loc49-Lsection_debug_loc ## DW_AT_location
	.long	Lset350
	.long	202                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	243                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x64c:0xb DW_TAG_variable
	.long	178                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	242                     ## DW_AT_decl_line
	.long	183                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x657:0x3b DW_TAG_lexical_block
	.quad	Ltmp1343                ## DW_AT_low_pc
Lset351 = Ltmp1355-Ltmp1343             ## DW_AT_high_pc
	.long	Lset351
	.byte	21                      ## Abbrev [21] 0x664:0xf DW_TAG_variable
Lset352 = Ldebug_loc50-Lsection_debug_loc ## DW_AT_location
	.long	Lset352
	.long	478                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	250                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x673:0x1e DW_TAG_lexical_block
	.quad	Ltmp1348                ## DW_AT_low_pc
Lset353 = Ltmp1350-Ltmp1348             ## DW_AT_high_pc
	.long	Lset353
	.byte	29                      ## Abbrev [29] 0x680:0x10 DW_TAG_variable
Lset354 = Ldebug_loc51-Lsection_debug_loc ## DW_AT_location
	.long	Lset354
	.long	715                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	269                     ## DW_AT_decl_line
	.long	2337                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	30                      ## Abbrev [30] 0x693:0xfb DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
Lset355 = Lfunc_end3-Lfunc_begin3       ## DW_AT_high_pc
	.long	Lset355
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	451                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	285                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	31                      ## Abbrev [31] 0x6a9:0x10 DW_TAG_formal_parameter
Lset356 = Ldebug_loc52-Lsection_debug_loc ## DW_AT_location
	.long	Lset356
	.long	778                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	285                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	31                      ## Abbrev [31] 0x6b9:0x10 DW_TAG_formal_parameter
Lset357 = Ldebug_loc53-Lsection_debug_loc ## DW_AT_location
	.long	Lset357
	.long	785                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	285                     ## DW_AT_decl_line
	.long	183                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6c9:0x10 DW_TAG_variable
Lset358 = Ldebug_loc54-Lsection_debug_loc ## DW_AT_location
	.long	Lset358
	.long	789                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	290                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6d9:0x10 DW_TAG_variable
Lset359 = Ldebug_loc55-Lsection_debug_loc ## DW_AT_location
	.long	Lset359
	.long	796                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	289                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6e9:0x10 DW_TAG_variable
Lset360 = Ldebug_loc56-Lsection_debug_loc ## DW_AT_location
	.long	Lset360
	.long	803                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	288                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6f9:0x10 DW_TAG_variable
Lset361 = Ldebug_loc57-Lsection_debug_loc ## DW_AT_location
	.long	Lset361
	.long	810                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	292                     ## DW_AT_decl_line
	.long	2388                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x709:0x10 DW_TAG_variable
Lset362 = Ldebug_loc61-Lsection_debug_loc ## DW_AT_location
	.long	Lset362
	.long	863                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	293                     ## DW_AT_decl_line
	.long	2388                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x719:0x74 DW_TAG_lexical_block
	.quad	Ltmp1360                ## DW_AT_low_pc
Lset363 = Ltmp1405-Ltmp1360             ## DW_AT_high_pc
	.long	Lset363
	.byte	29                      ## Abbrev [29] 0x726:0x10 DW_TAG_variable
Lset364 = Ldebug_loc58-Lsection_debug_loc ## DW_AT_location
	.long	Lset364
	.long	478                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	296                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x736:0x56 DW_TAG_lexical_block
	.quad	Ltmp1364                ## DW_AT_low_pc
Lset365 = Ltmp1402-Ltmp1364             ## DW_AT_high_pc
	.long	Lset365
	.byte	29                      ## Abbrev [29] 0x743:0x10 DW_TAG_variable
Lset366 = Ldebug_loc60-Lsection_debug_loc ## DW_AT_location
	.long	Lset366
	.long	597                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	298                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x753:0x38 DW_TAG_lexical_block
	.quad	Ltmp1365                ## DW_AT_low_pc
Lset367 = Ltmp1402-Ltmp1365             ## DW_AT_high_pc
	.long	Lset367
	.byte	29                      ## Abbrev [29] 0x760:0x10 DW_TAG_variable
Lset368 = Ldebug_loc59-Lsection_debug_loc ## DW_AT_location
	.long	Lset368
	.long	539                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	301                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x770:0x1a DW_TAG_lexical_block
	.quad	Ltmp1365                ## DW_AT_low_pc
Lset369 = Ltmp1402-Ltmp1365             ## DW_AT_high_pc
	.long	Lset369
	.byte	32                      ## Abbrev [32] 0x77d:0xc DW_TAG_variable
	.long	867                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	302                     ## DW_AT_decl_line
	.long	2311                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	33                      ## Abbrev [33] 0x78e:0x15b DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
Lset370 = Lfunc_end4-Lfunc_begin4       ## DW_AT_high_pc
	.long	Lset370
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	473                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	327                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	164                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	31                      ## Abbrev [31] 0x7a8:0x10 DW_TAG_formal_parameter
Lset371 = Ldebug_loc62-Lsection_debug_loc ## DW_AT_location
	.long	Lset371
	.long	891                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	327                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	31                      ## Abbrev [31] 0x7b8:0x10 DW_TAG_formal_parameter
Lset372 = Ldebug_loc63-Lsection_debug_loc ## DW_AT_location
	.long	Lset372
	.long	896                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	327                     ## DW_AT_decl_line
	.long	2443                    ## DW_AT_type
	.byte	34                      ## Abbrev [34] 0x7c8:0xf DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	68
	.long	876                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	348                     ## DW_AT_decl_line
	.long	2325                    ## DW_AT_type
	.byte	34                      ## Abbrev [34] 0x7d7:0x10 DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	509                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	354                     ## DW_AT_decl_line
	.long	2325                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x7e7:0x10 DW_TAG_variable
Lset373 = Ldebug_loc64-Lsection_debug_loc ## DW_AT_location
	.long	Lset373
	.long	141                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	329                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x7f7:0x10 DW_TAG_variable
Lset374 = Ldebug_loc65-Lsection_debug_loc ## DW_AT_location
	.long	Lset374
	.long	901                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	328                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x807:0x10 DW_TAG_variable
Lset375 = Ldebug_loc66-Lsection_debug_loc ## DW_AT_location
	.long	Lset375
	.long	94                      ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	350                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x817:0x10 DW_TAG_variable
Lset376 = Ldebug_loc67-Lsection_debug_loc ## DW_AT_location
	.long	Lset376
	.long	108                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	351                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x827:0x10 DW_TAG_variable
Lset377 = Ldebug_loc68-Lsection_debug_loc ## DW_AT_location
	.long	Lset377
	.long	915                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	438                     ## DW_AT_decl_line
	.long	2448                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x837:0x10 DW_TAG_variable
Lset378 = Ldebug_loc69-Lsection_debug_loc ## DW_AT_location
	.long	Lset378
	.long	924                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	447                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x847:0x10 DW_TAG_variable
Lset379 = Ldebug_loc71-Lsection_debug_loc ## DW_AT_location
	.long	Lset379
	.long	927                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	451                     ## DW_AT_decl_line
	.long	2448                    ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x857:0xc DW_TAG_variable
	.long	118                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	352                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x863:0xc DW_TAG_variable
	.long	157                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	353                     ## DW_AT_decl_line
	.long	2453                    ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x86f:0xc DW_TAG_variable
	.long	954                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	450                     ## DW_AT_decl_line
	.long	2448                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x87b:0x6d DW_TAG_lexical_block
	.quad	Ltmp1434                ## DW_AT_low_pc
Lset380 = Ltmp1458-Ltmp1434             ## DW_AT_high_pc
	.long	Lset380
	.byte	29                      ## Abbrev [29] 0x888:0x10 DW_TAG_variable
Lset381 = Ldebug_loc70-Lsection_debug_loc ## DW_AT_location
	.long	Lset381
	.long	478                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	453                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x898:0x4f DW_TAG_lexical_block
Lset382 = Ldebug_ranges9-Ldebug_range   ## DW_AT_ranges
	.long	Lset382
	.byte	29                      ## Abbrev [29] 0x89d:0x10 DW_TAG_variable
Lset383 = Ldebug_loc72-Lsection_debug_loc ## DW_AT_location
	.long	Lset383
	.long	940                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	461                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x8ad:0x1b DW_TAG_lexical_block
	.quad	Ltmp1439                ## DW_AT_low_pc
Lset384 = Ltmp1443-Ltmp1439             ## DW_AT_high_pc
	.long	Lset384
	.byte	35                      ## Abbrev [35] 0x8ba:0xd DW_TAG_variable
	.byte	0                       ## DW_AT_const_value
	.long	539                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	454                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	22                      ## Abbrev [22] 0x8c8:0x1e DW_TAG_lexical_block
	.quad	Ltmp1453                ## DW_AT_low_pc
Lset385 = Ltmp1458-Ltmp1453             ## DW_AT_high_pc
	.long	Lset385
	.byte	29                      ## Abbrev [29] 0x8d5:0x10 DW_TAG_variable
Lset386 = Ldebug_loc73-Lsection_debug_loc ## DW_AT_location
	.long	Lset386
	.long	539                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.short	464                     ## DW_AT_decl_line
	.long	164                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x8e9:0xb DW_TAG_typedef
	.long	2292                    ## DW_AT_type
	.long	480                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x8f4:0x7 DW_TAG_base_type
	.long	488                     ## DW_AT_name
	.byte	8                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	17                      ## Abbrev [17] 0x8fb:0xc DW_TAG_array_type
	.long	164                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x900:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	5                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x907:0x7 DW_TAG_base_type
	.long	592                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x90e:0x7 DW_TAG_base_type
	.long	617                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	17                      ## Abbrev [17] 0x915:0xc DW_TAG_array_type
	.long	164                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x91a:0x6 DW_TAG_subrange_type
	.long	245                     ## DW_AT_type
	.byte	3                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	3                       ## Abbrev [3] 0x921:0x21 DW_TAG_structure_type
	.long	729                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	8                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x929:0xc DW_TAG_member
	.long	738                     ## DW_AT_name
	.long	2370                    ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x935:0xc DW_TAG_member
	.long	770                     ## DW_AT_name
	.long	2381                    ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x942:0xb DW_TAG_typedef
	.long	2381                    ## DW_AT_type
	.long	745                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x94d:0x7 DW_TAG_base_type
	.long	761                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	3                       ## Abbrev [3] 0x954:0x21 DW_TAG_structure_type
	.long	816                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	9                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x95c:0xc DW_TAG_member
	.long	738                     ## DW_AT_name
	.long	2370                    ## DW_AT_type
	.byte	9                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	4                       ## Abbrev [4] 0x968:0xc DW_TAG_member
	.long	824                     ## DW_AT_name
	.long	2421                    ## DW_AT_type
	.byte	9                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x975:0xb DW_TAG_typedef
	.long	2432                    ## DW_AT_type
	.long	832                     ## DW_AT_name
	.byte	10                      ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x980:0xb DW_TAG_typedef
	.long	164                     ## DW_AT_type
	.long	853                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	2                       ## Abbrev [2] 0x98b:0x5 DW_TAG_pointer_type
	.long	2448                    ## DW_AT_type
	.byte	2                       ## Abbrev [2] 0x990:0x5 DW_TAG_pointer_type
	.long	2311                    ## DW_AT_type
	.byte	2                       ## Abbrev [2] 0x995:0x5 DW_TAG_pointer_type
	.long	183                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
Lset387 = Ltmp35-Lfunc_begin0
	.quad	Lset387
Lset388 = Ltmp45-Lfunc_begin0
	.quad	Lset388
Lset389 = Ltmp123-Lfunc_begin0
	.quad	Lset389
Lset390 = Ltmp125-Lfunc_begin0
	.quad	Lset390
Lset391 = Ltmp200-Lfunc_begin0
	.quad	Lset391
Lset392 = Ltmp201-Lfunc_begin0
	.quad	Lset392
Lset393 = Ltmp276-Lfunc_begin0
	.quad	Lset393
Lset394 = Ltmp277-Lfunc_begin0
	.quad	Lset394
Lset395 = Ltmp355-Lfunc_begin0
	.quad	Lset395
Lset396 = Ltmp357-Lfunc_begin0
	.quad	Lset396
Lset397 = Ltmp431-Lfunc_begin0
	.quad	Lset397
Lset398 = Ltmp433-Lfunc_begin0
	.quad	Lset398
Lset399 = Ltmp508-Lfunc_begin0
	.quad	Lset399
Lset400 = Ltmp509-Lfunc_begin0
	.quad	Lset400
Lset401 = Ltmp584-Lfunc_begin0
	.quad	Lset401
Lset402 = Ltmp585-Lfunc_begin0
	.quad	Lset402
Lset403 = Ltmp662-Lfunc_begin0
	.quad	Lset403
Lset404 = Ltmp664-Lfunc_begin0
	.quad	Lset404
Lset405 = Ltmp740-Lfunc_begin0
	.quad	Lset405
Lset406 = Ltmp742-Lfunc_begin0
	.quad	Lset406
Lset407 = Ltmp818-Lfunc_begin0
	.quad	Lset407
Lset408 = Ltmp819-Lfunc_begin0
	.quad	Lset408
Lset409 = Ltmp895-Lfunc_begin0
	.quad	Lset409
Lset410 = Ltmp896-Lfunc_begin0
	.quad	Lset410
Lset411 = Ltmp973-Lfunc_begin0
	.quad	Lset411
Lset412 = Ltmp975-Lfunc_begin0
	.quad	Lset412
Lset413 = Ltmp1049-Lfunc_begin0
	.quad	Lset413
Lset414 = Ltmp1051-Lfunc_begin0
	.quad	Lset414
Lset415 = Ltmp1126-Lfunc_begin0
	.quad	Lset415
Lset416 = Ltmp1127-Lfunc_begin0
	.quad	Lset416
Lset417 = Ltmp1202-Lfunc_begin0
	.quad	Lset417
Lset418 = Ltmp1203-Lfunc_begin0
	.quad	Lset418
	.quad	0
	.quad	0
Ldebug_ranges1:
Lset419 = Ltmp51-Lfunc_begin0
	.quad	Lset419
Lset420 = Ltmp64-Lfunc_begin0
	.quad	Lset420
Lset421 = Ltmp73-Lfunc_begin0
	.quad	Lset421
Lset422 = Ltmp85-Lfunc_begin0
	.quad	Lset422
Lset423 = Ltmp92-Lfunc_begin0
	.quad	Lset423
Lset424 = Ltmp104-Lfunc_begin0
	.quad	Lset424
Lset425 = Ltmp110-Lfunc_begin0
	.quad	Lset425
Lset426 = Ltmp122-Lfunc_begin0
	.quad	Lset426
Lset427 = Ltmp130-Lfunc_begin0
	.quad	Lset427
Lset428 = Ltmp142-Lfunc_begin0
	.quad	Lset428
Lset429 = Ltmp150-Lfunc_begin0
	.quad	Lset429
Lset430 = Ltmp162-Lfunc_begin0
	.quad	Lset430
Lset431 = Ltmp169-Lfunc_begin0
	.quad	Lset431
Lset432 = Ltmp181-Lfunc_begin0
	.quad	Lset432
Lset433 = Ltmp187-Lfunc_begin0
	.quad	Lset433
Lset434 = Ltmp199-Lfunc_begin0
	.quad	Lset434
Lset435 = Ltmp206-Lfunc_begin0
	.quad	Lset435
Lset436 = Ltmp218-Lfunc_begin0
	.quad	Lset436
Lset437 = Ltmp226-Lfunc_begin0
	.quad	Lset437
Lset438 = Ltmp238-Lfunc_begin0
	.quad	Lset438
Lset439 = Ltmp245-Lfunc_begin0
	.quad	Lset439
Lset440 = Ltmp257-Lfunc_begin0
	.quad	Lset440
Lset441 = Ltmp263-Lfunc_begin0
	.quad	Lset441
Lset442 = Ltmp275-Lfunc_begin0
	.quad	Lset442
Lset443 = Ltmp282-Lfunc_begin0
	.quad	Lset443
Lset444 = Ltmp294-Lfunc_begin0
	.quad	Lset444
Lset445 = Ltmp302-Lfunc_begin0
	.quad	Lset445
Lset446 = Ltmp314-Lfunc_begin0
	.quad	Lset446
Lset447 = Ltmp322-Lfunc_begin0
	.quad	Lset447
Lset448 = Ltmp334-Lfunc_begin0
	.quad	Lset448
Lset449 = Ltmp341-Lfunc_begin0
	.quad	Lset449
Lset450 = Ltmp353-Lfunc_begin0
	.quad	Lset450
Lset451 = Ltmp362-Lfunc_begin0
	.quad	Lset451
Lset452 = Ltmp374-Lfunc_begin0
	.quad	Lset452
Lset453 = Ltmp381-Lfunc_begin0
	.quad	Lset453
Lset454 = Ltmp393-Lfunc_begin0
	.quad	Lset454
Lset455 = Ltmp400-Lfunc_begin0
	.quad	Lset455
Lset456 = Ltmp412-Lfunc_begin0
	.quad	Lset456
Lset457 = Ltmp418-Lfunc_begin0
	.quad	Lset457
Lset458 = Ltmp430-Lfunc_begin0
	.quad	Lset458
Lset459 = Ltmp438-Lfunc_begin0
	.quad	Lset459
Lset460 = Ltmp450-Lfunc_begin0
	.quad	Lset460
Lset461 = Ltmp458-Lfunc_begin0
	.quad	Lset461
Lset462 = Ltmp470-Lfunc_begin0
	.quad	Lset462
Lset463 = Ltmp477-Lfunc_begin0
	.quad	Lset463
Lset464 = Ltmp489-Lfunc_begin0
	.quad	Lset464
Lset465 = Ltmp495-Lfunc_begin0
	.quad	Lset465
Lset466 = Ltmp507-Lfunc_begin0
	.quad	Lset466
Lset467 = Ltmp514-Lfunc_begin0
	.quad	Lset467
Lset468 = Ltmp526-Lfunc_begin0
	.quad	Lset468
Lset469 = Ltmp534-Lfunc_begin0
	.quad	Lset469
Lset470 = Ltmp546-Lfunc_begin0
	.quad	Lset470
Lset471 = Ltmp553-Lfunc_begin0
	.quad	Lset471
Lset472 = Ltmp565-Lfunc_begin0
	.quad	Lset472
Lset473 = Ltmp571-Lfunc_begin0
	.quad	Lset473
Lset474 = Ltmp583-Lfunc_begin0
	.quad	Lset474
Lset475 = Ltmp590-Lfunc_begin0
	.quad	Lset475
Lset476 = Ltmp602-Lfunc_begin0
	.quad	Lset476
Lset477 = Ltmp610-Lfunc_begin0
	.quad	Lset477
Lset478 = Ltmp622-Lfunc_begin0
	.quad	Lset478
Lset479 = Ltmp629-Lfunc_begin0
	.quad	Lset479
Lset480 = Ltmp641-Lfunc_begin0
	.quad	Lset480
Lset481 = Ltmp648-Lfunc_begin0
	.quad	Lset481
Lset482 = Ltmp660-Lfunc_begin0
	.quad	Lset482
Lset483 = Ltmp669-Lfunc_begin0
	.quad	Lset483
Lset484 = Ltmp681-Lfunc_begin0
	.quad	Lset484
Lset485 = Ltmp688-Lfunc_begin0
	.quad	Lset485
Lset486 = Ltmp700-Lfunc_begin0
	.quad	Lset486
Lset487 = Ltmp707-Lfunc_begin0
	.quad	Lset487
Lset488 = Ltmp719-Lfunc_begin0
	.quad	Lset488
Lset489 = Ltmp726-Lfunc_begin0
	.quad	Lset489
Lset490 = Ltmp738-Lfunc_begin0
	.quad	Lset490
Lset491 = Ltmp747-Lfunc_begin0
	.quad	Lset491
Lset492 = Ltmp759-Lfunc_begin0
	.quad	Lset492
Lset493 = Ltmp766-Lfunc_begin0
	.quad	Lset493
Lset494 = Ltmp778-Lfunc_begin0
	.quad	Lset494
Lset495 = Ltmp785-Lfunc_begin0
	.quad	Lset495
Lset496 = Ltmp797-Lfunc_begin0
	.quad	Lset496
Lset497 = Ltmp804-Lfunc_begin0
	.quad	Lset497
Lset498 = Ltmp816-Lfunc_begin0
	.quad	Lset498
Lset499 = Ltmp824-Lfunc_begin0
	.quad	Lset499
Lset500 = Ltmp836-Lfunc_begin0
	.quad	Lset500
Lset501 = Ltmp843-Lfunc_begin0
	.quad	Lset501
Lset502 = Ltmp855-Lfunc_begin0
	.quad	Lset502
Lset503 = Ltmp862-Lfunc_begin0
	.quad	Lset503
Lset504 = Ltmp874-Lfunc_begin0
	.quad	Lset504
Lset505 = Ltmp881-Lfunc_begin0
	.quad	Lset505
Lset506 = Ltmp893-Lfunc_begin0
	.quad	Lset506
Lset507 = Ltmp901-Lfunc_begin0
	.quad	Lset507
Lset508 = Ltmp913-Lfunc_begin0
	.quad	Lset508
Lset509 = Ltmp920-Lfunc_begin0
	.quad	Lset509
Lset510 = Ltmp932-Lfunc_begin0
	.quad	Lset510
Lset511 = Ltmp939-Lfunc_begin0
	.quad	Lset511
Lset512 = Ltmp951-Lfunc_begin0
	.quad	Lset512
Lset513 = Ltmp959-Lfunc_begin0
	.quad	Lset513
Lset514 = Ltmp971-Lfunc_begin0
	.quad	Lset514
Lset515 = Ltmp980-Lfunc_begin0
	.quad	Lset515
Lset516 = Ltmp992-Lfunc_begin0
	.quad	Lset516
Lset517 = Ltmp999-Lfunc_begin0
	.quad	Lset517
Lset518 = Ltmp1011-Lfunc_begin0
	.quad	Lset518
Lset519 = Ltmp1018-Lfunc_begin0
	.quad	Lset519
Lset520 = Ltmp1030-Lfunc_begin0
	.quad	Lset520
Lset521 = Ltmp1036-Lfunc_begin0
	.quad	Lset521
Lset522 = Ltmp1048-Lfunc_begin0
	.quad	Lset522
Lset523 = Ltmp1056-Lfunc_begin0
	.quad	Lset523
Lset524 = Ltmp1068-Lfunc_begin0
	.quad	Lset524
Lset525 = Ltmp1076-Lfunc_begin0
	.quad	Lset525
Lset526 = Ltmp1088-Lfunc_begin0
	.quad	Lset526
Lset527 = Ltmp1095-Lfunc_begin0
	.quad	Lset527
Lset528 = Ltmp1107-Lfunc_begin0
	.quad	Lset528
Lset529 = Ltmp1113-Lfunc_begin0
	.quad	Lset529
Lset530 = Ltmp1125-Lfunc_begin0
	.quad	Lset530
Lset531 = Ltmp1132-Lfunc_begin0
	.quad	Lset531
Lset532 = Ltmp1144-Lfunc_begin0
	.quad	Lset532
Lset533 = Ltmp1152-Lfunc_begin0
	.quad	Lset533
Lset534 = Ltmp1164-Lfunc_begin0
	.quad	Lset534
Lset535 = Ltmp1171-Lfunc_begin0
	.quad	Lset535
Lset536 = Ltmp1183-Lfunc_begin0
	.quad	Lset536
Lset537 = Ltmp1189-Lfunc_begin0
	.quad	Lset537
Lset538 = Ltmp1201-Lfunc_begin0
	.quad	Lset538
Lset539 = Ltmp1208-Lfunc_begin0
	.quad	Lset539
Lset540 = Ltmp1220-Lfunc_begin0
	.quad	Lset540
Lset541 = Ltmp1228-Lfunc_begin0
	.quad	Lset541
Lset542 = Ltmp1240-Lfunc_begin0
	.quad	Lset542
Lset543 = Ltmp1247-Lfunc_begin0
	.quad	Lset543
Lset544 = Ltmp1259-Lfunc_begin0
	.quad	Lset544
Lset545 = Ltmp1265-Lfunc_begin0
	.quad	Lset545
Lset546 = Ltmp1277-Lfunc_begin0
	.quad	Lset546
	.quad	0
	.quad	0
Ldebug_ranges2:
Lset547 = Ltmp45-Lfunc_begin0
	.quad	Lset547
Lset548 = Ltmp122-Lfunc_begin0
	.quad	Lset548
Lset549 = Ltmp125-Lfunc_begin0
	.quad	Lset549
Lset550 = Ltmp199-Lfunc_begin0
	.quad	Lset550
Lset551 = Ltmp201-Lfunc_begin0
	.quad	Lset551
Lset552 = Ltmp275-Lfunc_begin0
	.quad	Lset552
Lset553 = Ltmp277-Lfunc_begin0
	.quad	Lset553
Lset554 = Ltmp334-Lfunc_begin0
	.quad	Lset554
Lset555 = Ltmp336-Lfunc_begin0
	.quad	Lset555
Lset556 = Ltmp353-Lfunc_begin0
	.quad	Lset556
Lset557 = Ltmp357-Lfunc_begin0
	.quad	Lset557
Lset558 = Ltmp430-Lfunc_begin0
	.quad	Lset558
Lset559 = Ltmp433-Lfunc_begin0
	.quad	Lset559
Lset560 = Ltmp507-Lfunc_begin0
	.quad	Lset560
Lset561 = Ltmp509-Lfunc_begin0
	.quad	Lset561
Lset562 = Ltmp583-Lfunc_begin0
	.quad	Lset562
Lset563 = Ltmp585-Lfunc_begin0
	.quad	Lset563
Lset564 = Ltmp641-Lfunc_begin0
	.quad	Lset564
Lset565 = Ltmp643-Lfunc_begin0
	.quad	Lset565
Lset566 = Ltmp660-Lfunc_begin0
	.quad	Lset566
Lset567 = Ltmp664-Lfunc_begin0
	.quad	Lset567
Lset568 = Ltmp738-Lfunc_begin0
	.quad	Lset568
Lset569 = Ltmp742-Lfunc_begin0
	.quad	Lset569
Lset570 = Ltmp816-Lfunc_begin0
	.quad	Lset570
Lset571 = Ltmp819-Lfunc_begin0
	.quad	Lset571
Lset572 = Ltmp893-Lfunc_begin0
	.quad	Lset572
Lset573 = Ltmp896-Lfunc_begin0
	.quad	Lset573
Lset574 = Ltmp951-Lfunc_begin0
	.quad	Lset574
Lset575 = Ltmp954-Lfunc_begin0
	.quad	Lset575
Lset576 = Ltmp971-Lfunc_begin0
	.quad	Lset576
Lset577 = Ltmp975-Lfunc_begin0
	.quad	Lset577
Lset578 = Ltmp1048-Lfunc_begin0
	.quad	Lset578
Lset579 = Ltmp1051-Lfunc_begin0
	.quad	Lset579
Lset580 = Ltmp1125-Lfunc_begin0
	.quad	Lset580
Lset581 = Ltmp1127-Lfunc_begin0
	.quad	Lset581
Lset582 = Ltmp1201-Lfunc_begin0
	.quad	Lset582
Lset583 = Ltmp1203-Lfunc_begin0
	.quad	Lset583
Lset584 = Ltmp1277-Lfunc_begin0
	.quad	Lset584
	.quad	0
	.quad	0
Ldebug_ranges3:
Lset585 = Ltmp45-Lfunc_begin0
	.quad	Lset585
Lset586 = Ltmp122-Lfunc_begin0
	.quad	Lset586
Lset587 = Ltmp125-Lfunc_begin0
	.quad	Lset587
Lset588 = Ltmp199-Lfunc_begin0
	.quad	Lset588
Lset589 = Ltmp201-Lfunc_begin0
	.quad	Lset589
Lset590 = Ltmp275-Lfunc_begin0
	.quad	Lset590
Lset591 = Ltmp277-Lfunc_begin0
	.quad	Lset591
Lset592 = Ltmp334-Lfunc_begin0
	.quad	Lset592
Lset593 = Ltmp336-Lfunc_begin0
	.quad	Lset593
Lset594 = Ltmp353-Lfunc_begin0
	.quad	Lset594
Lset595 = Ltmp357-Lfunc_begin0
	.quad	Lset595
Lset596 = Ltmp430-Lfunc_begin0
	.quad	Lset596
Lset597 = Ltmp433-Lfunc_begin0
	.quad	Lset597
Lset598 = Ltmp507-Lfunc_begin0
	.quad	Lset598
Lset599 = Ltmp509-Lfunc_begin0
	.quad	Lset599
Lset600 = Ltmp583-Lfunc_begin0
	.quad	Lset600
Lset601 = Ltmp585-Lfunc_begin0
	.quad	Lset601
Lset602 = Ltmp641-Lfunc_begin0
	.quad	Lset602
Lset603 = Ltmp643-Lfunc_begin0
	.quad	Lset603
Lset604 = Ltmp660-Lfunc_begin0
	.quad	Lset604
Lset605 = Ltmp664-Lfunc_begin0
	.quad	Lset605
Lset606 = Ltmp738-Lfunc_begin0
	.quad	Lset606
Lset607 = Ltmp742-Lfunc_begin0
	.quad	Lset607
Lset608 = Ltmp816-Lfunc_begin0
	.quad	Lset608
Lset609 = Ltmp819-Lfunc_begin0
	.quad	Lset609
Lset610 = Ltmp893-Lfunc_begin0
	.quad	Lset610
Lset611 = Ltmp896-Lfunc_begin0
	.quad	Lset611
Lset612 = Ltmp951-Lfunc_begin0
	.quad	Lset612
Lset613 = Ltmp954-Lfunc_begin0
	.quad	Lset613
Lset614 = Ltmp971-Lfunc_begin0
	.quad	Lset614
Lset615 = Ltmp975-Lfunc_begin0
	.quad	Lset615
Lset616 = Ltmp1048-Lfunc_begin0
	.quad	Lset616
Lset617 = Ltmp1051-Lfunc_begin0
	.quad	Lset617
Lset618 = Ltmp1125-Lfunc_begin0
	.quad	Lset618
Lset619 = Ltmp1127-Lfunc_begin0
	.quad	Lset619
Lset620 = Ltmp1201-Lfunc_begin0
	.quad	Lset620
Lset621 = Ltmp1203-Lfunc_begin0
	.quad	Lset621
Lset622 = Ltmp1277-Lfunc_begin0
	.quad	Lset622
	.quad	0
	.quad	0
Ldebug_ranges4:
Lset623 = Ltmp35-Lfunc_begin0
	.quad	Lset623
Lset624 = Ltmp334-Lfunc_begin0
	.quad	Lset624
Lset625 = Ltmp336-Lfunc_begin0
	.quad	Lset625
Lset626 = Ltmp641-Lfunc_begin0
	.quad	Lset626
Lset627 = Ltmp643-Lfunc_begin0
	.quad	Lset627
Lset628 = Ltmp951-Lfunc_begin0
	.quad	Lset628
Lset629 = Ltmp954-Lfunc_begin0
	.quad	Lset629
Lset630 = Ltmp1277-Lfunc_begin0
	.quad	Lset630
	.quad	0
	.quad	0
Ldebug_ranges5:
Lset631 = Ltmp35-Lfunc_begin0
	.quad	Lset631
Lset632 = Ltmp334-Lfunc_begin0
	.quad	Lset632
Lset633 = Ltmp336-Lfunc_begin0
	.quad	Lset633
Lset634 = Ltmp641-Lfunc_begin0
	.quad	Lset634
Lset635 = Ltmp643-Lfunc_begin0
	.quad	Lset635
Lset636 = Ltmp951-Lfunc_begin0
	.quad	Lset636
Lset637 = Ltmp954-Lfunc_begin0
	.quad	Lset637
Lset638 = Ltmp1277-Lfunc_begin0
	.quad	Lset638
	.quad	0
	.quad	0
Ldebug_ranges6:
Lset639 = Ltmp35-Lfunc_begin0
	.quad	Lset639
Lset640 = Ltmp334-Lfunc_begin0
	.quad	Lset640
Lset641 = Ltmp336-Lfunc_begin0
	.quad	Lset641
Lset642 = Ltmp641-Lfunc_begin0
	.quad	Lset642
Lset643 = Ltmp643-Lfunc_begin0
	.quad	Lset643
Lset644 = Ltmp951-Lfunc_begin0
	.quad	Lset644
Lset645 = Ltmp954-Lfunc_begin0
	.quad	Lset645
Lset646 = Ltmp1277-Lfunc_begin0
	.quad	Lset646
	.quad	0
	.quad	0
Ldebug_ranges7:
Lset647 = Ltmp1288-Lfunc_begin0
	.quad	Lset647
Lset648 = Ltmp1299-Lfunc_begin0
	.quad	Lset648
Lset649 = Ltmp1324-Lfunc_begin0
	.quad	Lset649
Lset650 = Ltmp1325-Lfunc_begin0
	.quad	Lset650
	.quad	0
	.quad	0
Ldebug_ranges8:
Lset651 = Ltmp1283-Lfunc_begin0
	.quad	Lset651
Lset652 = Ltmp1321-Lfunc_begin0
	.quad	Lset652
Lset653 = Ltmp1324-Lfunc_begin0
	.quad	Lset653
Lset654 = Ltmp1325-Lfunc_begin0
	.quad	Lset654
	.quad	0
	.quad	0
Ldebug_ranges9:
Lset655 = Ltmp1439-Lfunc_begin0
	.quad	Lset655
Lset656 = Ltmp1446-Lfunc_begin0
	.quad	Lset656
Lset657 = Ltmp1453-Lfunc_begin0
	.quad	Lset657
Lset658 = Ltmp1458-Lfunc_begin0
	.quad	Lset658
	.quad	0
	.quad	0
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	6                       ## Header Bucket Count
	.long	6                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	1                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	3                       ## Bucket 4
	.long	5                       ## Bucket 5
	.long	-145321534              ## Hash in Bucket 0
	.long	1428652472              ## Hash in Bucket 2
	.long	1862644490              ## Hash in Bucket 2
	.long	2090499946              ## Hash in Bucket 4
	.long	-435471924              ## Hash in Bucket 4
	.long	-255110267              ## Hash in Bucket 5
	.long	LNames5-Lnames_begin    ## Offset in Bucket 0
	.long	LNames1-Lnames_begin    ## Offset in Bucket 2
	.long	LNames2-Lnames_begin    ## Offset in Bucket 2
	.long	LNames3-Lnames_begin    ## Offset in Bucket 4
	.long	LNames4-Lnames_begin    ## Offset in Bucket 4
	.long	LNames0-Lnames_begin    ## Offset in Bucket 5
LNames5:
	.long	451                     ## initialize_generation
	.long	1                       ## Num DIEs
	.long	1683
	.long	0
LNames1:
	.long	300                     ## FastRand
	.long	3                       ## Num DIEs
	.long	871
	.long	1019
	.long	1270
	.long	0
LNames2:
	.long	435                     ## pthread_handler
	.long	1                       ## Num DIEs
	.long	1397
	.long	0
LNames3:
	.long	473                     ## main
	.long	1                       ## Num DIEs
	.long	1934
	.long	0
LNames4:
	.long	287                     ## InitFastRand
	.long	1                       ## Num DIEs
	.long	333
	.long	0
LNames0:
	.long	415                     ## progress_generation
	.long	1                       ## Num DIEs
	.long	687
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	11                      ## Header Bucket Count
	.long	22                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	2                       ## Bucket 1
	.long	4                       ## Bucket 2
	.long	8                       ## Bucket 3
	.long	11                      ## Bucket 4
	.long	13                      ## Bucket 5
	.long	14                      ## Bucket 6
	.long	15                      ## Bucket 7
	.long	17                      ## Bucket 8
	.long	-1                      ## Bucket 9
	.long	20                      ## Bucket 10
	.long	151393451               ## Hash in Bucket 0
	.long	2090147939              ## Hash in Bucket 0
	.long	789719536               ## Hash in Bucket 1
	.long	-1267332080             ## Hash in Bucket 1
	.long	1950534918              ## Hash in Bucket 2
	.long	-626934871              ## Hash in Bucket 2
	.long	-579622408              ## Hash in Bucket 2
	.long	-328085111              ## Hash in Bucket 2
	.long	-328087772              ## Hash in Bucket 3
	.long	-328085099              ## Hash in Bucket 3
	.long	-243996567              ## Hash in Bucket 3
	.long	-1880351968             ## Hash in Bucket 4
	.long	-104093792              ## Hash in Bucket 4
	.long	567385087               ## Hash in Bucket 5
	.long	193495088               ## Hash in Bucket 6
	.long	2047239828              ## Hash in Bucket 7
	.long	-69895251               ## Hash in Bucket 7
	.long	274284733               ## Hash in Bucket 8
	.long	-1304652851             ## Hash in Bucket 8
	.long	-503405833              ## Hash in Bucket 8
	.long	878862258               ## Hash in Bucket 10
	.long	-1308701839             ## Hash in Bucket 10
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes20-Ltypes_begin   ## Offset in Bucket 0
	.long	Ltypes7-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes10-Ltypes_begin   ## Offset in Bucket 1
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes14-Ltypes_begin   ## Offset in Bucket 2
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes21-Ltypes_begin   ## Offset in Bucket 3
	.long	Ltypes12-Ltypes_begin   ## Offset in Bucket 3
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 3
	.long	Ltypes19-Ltypes_begin   ## Offset in Bucket 4
	.long	Ltypes18-Ltypes_begin   ## Offset in Bucket 4
	.long	Ltypes17-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes8-Ltypes_begin    ## Offset in Bucket 6
	.long	Ltypes11-Ltypes_begin   ## Offset in Bucket 7
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 7
	.long	Ltypes16-Ltypes_begin   ## Offset in Bucket 8
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 8
	.long	Ltypes13-Ltypes_begin   ## Offset in Bucket 8
	.long	Ltypes9-Ltypes_begin    ## Offset in Bucket 10
	.long	Ltypes15-Ltypes_begin   ## Offset in Bucket 10
Ltypes3:
	.long	320                     ## fastrand_t
	.long	1                       ## Num DIEs
	.long	594
	.short	19
	.byte	0
	.long	0
Ltypes20:
	.long	592                     ## char
	.long	1                       ## Num DIEs
	.long	2311
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	480                     ## uint8_t
	.long	1                       ## Num DIEs
	.long	2281
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	220                     ## long long int
	.long	1                       ## Num DIEs
	.long	238
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	853                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	2432
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	83                      ## threadinfo
	.long	1                       ## Num DIEs
	.long	47
	.short	19
	.byte	0
	.long	0
Ltypes14:
	.long	311                     ## fastrand
	.long	1                       ## Num DIEs
	.long	583
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	273                     ## __v4si
	.long	1                       ## Num DIEs
	.long	287
	.short	22
	.byte	0
	.long	0
Ltypes21:
	.long	243                     ## __v2du
	.long	1                       ## Num DIEs
	.long	257
	.short	22
	.byte	0
	.long	0
Ltypes12:
	.long	280                     ## __v4su
	.long	1                       ## Num DIEs
	.long	310
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	745                     ## __darwin_time_t
	.long	1                       ## Num DIEs
	.long	2370
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	761                     ## long int
	.long	1                       ## Num DIEs
	.long	2381
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	488                     ## unsigned char
	.long	1                       ## Num DIEs
	.long	2292
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	729                     ## timespec
	.long	1                       ## Num DIEs
	.long	2337
	.short	19
	.byte	0
	.long	0
Ltypes8:
	.long	104                     ## int
	.long	1                       ## Num DIEs
	.long	164
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	212                     ## __m128i
	.long	1                       ## Num DIEs
	.long	215
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	250                     ## long long unsigned int
	.long	1                       ## Num DIEs
	.long	280
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	196                     ## sem_t
	.long	1                       ## Num DIEs
	.long	193
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	165                     ## unsigned int
	.long	1                       ## Num DIEs
	.long	176
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	816                     ## timeval
	.long	1                       ## Num DIEs
	.long	2388
	.short	19
	.byte	0
	.long	0
Ltypes9:
	.long	617                     ## unsigned short
	.long	1                       ## Num DIEs
	.long	2318
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	832                     ## __darwin_suseconds_t
	.long	1                       ## Num DIEs
	.long	2421
	.short	22
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
