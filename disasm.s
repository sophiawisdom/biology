
./test_rand_speed:	file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
__text:
100000d10:	55 	push	rbp
100000d11:	48 89 e5 	mov	rbp, rsp
100000d14:	41 57 	push	r15
100000d16:	41 56 	push	r14
100000d18:	41 55 	push	r13
100000d1a:	41 54 	push	r12
100000d1c:	53 	push	rbx
100000d1d:	48 83 ec 28 	sub	rsp, 40
100000d21:	48 8b 7e 08 	mov	rdi, qword ptr [rsi + 8]
100000d25:	48 8d 35 a4 01 00 00 	lea	rsi, [rip + 420]
100000d2c:	ba 06 00 00 00 	mov	edx, 6
100000d31:	e8 46 01 00 00 	call	326
100000d36:	85 c0 	test	eax, eax
100000d38:	74 11 	je	17 <_main+0x3B>
100000d3a:	48 8d 3d 4f 02 00 00 	lea	rdi, [rip + 591]
100000d41:	e8 24 01 00 00 	call	292
100000d46:	45 31 f6 	xor	r14d, r14d
100000d49:	eb 0f 	jmp	15 <_main+0x4A>
100000d4b:	48 8d 3d 4b 02 00 00 	lea	rdi, [rip + 587]
100000d52:	e8 13 01 00 00 	call	275
100000d57:	41 b6 01 	mov	r14b, 1
100000d5a:	31 db 	xor	ebx, ebx
100000d5c:	48 8d 7d b8 	lea	rdi, [rbp - 72]
100000d60:	31 f6 	xor	esi, esi
100000d62:	e8 f7 00 00 00 	call	247
100000d67:	4c 8b 65 b8 	mov	r12, qword ptr [rbp - 72]
100000d6b:	4c 63 7d c0 	movsxd	r15, dword ptr [rbp - 64]
100000d6f:	e8 02 01 00 00 	call	258
100000d74:	45 84 f6 	test	r14b, r14b
100000d77:	74 37 	je	55 <_main+0xA0>
100000d79:	45 31 ed 	xor	r13d, r13d
100000d7c:	0f 1f 40 00 	nop	dword ptr [rax]
100000d80:	bb 64 00 00 00 	mov	ebx, 100
100000d85:	66 66 2e 0f 1f 84 00 00 00 00 00 	nop	word ptr cs:[rax + rax]
100000d90:	e8 db 00 00 00 	call	219
100000d95:	ff cb 	dec	ebx
100000d97:	75 f7 	jne	-9 <_main+0x80>
100000d99:	41 ff c5 	inc	r13d
100000d9c:	41 81 fd 10 27 00 00 	cmp	r13d, 10000
100000da3:	75 db 	jne	-37 <_main+0x70>
100000da5:	eb 46 	jmp	70 <_main+0xDD>
100000da7:	66 0f 1f 84 00 00 00 00 00 	nop	word ptr [rax + rax]
100000db0:	b8 64 00 00 00 	mov	eax, 100
100000db5:	66 66 2e 0f 1f 84 00 00 00 00 00 	nop	word ptr cs:[rax + rax]
100000dc0:	0f c7 f1 	rdrand	ecx
100000dc3:	0f c7 f1 	rdrand	ecx
100000dc6:	0f c7 f1 	rdrand	ecx
100000dc9:	0f c7 f1 	rdrand	ecx
100000dcc:	0f c7 f1 	rdrand	ecx
100000dcf:	0f c7 f1 	rdrand	ecx
100000dd2:	0f c7 f1 	rdrand	ecx
100000dd5:	0f c7 f1 	rdrand	ecx
100000dd8:	0f c7 f1 	rdrand	ecx
100000ddb:	0f c7 f1 	rdrand	ecx
100000dde:	83 c0 f6 	add	eax, -10
100000de1:	75 dd 	jne	-35 <_main+0xB0>
100000de3:	ff c3 	inc	ebx
100000de5:	81 fb 10 27 00 00 	cmp	ebx, 10000
100000deb:	75 c3 	jne	-61 <_main+0xA0>
100000ded:	48 8d 7d c8 	lea	rdi, [rbp - 56]
100000df1:	31 f6 	xor	esi, esi
100000df3:	e8 66 00 00 00 	call	102
100000df8:	48 8b 45 c8 	mov	rax, qword ptr [rbp - 56]
100000dfc:	48 63 5d d0 	movsxd	rbx, dword ptr [rbp - 48]
100000e00:	4c 29 e0 	sub	rax, r12
100000e03:	48 69 c0 40 42 0f 00 	imul	rax, rax, 1000000
100000e0a:	4c 29 fb 	sub	rbx, r15
100000e0d:	48 01 c3 	add	rbx, rax
100000e10:	45 84 f6 	test	r14b, r14b
100000e13:	74 09 	je	9 <_main+0x10E>
100000e15:	48 8d 3d bb 00 00 00 	lea	rdi, [rip + 187]
100000e1c:	eb 07 	jmp	7 <_main+0x115>
100000e1e:	48 8d 3d f9 00 00 00 	lea	rdi, [rip + 249]
100000e25:	31 c0 	xor	eax, eax
100000e27:	48 89 de 	mov	rsi, rbx
100000e2a:	e8 35 00 00 00 	call	53
100000e2f:	b8 00 09 3d 00 	mov	eax, 4000000
100000e34:	31 d2 	xor	edx, edx
100000e36:	48 f7 f3 	div	rbx
100000e39:	48 89 c1 	mov	rcx, rax
100000e3c:	48 8d 3d 20 01 00 00 	lea	rdi, [rip + 288]
100000e43:	31 c0 	xor	eax, eax
100000e45:	48 89 ce 	mov	rsi, rcx
100000e48:	e8 17 00 00 00 	call	23
100000e4d:	31 c0 	xor	eax, eax
100000e4f:	48 83 c4 28 	add	rsp, 40
100000e53:	5b 	pop	rbx
100000e54:	41 5c 	pop	r12
100000e56:	41 5d 	pop	r13
100000e58:	41 5e 	pop	r14
100000e5a:	41 5f 	pop	r15
100000e5c:	5d 	pop	rbp
100000e5d:	c3 	ret

_main:
100000d10:	55 	push	rbp
100000d11:	48 89 e5 	mov	rbp, rsp
100000d14:	41 57 	push	r15
100000d16:	41 56 	push	r14
100000d18:	41 55 	push	r13
100000d1a:	41 54 	push	r12
100000d1c:	53 	push	rbx
100000d1d:	48 83 ec 28 	sub	rsp, 40
100000d21:	48 8b 7e 08 	mov	rdi, qword ptr [rsi + 8]
100000d25:	48 8d 35 a4 01 00 00 	lea	rsi, [rip + 420]
100000d2c:	ba 06 00 00 00 	mov	edx, 6
100000d31:	e8 46 01 00 00 	call	326
100000d36:	85 c0 	test	eax, eax
100000d38:	74 11 	je	17 <_main+0x3B>
100000d3a:	48 8d 3d 4f 02 00 00 	lea	rdi, [rip + 591]
100000d41:	e8 24 01 00 00 	call	292
100000d46:	45 31 f6 	xor	r14d, r14d
100000d49:	eb 0f 	jmp	15 <_main+0x4A>
100000d4b:	48 8d 3d 4b 02 00 00 	lea	rdi, [rip + 587]
100000d52:	e8 13 01 00 00 	call	275
100000d57:	41 b6 01 	mov	r14b, 1
100000d5a:	31 db 	xor	ebx, ebx
100000d5c:	48 8d 7d b8 	lea	rdi, [rbp - 72]
100000d60:	31 f6 	xor	esi, esi
100000d62:	e8 f7 00 00 00 	call	247
100000d67:	4c 8b 65 b8 	mov	r12, qword ptr [rbp - 72]
100000d6b:	4c 63 7d c0 	movsxd	r15, dword ptr [rbp - 64]
100000d6f:	e8 02 01 00 00 	call	258
100000d74:	45 84 f6 	test	r14b, r14b
100000d77:	74 37 	je	55 <_main+0xA0>
100000d79:	45 31 ed 	xor	r13d, r13d
100000d7c:	0f 1f 40 00 	nop	dword ptr [rax]
100000d80:	bb 64 00 00 00 	mov	ebx, 100
100000d85:	66 66 2e 0f 1f 84 00 00 00 00 00 	nop	word ptr cs:[rax + rax]
100000d90:	e8 db 00 00 00 	call	219
100000d95:	ff cb 	dec	ebx
100000d97:	75 f7 	jne	-9 <_main+0x80>
100000d99:	41 ff c5 	inc	r13d
100000d9c:	41 81 fd 10 27 00 00 	cmp	r13d, 10000
100000da3:	75 db 	jne	-37 <_main+0x70>
100000da5:	eb 46 	jmp	70 <_main+0xDD>
100000da7:	66 0f 1f 84 00 00 00 00 00 	nop	word ptr [rax + rax]
100000db0:	b8 64 00 00 00 	mov	eax, 100
100000db5:	66 66 2e 0f 1f 84 00 00 00 00 00 	nop	word ptr cs:[rax + rax]
100000dc0:	0f c7 f1 	rdrand	ecx
100000dc3:	0f c7 f1 	rdrand	ecx
100000dc6:	0f c7 f1 	rdrand	ecx
100000dc9:	0f c7 f1 	rdrand	ecx
100000dcc:	0f c7 f1 	rdrand	ecx
100000dcf:	0f c7 f1 	rdrand	ecx
100000dd2:	0f c7 f1 	rdrand	ecx
100000dd5:	0f c7 f1 	rdrand	ecx
100000dd8:	0f c7 f1 	rdrand	ecx
100000ddb:	0f c7 f1 	rdrand	ecx
100000dde:	83 c0 f6 	add	eax, -10
100000de1:	75 dd 	jne	-35 <_main+0xB0>
100000de3:	ff c3 	inc	ebx
100000de5:	81 fb 10 27 00 00 	cmp	ebx, 10000
100000deb:	75 c3 	jne	-61 <_main+0xA0>
100000ded:	48 8d 7d c8 	lea	rdi, [rbp - 56]
100000df1:	31 f6 	xor	esi, esi
100000df3:	e8 66 00 00 00 	call	102
100000df8:	48 8b 45 c8 	mov	rax, qword ptr [rbp - 56]
100000dfc:	48 63 5d d0 	movsxd	rbx, dword ptr [rbp - 48]
100000e00:	4c 29 e0 	sub	rax, r12
100000e03:	48 69 c0 40 42 0f 00 	imul	rax, rax, 1000000
100000e0a:	4c 29 fb 	sub	rbx, r15
100000e0d:	48 01 c3 	add	rbx, rax
100000e10:	45 84 f6 	test	r14b, r14b
100000e13:	74 09 	je	9 <_main+0x10E>
100000e15:	48 8d 3d bb 00 00 00 	lea	rdi, [rip + 187]
100000e1c:	eb 07 	jmp	7 <_main+0x115>
100000e1e:	48 8d 3d f9 00 00 00 	lea	rdi, [rip + 249]
100000e25:	31 c0 	xor	eax, eax
100000e27:	48 89 de 	mov	rsi, rbx
100000e2a:	e8 35 00 00 00 	call	53
100000e2f:	b8 00 09 3d 00 	mov	eax, 4000000
100000e34:	31 d2 	xor	edx, edx
100000e36:	48 f7 f3 	div	rbx
100000e39:	48 89 c1 	mov	rcx, rax
100000e3c:	48 8d 3d 20 01 00 00 	lea	rdi, [rip + 288]
100000e43:	31 c0 	xor	eax, eax
100000e45:	48 89 ce 	mov	rsi, rcx
100000e48:	e8 17 00 00 00 	call	23
100000e4d:	31 c0 	xor	eax, eax
100000e4f:	48 83 c4 28 	add	rsp, 40
100000e53:	5b 	pop	rbx
100000e54:	41 5c 	pop	r12
100000e56:	41 5d 	pop	r13
100000e58:	41 5e 	pop	r14
100000e5a:	41 5f 	pop	r15
100000e5c:	5d 	pop	rbp
100000e5d:	c3 	ret
Disassembly of section __TEXT,__stubs:
__stubs:
100000e5e:	ff 25 ac 01 00 00 	jmp	qword ptr [rip + 428]
100000e64:	ff 25 ae 01 00 00 	jmp	qword ptr [rip + 430]
100000e6a:	ff 25 b0 01 00 00 	jmp	qword ptr [rip + 432]
100000e70:	ff 25 b2 01 00 00 	jmp	qword ptr [rip + 434]
100000e76:	ff 25 b4 01 00 00 	jmp	qword ptr [rip + 436]
100000e7c:	ff 25 b6 01 00 00 	jmp	qword ptr [rip + 438]
Disassembly of section __TEXT,__stub_helper:
__stub_helper:
100000e84:	4c 8d 1d 7d 01 00 00 	lea	r11, [rip + 381]
100000e8b:	41 53 	push	r11
100000e8d:	ff 25 6d 01 00 00 	jmp	qword ptr [rip + 365]
100000e93:	90 	nop
100000e94:	68 00 00 00 00 	push	0
100000e99:	e9 e6 ff ff ff 	jmp	-26 <__stub_helper>
100000e9e:	68 14 00 00 00 	push	20
100000ea3:	e9 dc ff ff ff 	jmp	-36 <__stub_helper>
100000ea8:	68 22 00 00 00 	push	34
100000ead:	e9 d2 ff ff ff 	jmp	-46 <__stub_helper>
100000eb2:	68 2e 00 00 00 	push	46
100000eb7:	e9 c8 ff ff ff 	jmp	-56 <__stub_helper>
100000ebc:	68 3c 00 00 00 	push	60
100000ec1:	e9 be ff ff ff 	jmp	-66 <__stub_helper>
100000ec6:	68 4c 00 00 00 	push	76
100000ecb:	e9 b4 ff ff ff 	jmp	-76 <__stub_helper>
