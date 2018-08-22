
test_rand_speed.o:	file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
__Z12InitFastRandv:
       0:	55 	pushq	%rbp
       1:	48 89 e5 	movq	%rsp, %rbp
       4:	48 83 ec 20 	subq	$32, %rsp
       8:	48 89 7d e8 	movq	%rdi, -24(%rbp)
       c:	c6 45 ff 00 	movb	$0, -1(%rbp)
      10:	80 7d ff 03 	cmpb	$3, -1(%rbp)
      14:	77 4e 	ja	78 <__Z12InitFastRandv+0x64>
      16:	0f b6 55 ff 	movzbl	-1(%rbp), %edx
      1a:	48 8b 45 e8 	movq	-24(%rbp), %rax
      1e:	48 63 d2 	movslq	%edx, %rdx
      21:	48 83 c2 08 	addq	$8, %rdx
      25:	c7 04 90 ff ff 00 00 	movl	$65535, (%rax,%rdx,4)
      2c:	0f b6 55 ff 	movzbl	-1(%rbp), %edx
      30:	48 8b 45 e8 	movq	-24(%rbp), %rax
      34:	48 63 d2 	movslq	%edx, %rdx
      37:	48 83 c2 0c 	addq	$12, %rdx
      3b:	c7 04 90 50 46 00 00 	movl	$18000, (%rax,%rdx,4)
      42:	0f b6 55 ff 	movzbl	-1(%rbp), %edx
      46:	48 8b 45 e8 	movq	-24(%rbp), %rax
      4a:	48 63 d2 	movslq	%edx, %rdx
      4d:	48 83 c2 10 	addq	$16, %rdx
      51:	c7 04 90 b7 78 00 00 	movl	$30903, (%rax,%rdx,4)
      58:	0f b6 45 ff 	movzbl	-1(%rbp), %eax
      5c:	83 c0 01 	addl	$1, %eax
      5f:	88 45 ff 	movb	%al, -1(%rbp)
      62:	eb ac 	jmp	-84 <__Z12InitFastRandv+0x10>
      64:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0x69>
      69:	89 c2 	movl	%eax, %edx
      6b:	48 8b 45 e8 	movq	-24(%rbp), %rax
      6f:	89 10 	movl	%edx, (%rax)
      71:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0x76>
      76:	89 c2 	movl	%eax, %edx
      78:	48 8b 45 e8 	movq	-24(%rbp), %rax
      7c:	89 50 04 	movl	%edx, 4(%rax)
      7f:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0x84>
      84:	89 c2 	movl	%eax, %edx
      86:	48 8b 45 e8 	movq	-24(%rbp), %rax
      8a:	89 50 08 	movl	%edx, 8(%rax)
      8d:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0x92>
      92:	89 c2 	movl	%eax, %edx
      94:	48 8b 45 e8 	movq	-24(%rbp), %rax
      98:	89 50 0c 	movl	%edx, 12(%rax)
      9b:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0xa0>
      a0:	89 c2 	movl	%eax, %edx
      a2:	48 8b 45 e8 	movq	-24(%rbp), %rax
      a6:	89 50 10 	movl	%edx, 16(%rax)
      a9:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0xae>
      ae:	89 c2 	movl	%eax, %edx
      b0:	48 8b 45 e8 	movq	-24(%rbp), %rax
      b4:	89 50 14 	movl	%edx, 20(%rax)
      b7:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0xbc>
      bc:	89 c2 	movl	%eax, %edx
      be:	48 8b 45 e8 	movq	-24(%rbp), %rax
      c2:	89 50 18 	movl	%edx, 24(%rax)
      c5:	e8 00 00 00 00 	callq	0 <__Z12InitFastRandv+0xca>
      ca:	89 c2 	movl	%eax, %edx
      cc:	48 8b 45 e8 	movq	-24(%rbp), %rax
      d0:	89 50 1c 	movl	%edx, 28(%rax)
      d3:	90 	nop
      d4:	48 8b 45 e8 	movq	-24(%rbp), %rax
      d8:	c9 	leave
      d9:	c3 	retq

__ZL8FastRandP10fastrand_t:
      da:	55 	pushq	%rbp
      db:	48 89 e5 	movq	%rsp, %rbp
      de:	48 81 ec 88 02 00 00 	subq	$648, %rsp
      e5:	48 89 bd 08 fd ff ff 	movq	%rdi, -760(%rbp)
      ec:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
      f3:	48 89 85 18 fd ff ff 	movq	%rax, -744(%rbp)
      fa:	48 8b 85 18 fd ff ff 	movq	-744(%rbp), %rax
     101:	66 0f 6f 00 	movdqa	(%rax), %xmm0
     105:	0f 29 45 f0 	movaps	%xmm0, -16(%rbp)
     109:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     110:	48 83 c0 10 	addq	$16, %rax
     114:	48 89 85 20 fd ff ff 	movq	%rax, -736(%rbp)
     11b:	48 8b 85 20 fd ff ff 	movq	-736(%rbp), %rax
     122:	66 0f 6f 00 	movdqa	(%rax), %xmm0
     126:	0f 29 45 e0 	movaps	%xmm0, -32(%rbp)
     12a:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     131:	48 83 c0 20 	addq	$32, %rax
     135:	48 89 85 28 fd ff ff 	movq	%rax, -728(%rbp)
     13c:	48 8b 85 28 fd ff ff 	movq	-728(%rbp), %rax
     143:	66 0f 6f 00 	movdqa	(%rax), %xmm0
     147:	0f 29 45 d0 	movaps	%xmm0, -48(%rbp)
     14b:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     152:	48 83 c0 30 	addq	$48, %rax
     156:	48 89 85 30 fd ff ff 	movq	%rax, -720(%rbp)
     15d:	48 8b 85 30 fd ff ff 	movq	-720(%rbp), %rax
     164:	66 0f 6f 00 	movdqa	(%rax), %xmm0
     168:	0f 29 45 c0 	movaps	%xmm0, -64(%rbp)
     16c:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     173:	48 83 c0 40 	addq	$64, %rax
     177:	48 89 85 38 fd ff ff 	movq	%rax, -712(%rbp)
     17e:	48 8b 85 38 fd ff ff 	movq	-712(%rbp), %rax
     185:	66 0f 6f 00 	movdqa	(%rax), %xmm0
     189:	0f 29 45 b0 	movaps	%xmm0, -80(%rbp)
     18d:	66 0f 6f 45 f0 	movdqa	-16(%rbp), %xmm0
     192:	0f 29 85 50 fd ff ff 	movaps	%xmm0, -688(%rbp)
     199:	66 0f 6f 45 d0 	movdqa	-48(%rbp), %xmm0
     19e:	0f 29 85 40 fd ff ff 	movaps	%xmm0, -704(%rbp)
     1a5:	66 0f 6f 8d 50 fd ff ff 	movdqa	-688(%rbp), %xmm1
     1ad:	66 0f 6f 85 40 fd ff ff 	movdqa	-704(%rbp), %xmm0
     1b5:	66 0f db c1 	pand	%xmm1, %xmm0
     1b9:	0f 29 45 a0 	movaps	%xmm0, -96(%rbp)
     1bd:	66 0f 6f 45 f0 	movdqa	-16(%rbp), %xmm0
     1c2:	0f 29 85 70 fd ff ff 	movaps	%xmm0, -656(%rbp)
     1c9:	c7 85 6c fd ff ff 10 00 00 00 	movl	$16, -660(%rbp)
     1d3:	66 0f 6f 8d 70 fd ff ff 	movdqa	-656(%rbp), %xmm1
     1db:	66 0f 6e 85 6c fd ff ff 	movd	-660(%rbp), %xmm0
     1e3:	66 0f d2 c8 	psrld	%xmm0, %xmm1
     1e7:	66 0f 6f c1 	movdqa	%xmm1, %xmm0
     1eb:	0f 29 45 90 	movaps	%xmm0, -112(%rbp)
     1ef:	66 0f 6f 45 a0 	movdqa	-96(%rbp), %xmm0
     1f4:	0f 29 85 90 fd ff ff 	movaps	%xmm0, -624(%rbp)
     1fb:	66 0f 6f 45 c0 	movdqa	-64(%rbp), %xmm0
     200:	0f 29 85 80 fd ff ff 	movaps	%xmm0, -640(%rbp)
     207:	66 0f 6f 8d 90 fd ff ff 	movdqa	-624(%rbp), %xmm1
     20f:	66 0f 6f 85 80 fd ff ff 	movdqa	-640(%rbp), %xmm0
     217:	66 0f 38 40 c1 	pmulld	%xmm1, %xmm0
     21c:	0f 29 45 80 	movaps	%xmm0, -128(%rbp)
     220:	66 0f 6f 45 80 	movdqa	-128(%rbp), %xmm0
     225:	0f 29 85 b0 fd ff ff 	movaps	%xmm0, -592(%rbp)
     22c:	66 0f 6f 45 90 	movdqa	-112(%rbp), %xmm0
     231:	0f 29 85 a0 fd ff ff 	movaps	%xmm0, -608(%rbp)
     238:	66 0f 6f 8d b0 fd ff ff 	movdqa	-592(%rbp), %xmm1
     240:	66 0f 6f 85 a0 fd ff ff 	movdqa	-608(%rbp), %xmm0
     248:	66 0f fe c1 	paddd	%xmm1, %xmm0
     24c:	0f 29 85 70 ff ff ff 	movaps	%xmm0, -144(%rbp)
     253:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     25a:	48 89 85 d8 fd ff ff 	movq	%rax, -552(%rbp)
     261:	66 0f 6f 85 70 ff ff ff 	movdqa	-144(%rbp), %xmm0
     269:	0f 29 85 c0 fd ff ff 	movaps	%xmm0, -576(%rbp)
     270:	48 8b 85 d8 fd ff ff 	movq	-552(%rbp), %rax
     277:	66 0f 6f 85 c0 fd ff ff 	movdqa	-576(%rbp), %xmm0
     27f:	0f 29 00 	movaps	%xmm0, (%rax)
     282:	66 0f 6f 45 e0 	movdqa	-32(%rbp), %xmm0
     287:	0f 29 85 f0 fd ff ff 	movaps	%xmm0, -528(%rbp)
     28e:	66 0f 6f 45 d0 	movdqa	-48(%rbp), %xmm0
     293:	0f 29 85 e0 fd ff ff 	movaps	%xmm0, -544(%rbp)
     29a:	66 0f 6f 8d f0 fd ff ff 	movdqa	-528(%rbp), %xmm1
     2a2:	66 0f 6f 85 e0 fd ff ff 	movdqa	-544(%rbp), %xmm0
     2aa:	66 0f db c1 	pand	%xmm1, %xmm0
     2ae:	0f 29 85 60 ff ff ff 	movaps	%xmm0, -160(%rbp)
     2b5:	66 0f 6f 45 e0 	movdqa	-32(%rbp), %xmm0
     2ba:	0f 29 85 10 fe ff ff 	movaps	%xmm0, -496(%rbp)
     2c1:	c7 85 0c fe ff ff 10 00 00 00 	movl	$16, -500(%rbp)
     2cb:	66 0f 6f 8d 10 fe ff ff 	movdqa	-496(%rbp), %xmm1
     2d3:	66 0f 6e 85 0c fe ff ff 	movd	-500(%rbp), %xmm0
     2db:	66 0f d2 c8 	psrld	%xmm0, %xmm1
     2df:	66 0f 6f c1 	movdqa	%xmm1, %xmm0
     2e3:	0f 29 85 50 ff ff ff 	movaps	%xmm0, -176(%rbp)
     2ea:	66 0f 6f 85 60 ff ff ff 	movdqa	-160(%rbp), %xmm0
     2f2:	0f 29 85 30 fe ff ff 	movaps	%xmm0, -464(%rbp)
     2f9:	66 0f 6f 45 b0 	movdqa	-80(%rbp), %xmm0
     2fe:	0f 29 85 20 fe ff ff 	movaps	%xmm0, -480(%rbp)
     305:	66 0f 6f 8d 30 fe ff ff 	movdqa	-464(%rbp), %xmm1
     30d:	66 0f 6f 85 20 fe ff ff 	movdqa	-480(%rbp), %xmm0
     315:	66 0f 38 40 c1 	pmulld	%xmm1, %xmm0
     31a:	0f 29 85 40 ff ff ff 	movaps	%xmm0, -192(%rbp)
     321:	66 0f 6f 85 40 ff ff ff 	movdqa	-192(%rbp), %xmm0
     329:	0f 29 85 50 fe ff ff 	movaps	%xmm0, -432(%rbp)
     330:	66 0f 6f 85 50 ff ff ff 	movdqa	-176(%rbp), %xmm0
     338:	0f 29 85 40 fe ff ff 	movaps	%xmm0, -448(%rbp)
     33f:	66 0f 6f 8d 50 fe ff ff 	movdqa	-432(%rbp), %xmm1
     347:	66 0f 6f 85 40 fe ff ff 	movdqa	-448(%rbp), %xmm0
     34f:	66 0f fe c1 	paddd	%xmm1, %xmm0
     353:	0f 29 85 30 ff ff ff 	movaps	%xmm0, -208(%rbp)
     35a:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     361:	48 83 c0 10 	addq	$16, %rax
     365:	48 89 85 78 fe ff ff 	movq	%rax, -392(%rbp)
     36c:	66 0f 6f 85 30 ff ff ff 	movdqa	-208(%rbp), %xmm0
     374:	0f 29 85 60 fe ff ff 	movaps	%xmm0, -416(%rbp)
     37b:	48 8b 85 78 fe ff ff 	movq	-392(%rbp), %rax
     382:	66 0f 6f 85 60 fe ff ff 	movdqa	-416(%rbp), %xmm0
     38a:	0f 29 00 	movaps	%xmm0, (%rax)
     38d:	66 0f 6f 85 30 ff ff ff 	movdqa	-208(%rbp), %xmm0
     395:	0f 29 85 90 fe ff ff 	movaps	%xmm0, -368(%rbp)
     39c:	66 0f 6f 45 d0 	movdqa	-48(%rbp), %xmm0
     3a1:	0f 29 85 80 fe ff ff 	movaps	%xmm0, -384(%rbp)
     3a8:	66 0f 6f 8d 90 fe ff ff 	movdqa	-368(%rbp), %xmm1
     3b0:	66 0f 6f 85 80 fe ff ff 	movdqa	-384(%rbp), %xmm0
     3b8:	66 0f db c1 	pand	%xmm1, %xmm0
     3bc:	0f 29 85 20 ff ff ff 	movaps	%xmm0, -224(%rbp)
     3c3:	66 0f 6f 85 70 ff ff ff 	movdqa	-144(%rbp), %xmm0
     3cb:	0f 29 85 b0 fe ff ff 	movaps	%xmm0, -336(%rbp)
     3d2:	c7 85 ac fe ff ff 10 00 00 00 	movl	$16, -340(%rbp)
     3dc:	66 0f 6f 8d b0 fe ff ff 	movdqa	-336(%rbp), %xmm1
     3e4:	66 0f 6e 85 ac fe ff ff 	movd	-340(%rbp), %xmm0
     3ec:	66 0f f2 c8 	pslld	%xmm0, %xmm1
     3f0:	66 0f 6f c1 	movdqa	%xmm1, %xmm0
     3f4:	0f 29 85 10 ff ff ff 	movaps	%xmm0, -240(%rbp)
     3fb:	66 0f 6f 85 10 ff ff ff 	movdqa	-240(%rbp), %xmm0
     403:	0f 29 85 d0 fe ff ff 	movaps	%xmm0, -304(%rbp)
     40a:	66 0f 6f 85 20 ff ff ff 	movdqa	-224(%rbp), %xmm0
     412:	0f 29 85 c0 fe ff ff 	movaps	%xmm0, -320(%rbp)
     419:	66 0f 6f 8d d0 fe ff ff 	movdqa	-304(%rbp), %xmm1
     421:	66 0f 6f 85 c0 fe ff ff 	movdqa	-320(%rbp), %xmm0
     429:	66 0f fe c1 	paddd	%xmm1, %xmm0
     42d:	0f 29 85 00 ff ff ff 	movaps	%xmm0, -256(%rbp)
     434:	48 8b 85 08 fd ff ff 	movq	-760(%rbp), %rax
     43b:	48 83 c0 50 	addq	$80, %rax
     43f:	48 89 85 f8 fe ff ff 	movq	%rax, -264(%rbp)
     446:	66 0f 6f 85 00 ff ff ff 	movdqa	-256(%rbp), %xmm0
     44e:	0f 29 85 e0 fe ff ff 	movaps	%xmm0, -288(%rbp)
     455:	48 8b 85 f8 fe ff ff 	movq	-264(%rbp), %rax
     45c:	66 0f 6f 85 e0 fe ff ff 	movdqa	-288(%rbp), %xmm0
     464:	0f 29 00 	movaps	%xmm0, (%rax)
     467:	90 	nop
     468:	c9 	leave
     469:	c3 	retq

_main:
     46a:	55 	pushq	%rbp
     46b:	48 89 e5 	movq	%rsp, %rbp
     46e:	48 81 ec e0 00 00 00 	subq	$224, %rsp
     475:	89 bd 2c ff ff ff 	movl	%edi, -212(%rbp)
     47b:	48 89 b5 20 ff ff ff 	movq	%rsi, -224(%rbp)
     482:	48 8d 45 a0 	leaq	-96(%rbp), %rax
     486:	be 00 00 00 00 	movl	$0, %esi
     48b:	48 89 c7 	movq	%rax, %rdi
     48e:	e8 00 00 00 00 	callq	0 <_main+0x29>
     493:	48 8b 45 a0 	movq	-96(%rbp), %rax
     497:	48 69 d0 40 42 0f 00 	imulq	$1000000, %rax, %rdx
     49e:	8b 45 a8 	movl	-88(%rbp), %eax
     4a1:	48 98 	cltq
     4a3:	48 01 d0 	addq	%rdx, %rax
     4a6:	48 89 45 e0 	movq	%rax, -32(%rbp)
     4aa:	bf 00 c2 eb 0b 	movl	$200000000, %edi
     4af:	e8 00 00 00 00 	callq	0 <_main+0x4a>
     4b4:	48 89 45 d8 	movq	%rax, -40(%rbp)
     4b8:	48 8b 45 d8 	movq	-40(%rbp), %rax
     4bc:	48 89 45 d0 	movq	%rax, -48(%rbp)
     4c0:	48 8b 45 d8 	movq	-40(%rbp), %rax
     4c4:	48 89 45 c8 	movq	%rax, -56(%rbp)
     4c8:	c7 45 fc 00 00 00 00 	movl	$0, -4(%rbp)
     4cf:	c7 45 f8 00 00 00 00 	movl	$0, -8(%rbp)
     4d6:	81 7d f8 e0 f5 05 00 	cmpl	$390624, -8(%rbp)
     4dd:	7f 40 	jg	64 <_main+0xb5>
     4df:	c7 45 f4 00 00 00 00 	movl	$0, -12(%rbp)
     4e6:	83 7d f4 3f 	cmpl	$63, -12(%rbp)
     4ea:	7f 2d 	jg	45 <_main+0xaf>
     4ec:	8b 45 fc 	movl	-4(%rbp), %eax
     4ef:	48 98 	cltq
     4f1:	48 8d 14 c5 00 00 00 00 	leaq	(,%rax,8), %rdx
     4f9:	48 8b 45 d0 	movq	-48(%rbp), %rax
     4fd:	48 01 d0 	addq	%rdx, %rax
     500:	48 89 45 b8 	movq	%rax, -72(%rbp)
     504:	48 8b 55 b8 	movq	-72(%rbp), %rdx
     508:	48 0f c7 f0 	rdrandq	%rax
     50c:	48 89 02 	movq	%rax, (%rdx)
     50f:	83 45 fc 01 	addl	$1, -4(%rbp)
     513:	83 45 f4 01 	addl	$1, -12(%rbp)
     517:	eb cd 	jmp	-51 <_main+0x7c>
     519:	83 45 f8 01 	addl	$1, -8(%rbp)
     51d:	eb b7 	jmp	-73 <_main+0x6c>
     51f:	48 8d 45 90 	leaq	-112(%rbp), %rax
     523:	be 00 00 00 00 	movl	$0, %esi
     528:	48 89 c7 	movq	%rax, %rdi
     52b:	e8 00 00 00 00 	callq	0 <_main+0xc6>
     530:	48 8b 45 90 	movq	-112(%rbp), %rax
     534:	48 69 d0 40 42 0f 00 	imulq	$1000000, %rax, %rdx
     53b:	8b 45 98 	movl	-104(%rbp), %eax
     53e:	48 98 	cltq
     540:	48 01 d0 	addq	%rdx, %rax
     543:	48 89 45 c0 	movq	%rax, -64(%rbp)
     547:	48 8b 45 c0 	movq	-64(%rbp), %rax
     54b:	48 2b 45 e0 	subq	-32(%rbp), %rax
     54f:	48 89 c6 	movq	%rax, %rsi
     552:	48 8d 3d 00 00 00 00 	leaq	(%rip), %rdi
     559:	b8 00 00 00 00 	movl	$0, %eax
     55e:	e8 00 00 00 00 	callq	0 <_main+0xf9>
     563:	48 8b 45 c0 	movq	-64(%rbp), %rax
     567:	48 2b 45 e0 	subq	-32(%rbp), %rax
     56b:	48 89 c1 	movq	%rax, %rcx
     56e:	b8 00 c2 eb 0b 	movl	$200000000, %eax
     573:	ba 00 00 00 00 	movl	$0, %edx
     578:	48 f7 f1 	divq	%rcx
     57b:	48 89 c6 	movq	%rax, %rsi
     57e:	48 8d 3d 00 00 00 00 	leaq	(%rip), %rdi
     585:	b8 00 00 00 00 	movl	$0, %eax
     58a:	e8 00 00 00 00 	callq	0 <_main+0x125>
     58f:	48 8d 45 a0 	leaq	-96(%rbp), %rax
     593:	be 00 00 00 00 	movl	$0, %esi
     598:	48 89 c7 	movq	%rax, %rdi
     59b:	e8 00 00 00 00 	callq	0 <_main+0x136>
     5a0:	48 8b 45 a0 	movq	-96(%rbp), %rax
     5a4:	48 69 d0 40 42 0f 00 	imulq	$1000000, %rax, %rdx
     5ab:	8b 45 a8 	movl	-88(%rbp), %eax
     5ae:	48 98 	cltq
     5b0:	48 01 d0 	addq	%rdx, %rax
     5b3:	48 89 45 e0 	movq	%rax, -32(%rbp)
     5b7:	c7 45 fc 00 00 00 00 	movl	$0, -4(%rbp)
     5be:	48 8d 85 30 ff ff ff 	leaq	-208(%rbp), %rax
     5c5:	48 89 c7 	movq	%rax, %rdi
     5c8:	e8 00 00 00 00 	callq	0 <_main+0x163>
     5cd:	c7 45 f0 00 00 00 00 	movl	$0, -16(%rbp)
     5d4:	81 7d f0 2c 31 01 00 	cmpl	$78124, -16(%rbp)
     5db:	0f 8f a6 00 00 00 	jg	166 <_main+0x21d>
     5e1:	c7 45 ec 00 00 00 00 	movl	$0, -20(%rbp)
     5e8:	83 7d ec 3f 	cmpl	$63, -20(%rbp)
     5ec:	0f 8f 8c 00 00 00 	jg	140 <_main+0x214>
     5f2:	48 8d 85 30 ff ff ff 	leaq	-208(%rbp), %rax
     5f9:	48 89 c7 	movq	%rax, %rdi
     5fc:	e8 00 00 00 00 	callq	0 <_main+0x197>
     601:	8b 45 fc 	movl	-4(%rbp), %eax
     604:	48 98 	cltq
     606:	48 8d 14 85 00 00 00 00 	leaq	(,%rax,4), %rdx
     60e:	48 8b 45 c8 	movq	-56(%rbp), %rax
     612:	48 01 d0 	addq	%rdx, %rax
     615:	8b 55 80 	movl	-128(%rbp), %edx
     618:	89 10 	movl	%edx, (%rax)
     61a:	83 45 fc 01 	addl	$1, -4(%rbp)
     61e:	8b 45 fc 	movl	-4(%rbp), %eax
     621:	48 98 	cltq
     623:	48 8d 14 85 00 00 00 00 	leaq	(,%rax,4), %rdx
     62b:	48 8b 45 c8 	movq	-56(%rbp), %rax
     62f:	48 01 d0 	addq	%rdx, %rax
     632:	8b 55 84 	movl	-124(%rbp), %edx
     635:	89 10 	movl	%edx, (%rax)
     637:	83 45 fc 01 	addl	$1, -4(%rbp)
     63b:	8b 45 fc 	movl	-4(%rbp), %eax
     63e:	48 98 	cltq
     640:	48 8d 14 85 00 00 00 00 	leaq	(,%rax,4), %rdx
     648:	48 8b 45 c8 	movq	-56(%rbp), %rax
     64c:	48 01 d0 	addq	%rdx, %rax
     64f:	8b 55 88 	movl	-120(%rbp), %edx
     652:	89 10 	movl	%edx, (%rax)
     654:	83 45 fc 01 	addl	$1, -4(%rbp)
     658:	8b 45 fc 	movl	-4(%rbp), %eax
     65b:	48 98 	cltq
     65d:	48 8d 14 85 00 00 00 00 	leaq	(,%rax,4), %rdx
     665:	48 8b 45 c8 	movq	-56(%rbp), %rax
     669:	48 01 d0 	addq	%rdx, %rax
     66c:	8b 55 8c 	movl	-116(%rbp), %edx
     66f:	89 10 	movl	%edx, (%rax)
     671:	83 45 fc 01 	addl	$1, -4(%rbp)
     675:	83 45 ec 01 	addl	$1, -20(%rbp)
     679:	e9 6a ff ff ff 	jmp	-150 <_main+0x17e>
     67e:	83 45 f0 01 	addl	$1, -16(%rbp)
     682:	e9 4d ff ff ff 	jmp	-179 <_main+0x16a>
     687:	48 8b 45 d8 	movq	-40(%rbp), %rax
     68b:	48 89 c7 	movq	%rax, %rdi
     68e:	e8 00 00 00 00 	callq	0 <_main+0x229>
     693:	48 8d 45 90 	leaq	-112(%rbp), %rax
     697:	be 00 00 00 00 	movl	$0, %esi
     69c:	48 89 c7 	movq	%rax, %rdi
     69f:	e8 00 00 00 00 	callq	0 <_main+0x23a>
     6a4:	48 8b 45 90 	movq	-112(%rbp), %rax
     6a8:	48 69 d0 40 42 0f 00 	imulq	$1000000, %rax, %rdx
     6af:	8b 45 98 	movl	-104(%rbp), %eax
     6b2:	48 98 	cltq
     6b4:	48 01 d0 	addq	%rdx, %rax
     6b7:	48 89 45 c0 	movq	%rax, -64(%rbp)
     6bb:	48 8b 45 c0 	movq	-64(%rbp), %rax
     6bf:	48 2b 45 e0 	subq	-32(%rbp), %rax
     6c3:	48 89 c6 	movq	%rax, %rsi
     6c6:	48 8d 3d 00 00 00 00 	leaq	(%rip), %rdi
     6cd:	b8 00 00 00 00 	movl	$0, %eax
     6d2:	e8 00 00 00 00 	callq	0 <_main+0x26d>
     6d7:	48 8b 45 c0 	movq	-64(%rbp), %rax
     6db:	48 2b 45 e0 	subq	-32(%rbp), %rax
     6df:	48 89 c1 	movq	%rax, %rcx
     6e2:	b8 00 c2 eb 0b 	movl	$200000000, %eax
     6e7:	ba 00 00 00 00 	movl	$0, %edx
     6ec:	48 f7 f1 	divq	%rcx
     6ef:	48 89 c6 	movq	%rax, %rsi
     6f2:	48 8d 3d 00 00 00 00 	leaq	(%rip), %rdi
     6f9:	b8 00 00 00 00 	movl	$0, %eax
     6fe:	e8 00 00 00 00 	callq	0 <_main+0x299>
     703:	b8 00 00 00 00 	movl	$0, %eax
     708:	c9 	leave
     709:	c3 	retq
Disassembly of section __TEXT,__cstring:
lC0:
     710:	49 74 20 	je	32 <lC0+0x23>
     713:	74 6f 	je	111 <lC1+0x2c>
     715:	6f 	outsl	(%rsi), %dx
     716:	6b 20 25 	imull	$37, (%rax), %esp
     719:	6c 	insb	%dx, %es:(%rdi)
     71a:	64 20 6d 69 	andb	%ch, %fs:105(%rbp)
     71e:	63  <unknown>
     71f:	72 6f 	jb	111 <lC2+0x8>
     721:	73 65 	jae	101 <lC2>
     723:	63  <unknown>
     724:	6f 	outsl	(%rsi), %dx
     725:	6e 	outsb	(%rsi), %dx
     726:	64 73 20 	jae	32 <lC0+0x39>
     729:	74 6f 	je	111 <lC2+0x12>
     72b:	20 67 65 	andb	%ah, 101(%rdi)
     72e:	6e 	outsb	(%rsi), %dx
     72f:	65 72 61 	jb	97 <lC2+0xb>
     732:	74 65 	je	101 <lC2+0x11>
     734:	20 32 	andb	%dh, (%rdx)
     736:	30 30 	xorb	%dh, (%rax)
     738:	6d 	insl	%dx, %es:(%rdi)
     739:	20 72 61 	andb	%dh, 97(%rdx)
     73c:	6e 	outsb	(%rsi), %dx
     73d:	64 6f 	outsl	%fs:(%rsi), %dx
     73f:	6d 	insl	%dx, %es:(%rdi)
     740:	20 62 79 	andb	%ah, 121(%rdx)
     743:	74 65 	je	101 <lC2+0x22>
     745:	73 20 	jae	32 <lC1+0xf>
     747:	75 73 	jne	115 <lC2+0x34>
     749:	69 6e 67 20 72 64 72 	imull	$1919185440, 103(%rsi), %ebp
     750:	61  <unknown>
     751:	6e 	outsb	(%rsi), %dx
     752:	64 28 29 	subb	%ch, %fs:(%rcx)
     755:	2e 20 00 	andb	%al, %cs:(%rax)

lC1:
     758:	54 	pushq	%rsp
     759:	68 69 73 20 69 	pushq	$1763734377
     75e:	73 20 	jae	32 <lC1+0x28>
     760:	65 71 75 	jno	117 <lC2+0x50>
     763:	69 76 61 6c 65 6e 74 	imull	$1953391980, 97(%rsi), %esi
     76a:	20 74 6f 20 	andb	%dh, 32(%rdi,%rbp,2)
     76e:	25 6c 64 20 62 	andl	$1646290028, %eax
     773:	79 74 	jns	116 <lC2+0x61>
     775:	65 73 2f 	jae	47 <lC2+0x1f>
     778:	6d 	insl	%dx, %es:(%rdi)
     779:	69 63 72 6f 73 65 63 	imull	$1667593071, 114(%rbx), %esp
     780:	6f 	outsl	(%rsi), %dx
     781:	6e 	outsb	(%rsi), %dx
     782:	64 0a 00 	orb	%fs:(%rax), %al
     785:	00 00 	addb	%al, (%rax)
     787:	00 49 74 	addb	%cl, 116(%rcx)

lC2:
     788:	49 74 20 	je	32 <lC2+0x23>
     78b:	74 6f 	je	111 <lC2+0x74>
     78d:	6f 	outsl	(%rsi), %dx
     78e:	6b 20 25 	imull	$37, (%rax), %esp
     791:	6c 	insb	%dx, %es:(%rdi)
     792:	64 20 6d 69 	andb	%ch, %fs:105(%rbp)
     796:	63  <unknown>
     797:	72 6f 	jb	111 <lC2+0x80>
     799:	73 65 	jae	101 <lC2+0x78>
     79b:	63  <unknown>
     79c:	6f 	outsl	(%rsi), %dx
     79d:	6e 	outsb	(%rsi), %dx
     79e:	64 73 20 	jae	32 <lC2+0x39>
     7a1:	74 6f 	je	111 <lC2+0x8a>
     7a3:	20 67 65 	andb	%ah, 101(%rdi)
     7a6:	6e 	outsb	(%rsi), %dx
     7a7:	65 72 61 	jb	97 <lC2+0x83>
     7aa:	74 65 	je	101 <lC2+0x89>
     7ac:	20 32 	andb	%dh, (%rdx)
     7ae:	30 30 	xorb	%dh, (%rax)
     7b0:	6d 	insl	%dx, %es:(%rdi)
     7b1:	20 72 61 	andb	%dh, 97(%rdx)
     7b4:	6e 	outsb	(%rsi), %dx
     7b5:	64 6f 	outsl	%fs:(%rsi), %dx
     7b7:	6d 	insl	%dx, %es:(%rdi)
     7b8:	20 62 79 	andb	%ah, 121(%rdx)
     7bb:	74 65 	je	101 <lC2+0x9a>
     7bd:	73 20 	jae	32 <lC2+0x57>
     7bf:	75 73 	jne	115 <lC2+0xac>
     7c1:	69 6e 67 20 46 61 73 	imull	$1935754784, 103(%rsi), %ebp
     7c8:	74 52 	je	82 <lC2+0x94>
     7ca:	61  <unknown>
     7cb:	6e 	outsb	(%rsi), %dx
     7cc:	64 28 29 	subb	%ch, %fs:(%rcx)
     7cf:	2e 20 00 	andb	%al, %cs:(%rax)
Disassembly of section __DWARF,__debug_frame:
__debug_frame:
     7d8:	14 00 	adcb	$0, %al
     7da:	00 00 	addb	%al, (%rax)
     7dc:	ff ff  <unknown>
     7de:	ff ff  <unknown>
     7e0:	01 00 	addl	%eax, (%rax)
     7e2:	01 78 10 	addl	%edi, 16(%rax)
     7e5:	0c 07 	orb	$7, %al
     7e7:	08 90 01 00 00 00 	orb	%dl, 1(%rax)
     7ed:	00 00 	addb	%al, (%rax)
     7ef:	00 2c 00 	addb	%ch, (%rax,%rax)
     7f2:	00 00 	addb	%al, (%rax)
     7f4:	00 00 	addb	%al, (%rax)
     7f6:	00 00 	addb	%al, (%rax)
     7f8:	00 00 	addb	%al, (%rax)
     7fa:	00 00 	addb	%al, (%rax)
     7fc:	00 00 	addb	%al, (%rax)
     7fe:	00 00 	addb	%al, (%rax)
     800:	da 00 	fiaddl	(%rax)
     802:	00 00 	addb	%al, (%rax)
     804:	00 00 	addb	%al, (%rax)
     806:	00 00 	addb	%al, (%rax)
     808:	04 01 	addb	$1, %al
     80a:	00 00 	addb	%al, (%rax)
     80c:	00 0e 	addb	%cl, (%rsi)
     80e:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     814:	00 00 	addb	%al, (%rax)
     816:	0d 06 04 d5 00 	orl	$13960198, %eax
     81b:	00 00 	addb	%al, (%rax)
     81d:	0c 07 	orb	$7, %al
     81f:	08 2c 00 	orb	%ch, (%rax,%rax)
     822:	00 00 	addb	%al, (%rax)
     824:	00 00 	addb	%al, (%rax)
     826:	00 00 	addb	%al, (%rax)
     828:	da 00 	fiaddl	(%rax)
     82a:	00 00 	addb	%al, (%rax)
     82c:	00 00 	addb	%al, (%rax)
     82e:	00 00 	addb	%al, (%rax)
     830:	90 	nop
     831:	03 00 	addl	(%rax), %eax
     833:	00 00 	addb	%al, (%rax)
     835:	00 00 	addb	%al, (%rax)
     837:	00 04 01 	addb	%al, (%rcx,%rax)
     83a:	00 00 	addb	%al, (%rax)
     83c:	00 0e 	addb	%cl, (%rsi)
     83e:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     844:	00 00 	addb	%al, (%rax)
     846:	0d 06 04 8b 03 	orl	$59442182, %eax
     84b:	00 00 	addb	%al, (%rax)
     84d:	0c 07 	orb	$7, %al
     84f:	08 2c 00 	orb	%ch, (%rax,%rax)
     852:	00 00 	addb	%al, (%rax)
     854:	00 00 	addb	%al, (%rax)
     856:	00 00 	addb	%al, (%rax)
     858:	6a 04 	pushq	$4
     85a:	00 00 	addb	%al, (%rax)
     85c:	00 00 	addb	%al, (%rax)
     85e:	00 00 	addb	%al, (%rax)
     860:	a0 02 00 00 00 00 00 00 04 	movabsb	288230376151711746, %al
     869:	01 00 	addl	%eax, (%rax)
     86b:	00 00 	addb	%al, (%rax)
     86d:	0e  <unknown>
     86e:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     874:	00 00 	addb	%al, (%rax)
     876:	0d 06 04 9b 02 	orl	$43713542, %eax
     87b:	00 00 	addb	%al, (%rax)
     87d:	0c 07 	orb	$7, %al
     87f:	08  <unknown>
Disassembly of section __TEXT,__eh_frame:
EH_frame1:
     880:	14 00 	adcb	$0, %al
     882:	00 00 	addb	%al, (%rax)
     884:	00 00 	addb	%al, (%rax)
     886:	00 00 	addb	%al, (%rax)
     888:	01 7a 52 	addl	%edi, 82(%rdx)
     88b:	00 01 	addb	%al, (%rcx)
     88d:	78 10 	js	16 <EH_frame1+0x1f>
     88f:	01 10 	addl	%edx, (%rax)
     891:	0c 07 	orb	$7, %al
     893:	08 90 01 00 00 34 	orb	%dl, 872415233(%rax)
     899:	00 00 	addb	%al, (%rax)
     89b:	00 1c 00 	addb	%bl, (%rax,%rax)
     89e:	00 00 	addb	%al, (%rax)
     8a0:	e0 ff 	loopne	-1
     8a2:	ff ff  <unknown>
     8a4:	ff ff  <unknown>
     8a6:	ff ff  <unknown>
     8a8:	da 00 	fiaddl	(%rax)
     8aa:	00 00 	addb	%al, (%rax)
     8ac:	00 00 	addb	%al, (%rax)
     8ae:	00 00 	addb	%al, (%rax)
     8b0:	00 04 01 	addb	%al, (%rcx,%rax)
     8b3:	00 00 	addb	%al, (%rax)
     8b5:	00 0e 	addb	%cl, (%rsi)
     8b7:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     8bd:	00 00 	addb	%al, (%rax)
     8bf:	0d 06 04 d5 00 	orl	$13960198, %eax
     8c4:	00 00 	addb	%al, (%rax)
     8c6:	0c 07 	orb	$7, %al
     8c8:	08 00 	orb	%al, (%rax)
     8ca:	00 00 	addb	%al, (%rax)
     8cc:	00 00 	addb	%al, (%rax)
     8ce:	00 00 	addb	%al, (%rax)
     8d0:	34 00 	xorb	$0, %al
     8d2:	00 00 	addb	%al, (%rax)
     8d4:	54 	pushq	%rsp
     8d5:	00 00 	addb	%al, (%rax)
     8d7:	00 a8 ff ff ff ff 	addb	%ch, -1(%rax)
     8dd:	ff ff  <unknown>
     8df:	ff 90 03 00 00 00 	callq	*3(%rax)
     8e5:	00 00 	addb	%al, (%rax)
     8e7:	00 00 	addb	%al, (%rax)
     8e9:	04 01 	addb	$1, %al
     8eb:	00 00 	addb	%al, (%rax)
     8ed:	00 0e 	addb	%cl, (%rsi)
     8ef:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     8f5:	00 00 	addb	%al, (%rax)
     8f7:	0d 06 04 8b 03 	orl	$59442182, %eax
     8fc:	00 00 	addb	%al, (%rax)
     8fe:	0c 07 	orb	$7, %al
     900:	08 00 	orb	%al, (%rax)
     902:	00 00 	addb	%al, (%rax)
     904:	00 00 	addb	%al, (%rax)
     906:	00 00 	addb	%al, (%rax)
     908:	34 00 	xorb	$0, %al
     90a:	00 00 	addb	%al, (%rax)
     90c:	8c 00 	movw	%es, (%rax)
     90e:	00 00 	addb	%al, (%rax)
     910:	70 ff 	jo	-1 <EH_frame1+0x91>
     912:	ff ff  <unknown>
     914:	ff ff  <unknown>
     916:	ff ff  <unknown>
     918:	a0 02 00 00 00 00 00 00 00 	movabsb	2, %al
     921:	04 01 	addb	$1, %al
     923:	00 00 	addb	%al, (%rax)
     925:	00 0e 	addb	%cl, (%rsi)
     927:	10 86 02 04 03 00 	adcb	%al, 197634(%rsi)
     92d:	00 00 	addb	%al, (%rax)
     92f:	0d 06 04 9b 02 	orl	$43713542, %eax
     934:	00 00 	addb	%al, (%rax)
     936:	0c 07 	orb	$7, %al
     938:	08 00 	orb	%al, (%rax)
     93a:	00 00 	addb	%al, (%rax)
     93c:	00 00 	addb	%al, (%rax)
     93e:	00 00 	addb	%al, (%rax)
Disassembly of section __DWARF,__debug_info:
__debug_info:
     940:	35 18 00 00 02 	xorl	$33554456, %eax
     945:	00 00 	addb	%al, (%rax)
     947:	00 00 	addb	%al, (%rax)
     949:	00 08 	addb	%cl, (%rax)
     94b:	01 47 4e 	addl	%eax, 78(%rdi)
     94e:	55 	pushq	%rbp
     94f:	20 43 2b 	andb	%al, 43(%rbx)
     952:	2b 31 	subl	(%rcx), %esi
     954:	34 20 	xorb	$32, %al
     956:	38 2e 	cmpb	%ch, (%rsi)
     958:	32 2e 	xorb	(%rsi), %ch
     95a:	30 20 	xorb	%ah, (%rax)
     95c:	2d 66 50 49 43 	subl	$1128878182, %eax
     961:	20 2d 66 65 6c 69 	andb	%ch, 1768711526(%rip)
     967:	6d 	insl	%dx, %es:(%rdi)
     968:	69 6e 61 74 65 2d 75 	imull	$1965909364, 97(%rsi), %ebp
     96f:	6e 	outsb	(%rsi), %dx
     970:	75 73 	jne	115 <__debug_info+0xa5>
     972:	65 64 2d 64 65 62 75 	subl	$1969382756, %eax
     979:	67 2d 73 79 6d 62 	subl	$1651341683, %eax
     97f:	6f 	outsl	(%rsi), %dx
     980:	6c 	insb	%dx, %es:(%rdi)
     981:	73 20 	jae	32 <__debug_info+0x63>
     983:	2d 6d 73 73 65 	subl	$1702065005, %eax
     988:	34 2e 	xorb	$46, %al
     98a:	32 20 	xorb	(%rax), %ah
     98c:	2d 6d 72 64 72 	subl	$1919185517, %eax
     991:	6e 	outsb	(%rsi), %dx
     992:	64 20 2d 6d 6d 61 63 	andb	%ch, %fs:1667329389(%rip)
     999:	6f 	outsl	(%rsi), %dx
     99a:	73 78 	jae	120 <__debug_info+0xd4>
     99c:	2d 76 65 72 73 	subl	$1936876918, %eax
     9a1:	69 6f 6e 2d 6d 69 6e 	imull	$1852402989, 110(%rdi), %ebp
     9a8:	3d 31 30 2e 31 	cmpl	$825110577, %eax
     9ad:	33 2e 	xorl	(%rsi), %ebp
     9af:	30 20 	xorb	%ah, (%rax)
     9b1:	2d 6d 74 75 6e 	subl	$1853191277, %eax
     9b6:	65 3d 63 6f 72 65 	cmpl	$1701998435, %eax
     9bc:	32 20 	xorb	(%rax), %ah
     9be:	2d 67 20 2d 4f 	subl	$1328357479, %eax
     9c3:	30 00 	xorb	%al, (%rax)
     9c5:	04 74 	addb	$116, %al
     9c7:	65 73 74 	jae	116 <__debug_info+0xfe>
     9ca:	5f 	popq	%rdi
     9cb:	72 61 	jb	97 <__debug_info+0xee>
     9cd:	6e 	outsb	(%rsi), %dx
     9ce:	64 5f 	popq	%rdi
     9d0:	73 70 	jae	112 <__debug_info+0x102>
     9d2:	65 65 64 2e 63  <unknown>
     9d7:	00 2f 	addb	%ch, (%rdi)
     9d9:	55 	pushq	%rbp
     9da:	73 65 	jae	101 <__debug_info+0x101>
     9dc:	72 73 	jb	115 <__debug_info+0x111>
     9de:	2f  <unknown>
     9df:	77 69 	ja	105 <__debug_info+0x10a>
     9e1:	6c 	insb	%dx, %es:(%rdi)
     9e2:	6c 	insb	%dx, %es:(%rdi)
     9e3:	69 61 6d 77 69 73 64 	imull	$1685285239, 109(%rcx), %esp
     9ea:	6f 	outsl	(%rsi), %dx
     9eb:	6d 	insl	%dx, %es:(%rdi)
     9ec:	2f  <unknown>
     9ed:	62  <unknown>
     9ee:	69 6f 6c 6f 67 79 00 	imull	$7956335, 108(%rdi), %ebp
     9f5:	01 00 	addl	%eax, (%rax)
     9f7:	00 00 	addb	%al, (%rax)
     9f9:	00 00 	addb	%al, (%rax)
     9fb:	00 00 	addb	%al, (%rax)
     9fd:	00 0a 	addb	%cl, (%rdx)
     9ff:	07  <unknown>
     a00:	00 00 	addb	%al, (%rax)
     a02:	00 00 	addb	%al, (%rax)
     a04:	00 00 	addb	%al, (%rax)
     a06:	00 00 	addb	%al, (%rax)
     a08:	00 00 	addb	%al, (%rax)
     a0a:	02 01 	addb	(%rcx), %al
     a0c:	06  <unknown>
     a0d:	73 69 	jae	105 <__debug_info+0x138>
     a0f:	67 6e 	outsb	(%esi), %dx
     a11:	65 64 20 63 68 	andb	%ah, %fs:104(%rbx)
     a16:	61  <unknown>
     a17:	72 00 	jb	0 <__debug_info+0xd9>
     a19:	02 01 	addb	(%rcx), %al
     a1b:	08 75 6e 	orb	%dh, 110(%rbp)
     a1e:	73 69 	jae	105 <__debug_info+0x149>
     a20:	67 6e 	outsb	(%esi), %dx
     a22:	65 64 20 63 68 	andb	%ah, %fs:104(%rbx)
     a27:	61  <unknown>
     a28:	72 00 	jb	0 <__debug_info+0xea>
     a2a:	02 02 	addb	(%rdx), %al
     a2c:	05 73 68 6f 72 	addl	$1919903859, %eax
     a31:	74 20 	je	32 <__debug_info+0x113>
     a33:	69 6e 74 00 02 02 07 	imull	$117572096, 116(%rsi), %ebp
     a3a:	73 68 	jae	104 <__debug_info+0x164>
     a3c:	6f 	outsl	(%rsi), %dx
     a3d:	72 74 	jb	116 <__debug_info+0x173>
     a3f:	20 75 6e 	andb	%dh, 110(%rbp)
     a42:	73 69 	jae	105 <__debug_info+0x16d>
     a44:	67 6e 	outsb	(%esi), %dx
     a46:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
     a4b:	74 00 	je	0 <__debug_info+0x10d>
     a4d:	03 5f 5f 	addl	95(%rdi), %ebx
     a50:	69 6e 74 33 32 5f 74 	imull	$1952395827, 116(%rsi), %ebp
     a57:	00 06 	addb	%al, (%rsi)
     a59:	2c 0f 	subb	$15, %al
     a5b:	1f  <unknown>
     a5c:	01 00 	addl	%eax, (%rax)
     a5e:	00 02 	addb	%al, (%rdx)
     a60:	04 05 	addb	$5, %al
     a62:	69 6e 74 00 04 1f 01 	imull	$18809856, 116(%rsi), %ebp
     a69:	00 00 	addb	%al, (%rax)
     a6b:	02 04 07 	addb	(%rdi,%rax), %al
     a6e:	75 6e 	jne	110 <__debug_info+0x19e>
     a70:	73 69 	jae	105 <__debug_info+0x19b>
     a72:	67 6e 	outsb	(%esi), %dx
     a74:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
     a79:	74 00 	je	0 <__debug_info+0x13b>
     a7b:	03 5f 5f 	addl	95(%rdi), %ebx
     a7e:	69 6e 74 36 34 5f 74 	imull	$1952396342, 116(%rsi), %ebp
     a85:	00 06 	addb	%al, (%rsi)
     a87:	2e 14 4d 	adcb	$77, %al
     a8a:	01 00 	addl	%eax, (%rax)
     a8c:	00 02 	addb	%al, (%rdx)
     a8e:	08 05 6c 6f 6e 67 	orb	%al, 1735290732(%rip)
     a94:	20 6c 6f 6e 	andb	%ch, 110(%rdi,%rbp,2)
     a98:	67 20 69 6e 	andb	%ch, 110(%ecx)
     a9c:	74 00 	je	0 <__debug_info+0x15e>
     a9e:	02 08 	addb	(%rax), %cl
     aa0:	07  <unknown>
     aa1:	6c 	insb	%dx, %es:(%rdi)
     aa2:	6f 	outsl	(%rsi), %dx
     aa3:	6e 	outsb	(%rsi), %dx
     aa4:	67 20 6c 6f 6e 	andb	%ch, 110(%edi,%ebp,2)
     aa9:	67 20 75 6e 	andb	%dh, 110(%ebp)
     aad:	73 69 	jae	105 <__debug_info+0x1d8>
     aaf:	67 6e 	outsb	(%esi), %dx
     ab1:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
     ab6:	74 00 	je	0 <__debug_info+0x178>
     ab8:	02 08 	addb	(%rax), %cl
     aba:	05 6c 6f 6e 67 	addl	$1735290732, %eax
     abf:	20 69 6e 	andb	%ch, 110(%rcx)
     ac2:	74 00 	je	0 <__debug_info+0x184>
     ac4:	02 08 	addb	(%rax), %cl
     ac6:	07  <unknown>
     ac7:	6c 	insb	%dx, %es:(%rdi)
     ac8:	6f 	outsl	(%rsi), %dx
     ac9:	6e 	outsb	(%rsi), %dx
     aca:	67 20 75 6e 	andb	%dh, 110(%ebp)
     ace:	73 69 	jae	105 <__debug_info+0x1f9>
     ad0:	67 6e 	outsb	(%esi), %dx
     ad2:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
     ad7:	74 00 	je	0 <__debug_info+0x199>
     ad9:	02 01 	addb	(%rcx), %al
     adb:	06  <unknown>
     adc:	63  <unknown>
     add:	68 61 72 00 04 	pushq	$67138145
     ae2:	99 	cltd
     ae3:	01 00 	addl	%eax, (%rax)
     ae5:	00 03 	addb	%al, (%rbx)
     ae7:	5f 	popq	%rdi
     ae8:	5f 	popq	%rdi
     ae9:	64 61  <unknown>
     aeb:	72 77 	jb	119 <__debug_info+0x224>
     aed:	69 6e 5f 73 69 7a 65 	imull	$1702521203, 95(%rsi), %ebp
     af4:	5f 	popq	%rdi
     af5:	74 00 	je	0 <__debug_info+0x1b7>
     af7:	06  <unknown>
     af8:	5c 	popq	%rsp
     af9:	18 84 01 00 00 05 08 	sbbb	%al, 134545408(%rcx,%rax)
     b00:	03 5f 5f 	addl	95(%rdi), %ebx
     b03:	64 61  <unknown>
     b05:	72 77 	jb	119 <__debug_info+0x23e>
     b07:	69 6e 5f 74 69 6d 65 	imull	$1701669236, 95(%rsi), %ebp
     b0e:	5f 	popq	%rdi
     b0f:	74 00 	je	0 <__debug_info+0x1d1>
     b11:	06  <unknown>
     b12:	78 10 	js	16 <__debug_info+0x1e4>
     b14:	78 01 	js	1 <__debug_info+0x1d7>
     b16:	00 00 	addb	%al, (%rax)
     b18:	03 5f 5f 	addl	95(%rdi), %ebx
     b1b:	64 61  <unknown>
     b1d:	72 77 	jb	119 <__debug_info+0x256>
     b1f:	69 6e 5f 6f 66 66 5f 	imull	$1600546415, 95(%rsi), %ebp
     b26:	74 00 	je	0 <__debug_info+0x1e8>
     b28:	07  <unknown>
     b29:	47 13 3b 	adcl	(%r11), %r15d
     b2c:	01 00 	addl	%eax, (%rax)
     b2e:	00 03 	addb	%al, (%rbx)
     b30:	5f 	popq	%rdi
     b31:	5f 	popq	%rdi
     b32:	64 61  <unknown>
     b34:	72 77 	jb	119 <__debug_info+0x26d>
     b36:	69 6e 5f 73 75 73 65 	imull	$1702065523, 95(%rsi), %ebp
     b3d:	63  <unknown>
     b3e:	6f 	outsl	(%rsi), %dx
     b3f:	6e 	outsb	(%rsi), %dx
     b40:	64 73 5f 	jae	95 <__debug_info+0x262>
     b43:	74 00 	je	0 <__debug_info+0x205>
     b45:	07  <unknown>
     b46:	4a 13 0d 01 00 00 03 	adcq	50331649(%rip), %rcx
     b4d:	73 69 	jae	105 <__debug_info+0x278>
     b4f:	7a 65 	jp	101 <__debug_info+0x276>
     b51:	5f 	popq	%rdi
     b52:	74 00 	je	0 <__debug_info+0x214>
     b54:	08 1f 	orb	%bl, (%rdi)
     b56:	20 a6 01 00 00 06 	andb	%ah, 100663297(%rsi)
     b5c:	08 99 01 00 00 03 	orb	%bl, 50331649(%rcx)
     b62:	75 69 	jne	105 <__debug_info+0x28d>
     b64:	6e 	outsb	(%rsi), %dx
     b65:	74 38 	je	56 <__debug_info+0x25f>
     b67:	5f 	popq	%rdi
     b68:	74 00 	je	0 <__debug_info+0x22a>
     b6a:	09 1f 	orl	%ebx, (%rdi)
     b6c:	17  <unknown>
     b6d:	d9 00 	flds	(%rax)
     b6f:	00 00 	addb	%al, (%rax)
     b71:	07  <unknown>
     b72:	74 69 	je	105 <__debug_info+0x29d>
     b74:	6d 	insl	%dx, %es:(%rdi)
     b75:	65 76 61 	jbe	97 <__debug_info+0x299>
     b78:	6c 	insb	%dx, %es:(%rdi)
     b79:	00 10 	addb	%dl, (%rax)
     b7b:	0a 22 	orb	(%rdx), %ah
     b7d:	01 68 02 	addl	%ebp, 2(%rax)
     b80:	00 00 	addb	%al, (%rax)
     b82:	08 74 76 5f 	orb	%dh, 95(%rsi,%rsi,2)
     b86:	73 65 	jae	101 <__debug_info+0x2ad>
     b88:	63  <unknown>
     b89:	00 0a 	addb	%cl, (%rdx)
     b8b:	24 1a 	andb	$26, %al
     b8d:	c0 01 00 	rolb	$0, (%rcx)
     b90:	00 02 	addb	%al, (%rdx)
     b92:	23 00 	andl	(%rax), %eax
     b94:	08 74 76 5f 	orb	%dh, 95(%rsi,%rsi,2)
     b98:	75 73 	jne	115 <__debug_info+0x2cd>
     b9a:	65 63  <unknown>
     b9c:	00 0a 	addb	%cl, (%rdx)
     b9e:	25 1a ef 01 00 	andl	$126746, %eax
     ba3:	00 02 	addb	%al, (%rdx)
     ba5:	23 08 	andl	(%rax), %ecx
     ba7:	00 09 	addb	%cl, (%rcx)
     ba9:	08 0b 	orb	%cl, (%rbx)
     bab:	52 	pushq	%rdx
     bac:	10 35 64 69 76 5f 	adcb	%dh, 1601595748(%rip)
     bb2:	74 00 	je	0 <__debug_info+0x274>
     bb4:	98 	cwtl
     bb5:	02 00 	addb	(%rax), %al
     bb7:	00 08 	addb	%cl, (%rax)
     bb9:	71 75 	jno	117 <__debug_info+0x2f0>
     bbb:	6f 	outsl	(%rsi), %dx
     bbc:	74 00 	je	0 <__debug_info+0x27e>
     bbe:	0b 53 06 	orl	6(%rbx), %edx
     bc1:	1f  <unknown>
     bc2:	01 00 	addl	%eax, (%rax)
     bc4:	00 02 	addb	%al, (%rdx)
     bc6:	23 00 	andl	(%rax), %eax
     bc8:	08 72 65 	orb	%dh, 101(%rdx)
     bcb:	6d 	insl	%dx, %es:(%rdi)
     bcc:	00 0b 	addb	%cl, (%rbx)
     bce:	54 	pushq	%rsp
     bcf:	06  <unknown>
     bd0:	1f  <unknown>
     bd1:	01 00 	addl	%eax, (%rax)
     bd3:	00 02 	addb	%al, (%rdx)
     bd5:	23 04 00 	andl	(%rax,%rax), %eax
     bd8:	03 64 69 76 	addl	118(%rcx,%rbp,2), %esp
     bdc:	5f 	popq	%rdi
     bdd:	74 00 	je	0 <__debug_info+0x29f>
     bdf:	0b 55 03 	orl	3(%rbp), %edx
     be2:	68 02 00 00 09 	pushq	$150994946
     be7:	10 0b 	adcb	%cl, (%rbx)
     be9:	57 	pushq	%rdi
     bea:	10 36 	adcb	%dh, (%rsi)
     bec:	6c 	insb	%dx, %es:(%rdi)
     bed:	64 69 76 5f 74 00 d7 02 	imull	$47644788, %fs:95(%rsi), %esi
     bf5:	00 00 	addb	%al, (%rax)
     bf7:	08 71 75 	orb	%dh, 117(%rcx)
     bfa:	6f 	outsl	(%rsi), %dx
     bfb:	74 00 	je	0 <__debug_info+0x2bd>
     bfd:	0b 58 07 	orl	7(%rax), %ebx
     c00:	78 01 	js	1 <__debug_info+0x2c3>
     c02:	00 00 	addb	%al, (%rax)
     c04:	02 23 	addb	(%rbx), %ah
     c06:	00 08 	addb	%cl, (%rax)
     c08:	72 65 	jb	101 <__debug_info+0x32f>
     c0a:	6d 	insl	%dx, %es:(%rdi)
     c0b:	00 0b 	addb	%cl, (%rbx)
     c0d:	59 	popq	%rcx
     c0e:	07  <unknown>
     c0f:	78 01 	js	1 <__debug_info+0x2d2>
     c11:	00 00 	addb	%al, (%rax)
     c13:	02 23 	addb	(%rbx), %ah
     c15:	08 00 	orb	%al, (%rax)
     c17:	03 6c 64 69 	addl	105(%rsp), %ebp
     c1b:	76 5f 	jbe	95 <__debug_info+0x33c>
     c1d:	74 00 	je	0 <__debug_info+0x2df>
     c1f:	0b 5a 03 	orl	3(%rdx), %ebx
     c22:	a6 	cmpsb	%es:(%rdi), (%rsi)
     c23:	02 00 	addb	(%rax), %al
     c25:	00 09 	addb	%cl, (%rcx)
     c27:	10 0b 	adcb	%cl, (%rbx)
     c29:	5d 	popq	%rbp
     c2a:	10 37 	adcb	%dh, (%rdi)
     c2c:	6c 	insb	%dx, %es:(%rdi)
     c2d:	6c 	insb	%dx, %es:(%rdi)
     c2e:	64 69 76 5f 74 00 18 03 	imull	$51904628, %fs:95(%rsi), %esi
     c36:	00 00 	addb	%al, (%rax)
     c38:	08 71 75 	orb	%dh, 117(%rcx)
     c3b:	6f 	outsl	(%rsi), %dx
     c3c:	74 00 	je	0 <__debug_info+0x2fe>
     c3e:	0b 5e 0c 	orl	12(%rsi), %ebx
     c41:	4d 01 00 	addq	%r8, (%r8)
     c44:	00 02 	addb	%al, (%rdx)
     c46:	23 00 	andl	(%rax), %eax
     c48:	08 72 65 	orb	%dh, 101(%rdx)
     c4b:	6d 	insl	%dx, %es:(%rdi)
     c4c:	00 0b 	addb	%cl, (%rbx)
     c4e:	5f 	popq	%rdi
     c4f:	0c 4d 	orb	$77, %al
     c51:	01 00 	addl	%eax, (%rax)
     c53:	00 02 	addb	%al, (%rdx)
     c55:	23 08 	andl	(%rax), %ecx
     c57:	00 03 	addb	%al, (%rbx)
     c59:	6c 	insb	%dx, %es:(%rdi)
     c5a:	6c 	insb	%dx, %es:(%rdi)
     c5b:	64 69 76 5f 74 00 0b 60 	imull	$1611333748, %fs:95(%rsi), %esi
     c63:	03 e6 	addl	%esi, %esp
     c65:	02 00 	addb	(%rax), %al
     c67:	00 0a 	addb	%cl, (%rdx)
     c69:	5f 	popq	%rdi
     c6a:	5f 	popq	%rdi
     c6b:	6d 	insl	%dx, %es:(%rdi)
     c6c:	62  <unknown>
     c6d:	5f 	popq	%rdi
     c6e:	63  <unknown>
     c6f:	75 72 	jne	114 <__debug_info+0x3a3>
     c71:	5f 	popq	%rdi
     c72:	6d 	insl	%dx, %es:(%rdi)
     c73:	61  <unknown>
     c74:	78 00 	js	0 <__debug_info+0x336>
     c76:	0b 75 0c 	orl	12(%rbp), %esi
     c79:	1f  <unknown>
     c7a:	01 00 	addl	%eax, (%rax)
     c7c:	00 01 	addb	%al, (%rcx)
     c7e:	01 0b 	addl	%ecx, (%rbx)
     c80:	73 75 	jae	117 <__debug_info+0x3b7>
     c82:	62  <unknown>
     c83:	6f 	outsl	(%rsi), %dx
     c84:	70 74 	jo	116 <__debug_info+0x3ba>
     c86:	61  <unknown>
     c87:	72 67 	jb	103 <__debug_info+0x3b0>
     c89:	00 0b 	addb	%cl, (%rbx)
     c8b:	5a 	popq	%rdx
     c8c:	01 0e 	addl	%ecx, (%rsi)
     c8e:	1b 02 	sbbl	(%rdx), %eax
     c90:	00 00 	addb	%al, (%rax)
     c92:	01 01 	addl	%eax, (%rcx)
     c94:	0c 0c 	orb	$12, %al
     c96:	7f 0b 	jg	11 <__debug_info+0x363>
     c98:	98 	cwtl
     c99:	02 00 	addb	(%rax), %al
     c9b:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     c9e:	80 0b d7 	orb	$-41, (%rbx)
     ca1:	02 00 	addb	(%rax), %al
     ca3:	00 0d 01 61 74 65 	addb	%cl, 1702125825(%rip)
     ca9:	78 69 	js	105 <__debug_info+0x3d4>
     cab:	74 00 	je	0 <__debug_info+0x36d>
     cad:	0b 8a 06 1f 01 00 	orl	73478(%rdx), %ecx
     cb3:	00 01 	addb	%al, (%rcx)
     cb5:	7f 03 	jg	3 <__debug_info+0x37a>
     cb7:	00 00 	addb	%al, (%rax)
     cb9:	0e  <unknown>
     cba:	7f 03 	jg	3 <__debug_info+0x37f>
     cbc:	00 00 	addb	%al, (%rax)
     cbe:	00 06 	addb	%al, (%rsi)
     cc0:	08 85 03 00 00 0f 	orb	%al, 251658243(%rbp)
     cc6:	0c 0c 	orb	$12, %al
     cc8:	86 0b 	xchgb	%cl, (%rbx)
     cca:	64 03 00 	addl	%fs:(%rax), %eax
     ccd:	00 0d 01 61 74 6f 	addb	%cl, 1869897985(%rip)
     cd3:	66 00 0b 	addb	%cl, (%rbx)
     cd6:	8b 09 	movl	(%rcx), %ecx
     cd8:	a7 	cmpsl	%es:(%rdi), (%rsi)
     cd9:	03 00 	addl	(%rax), %eax
     cdb:	00 01 	addb	%al, (%rcx)
     cdd:	a7 	cmpsl	%es:(%rdi), (%rsi)
     cde:	03 00 	addl	(%rax), %eax
     ce0:	00 0e 	addb	%cl, (%rsi)
     ce2:	b1 03 	movb	$3, %cl
     ce4:	00 00 	addb	%al, (%rax)
     ce6:	00 02 	addb	%al, (%rdx)
     ce8:	08 04 64 	orb	%al, (%rsp)
     ceb:	6f 	outsl	(%rsi), %dx
     cec:	75 62 	jne	98 <__debug_info+0x410>
     cee:	6c 	insb	%dx, %es:(%rdi)
     cef:	65 00 06 	addb	%al, %gs:(%rsi)
     cf2:	08 a1 01 00 00 04 	orb	%ah, 67108865(%rcx)
     cf8:	b1 03 	movb	$3, %cl
     cfa:	00 00 	addb	%al, (%rax)
     cfc:	0c 0c 	orb	$12, %al
     cfe:	8c 0b 	movw	%cs, (%rbx)
     d00:	8e 03 	movw	(%rbx), %es
     d02:	00 00 	addb	%al, (%rax)
     d04:	0d 01 61 74 6f 	orl	$1869897985, %eax
     d09:	69 00 0b 8c 06 1f 	imull	$520522763, (%rax), %eax
     d0f:	01 00 	addl	%eax, (%rax)
     d11:	00 01 	addb	%al, (%rcx)
     d13:	dd 03 	fldl	(%rbx)
     d15:	00 00 	addb	%al, (%rax)
     d17:	0e  <unknown>
     d18:	b1 03 	movb	$3, %cl
     d1a:	00 00 	addb	%al, (%rax)
     d1c:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     d1f:	8d 0b 	leal	(%rbx), %ecx
     d21:	c4 03 00 00  <unknown>
     d25:	0d 01 61 74 6f 	orl	$1869897985, %eax
     d2a:	6c 	insb	%dx, %es:(%rdi)
     d2b:	00 0b 	addb	%cl, (%rbx)
     d2d:	8d 07 	leal	(%rdi), %eax
     d2f:	78 01 	js	1 <__debug_info+0x3f2>
     d31:	00 00 	addb	%al, (%rax)
     d33:	01 fe 	addl	%edi, %esi
     d35:	03 00 	addl	(%rax), %eax
     d37:	00 0e 	addb	%cl, (%rsi)
     d39:	b1 03 	movb	$3, %cl
     d3b:	00 00 	addb	%al, (%rax)
     d3d:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     d40:	8e 0b 	movw	(%rbx), %cs
     d42:	e5 03 	inl	$3, %eax
     d44:	00 00 	addb	%al, (%rax)
     d46:	0d 01 62 73 65 	orl	$1702060545, %eax
     d4b:	61  <unknown>
     d4c:	72 63 	jb	99 <__debug_info+0x471>
     d4e:	68 00 0b 92 07 	pushq	$127011584
     d53:	be 01 00 00 01 	movl	$16777217, %esi
     d58:	36 04 00 	addb	$0, %al
     d5b:	00 0e 	addb	%cl, (%rsi)
     d5d:	36 04 00 	addb	$0, %al
     d60:	00 0e 	addb	%cl, (%rsi)
     d62:	36 04 00 	addb	$0, %al
     d65:	00 0e 	addb	%cl, (%rsi)
     d67:	0c 02 	orb	$2, %al
     d69:	00 00 	addb	%al, (%rax)
     d6b:	0e  <unknown>
     d6c:	0c 02 	orb	$2, %al
     d6e:	00 00 	addb	%al, (%rax)
     d70:	0e  <unknown>
     d71:	3d 04 00 00 00 	cmpl	$4, %eax
     d76:	06  <unknown>
     d77:	08 3c 04 	orb	%bh, (%rsp,%rax)
     d7a:	00 00 	addb	%al, (%rax)
     d7c:	10 06 	adcb	%al, (%rsi)
     d7e:	08 43 04 	orb	%al, 4(%rbx)
     d81:	00 00 	addb	%al, (%rax)
     d83:	11 1f 	adcl	%ebx, (%rdi)
     d85:	01 00 	addl	%eax, (%rax)
     d87:	00 57 04 	addb	%dl, 4(%rdi)
     d8a:	00 00 	addb	%al, (%rax)
     d8c:	0e  <unknown>
     d8d:	36 04 00 	addb	$0, %al
     d90:	00 0e 	addb	%cl, (%rsi)
     d92:	36 04 00 	addb	$0, %al
     d95:	00 00 	addb	%al, (%rax)
     d97:	0c 0c 	orb	$12, %al
     d99:	8f 0b 06  <unknown>
     d9c:	04 00 	addb	$0, %al
     d9e:	00 0d 01 64 69 76 	addb	%cl, 1986618369(%rip)
     da4:	00 0b 	addb	%cl, (%rbx)
     da6:	95 	xchgl	%ebp, %eax
     da7:	08 98 02 00 00 01 	orb	%bl, 16777218(%rax)
     dad:	7c 04 	jl	4 <__debug_info+0x473>
     daf:	00 00 	addb	%al, (%rax)
     db1:	0e  <unknown>
     db2:	1f  <unknown>
     db3:	01 00 	addl	%eax, (%rax)
     db5:	00 0e 	addb	%cl, (%rsi)
     db7:	1f  <unknown>
     db8:	01 00 	addl	%eax, (%rax)
     dba:	00 00 	addb	%al, (%rax)
     dbc:	0c 0c 	orb	$12, %al
     dbe:	91 	xchgl	%ecx, %eax
     dbf:	0b 5f 04 	orl	4(%rdi), %ebx
     dc2:	00 00 	addb	%al, (%rax)
     dc4:	0d 01 67 65 74 	orl	$1952802561, %eax
     dc9:	65 6e 	outsb	%gs:(%rsi), %dx
     dcb:	76 00 	jbe	0 <__debug_info+0x48d>
     dcd:	0b 98 07 1b 02 00 	orl	137991(%rax), %ebx
     dd3:	00 01 	addb	%al, (%rcx)
     dd5:	9f 	lahf
     dd6:	04 00 	addb	$0, %al
     dd8:	00 0e 	addb	%cl, (%rsi)
     dda:	b1 03 	movb	$3, %cl
     ddc:	00 00 	addb	%al, (%rax)
     dde:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     de1:	94 	xchgl	%esp, %eax
     de2:	0b 84 04 00 00 0d 01 	orl	17629184(%rsp,%rax), %eax
     de9:	6c 	insb	%dx, %es:(%rdi)
     dea:	64 69 76 00 0b 9a 09 d7 	imull	$3607730699, %fs:(%rsi), %esi
     df2:	02 00 	addb	(%rax), %al
     df4:	00 01 	addb	%al, (%rcx)
     df6:	c5 04 00  <unknown>
     df9:	00 0e 	addb	%cl, (%rsi)
     dfb:	78 01 	js	1 <__debug_info+0x4be>
     dfd:	00 00 	addb	%al, (%rax)
     dff:	0e  <unknown>
     e00:	78 01 	js	1 <__debug_info+0x4c3>
     e02:	00 00 	addb	%al, (%rax)
     e04:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     e07:	96 	xchgl	%esi, %eax
     e08:	0b a7 04 00 00 0d 	orl	218103812(%rdi), %esp
     e0e:	01 6d 62 	addl	%ebp, 98(%rbp)
     e11:	6c 	insb	%dx, %es:(%rdi)
     e12:	65 6e 	outsb	%gs:(%rsi), %dx
     e14:	00 0b 	addb	%cl, (%rbx)
     e16:	a1 06 1f 01 00 00 01 ec 04 	movabsl	354659570167127814, %eax
     e1f:	00 00 	addb	%al, (%rax)
     e21:	0e  <unknown>
     e22:	b1 03 	movb	$3, %cl
     e24:	00 00 	addb	%al, (%rax)
     e26:	0e  <unknown>
     e27:	0c 02 	orb	$2, %al
     e29:	00 00 	addb	%al, (%rax)
     e2b:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     e2e:	99 	cltd
     e2f:	0b cd 	orl	%ebp, %ecx
     e31:	04 00 	addb	$0, %al
     e33:	00 0d 01 6d 62 73 	addb	%cl, 1935830273(%rip)
     e39:	74 6f 	je	111 <__debug_info+0x56a>
     e3b:	77 63 	ja	99 <__debug_info+0x560>
     e3d:	73 00 	jae	0 <__debug_info+0x4ff>
     e3f:	0b a2 09 0c 02 00 	orl	134153(%rdx), %esp
     e45:	00 01 	addb	%al, (%rcx)
     e47:	1b 05 00 00 0e 1b 	sbbl	453902336(%rip), %eax
     e4d:	05 00 00 0e b1 	addl	$2970484736, %eax
     e52:	03 00 	addl	(%rax), %eax
     e54:	00 0e 	addb	%cl, (%rsi)
     e56:	0c 02 	orb	$2, %al
     e58:	00 00 	addb	%al, (%rax)
     e5a:	00 06 	addb	%al, (%rsi)
     e5c:	08 21 	orb	%ah, (%rcx)
     e5e:	05 00 00 02 04 	addl	$67239936, %eax
     e63:	05 77 63 68 61 	addl	$1634231159, %eax
     e68:	72 5f 	jb	95 <__debug_info+0x589>
     e6a:	74 00 	je	0 <__debug_info+0x52c>
     e6c:	04 21 	addb	$33, %al
     e6e:	05 00 00 0c 0c 	addl	$202113024, %eax
     e73:	9a  <unknown>
     e74:	0b f4 	orl	%esp, %esi
     e76:	04 00 	addb	$0, %al
     e78:	00 0d 01 6d 62 74 	addb	%cl, 1952607489(%rip)
     e7e:	6f 	outsl	(%rsi), %dx
     e7f:	77 63 	ja	99 <__debug_info+0x5a4>
     e81:	00 0b 	addb	%cl, (%rbx)
     e83:	a3 06 1f 01 00 00 01 5e 05 	movabsl	%eax, 386747717512142598
     e8c:	00 00 	addb	%al, (%rax)
     e8e:	0e  <unknown>
     e8f:	1b 05 00 00 0e b1 	sbbl	-1324482560(%rip), %eax
     e95:	03 00 	addl	(%rax), %eax
     e97:	00 0e 	addb	%cl, (%rsi)
     e99:	0c 02 	orb	$2, %al
     e9b:	00 00 	addb	%al, (%rax)
     e9d:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     ea0:	9b 	wait
     ea1:	0b 39 	orl	(%rcx), %edi
     ea3:	05 00 00 12 01 	addl	$17956864, %eax
     ea8:	71 73 	jno	115 <__debug_info+0x5dd>
     eaa:	6f 	outsl	(%rsi), %dx
     eab:	72 74 	jb	116 <__debug_info+0x5e1>
     ead:	00 0b 	addb	%cl, (%rbx)
     eaf:	a5 	movsl	(%rsi), %es:(%rdi)
     eb0:	07  <unknown>
     eb1:	01 8b 05 00 00 0e 	addl	%ecx, 234881029(%rbx)
     eb7:	be 01 00 00 0e 	movl	$234881025, %esi
     ebc:	0c 02 	orb	$2, %al
     ebe:	00 00 	addb	%al, (%rax)
     ec0:	0e  <unknown>
     ec1:	0c 02 	orb	$2, %al
     ec3:	00 00 	addb	%al, (%rax)
     ec5:	0e  <unknown>
     ec6:	3d 04 00 00 00 	cmpl	$4, %eax
     ecb:	0c 0c 	orb	$12, %al
     ecd:	9d 	popfq
     ece:	0b 66 05 	orl	5(%rsi), %esp
     ed1:	00 00 	addb	%al, (%rax)
     ed3:	13 01 	adcl	(%rcx), %eax
     ed5:	72 61 	jb	97 <__debug_info+0x5f8>
     ed7:	6e 	outsb	(%rsi), %dx
     ed8:	64 00 0b 	addb	%cl, %fs:(%rbx)
     edb:	a7 	cmpsl	%es:(%rdi), (%rsi)
     edc:	06  <unknown>
     edd:	1f  <unknown>
     ede:	01 00 	addl	%eax, (%rax)
     ee0:	00 01 	addb	%al, (%rcx)
     ee2:	0c 0c 	orb	$12, %al
     ee4:	a3 0b 93 05 00 00 12 01 73 	movabsl	%eax, 8286924580548088587
     eed:	72 61 	jb	97 <__debug_info+0x610>
     eef:	6e 	outsb	(%rsi), %dx
     ef0:	64 00 0b 	addb	%cl, %fs:(%rbx)
     ef3:	a9 07 01 c0 05 	testl	$96469255, %eax
     ef8:	00 00 	addb	%al, (%rax)
     efa:	0e  <unknown>
     efb:	2b 01 	subl	(%rcx), %eax
     efd:	00 00 	addb	%al, (%rax)
     eff:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     f02:	a5 	movsl	(%rsi), %es:(%rdi)
     f03:	0b aa 05 00 00 14 	orl	335544325(%rdx), %ebp
     f09:	01 73 74 	addl	%esi, 116(%rbx)
     f0c:	72 74 	jb	116 <__debug_info+0x642>
     f0e:	6f 	outsl	(%rsi), %dx
     f0f:	64 00 0b 	addb	%cl, %fs:(%rbx)
     f12:	aa 	stosb	%al, %es:(%rdi)
     f13:	09 5f 73 	orl	%ebx, 115(%rdi)
     f16:	74 72 	je	114 <__debug_info+0x64a>
     f18:	74 6f 	je	111 <__debug_info+0x649>
     f1a:	64 00 a7 03 00 00 01 	addb	%ah, %fs:16777219(%rdi)
     f21:	f0 	lock
     f22:	05 00 00 0e b1 	addl	$2970484736, %eax
     f27:	03 00 	addl	(%rax), %eax
     f29:	00 0e 	addb	%cl, (%rsi)
     f2b:	f0 	lock
     f2c:	05 00 00 00 06 	addl	$100663296, %eax
     f31:	08 1b 	orb	%bl, (%rbx)
     f33:	02 00 	addb	(%rax), %al
     f35:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     f38:	a6 	cmpsb	%es:(%rdi), (%rsi)
     f39:	0b c8 	orl	%eax, %ecx
     f3b:	05 00 00 0d 01 	addl	$17629184, %eax
     f40:	73 74 	jae	116 <__debug_info+0x676>
     f42:	72 74 	jb	116 <__debug_info+0x678>
     f44:	6f 	outsl	(%rsi), %dx
     f45:	6c 	insb	%dx, %es:(%rdi)
     f46:	00 0b 	addb	%cl, (%rbx)
     f48:	ac 	lodsb	(%rsi), %al
     f49:	07  <unknown>
     f4a:	78 01 	js	1 <__debug_info+0x60d>
     f4c:	00 00 	addb	%al, (%rax)
     f4e:	01 23 	addl	%esp, (%rbx)
     f50:	06  <unknown>
     f51:	00 00 	addb	%al, (%rax)
     f53:	0e  <unknown>
     f54:	b1 03 	movb	$3, %cl
     f56:	00 00 	addb	%al, (%rax)
     f58:	0e  <unknown>
     f59:	f0 	lock
     f5a:	05 00 00 0e 1f 	addl	$521011200, %eax
     f5f:	01 00 	addl	%eax, (%rax)
     f61:	00 00 	addb	%al, (%rax)
     f63:	0c 0c 	orb	$12, %al
     f65:	a7 	cmpsl	%es:(%rdi), (%rsi)
     f66:	0b fe 	orl	%esi, %edi
     f68:	05 00 00 0d 01 	addl	$17629184, %eax
     f6d:	73 74 	jae	116 <__debug_info+0x6a3>
     f6f:	72 74 	jb	116 <__debug_info+0x6a5>
     f71:	6f 	outsl	(%rsi), %dx
     f72:	75 6c 	jne	108 <__debug_info+0x6a0>
     f74:	00 0b 	addb	%cl, (%rbx)
     f76:	b4 03 	movb	$3, %ah
     f78:	84 01 	testb	%al, (%rcx)
     f7a:	00 00 	addb	%al, (%rax)
     f7c:	01 51 06 	addl	%edx, 6(%rcx)
     f7f:	00 00 	addb	%al, (%rax)
     f81:	0e  <unknown>
     f82:	b1 03 	movb	$3, %cl
     f84:	00 00 	addb	%al, (%rax)
     f86:	0e  <unknown>
     f87:	f0 	lock
     f88:	05 00 00 0e 1f 	addl	$521011200, %eax
     f8d:	01 00 	addl	%eax, (%rax)
     f8f:	00 00 	addb	%al, (%rax)
     f91:	0c 0c 	orb	$12, %al
     f93:	a8 0b 	testb	$11, %al
     f95:	2b 06 	subl	(%rsi), %eax
     f97:	00 00 	addb	%al, (%rax)
     f99:	14 01 	adcb	$1, %al
     f9b:	73 79 	jae	121 <__debug_info+0x6d6>
     f9d:	73 74 	jae	116 <__debug_info+0x6d3>
     f9f:	65 6d 	insl	%dx, %es:(%rdi)
     fa1:	00 0b 	addb	%cl, (%rbx)
     fa3:	c3 	retq
     fa4:	06  <unknown>
     fa5:	5f 	popq	%rdi
     fa6:	73 79 	jae	121 <__debug_info+0x6e1>
     fa8:	73 74 	jae	116 <__debug_info+0x6de>
     faa:	65 6d 	insl	%dx, %es:(%rdi)
     fac:	00 1f 	addb	%bl, (%rdi)
     fae:	01 00 	addl	%eax, (%rax)
     fb0:	00 01 	addb	%al, (%rcx)
     fb2:	7c 06 	jl	6 <__debug_info+0x67a>
     fb4:	00 00 	addb	%al, (%rax)
     fb6:	0e  <unknown>
     fb7:	b1 03 	movb	$3, %cl
     fb9:	00 00 	addb	%al, (%rax)
     fbb:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
     fbe:	a9 0b 59 06 00 	testl	$416011, %eax
     fc3:	00 0d 01 77 63 73 	addb	%cl, 1935898369(%rip)
     fc9:	74 6f 	je	111 <__debug_info+0x6fa>
     fcb:	6d 	insl	%dx, %es:(%rdi)
     fcc:	62  <unknown>
     fcd:	73 00 	jae	0 <__debug_info+0x68f>
     fcf:	0b c7 	orl	%edi, %eax
     fd1:	09 0c 02 	orl	%ecx, (%rdx,%rax)
     fd4:	00 00 	addb	%al, (%rax)
     fd6:	01 ab 06 00 00 0e 	addl	%ebp, 234881030(%rbx)
     fdc:	1b 02 	sbbl	(%rdx), %eax
     fde:	00 00 	addb	%al, (%rax)
     fe0:	0e  <unknown>
     fe1:	ab 	stosl	%eax, %es:(%rdi)
     fe2:	06  <unknown>
     fe3:	00 00 	addb	%al, (%rax)
     fe5:	0e  <unknown>
     fe6:	0c 02 	orb	$2, %al
     fe8:	00 00 	addb	%al, (%rax)
     fea:	00 06 	addb	%al, (%rsi)
     fec:	08 2c 05 00 00 0c 0c 	orb	%ch, 202113024(,%rax)
     ff3:	ab 	stosl	%eax, %es:(%rdi)
     ff4:	0b 84 06 00 00 0d 01 	orl	17629184(%rsi,%rax), %eax
     ffb:	77 63 	ja	99 <__debug_info+0x720>
     ffd:	74 6f 	je	111 <__debug_info+0x72e>
     fff:	6d 	insl	%dx, %es:(%rdi)
    1000:	62  <unknown>
    1001:	00 0b 	addb	%cl, (%rbx)
    1003:	c8 06 1f 01 	enter	$7942, $1
    1007:	00 00 	addb	%al, (%rax)
    1009:	01 d9 	addl	%ebx, %ecx
    100b:	06  <unknown>
    100c:	00 00 	addb	%al, (%rax)
    100e:	0e  <unknown>
    100f:	1b 02 	sbbl	(%rdx), %eax
    1011:	00 00 	addb	%al, (%rax)
    1013:	0e  <unknown>
    1014:	21 05 00 00 00 0c 	andl	%eax, 201326592(%rip)
    101a:	0c ac 	orb	$-84, %al
    101c:	0b b9 06 00 00 0c 	orl	201326598(%rcx), %edi
    1022:	0c c8 	orb	$-56, %al
    1024:	0b 18 	orl	(%rax), %ebx
    1026:	03 00 	addl	(%rax), %eax
    1028:	00 0d 01 6c 6c 64 	addb	%cl, 1684827137(%rip)
    102e:	69 76 00 0b 9e 0a 18 	imull	$403349003, (%rsi), %esi
    1035:	03 00 	addl	(%rax), %eax
    1037:	00 01 	addb	%al, (%rcx)
    1039:	08 07 	orb	%al, (%rdi)
    103b:	00 00 	addb	%al, (%rax)
    103d:	0e  <unknown>
    103e:	4d 01 00 	addq	%r8, (%r8)
    1041:	00 0e 	addb	%cl, (%rsi)
    1043:	4d 01 00 	addq	%r8, (%r8)
    1046:	00 00 	addb	%al, (%rax)
    1048:	0c 0c 	orb	$12, %al
    104a:	d8 0b 	fmuls	(%rbx)
    104c:	e9 06 00 00 0d 	jmp	218103814 <__debug_info+0xd000717>
    1051:	01 61 74 	addl	%esp, 116(%rcx)
    1054:	6f 	outsl	(%rsi), %dx
    1055:	6c 	insb	%dx, %es:(%rdi)
    1056:	6c 	insb	%dx, %es:(%rdi)
    1057:	00 0b 	addb	%cl, (%rbx)
    1059:	90 	nop
    105a:	03 4d 01 	addl	1(%rbp), %ecx
    105d:	00 00 	addb	%al, (%rax)
    105f:	01 2a 	addl	%ebp, (%rdx)
    1061:	07  <unknown>
    1062:	00 00 	addb	%al, (%rax)
    1064:	0e  <unknown>
    1065:	b1 03 	movb	$3, %cl
    1067:	00 00 	addb	%al, (%rax)
    1069:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
    106c:	e3 0b 	jrcxz	11 <__debug_info+0x739>
    106e:	10 07 	adcb	%al, (%rdi)
    1070:	00 00 	addb	%al, (%rax)
    1072:	0d 01 73 74 72 	orl	$1920234241, %eax
    1077:	74 6f 	je	111 <__debug_info+0x7a8>
    1079:	6c 	insb	%dx, %es:(%rdi)
    107a:	6c 	insb	%dx, %es:(%rdi)
    107b:	00 0b 	addb	%cl, (%rbx)
    107d:	b1 03 	movb	$3, %cl
    107f:	4d 01 00 	addq	%r8, (%r8)
    1082:	00 01 	addb	%al, (%rcx)
    1084:	58 	popq	%rax
    1085:	07  <unknown>
    1086:	00 00 	addb	%al, (%rax)
    1088:	0e  <unknown>
    1089:	b1 03 	movb	$3, %cl
    108b:	00 00 	addb	%al, (%rax)
    108d:	0e  <unknown>
    108e:	f0 	lock
    108f:	05 00 00 0e 1f 	addl	$521011200, %eax
    1094:	01 00 	addl	%eax, (%rax)
    1096:	00 00 	addb	%al, (%rax)
    1098:	0c 0c 	orb	$12, %al
    109a:	e4 0b 	inb	$11, %al
    109c:	32 07 	xorb	(%rdi), %al
    109e:	00 00 	addb	%al, (%rax)
    10a0:	0d 01 73 74 72 	orl	$1920234241, %eax
    10a5:	74 6f 	je	111 <__debug_info+0x7d6>
    10a7:	75 6c 	jne	108 <__debug_info+0x7d5>
    10a9:	6c 	insb	%dx, %es:(%rdi)
    10aa:	00 0b 	addb	%cl, (%rbx)
    10ac:	b7 03 	movb	$3, %bh
    10ae:	5e 	popq	%rsi
    10af:	01 00 	addl	%eax, (%rax)
    10b1:	00 01 	addb	%al, (%rcx)
    10b3:	87 07 	xchgl	%eax, (%rdi)
    10b5:	00 00 	addb	%al, (%rax)
    10b7:	0e  <unknown>
    10b8:	b1 03 	movb	$3, %cl
    10ba:	00 00 	addb	%al, (%rax)
    10bc:	0e  <unknown>
    10bd:	f0 	lock
    10be:	05 00 00 0e 1f 	addl	$521011200, %eax
    10c3:	01 00 	addl	%eax, (%rax)
    10c5:	00 00 	addb	%al, (%rax)
    10c7:	0c 0c 	orb	$12, %al
    10c9:	e5 0b 	inl	$11, %eax
    10cb:	60  <unknown>
    10cc:	07  <unknown>
    10cd:	00 00 	addb	%al, (%rax)
    10cf:	14 01 	adcb	$1, %al
    10d1:	73 74 	jae	116 <__debug_info+0x807>
    10d3:	72 74 	jb	116 <__debug_info+0x809>
    10d5:	6f 	outsl	(%rsi), %dx
    10d6:	66 00 0b 	addb	%cl, (%rbx)
    10d9:	ab 	stosl	%eax, %es:(%rdi)
    10da:	08 5f 73 	orb	%bl, 115(%rdi)
    10dd:	74 72 	je	114 <__debug_info+0x811>
    10df:	74 6f 	je	111 <__debug_info+0x810>
    10e1:	66 00 b7 07 00 00 01 	addb	%dh, 16777223(%rdi)
    10e8:	b7 07 	movb	$7, %bh
    10ea:	00 00 	addb	%al, (%rax)
    10ec:	0e  <unknown>
    10ed:	b1 03 	movb	$3, %cl
    10ef:	00 00 	addb	%al, (%rax)
    10f1:	0e  <unknown>
    10f2:	f0 	lock
    10f3:	05 00 00 00 02 	addl	$33554432, %eax
    10f8:	04 04 	addb	$4, %al
    10fa:	66 6c 	insb	%dx, %es:(%rdi)
    10fc:	6f 	outsl	(%rsi), %dx
    10fd:	61  <unknown>
    10fe:	74 00 	je	0 <__debug_info+0x7c0>
    1100:	0c 0c 	orb	$12, %al
    1102:	e7 0b 	outl	%eax, $11
    1104:	8f 07 	popq	(%rdi)
    1106:	00 00 	addb	%al, (%rax)
    1108:	0d 01 73 74 72 	orl	$1920234241, %eax
    110d:	74 6f 	je	111 <__debug_info+0x83e>
    110f:	6c 	insb	%dx, %es:(%rdi)
    1110:	64 00 0b 	addb	%cl, %fs:(%rbx)
    1113:	ae 	scasb	%es:(%rdi), %al
    1114:	03 e9 	addl	%ecx, %ebp
    1116:	07  <unknown>
    1117:	00 00 	addb	%al, (%rax)
    1119:	01 e9 	addl	%ebp, %ecx
    111b:	07  <unknown>
    111c:	00 00 	addb	%al, (%rax)
    111e:	0e  <unknown>
    111f:	b1 03 	movb	$3, %cl
    1121:	00 00 	addb	%al, (%rax)
    1123:	0e  <unknown>
    1124:	f0 	lock
    1125:	05 00 00 00 02 	addl	$33554432, %eax
    112a:	10 04 6c 	adcb	%al, (%rsp,%rbp,2)
    112d:	6f 	outsl	(%rsi), %dx
    112e:	6e 	outsb	(%rsi), %dx
    112f:	67 20 64 6f 75 	andb	%ah, 117(%edi,%ebp,2)
    1134:	62  <unknown>
    1135:	6c 	insb	%dx, %es:(%rdi)
    1136:	65 00 0c 0c 	addb	%cl, %gs:(%rsp,%rcx)
    113a:	e8 0b c8 07 00 	callq	509963 <__debug_info+0x7d00a>
    113f:	00 0c 0c 	addb	%cl, (%rsp,%rcx)
    1142:	f0 	lock
    1143:	16  <unknown>
    1144:	18 03 	sbbb	%al, (%rbx)
    1146:	00 00 	addb	%al, (%rax)
    1148:	14 01 	adcb	$1, %al
    114a:	64 69 76 00 0c d5 03 5f 	imull	$1594086668, %fs:(%rsi), %esi
    1152:	5a 	popq	%rdx
    1153:	4e 39 5f 5f 	cmpq	%r11, 95(%rdi)
    1157:	67 6e 	outsb	(%esi), %dx
    1159:	75 5f 	jne	95 <__debug_info+0x87a>
    115b:	63  <unknown>
    115c:	78 78 	js	120 <__debug_info+0x896>
    115e:	33 64 69 76 	xorl	118(%rcx,%rbp,2), %esp
    1162:	45 78 78 	js	120 <__debug_info+0x89d>
    1165:	00 18 	addb	%bl, (%rax)
    1167:	03 00 	addl	(%rax), %eax
    1169:	00 01 	addb	%al, (%rcx)
    116b:	3a 08 	cmpb	(%rax), %cl
    116d:	00 00 	addb	%al, (%rax)
    116f:	0e  <unknown>
    1170:	4d 01 00 	addq	%r8, (%r8)
    1173:	00 0e 	addb	%cl, (%rsi)
    1175:	4d 01 00 	addq	%r8, (%r8)
    1178:	00 00 	addb	%al, (%rax)
    117a:	0c 0c 	orb	$12, %al
    117c:	f5 	cmc
    117d:	16  <unknown>
    117e:	08 08 	orb	%cl, (%rax)
    1180:	00 00 	addb	%al, (%rax)
    1182:	0c 0c 	orb	$12, %al
    1184:	f6 16 	notb	(%rsi)
    1186:	e9 06 00 00 0c 	jmp	201326598 <__debug_info+0xc000851>
    118b:	0c f8 	orb	$-8, %al
    118d:	16  <unknown>
    118e:	10 07 	adcb	%al, (%rdi)
    1190:	00 00 	addb	%al, (%rax)
    1192:	0c 0c 	orb	$12, %al
    1194:	f9 	stc
    1195:	16  <unknown>
    1196:	8f 07 	popq	(%rdi)
    1198:	00 00 	addb	%al, (%rax)
    119a:	0c 0c 	orb	$12, %al
    119c:	fa 	cli
    119d:	16  <unknown>
    119e:	32 07 	xorb	(%rdi), %al
    11a0:	00 00 	addb	%al, (%rax)
    11a2:	0c 0c 	orb	$12, %al
    11a4:	fb 	sti
    11a5:	16  <unknown>
    11a6:	60  <unknown>
    11a7:	07  <unknown>
    11a8:	00 00 	addb	%al, (%rax)
    11aa:	0c 0c 	orb	$12, %al
    11ac:	fc 	cld
    11ad:	16  <unknown>
    11ae:	c8 07 00 00 	enter	$7, $0
    11b2:	0c 0d 	orb	$13, %al
    11b4:	27  <unknown>
    11b5:	0c 64 	orb	$100, %al
    11b7:	03 00 	addl	(%rax), %eax
    11b9:	00 0c 0d 33 0c 98 02 	addb	%cl, 43519027(,%rcx)
    11c0:	00 00 	addb	%al, (%rax)
    11c2:	0c 0d 	orb	$13, %al
    11c4:	34 0c 	xorb	$12, %al
    11c6:	d7 	xlatb
    11c7:	02 00 	addb	(%rax), %al
    11c9:	00 0d 01 61 62 73 	addb	%cl, 1935827201(%rip)
    11cf:	00 0b 	addb	%cl, (%rbx)
    11d1:	89 06 	movl	%eax, (%rsi)
    11d3:	1f  <unknown>
    11d4:	01 00 	addl	%eax, (%rax)
    11d6:	00 01 	addb	%al, (%rcx)
    11d8:	a2 08 00 00 0e 1f 01 00 00 	movabsb	%al, 1232890494984
    11e1:	00 0c 0d 36 0c 8a 08 	addb	%cl, 143264822(,%rcx)
    11e8:	00 00 	addb	%al, (%rax)
    11ea:	14 01 	adcb	$1, %al
    11ec:	61  <unknown>
    11ed:	62  <unknown>
    11ee:	73 00 	jae	0 <__debug_info+0x8b0>
    11f0:	0e  <unknown>
    11f1:	66 03 5f 5a 	addw	90(%rdi), %bx
    11f5:	53 	pushq	%rbx
    11f6:	74 33 	je	51 <__debug_info+0x8eb>
    11f8:	61  <unknown>
    11f9:	62 73 67 00 cc  <unknown>
    11fe:	08 00 	orb	%al, (%rax)
    1200:	00 01 	addb	%al, (%rcx)
    1202:	cc 	int3
    1203:	08 00 	orb	%al, (%rax)
    1205:	00 0e 	addb	%cl, (%rsi)
    1207:	cc 	int3
    1208:	08 00 	orb	%al, (%rax)
    120a:	00 00 	addb	%al, (%rax)
    120c:	02 10 	addb	(%rax), %dl
    120e:	04 5f 	addb	$95, %al
    1210:	5f 	popq	%rdi
    1211:	66 6c 	insb	%dx, %es:(%rdi)
    1213:	6f 	outsl	(%rsi), %dx
    1214:	61  <unknown>
    1215:	74 31 	je	49 <__debug_info+0x908>
    1217:	32 38 	xorb	(%rax), %bh
    1219:	00 0c 0d 36 0c aa 08 	addb	%cl, 145361974(,%rcx)
    1220:	00 00 	addb	%al, (%rax)
    1222:	14 01 	adcb	$1, %al
    1224:	61  <unknown>
    1225:	62  <unknown>
    1226:	73 00 	jae	0 <__debug_info+0x8e8>
    1228:	0e  <unknown>
    1229:	54 	pushq	%rsp
    122a:	03 5f 5a 	addl	90(%rdi), %ebx
    122d:	53 	pushq	%rbx
    122e:	74 33 	je	51 <__debug_info+0x923>
    1230:	61  <unknown>
    1231:	62 73 6e 00 04  <unknown>
    1236:	09 00 	orl	%eax, (%rax)
    1238:	00 01 	addb	%al, (%rcx)
    123a:	04 09 	addb	$9, %al
    123c:	00 00 	addb	%al, (%rax)
    123e:	0e  <unknown>
    123f:	04 09 	addb	$9, %al
    1241:	00 00 	addb	%al, (%rax)
    1243:	00 02 	addb	%al, (%rdx)
    1245:	10 05 5f 5f 69 6e 	adcb	%al, 1852399455(%rip)
    124b:	74 31 	je	49 <__debug_info+0x93e>
    124d:	32 38 	xorb	(%rax), %bh
    124f:	00 0c 0d 36 0c e2 08 	addb	%cl, 149031990(,%rcx)
    1256:	00 00 	addb	%al, (%rax)
    1258:	14 01 	adcb	$1, %al
    125a:	61  <unknown>
    125b:	62  <unknown>
    125c:	73 00 	jae	0 <__debug_info+0x91e>
    125e:	0e  <unknown>
    125f:	4e 03 5f 5a 	addq	90(%rdi), %r11
    1263:	53 	pushq	%rbx
    1264:	74 33 	je	51 <__debug_info+0x959>
    1266:	61  <unknown>
    1267:	62 73 65 00 e9  <unknown>
    126c:	07  <unknown>
    126d:	00 00 	addb	%al, (%rax)
    126f:	01 3a 	addl	%edi, (%rdx)
    1271:	09 00 	orl	%eax, (%rax)
    1273:	00 0e 	addb	%cl, (%rsi)
    1275:	e9 07 00 00 00 	jmp	7 <__debug_info+0x941>
    127a:	0c 0d 	orb	$13, %al
    127c:	36 0c 18 	orb	$24, %al
    127f:	09 00 	orl	%eax, (%rax)
    1281:	00 14 01 	addb	%dl, (%rcx,%rax)
    1284:	61  <unknown>
    1285:	62  <unknown>
    1286:	73 00 	jae	0 <__debug_info+0x948>
    1288:	0e  <unknown>
    1289:	4a 03 5f 5a 	addq	90(%rdi), %rbx
    128d:	53 	pushq	%rbx
    128e:	74 33 	je	51 <__debug_info+0x983>
    1290:	61  <unknown>
    1291:	62 73 66 00 b7  <unknown>
    1296:	07  <unknown>
    1297:	00 00 	addb	%al, (%rax)
    1299:	01 64 09 00 	addl	%esp, (%rcx,%rcx)
    129d:	00 0e 	addb	%cl, (%rsi)
    129f:	b7 07 	movb	$7, %bh
    12a1:	00 00 	addb	%al, (%rax)
    12a3:	00 0c 0d 36 0c 42 09 	addb	%cl, 155323446(,%rcx)
    12aa:	00 00 	addb	%al, (%rax)
    12ac:	14 01 	adcb	$1, %al
    12ae:	61  <unknown>
    12af:	62  <unknown>
    12b0:	73 00 	jae	0 <__debug_info+0x972>
    12b2:	0e  <unknown>
    12b3:	46 03 5f 5a 	addl	90(%rdi), %r11d
    12b7:	53 	pushq	%rbx
    12b8:	74 33 	je	51 <__debug_info+0x9ad>
    12ba:	61  <unknown>
    12bb:	62 73 64 00 a7  <unknown>
    12c0:	03 00 	addl	(%rax), %eax
    12c2:	00 01 	addb	%al, (%rcx)
    12c4:	8e 09 	movw	(%rcx), %cs
    12c6:	00 00 	addb	%al, (%rax)
    12c8:	0e  <unknown>
    12c9:	a7 	cmpsl	%es:(%rdi), (%rsi)
    12ca:	03 00 	addl	(%rax), %eax
    12cc:	00 00 	addb	%al, (%rax)
    12ce:	0c 0d 	orb	$13, %al
    12d0:	36 0c 6c 	orb	$108, %al
    12d3:	09 00 	orl	%eax, (%rax)
    12d5:	00 14 01 	addb	%dl, (%rcx,%rax)
    12d8:	61  <unknown>
    12d9:	62  <unknown>
    12da:	73 00 	jae	0 <__debug_info+0x99c>
    12dc:	0e  <unknown>
    12dd:	3d 03 5f 5a 53 	cmpl	$1398431491, %eax
    12e2:	74 33 	je	51 <__debug_info+0x9d7>
    12e4:	61  <unknown>
    12e5:	62  <unknown>
    12e6:	73 78 	jae	120 <__debug_info+0xa20>
    12e8:	00 4d 01 	addb	%cl, 1(%rbp)
    12eb:	00 00 	addb	%al, (%rax)
    12ed:	01 b8 09 00 00 0e 	addl	%edi, 234881033(%rax)
    12f3:	4d 01 00 	addq	%r8, (%r8)
    12f6:	00 00 	addb	%al, (%rax)
    12f8:	0c 0d 	orb	$13, %al
    12fa:	36 0c 96 	orb	$-106, %al
    12fd:	09 00 	orl	%eax, (%rax)
    12ff:	00 14 01 	addb	%dl, (%rcx,%rax)
    1302:	61  <unknown>
    1303:	62  <unknown>
    1304:	73 00 	jae	0 <__debug_info+0x9c6>
    1306:	0e  <unknown>
    1307:	38 03 	cmpb	%al, (%rbx)
    1309:	5f 	popq	%rdi
    130a:	5a 	popq	%rdx
    130b:	53 	pushq	%rbx
    130c:	74 33 	je	51 <__debug_info+0xa01>
    130e:	61  <unknown>
    130f:	62 73 6c 00 78  <unknown>
    1314:	01 00 	addl	%eax, (%rax)
    1316:	00 01 	addb	%al, (%rcx)
    1318:	e2 09 	loop	9
    131a:	00 00 	addb	%al, (%rax)
    131c:	0e  <unknown>
    131d:	78 01 	js	1 <__debug_info+0x9e0>
    131f:	00 00 	addb	%al, (%rax)
    1321:	00 0c 0d 36 0c c0 09 	addb	%cl, 163580982(,%rcx)
    1328:	00 00 	addb	%al, (%rax)
    132a:	0c 0d 	orb	$13, %al
    132c:	37  <unknown>
    132d:	0c 8e 	orb	$-114, %al
    132f:	03 00 	addl	(%rax), %eax
    1331:	00 0c 0d 38 0c c4 03 	addb	%cl, 63179832(,%rcx)
    1338:	00 00 	addb	%al, (%rax)
    133a:	0c 0d 	orb	$13, %al
    133c:	39 0c e5 03 00 00 0c 	cmpl	%ecx, 201326595
    1343:	0d 3a 0c 06 04 	orl	$67505210, %eax
    1348:	00 00 	addb	%al, (%rax)
    134a:	0c 0d 	orb	$13, %al
    134c:	3c 0c 	cmpb	$12, %al
    134e:	08 08 	orb	%cl, (%rax)
    1350:	00 00 	addb	%al, (%rax)
    1352:	0c 0d 	orb	$13, %al
    1354:	3c 0c 	cmpb	$12, %al
    1356:	5f 	popq	%rdi
    1357:	04 00 	addb	$0, %al
    1359:	00 14 01 	addb	%dl, (%rcx,%rax)
    135c:	64 69 76 00 0c b1 03 5f 	imull	$1594077452, %fs:(%rsi), %esi
    1364:	5a 	popq	%rdx
    1365:	53 	pushq	%rbx
    1366:	74 33 	je	51 <__debug_info+0xa5b>
    1368:	64 69 76 6c 6c 00 d7 02 	imull	$47644780, %fs:108(%rsi), %esi
    1370:	00 00 	addb	%al, (%rax)
    1372:	01 42 0a 	addl	%eax, 10(%rdx)
    1375:	00 00 	addb	%al, (%rax)
    1377:	0e  <unknown>
    1378:	78 01 	js	1 <__debug_info+0xa3b>
    137a:	00 00 	addb	%al, (%rax)
    137c:	0e  <unknown>
    137d:	78 01 	js	1 <__debug_info+0xa40>
    137f:	00 00 	addb	%al, (%rax)
    1381:	00 0c 0d 3c 0c 1a 0a 	addb	%cl, 169479228(,%rcx)
    1388:	00 00 	addb	%al, (%rax)
    138a:	0c 0d 	orb	$13, %al
    138c:	3e 0c 84 	orb	$-124, %al
    138f:	04 00 	addb	$0, %al
    1391:	00 0c 0d 40 0c a7 04 	addb	%cl, 78056512(,%rcx)
    1398:	00 00 	addb	%al, (%rax)
    139a:	0c 0d 	orb	$13, %al
    139c:	43 0c cd 	orb	$-51, %al
    139f:	04 00 	addb	$0, %al
    13a1:	00 0c 0d 44 0c f4 04 	addb	%cl, 83102788(,%rcx)
    13a8:	00 00 	addb	%al, (%rax)
    13aa:	0c 0d 	orb	$13, %al
    13ac:	45 0c 39 	orb	$57, %al
    13af:	05 00 00 0c 0d 	addl	$218890240, %eax
    13b4:	47 0c 66 	orb	$102, %al
    13b7:	05 00 00 0c 0d 	addl	$218890240, %eax
    13bc:	48 0c 93 	orb	$-109, %al
    13bf:	05 00 00 0c 0d 	addl	$218890240, %eax
    13c4:	4a 0c aa 	orb	$-86, %al
    13c7:	05 00 00 0c 0d 	addl	$218890240, %eax
    13cc:	4b 0c c8 	orb	$-56, %al
    13cf:	05 00 00 0c 0d 	addl	$218890240, %eax
    13d4:	4c 0c fe 	orb	$-2, %al
    13d7:	05 00 00 0c 0d 	addl	$218890240, %eax
    13dc:	4d 0c 2b 	orb	$43, %al
    13df:	06  <unknown>
    13e0:	00 00 	addb	%al, (%rax)
    13e2:	0c 0d 	orb	$13, %al
    13e4:	4e 0c 59 	orb	$89, %al
    13e7:	06  <unknown>
    13e8:	00 00 	addb	%al, (%rax)
    13ea:	0c 0d 	orb	$13, %al
    13ec:	50 	pushq	%rax
    13ed:	0c 84 	orb	$-124, %al
    13ef:	06  <unknown>
    13f0:	00 00 	addb	%al, (%rax)
    13f2:	0c 0d 	orb	$13, %al
    13f4:	51 	pushq	%rcx
    13f5:	0c b9 	orb	$-71, %al
    13f7:	06  <unknown>
    13f8:	00 00 	addb	%al, (%rax)
    13fa:	15 1b 02 00 00 	adcl	$539, %eax
    13ff:	c5 0a 00  <unknown>
    1402:	00 16 	addb	%dl, (%rsi)
    1404:	00 0a 	addb	%cl, (%rdx)
    1406:	74 7a 	je	122 <__debug_info+0xb42>
    1408:	6e 	outsb	(%rsi), %dx
    1409:	61  <unknown>
    140a:	6d 	insl	%dx, %es:(%rdi)
    140b:	65 00 0f 	addb	%cl, %gs:(%rdi)
    140e:	61  <unknown>
    140f:	0e  <unknown>
    1410:	ba 0a 00 00 01 	movl	$16777226, %edx
    1415:	01 0a 	addl	%ecx, (%rdx)
    1417:	67 65 74 64 	je	100 <__debug_info+0xb3f>
    141b:	61  <unknown>
    141c:	74 65 	je	101 <__debug_info+0xb43>
    141e:	5f 	popq	%rdi
    141f:	65 72 72 	jb	114 <__debug_info+0xb54>
    1422:	00 0f 	addb	%cl, (%rdi)
    1424:	64 0c 1f 	orb	$31, %al
    1427:	01 00 	addl	%eax, (%rax)
    1429:	00 01 	addb	%al, (%rcx)
    142b:	01 17 	addl	%edx, (%rdi)
    142d:	74 69 	je	105 <__debug_info+0xb58>
    142f:	6d 	insl	%dx, %es:(%rdi)
    1430:	65 7a 6f 	jp	111 <__debug_info+0xb62>
    1433:	6e 	outsb	(%rsi), %dx
    1434:	65 00 0f 	addb	%cl, %gs:(%rdi)
    1437:	66 0d 5f 74 	orw	$29791, %ax
    143b:	69 6d 65 7a 6f 6e 65 	imull	$1701736314, 101(%rbp), %ebp
    1442:	00 78 01 	addb	%bh, 1(%rax)
    1445:	00 00 	addb	%al, (%rax)
    1447:	01 01 	addl	%eax, (%rcx)
    1449:	0a 64 61 79 	orb	121(%rcx), %ah
    144d:	6c 	insb	%dx, %es:(%rdi)
    144e:	69 67 68 74 00 0f 68 	imull	$1745813620, 104(%rdi), %esp
    1455:	0c 1f 	orb	$31, %al
    1457:	01 00 	addl	%eax, (%rax)
    1459:	00 01 	addb	%al, (%rcx)
    145b:	01 03 	addl	%eax, (%rbx)
    145d:	66 70 6f 	jo	111 <__debug_info+0xb8f>
    1460:	73 5f 	jae	95 <__debug_info+0xb81>
    1462:	74 00 	je	0 <__debug_info+0xb24>
    1464:	10 51 19 	adcb	%dl, 25(%rcx)
    1467:	d8 01 	fadds	(%rcx)
    1469:	00 00 	addb	%al, (%rax)
    146b:	07  <unknown>
    146c:	5f 	popq	%rdi
    146d:	5f 	popq	%rdi
    146e:	73 62 	jae	98 <__debug_info+0xb92>
    1470:	75 66 	jne	102 <__debug_info+0xb98>
    1472:	00 10 	addb	%dl, (%rax)
    1474:	10 5c 08 5e 	adcb	%bl, 94(%rax,%rcx)
    1478:	0b 00 	orl	(%rax), %eax
    147a:	00 08 	addb	%cl, (%rax)
    147c:	5f 	popq	%rdi
    147d:	62  <unknown>
    147e:	61  <unknown>
    147f:	73 65 	jae	101 <__debug_info+0xba6>
    1481:	00 10 	addb	%dl, (%rax)
    1483:	5d 	popq	%rbp
    1484:	11 5e 0b 	adcl	%ebx, 11(%rsi)
    1487:	00 00 	addb	%al, (%rax)
    1489:	02 23 	addb	(%rbx), %ah
    148b:	00 08 	addb	%cl, (%rax)
    148d:	5f 	popq	%rdi
    148e:	73 69 	jae	105 <__debug_info+0xbb9>
    1490:	7a 65 	jp	101 <__debug_info+0xbb7>
    1492:	00 10 	addb	%dl, (%rax)
    1494:	5e 	popq	%rsi
    1495:	07  <unknown>
    1496:	1f  <unknown>
    1497:	01 00 	addl	%eax, (%rax)
    1499:	00 02 	addb	%al, (%rdx)
    149b:	23 08 	andl	(%rax), %ecx
    149d:	00 06 	addb	%al, (%rsi)
    149f:	08 d9 	orb	%bl, %cl
    14a1:	00 00 	addb	%al, (%rax)
    14a3:	00 07 	addb	%al, (%rdi)
    14a5:	5f 	popq	%rdi
    14a6:	5f 	popq	%rdi
    14a7:	73 46 	jae	70 <__debug_info+0xbaf>
    14a9:	49 4c  <unknown>
    14ab:	45 00 98 10 7e 10 c9 	addb	%r11b, -921666032(%r8)
    14b2:	0c 00 	orb	$0, %al
    14b4:	00 08 	addb	%cl, (%rax)
    14b6:	5f 	popq	%rdi
    14b7:	70 00 	jo	0 <__debug_info+0xb79>
    14b9:	10 7f 11 	adcb	%bh, 17(%rdi)
    14bc:	5e 	popq	%rsi
    14bd:	0b 00 	orl	(%rax), %eax
    14bf:	00 02 	addb	%al, (%rdx)
    14c1:	23 00 	andl	(%rax), %eax
    14c3:	08 5f 72 	orb	%bl, 114(%rdi)
    14c6:	00 10 	addb	%dl, (%rax)
    14c8:	80 06 1f 	addb	$31, (%rsi)
    14cb:	01 00 	addl	%eax, (%rax)
    14cd:	00 02 	addb	%al, (%rdx)
    14cf:	23 08 	andl	(%rax), %ecx
    14d1:	08 5f 77 	orb	%bl, 119(%rdi)
    14d4:	00 10 	addb	%dl, (%rax)
    14d6:	81 06 1f 01 00 00 	addl	$287, (%rsi)
    14dc:	02 23 	addb	(%rbx), %ah
    14de:	0c 08 	orb	$8, %al
    14e0:	5f 	popq	%rdi
    14e1:	66 6c 	insb	%dx, %es:(%rdi)
    14e3:	61  <unknown>
    14e4:	67 73 00 	jae	0 <__debug_info+0xba7>
    14e7:	10 82 08 ea 00 00 	adcb	%al, 59912(%rdx)
    14ed:	00 02 	addb	%al, (%rdx)
    14ef:	23 10 	andl	(%rax), %edx
    14f1:	08 5f 66 	orb	%bl, 102(%rdi)
    14f4:	69 6c 65 00 10 83 08 ea 	imull	$3926426384, (%rbp), %ebp
    14fc:	00 00 	addb	%al, (%rax)
    14fe:	00 02 	addb	%al, (%rdx)
    1500:	23 12 	andl	(%rdx), %edx
    1502:	08 5f 62 	orb	%bl, 98(%rdi)
    1505:	66 00 10 	addb	%dl, (%rax)
    1508:	84 10 	testb	%dl, (%rax)
    150a:	2b 0b 	subl	(%rbx), %ecx
    150c:	00 00 	addb	%al, (%rax)
    150e:	02 23 	addb	(%rbx), %ah
    1510:	18 08 	sbbb	%cl, (%rax)
    1512:	5f 	popq	%rdi
    1513:	6c 	insb	%dx, %es:(%rdi)
    1514:	62  <unknown>
    1515:	66 73 69 	jae	105 <__debug_info+0xc41>
    1518:	7a 65 	jp	101 <__debug_info+0xc3f>
    151a:	00 10 	addb	%dl, (%rax)
    151c:	85 06 	testl	%eax, (%rsi)
    151e:	1f  <unknown>
    151f:	01 00 	addl	%eax, (%rax)
    1521:	00 02 	addb	%al, (%rdx)
    1523:	23 28 	andl	(%rax), %ebp
    1525:	08 5f 63 	orb	%bl, 99(%rdi)
    1528:	6f 	outsl	(%rsi), %dx
    1529:	6f 	outsl	(%rsi), %dx
    152a:	6b 69 65 00 	imull	$0, 101(%rcx), %ebp
    152e:	10 88 08 be 01 00 	adcb	%cl, 114184(%rax)
    1534:	00 02 	addb	%al, (%rdx)
    1536:	23 30 	andl	(%rax), %esi
    1538:	08 5f 63 	orb	%bl, 99(%rdi)
    153b:	6c 	insb	%dx, %es:(%rdi)
    153c:	6f 	outsl	(%rsi), %dx
    153d:	73 65 	jae	101 <__debug_info+0xc64>
    153f:	00 10 	addb	%dl, (%rax)
    1541:	89 21 	movl	%esp, (%rcx)
    1543:	d8 0c 00 	fmuls	(%rax,%rax)
    1546:	00 02 	addb	%al, (%rdx)
    1548:	23 38 	andl	(%rax), %edi
    154a:	08 5f 72 	orb	%bl, 114(%rdi)
    154d:	65 61  <unknown>
    154f:	64 00 10 	addb	%dl, %fs:(%rax)
    1552:	8a 2e 	movb	(%rsi), %ch
    1554:	f7 0c 00  <unknown>
    1557:	00 02 	addb	%al, (%rdx)
    1559:	23 40 08 	andl	8(%rax), %eax
    155c:	5f 	popq	%rdi
    155d:	73 65 	jae	101 <__debug_info+0xc84>
    155f:	65 6b 00 10 	imull	$16, %gs:(%rax), %eax
    1563:	8b 31 	movl	(%rcx), %esi
    1565:	16  <unknown>
    1566:	0d 00 00 02 23 	orl	$587333632, %eax
    156b:	48 08 5f 77 	orb	%bl, 119(%rdi)
    156f:	72 69 	jb	105 <__debug_info+0xc9a>
    1571:	74 65 	je	101 <__debug_info+0xc98>
    1573:	00 10 	addb	%dl, (%rax)
    1575:	8c 34 35 0d 00 00 02  <unknown>
    157c:	23 50 08 	andl	8(%rax), %edx
    157f:	5f 	popq	%rdi
    1580:	75 62 	jne	98 <__debug_info+0xca4>
    1582:	00 10 	addb	%dl, (%rax)
    1584:	8f 10 2b  <unknown>
    1587:	0b 00 	orl	(%rax), %eax
    1589:	00 02 	addb	%al, (%rdx)
    158b:	23 58 08 	andl	8(%rax), %ebx
    158e:	5f 	popq	%rdi
    158f:	65 78 74 	js	116 <__debug_info+0xcc6>
    1592:	72 61 	jb	97 <__debug_info+0xcb5>
    1594:	00 10 	addb	%dl, (%rax)
    1596:	90 	nop
    1597:	13 46 0d 	adcl	13(%rsi), %eax
    159a:	00 00 	addb	%al, (%rax)
    159c:	02 23 	addb	(%rbx), %ah
    159e:	68 08 5f 75 72 	pushq	$1920294664
    15a3:	00 10 	addb	%dl, (%rax)
    15a5:	91 	xchgl	%ecx, %eax
    15a6:	06  <unknown>
    15a7:	1f  <unknown>
    15a8:	01 00 	addl	%eax, (%rax)
    15aa:	00 02 	addb	%al, (%rdx)
    15ac:	23 70 08 	andl	8(%rax), %esi
    15af:	5f 	popq	%rdi
    15b0:	75 62 	jne	98 <__debug_info+0xcd4>
    15b2:	75 66 	jne	102 <__debug_info+0xcda>
    15b4:	00 10 	addb	%dl, (%rax)
    15b6:	94 	xchgl	%esp, %eax
    15b7:	17  <unknown>
    15b8:	4c 0d 00 00 02 23 	orq	$587333632, %rax
    15be:	74 08 	je	8 <__debug_info+0xc88>
    15c0:	5f 	popq	%rdi
    15c1:	6e 	outsb	(%rsi), %dx
    15c2:	62  <unknown>
    15c3:	75 66 	jne	102 <__debug_info+0xceb>
    15c5:	00 10 	addb	%dl, (%rax)
    15c7:	95 	xchgl	%ebp, %eax
    15c8:	17  <unknown>
    15c9:	5c 	popq	%rsp
    15ca:	0d 00 00 02 23 	orl	$587333632, %eax
    15cf:	77 08 	ja	8 <__debug_info+0xc99>
    15d1:	5f 	popq	%rdi
    15d2:	6c 	insb	%dx, %es:(%rdi)
    15d3:	62  <unknown>
    15d4:	00 10 	addb	%dl, (%rax)
    15d6:	98 	cwtl
    15d7:	10 2b 	adcb	%ch, (%rbx)
    15d9:	0b 00 	orl	(%rax), %eax
    15db:	00 02 	addb	%al, (%rdx)
    15dd:	23 78 08 	andl	8(%rax), %edi
    15e0:	5f 	popq	%rdi
    15e1:	62  <unknown>
    15e2:	6c 	insb	%dx, %es:(%rdi)
    15e3:	6b 73 69 7a 	imull	$122, 105(%rbx), %esi
    15e7:	65 00 10 	addb	%dl, %gs:(%rax)
    15ea:	9b 	wait
    15eb:	06  <unknown>
    15ec:	1f  <unknown>
    15ed:	01 00 	addl	%eax, (%rax)
    15ef:	00 03 	addb	%al, (%rbx)
    15f1:	23 88 01 08 5f 6f 	andl	1868498945(%rax), %ecx
    15f7:	66 66 73 65 	jae	101 <__debug_info+0xd20>
    15fb:	74 00 	je	0 <__debug_info+0xcbd>
    15fd:	10 9c 09 1c 0b 00 00 	adcb	%bl, 2844(%rcx,%rcx)
    1604:	03 23 	addl	(%rbx), %esp
    1606:	90 	nop
    1607:	01 00 	addl	%eax, (%rax)
    1609:	11 1f 	adcl	%ebx, (%rdi)
    160b:	01 00 	addl	%eax, (%rax)
    160d:	00 d8 	addb	%bl, %al
    160f:	0c 00 	orb	$0, %al
    1611:	00 0e 	addb	%cl, (%rsi)
    1613:	be 01 00 00 00 	movl	$1, %esi
    1618:	06  <unknown>
    1619:	08 c9 	orb	%cl, %cl
    161b:	0c 00 	orb	$0, %al
    161d:	00 11 	addb	%dl, (%rcx)
    161f:	1f  <unknown>
    1620:	01 00 	addl	%eax, (%rax)
    1622:	00 f7 	addb	%dh, %bh
    1624:	0c 00 	orb	$0, %al
    1626:	00 0e 	addb	%cl, (%rsi)
    1628:	be 01 00 00 0e 	movl	$234881025, %esi
    162d:	1b 02 	sbbl	(%rdx), %eax
    162f:	00 00 	addb	%al, (%rax)
    1631:	0e  <unknown>
    1632:	1f  <unknown>
    1633:	01 00 	addl	%eax, (%rax)
    1635:	00 00 	addb	%al, (%rax)
    1637:	06  <unknown>
    1638:	08 de 	orb	%bl, %dh
    163a:	0c 00 	orb	$0, %al
    163c:	00 11 	addb	%dl, (%rcx)
    163e:	1c 0b 	sbbb	$11, %al
    1640:	00 00 	addb	%al, (%rax)
    1642:	16  <unknown>
    1643:	0d 00 00 0e be 	orl	$3188588544, %eax
    1648:	01 00 	addl	%eax, (%rax)
    164a:	00 0e 	addb	%cl, (%rsi)
    164c:	1c 0b 	sbbb	$11, %al
    164e:	00 00 	addb	%al, (%rax)
    1650:	0e  <unknown>
    1651:	1f  <unknown>
    1652:	01 00 	addl	%eax, (%rax)
    1654:	00 00 	addb	%al, (%rax)
    1656:	06  <unknown>
    1657:	08 fd 	orb	%bh, %ch
    1659:	0c 00 	orb	$0, %al
    165b:	00 11 	addb	%dl, (%rcx)
    165d:	1f  <unknown>
    165e:	01 00 	addl	%eax, (%rax)
    1660:	00 35 0d 00 00 0e 	addb	%dh, 234881037(%rip)
    1666:	be 01 00 00 0e 	movl	$234881025, %esi
    166b:	b1 03 	movb	$3, %cl
    166d:	00 00 	addb	%al, (%rax)
    166f:	0e  <unknown>
    1670:	1f  <unknown>
    1671:	01 00 	addl	%eax, (%rax)
    1673:	00 00 	addb	%al, (%rax)
    1675:	06  <unknown>
    1676:	08 1c 0d 00 00 18 5f 	orb	%bl, 1595408384(,%rcx)
    167d:	5f 	popq	%rdi
    167e:	73 46 	jae	70 <__debug_info+0xd86>
    1680:	49 4c  <unknown>
    1682:	45 58 	popq	%r8
    1684:	00 01 	addb	%al, (%rcx)
    1686:	06  <unknown>
    1687:	08 3b 	orb	%bh, (%rbx)
    1689:	0d 00 00 15 d9 	orl	$3642032128, %eax
    168e:	00 00 	addb	%al, (%rax)
    1690:	00 5c 0d 00 	addb	%bl, (%rbp,%rcx)
    1694:	00 19 	addb	%bl, (%rcx)
    1696:	84 01 	testb	%al, (%rcx)
    1698:	00 00 	addb	%al, (%rax)
    169a:	02 00 	addb	(%rax), %al
    169c:	15 d9 00 00 00 	adcl	$217, %eax
    16a1:	6c 	insb	%dx, %es:(%rdi)
    16a2:	0d 00 00 19 84 	orl	$2216230912, %eax
    16a7:	01 00 	addl	%eax, (%rax)
    16a9:	00 00 	addb	%al, (%rax)
    16ab:	00 03 	addb	%al, (%rbx)
    16ad:	46 49  <unknown>
    16af:	4c 45  <unknown>
    16b1:	00 10 	addb	%dl, (%rax)
    16b3:	9d 	popfq
    16b4:	03 64 0b 00 	addl	(%rbx,%rcx), %esp
    16b8:	00 0a 	addb	%cl, (%rdx)
    16ba:	5f 	popq	%rdi
    16bb:	5f 	popq	%rdi
    16bc:	73 74 	jae	116 <__debug_info+0xdf2>
    16be:	64 69 6e 70 00 11 51 0e 	imull	$240193792, %fs:112(%rsi), %ebp
    16c6:	8c 0d 00 00 01 01 	movw	%cs, 16842752(%rip)
    16cc:	06  <unknown>
    16cd:	08 6c 0d 00 	orb	%ch, (%rbp,%rcx)
    16d1:	00 0a 	addb	%cl, (%rdx)
    16d3:	5f 	popq	%rdi
    16d4:	5f 	popq	%rdi
    16d5:	73 74 	jae	116 <__debug_info+0xe0b>
    16d7:	64 6f 	outsl	%fs:(%rsi), %dx
    16d9:	75 74 	jne	116 <__debug_info+0xe0f>
    16db:	70 00 	jo	0 <__debug_info+0xd9d>
    16dd:	11 52 0e 	adcl	%edx, 14(%rdx)
    16e0:	8c 0d 00 00 01 01 	movw	%cs, 16842752(%rip)
    16e6:	0a 5f 5f 	orb	95(%rdi), %bl
    16e9:	73 74 	jae	116 <__debug_info+0xe1f>
    16eb:	64 65 72 72 	jb	114 <__debug_info+0xe21>
    16ef:	70 00 	jo	0 <__debug_info+0xdb1>
    16f1:	11 53 0e 	adcl	%edx, 14(%rbx)
    16f4:	8c 0d 00 00 01 01 	movw	%cs, 16842752(%rip)
    16fa:	0b 73 79 	orl	121(%rbx), %esi
    16fd:	73 5f 	jae	95 <__debug_info+0xe1e>
    16ff:	6e 	outsb	(%rsi), %dx
    1700:	65 72 72 	jb	114 <__debug_info+0xe35>
    1703:	00 11 	addb	%dl, (%rcx)
    1705:	81 01 14 26 01 00 	addl	$75284, (%rcx)
    170b:	00 01 	addb	%al, (%rcx)
    170d:	01 15 b7 03 00 00 	addl	%edx, 951(%rip)
    1713:	d9 0d 00 00 16 00  <unknown>
    1719:	0b 73 79 	orl	121(%rbx), %esi
    171c:	73 5f 	jae	95 <__debug_info+0xe3d>
    171e:	65 72 72 	jb	114 <__debug_info+0xe53>
    1721:	6c 	insb	%dx, %es:(%rdi)
    1722:	69 73 74 00 11 82 01 	imull	$25301248, 116(%rbx), %esi
    1729:	1e  <unknown>
    172a:	ce  <unknown>
    172b:	0d 00 00 01 01 	orl	$16842752, %eax
    1730:	03 5f 5f 	addl	95(%rdi), %ebx
    1733:	76 32 	jbe	50 <__debug_info+0xe27>
    1735:	64 75 00 	jne	0 <__debug_info+0xdf8>
    1738:	02 2a 	addb	(%rdx), %ch
    173a:	1c ff 	sbbb	$-1, %al
    173c:	0d 00 00 1a 01 	orl	$18481152, %eax
    1741:	5e 	popq	%rsi
    1742:	01 00 	addl	%eax, (%rax)
    1744:	00 0c 0e 	addb	%cl, (%rsi,%rcx)
    1747:	00 00 	addb	%al, (%rax)
    1749:	1b 01 	sbbl	(%rcx), %eax
    174b:	00 03 	addb	%al, (%rbx)
    174d:	5f 	popq	%rdi
    174e:	5f 	popq	%rdi
    174f:	76 34 	jbe	52 <__debug_info+0xe45>
    1751:	73 69 	jae	105 <__debug_info+0xe7c>
    1753:	00 02 	addb	%al, (%rdx)
    1755:	2b 0d 1b 0e 00 00 	subl	3611(%rip), %ecx
    175b:	1a 01 	sbbb	(%rcx), %al
    175d:	1f  <unknown>
    175e:	01 00 	addl	%eax, (%rax)
    1760:	00 28 	addb	%ch, (%rax)
    1762:	0e  <unknown>
    1763:	00 00 	addb	%al, (%rax)
    1765:	1b 03 	sbbl	(%rbx), %eax
    1767:	00 03 	addb	%al, (%rbx)
    1769:	5f 	popq	%rdi
    176a:	5f 	popq	%rdi
    176b:	76 34 	jbe	52 <__debug_info+0xe61>
    176d:	73 75 	jae	117 <__debug_info+0xea4>
    176f:	00 02 	addb	%al, (%rdx)
    1771:	2c 16 	subb	$22, %al
    1773:	37  <unknown>
    1774:	0e  <unknown>
    1775:	00 00 	addb	%al, (%rax)
    1777:	1a 01 	sbbb	(%rcx), %al
    1779:	2b 01 	subl	(%rcx), %eax
    177b:	00 00 	addb	%al, (%rax)
    177d:	44 0e  <unknown>
    177f:	00 00 	addb	%al, (%rax)
    1781:	1b 03 	sbbl	(%rbx), %eax
    1783:	00 03 	addb	%al, (%rbx)
    1785:	5f 	popq	%rdi
    1786:	5f 	popq	%rdi
    1787:	6d 	insl	%dx, %es:(%rdi)
    1788:	31 32 	xorl	%esi, (%rdx)
    178a:	38 69 00 	cmpb	%ch, (%rcx)
    178d:	02 34 13 	addb	(%rbx,%rdx), %dh
    1790:	59 	popq	%rcx
    1791:	0e  <unknown>
    1792:	00 00 	addb	%al, (%rax)
    1794:	04 44 	addb	$68, %al
    1796:	0e  <unknown>
    1797:	00 00 	addb	%al, (%rax)
    1799:	1a 01 	sbbb	(%rcx), %al
    179b:	4d 01 00 	addq	%r8, (%r8)
    179e:	00 66 0e 	addb	%ah, 14(%rsi)
    17a1:	00 00 	addb	%al, (%rax)
    17a3:	1b 01 	sbbl	(%rcx), %eax
    17a5:	00 0b 	addb	%cl, (%rbx)
    17a7:	6f 	outsl	(%rsi), %dx
    17a8:	70 74 	jo	116 <__debug_info+0xede>
    17aa:	61  <unknown>
    17ab:	72 67 	jb	103 <__debug_info+0xed4>
    17ad:	00 12 	addb	%dl, (%rdx)
    17af:	fe 01 	incb	(%rcx)
    17b1:	0e  <unknown>
    17b2:	1b 02 	sbbl	(%rdx), %eax
    17b4:	00 00 	addb	%al, (%rax)
    17b6:	01 01 	addl	%eax, (%rcx)
    17b8:	0b 6f 70 	orl	112(%rdi), %ebp
    17bb:	74 69 	je	105 <__debug_info+0xee6>
    17bd:	6e 	outsb	(%rsi), %dx
    17be:	64 00 12 	addb	%dl, %fs:(%rdx)
    17c1:	ff 01 	incl	(%rcx)
    17c3:	0c 1f 	orb	$31, %al
    17c5:	01 00 	addl	%eax, (%rax)
    17c7:	00 01 	addb	%al, (%rcx)
    17c9:	01 0b 	addl	%ecx, (%rbx)
    17cb:	6f 	outsl	(%rsi), %dx
    17cc:	70 74 	jo	116 <__debug_info+0xf02>
    17ce:	65 72 72 	jb	114 <__debug_info+0xf03>
    17d1:	00 12 	addb	%dl, (%rdx)
    17d3:	ff 01 	incl	(%rcx)
    17d5:	14 1f 	adcb	$31, %al
    17d7:	01 00 	addl	%eax, (%rax)
    17d9:	00 01 	addb	%al, (%rcx)
    17db:	01 0b 	addl	%ecx, (%rbx)
    17dd:	6f 	outsl	(%rsi), %dx
    17de:	70 74 	jo	116 <__debug_info+0xf14>
    17e0:	6f 	outsl	(%rsi), %dx
    17e1:	70 74 	jo	116 <__debug_info+0xf17>
    17e3:	00 12 	addb	%dl, (%rdx)
    17e5:	ff 01 	incl	(%rcx)
    17e7:	1c 1f 	sbbb	$31, %al
    17e9:	01 00 	addl	%eax, (%rax)
    17eb:	00 01 	addb	%al, (%rcx)
    17ed:	01 0b 	addl	%ecx, (%rbx)
    17ef:	6f 	outsl	(%rsi), %dx
    17f0:	70 74 	jo	116 <__debug_info+0xf26>
    17f2:	72 65 	jb	101 <__debug_info+0xf19>
    17f4:	73 65 	jae	101 <__debug_info+0xf1b>
    17f6:	74 00 	je	0 <__debug_info+0xeb8>
    17f8:	12 11 	adcb	(%rcx), %dl
    17fa:	03 0c 1f 	addl	(%rdi,%rbx), %ecx
    17fd:	01 00 	addl	%eax, (%rax)
    17ff:	00 01 	addb	%al, (%rcx)
    1801:	01 07 	addl	%eax, (%rdi)
    1803:	66 61  <unknown>
    1805:	73 74 	jae	116 <__debug_info+0xf3b>
    1807:	72 61 	jb	97 <__debug_info+0xf2a>
    1809:	6e 	outsb	(%rsi), %dx
    180a:	64 5f 	popq	%rdi
    180c:	74 00 	je	0 <__debug_info+0xece>
    180e:	60  <unknown>
    180f:	01 09 	addl	%ecx, (%rcx)
    1811:	10 2c 0f 	adcb	%ch, (%rdi,%rcx)
    1814:	00 00 	addb	%al, (%rax)
    1816:	08 61 00 	orb	%ah, (%rcx)
    1819:	01 0e 	addl	%ecx, (%rsi)
    181b:	0c 2c 	orb	$44, %al
    181d:	0f 00 00 	sldtw	(%rax)
    1820:	02 23 	addb	(%rbx), %ah
    1822:	00 08 	addb	%cl, (%rax)
    1824:	62  <unknown>
    1825:	00 01 	addb	%al, (%rcx)
    1827:	0f 0c  <unknown>
    1829:	2c 0f 	subb	$15, %al
    182b:	00 00 	addb	%al, (%rax)
    182d:	02 23 	addb	(%rbx), %ah
    182f:	10 08 	adcb	%cl, (%rax)
    1831:	6d 	insl	%dx, %es:(%rdi)
    1832:	61  <unknown>
    1833:	73 6b 	jae	107 <__debug_info+0xf60>
    1835:	00 01 	addb	%al, (%rcx)
    1837:	10 0f 	adcb	%cl, (%rdi)
    1839:	2c 0f 	subb	$15, %al
    183b:	00 00 	addb	%al, (%rax)
    183d:	02 23 	addb	(%rbx), %ah
    183f:	20 08 	andb	%cl, (%rax)
    1841:	6d 	insl	%dx, %es:(%rdi)
    1842:	31 00 	xorl	%eax, (%rax)
    1844:	01 11 	addl	%edx, (%rcx)
    1846:	0d 2c 0f 00 00 	orl	$3884, %eax
    184b:	02 23 	addb	(%rbx), %ah
    184d:	30 08 	xorb	%cl, (%rax)
    184f:	6d 	insl	%dx, %es:(%rdi)
    1850:	32 00 	xorb	(%rax), %al
    1852:	01 12 	addl	%edx, (%rdx)
    1854:	0d 2c 0f 00 00 	orl	$3884, %eax
    1859:	02 23 	addb	(%rbx), %ah
    185b:	40 08 72 65 	orb	%sil, 101(%rdx)
    185f:	73 00 	jae	0 <__debug_info+0xf21>
    1861:	01 17 	addl	%edx, (%rdi)
    1863:	0e  <unknown>
    1864:	2c 0f 	subb	$15, %al
    1866:	00 00 	addb	%al, (%rax)
    1868:	02 23 	addb	(%rbx), %ah
    186a:	50 	pushq	%rax
    186b:	00 15 1f 01 00 00 	addb	%dl, 287(%rip)
    1871:	3c 0f 	cmpb	$15, %al
    1873:	00 00 	addb	%al, (%rax)
    1875:	19 84 01 00 00 03 00 	sbbl	%eax, 196608(%rcx,%rax)
    187c:	03 66 61 	addl	97(%rsi), %esp
    187f:	73 74 	jae	116 <__debug_info+0xfb5>
    1881:	72 61 	jb	97 <__debug_info+0xfa4>
    1883:	6e 	outsb	(%rsi), %dx
    1884:	64 00 01 	addb	%al, %fs:(%rcx)
    1887:	19 03 	sbbl	%eax, (%rbx)
    1889:	c2 0e 00 	retq	$14
    188c:	00 1c 01 	addb	%bl, (%rcx,%rax)
    188f:	6d 	insl	%dx, %es:(%rdi)
    1890:	61  <unknown>
    1891:	69 6e 00 04 0a 05 1f 	imull	$520423940, (%rsi), %ebp
    1898:	01 00 	addl	%eax, (%rax)
    189a:	00 6a 04 	addb	%ch, 4(%rdx)
    189d:	00 00 	addb	%al, (%rax)
    189f:	00 00 	addb	%al, (%rax)
    18a1:	00 00 	addb	%al, (%rax)
    18a3:	0a 07 	orb	(%rdi), %al
    18a5:	00 00 	addb	%al, (%rax)
    18a7:	00 00 	addb	%al, (%rax)
    18a9:	00 00 	addb	%al, (%rax)
    18ab:	00 00 	addb	%al, (%rax)
    18ad:	00 00 	addb	%al, (%rax)
    18af:	ec 	inb	%dx, %al
    18b0:	10 00 	adcb	%al, (%rax)
    18b2:	00 1d 61 72 67 63 	addb	%bl, 1667723873(%rip)
    18b8:	00 04 0a 	addb	%al, (%rdx,%rcx)
    18bb:	0e  <unknown>
    18bc:	1f  <unknown>
    18bd:	01 00 	addl	%eax, (%rax)
    18bf:	00 03 	addb	%al, (%rbx)
    18c1:	91 	xchgl	%ecx, %eax
    18c2:	9c 	pushfq
    18c3:	7e 1d 	jle	29 <__debug_info+0xfa2>
    18c5:	61  <unknown>
    18c6:	72 67 	jb	103 <__debug_info+0xfef>
    18c8:	76 00 	jbe	0 <__debug_info+0xf8a>
    18ca:	04 0a 	addb	$10, %al
    18cc:	1b f0 	sbbl	%eax, %esi
    18ce:	05 00 00 03 91 	addl	$2432892928, %eax
    18d3:	90 	nop
    18d4:	7e 1e 	jle	30 <__debug_info+0xfb4>
    18d6:	73 74 	jae	116 <__debug_info+0x100c>
    18d8:	61  <unknown>
    18d9:	72 74 	jb	116 <__debug_info+0x100f>
    18db:	00 04 0b 	addb	%al, (%rbx,%rcx)
    18de:	14 31 	adcb	$49, %al
    18e0:	02 00 	addb	(%rax), %al
    18e2:	00 03 	addb	%al, (%rbx)
    18e4:	91 	xchgl	%ecx, %eax
    18e5:	90 	nop
    18e6:	7f 1e 	jg	30 <__debug_info+0xfc6>
    18e8:	65 6e 	outsb	%gs:(%rsi), %dx
    18ea:	64 00 04 0c 	addb	%al, %fs:(%rsp,%rcx)
    18ee:	14 31 	adcb	$49, %al
    18f0:	02 00 	addb	(%rax), %al
    18f2:	00 03 	addb	%al, (%rbx)
    18f4:	91 	xchgl	%ecx, %eax
    18f5:	80 7f 1e 73 	cmpb	$115, 30(%rdi)
    18f9:	74 61 	je	97 <__debug_info+0x101c>
    18fb:	72 74 	jb	116 <__debug_info+0x1031>
    18fd:	5f 	popq	%rdi
    18fe:	74 00 	je	0 <__debug_info+0xfc0>
    1900:	04 0e 	addb	$14, %al
    1902:	13 84 01 00 00 02 91 	adcl	-1862139904(%rcx,%rax), %eax
    1909:	50 	pushq	%rax
    190a:	1e  <unknown>
    190b:	72 61 	jb	97 <__debug_info+0x102e>
    190d:	6e 	outsb	(%rsi), %dx
    190e:	64 6f 	outsl	%fs:(%rsi), %dx
    1910:	6d 	insl	%dx, %es:(%rdi)
    1911:	5f 	popq	%rdi
    1912:	62  <unknown>
    1913:	75 66 	jne	102 <__debug_info+0x103b>
    1915:	66 65 72 00 	jb	0 <__debug_info+0xfd9>
    1919:	04 10 	addb	$16, %al
    191b:	0c be 	orb	$-66, %al
    191d:	01 00 	addl	%eax, (%rax)
    191f:	00 02 	addb	%al, (%rdx)
    1921:	91 	xchgl	%ecx, %eax
    1922:	48 1e  <unknown>
    1924:	6c 	insb	%dx, %es:(%rdi)
    1925:	6f 	outsl	(%rsi), %dx
    1926:	6e 	outsb	(%rsi), %dx
    1927:	67 5f 	popq	%rdi
    1929:	72 61 	jb	97 <__debug_info+0x104c>
    192b:	6e 	outsb	(%rsi), %dx
    192c:	64 6f 	outsl	%fs:(%rsi), %dx
    192e:	6d 	insl	%dx, %es:(%rdi)
    192f:	5f 	popq	%rdi
    1930:	62  <unknown>
    1931:	75 66 	jne	102 <__debug_info+0x1059>
    1933:	66 65 72 00 	jb	0 <__debug_info+0xff7>
    1937:	04 11 	addb	$17, %al
    1939:	1e  <unknown>
    193a:	ec 	inb	%dx, %al
    193b:	10 00 	adcb	%al, (%rax)
    193d:	00 02 	addb	%al, (%rdx)
    193f:	91 	xchgl	%ecx, %eax
    1940:	40 1e  <unknown>
    1942:	69 6e 74 5f 72 61 6e 	imull	$1851880031, 116(%rsi), %ebp
    1949:	64 6f 	outsl	%fs:(%rsi), %dx
    194b:	6d 	insl	%dx, %es:(%rdi)
    194c:	5f 	popq	%rdi
    194d:	62  <unknown>
    194e:	75 66 	jne	102 <__debug_info+0x1076>
    1950:	66 65 72 00 	jb	0 <__debug_info+0x1014>
    1954:	04 12 	addb	$18, %al
    1956:	0b f2 	orl	%edx, %esi
    1958:	10 00 	adcb	%al, (%rax)
    195a:	00 03 	addb	%al, (%rbx)
    195c:	91 	xchgl	%ecx, %eax
    195d:	b8 7f 1e 6e 00 	movl	$7216767, %eax
    1962:	04 13 	addb	$19, %al
    1964:	09 1f 	orl	%ebx, (%rdi)
    1966:	01 00 	addl	%eax, (%rax)
    1968:	00 02 	addb	%al, (%rdx)
    196a:	91 	xchgl	%ecx, %eax
    196b:	6c 	insb	%dx, %es:(%rdi)
    196c:	1e  <unknown>
    196d:	65 6e 	outsb	%gs:(%rsi), %dx
    196f:	64 5f 	popq	%rdi
    1971:	74 00 	je	0 <__debug_info+0x1033>
    1973:	04 1e 	addb	$30, %al
    1975:	13 84 01 00 00 03 91 	adcl	-1862074368(%rcx,%rax), %eax
    197c:	b0 7f 	movb	$127, %al
    197e:	1e  <unknown>
    197f:	66 00 04 25 0e 3c 0f 00 	addb	%al, 998414
    1987:	00 03 	addb	%al, (%rbx)
    1989:	91 	xchgl	%ecx, %eax
    198a:	a0 7e 1f cf 04 00 00 00 00 	movabsb	80682878, %al
    1993:	00 00 	addb	%al, (%rax)
    1995:	1f  <unknown>
    1996:	05 00 00 00 00 	addl	$0, %eax
    199b:	00 00 	addb	%al, (%rax)
    199d:	ad 	lodsl	(%rsi), %eax
    199e:	10 00 	adcb	%al, (%rax)
    19a0:	00 1e 	addb	%bl, (%rsi)
    19a2:	69 00 04 15 0e 1f 	imull	$521016580, (%rax), %eax
    19a8:	01 00 	addl	%eax, (%rax)
    19aa:	00 02 	addb	%al, (%rdx)
    19ac:	91 	xchgl	%ecx, %eax
    19ad:	68 20 df 04 00 	pushq	$319264
    19b2:	00 00 	addb	%al, (%rax)
    19b4:	00 00 	addb	%al, (%rax)
    19b6:	00 19 	addb	%bl, (%rcx)
    19b8:	05 00 00 00 00 	addl	$0, %eax
    19bd:	00 00 	addb	%al, (%rax)
    19bf:	1e  <unknown>
    19c0:	6a 00 	pushq	$0
    19c2:	04 17 	addb	$23, %al
    19c4:	13 1f 	adcl	(%rdi), %ebx
    19c6:	01 00 	addl	%eax, (%rax)
    19c8:	00 02 	addb	%al, (%rdx)
    19ca:	91 	xchgl	%ecx, %eax
    19cb:	64 21 b2 15 00 00 04 	andl	%esi, %fs:67108885(%rdx)
    19d2:	05 00 00 00 00 	addl	$0, %eax
    19d7:	00 00 	addb	%al, (%rax)
    19d9:	0f 05 	syscall
    19db:	00 00 	addb	%al, (%rax)
    19dd:	00 00 	addb	%al, (%rax)
    19df:	00 00 	addb	%al, (%rax)
    19e1:	22 e5 	andb	%ch, %ah
    19e3:	15 00 00 03 91 	adcl	$2432892928, %eax
    19e8:	a8 7f 	testb	$127, %al
    19ea:	00 00 	addb	%al, (%rax)
    19ec:	00 20 	addb	%ah, (%rax)
    19ee:	cd 05 	int	$5
    19f0:	00 00 	addb	%al, (%rax)
    19f2:	00 00 	addb	%al, (%rax)
    19f4:	00 00 	addb	%al, (%rax)
    19f6:	87 06 	xchgl	%eax, (%rsi)
    19f8:	00 00 	addb	%al, (%rax)
    19fa:	00 00 	addb	%al, (%rax)
    19fc:	00 00 	addb	%al, (%rax)
    19fe:	1e  <unknown>
    19ff:	69 00 04 26 0e 1f 	imull	$521020932, (%rax), %eax
    1a05:	01 00 	addl	%eax, (%rax)
    1a07:	00 02 	addb	%al, (%rdx)
    1a09:	91 	xchgl	%ecx, %eax
    1a0a:	60  <unknown>
    1a0b:	20 e1 	andb	%ah, %cl
    1a0d:	05 00 00 00 00 	addl	$0, %eax
    1a12:	00 00 	addb	%al, (%rax)
    1a14:	7e 06 	jle	6 <__debug_info+0x10dc>
    1a16:	00 00 	addb	%al, (%rax)
    1a18:	00 00 	addb	%al, (%rax)
    1a1a:	00 00 	addb	%al, (%rax)
    1a1c:	1e  <unknown>
    1a1d:	6a 00 	pushq	$0
    1a1f:	04 28 	addb	$40, %al
    1a21:	12 1f 	adcb	(%rdi), %bl
    1a23:	01 00 	addl	%eax, (%rax)
    1a25:	00 02 	addb	%al, (%rdx)
    1a27:	91 	xchgl	%ecx, %eax
    1a28:	5c 	popq	%rsp
    1a29:	00 00 	addb	%al, (%rax)
    1a2b:	00 06 	addb	%al, (%rsi)
    1a2d:	08 5e 01 	orb	%bl, 1(%rsi)
    1a30:	00 00 	addb	%al, (%rax)
    1a32:	06  <unknown>
    1a33:	08 1f 	orb	%bl, (%rdi)
    1a35:	01 00 	addl	%eax, (%rax)
    1a37:	00 23 	addb	%ah, (%rbx)
    1a39:	46 61  <unknown>
    1a3b:	73 74 	jae	116 <__debug_info+0x1171>
    1a3d:	52 	pushq	%rdx
    1a3e:	61  <unknown>
    1a3f:	6e 	outsb	(%rsi), %dx
    1a40:	64 00 01 	addb	%al, %fs:(%rcx)
    1a43:	39 14 da 	cmpl	%edx, (%rdx,%rbx,8)
    1a46:	00 00 	addb	%al, (%rax)
    1a48:	00 00 	addb	%al, (%rax)
    1a4a:	00 00 	addb	%al, (%rax)
    1a4c:	00 6a 04 	addb	%ch, 4(%rdx)
    1a4f:	00 00 	addb	%al, (%rax)
    1a51:	00 00 	addb	%al, (%rax)
    1a53:	00 00 	addb	%al, (%rax)
    1a55:	60  <unknown>
    1a56:	00 00 	addb	%al, (%rax)
    1a58:	00 50 15 	addb	%dl, 21(%rax)
    1a5b:	00 00 	addb	%al, (%rax)
    1a5d:	1d 66 00 01 39 	sbbl	$956366950, %eax
    1a62:	27  <unknown>
    1a63:	50 	pushq	%rax
    1a64:	15 00 00 03 91 	adcl	$2432892928, %eax
    1a69:	f8 	clc
    1a6a:	79 1e 	jns	30 <__debug_info+0x114a>
    1a6c:	61  <unknown>
    1a6d:	00 01 	addb	%al, (%rcx)
    1a6f:	3b 0d 44 0e 00 00 	cmpl	3652(%rip), %ecx
    1a75:	02 91 60 1e 62 00 	addb	6430304(%rcx), %dl
    1a7b:	01 3c 0d 44 0e 00 00 	addl	%edi, 3652(,%rcx)
    1a82:	02 91 50 1e 6d 61 	addb	1634541136(%rcx), %dl
    1a88:	73 6b 	jae	107 <__debug_info+0x11b5>
    1a8a:	00 01 	addb	%al, (%rcx)
    1a8c:	3e 13 54 0e 00 	adcl	%ds:(%rsi,%rcx), %edx
    1a91:	00 02 	addb	%al, (%rdx)
    1a93:	91 	xchgl	%ecx, %eax
    1a94:	40 1e  <unknown>
    1a96:	6d 	insl	%dx, %es:(%rdi)
    1a97:	31 00 	xorl	%eax, (%rax)
    1a99:	01 3f 	addl	%edi, (%rdi)
    1a9b:	13 54 0e 00 	adcl	(%rsi,%rcx), %edx
    1a9f:	00 03 	addb	%al, (%rbx)
    1aa1:	91 	xchgl	%ecx, %eax
    1aa2:	b0 7f 	movb	$127, %al
    1aa4:	1e  <unknown>
    1aa5:	6d 	insl	%dx, %es:(%rdi)
    1aa6:	32 00 	xorb	(%rax), %al
    1aa8:	01 40 13 	addl	%eax, 19(%rax)
    1aab:	54 	pushq	%rsp
    1aac:	0e  <unknown>
    1aad:	00 00 	addb	%al, (%rax)
    1aaf:	03 91 a0 7f 1e 61 	addl	1629388704(%rcx), %edx
    1ab5:	6d 	insl	%dx, %es:(%rdi)
    1ab6:	61  <unknown>
    1ab7:	73 6b 	jae	107 <__debug_info+0x11e4>
    1ab9:	00 01 	addb	%al, (%rcx)
    1abb:	42 0d 44 0e 00 00 	orl	$3652, %eax
    1ac1:	03 91 90 7f 1e 61 	addl	1629388688(%rcx), %edx
    1ac7:	73 68 	jae	104 <__debug_info+0x11f1>
    1ac9:	69 66 74 00 01 43 0d 	imull	$222494976, 116(%rsi), %esp
    1ad0:	44 0e  <unknown>
    1ad2:	00 00 	addb	%al, (%rax)
    1ad4:	03 91 80 7f 1e 61 	addl	1629388672(%rcx), %edx
    1ada:	6d 	insl	%dx, %es:(%rdi)
    1adb:	75 6c 	jne	108 <__debug_info+0x1209>
    1add:	00 01 	addb	%al, (%rcx)
    1adf:	44 0d 44 0e 00 00 	orl	$3652, %eax
    1ae5:	03 91 f0 7e 1e 61 	addl	1629388528(%rcx), %edx
    1aeb:	6e 	outsb	(%rsi), %dx
    1aec:	65 77 00 	ja	0 <__debug_info+0x11af>
    1aef:	01 45 0d 	addl	%eax, 13(%rbp)
    1af2:	44 0e  <unknown>
    1af4:	00 00 	addb	%al, (%rax)
    1af6:	03 91 e0 7e 1e 62 	addl	1646165728(%rcx), %edx
    1afc:	6d 	insl	%dx, %es:(%rdi)
    1afd:	61  <unknown>
    1afe:	73 6b 	jae	107 <__debug_info+0x122b>
    1b00:	00 01 	addb	%al, (%rcx)
    1b02:	48 0d 44 0e 00 00 	orq	$3652, %rax
    1b08:	03 91 d0 7e 1e 62 	addl	1646165712(%rcx), %edx
    1b0e:	73 68 	jae	104 <__debug_info+0x1238>
    1b10:	69 66 74 00 01 49 0d 	imull	$222888192, 116(%rsi), %esp
    1b17:	44 0e  <unknown>
    1b19:	00 00 	addb	%al, (%rax)
    1b1b:	03 91 c0 7e 1e 62 	addl	1646165696(%rcx), %edx
    1b21:	6d 	insl	%dx, %es:(%rdi)
    1b22:	75 6c 	jne	108 <__debug_info+0x1250>
    1b24:	00 01 	addb	%al, (%rcx)
    1b26:	4a 0d 44 0e 00 00 	orq	$3652, %rax
    1b2c:	03 91 b0 7e 1e 62 	addl	1646165680(%rcx), %edx
    1b32:	6e 	outsb	(%rsi), %dx
    1b33:	65 77 00 	ja	0 <__debug_info+0x11f6>
    1b36:	01 4b 0d 	addl	%ecx, 13(%rbx)
    1b39:	44 0e  <unknown>
    1b3b:	00 00 	addb	%al, (%rax)
    1b3d:	03 91 a0 7e 1e 62 	addl	1646165664(%rcx), %edx
    1b43:	6d 	insl	%dx, %es:(%rdi)
    1b44:	61  <unknown>
    1b45:	73 6b 	jae	107 <__debug_info+0x1272>
    1b47:	6e 	outsb	(%rsi), %dx
    1b48:	65 77 00 	ja	0 <__debug_info+0x120b>
    1b4b:	01 4e 0d 	addl	%ecx, 13(%rsi)
    1b4e:	44 0e  <unknown>
    1b50:	00 00 	addb	%al, (%rax)
    1b52:	03 91 90 7e 1e 61 	addl	1629388432(%rcx), %edx
    1b58:	73 68 	jae	104 <__debug_info+0x1282>
    1b5a:	69 66 74 6e 65 77 00 	imull	$7824750, 116(%rsi), %esp
    1b61:	01 4f 0d 	addl	%ecx, 13(%rdi)
    1b64:	44 0e  <unknown>
    1b66:	00 00 	addb	%al, (%rax)
    1b68:	03 91 80 7e 1e 72 	addl	1914601088(%rcx), %edx
    1b6e:	65 73 00 	jae	0 <__debug_info+0x1231>
    1b71:	01 50 0d 	addl	%edx, 13(%rax)
    1b74:	44 0e  <unknown>
    1b76:	00 00 	addb	%al, (%rax)
    1b78:	03 91 f0 7d 24 eb 	addl	-349930000(%rcx), %edx
    1b7e:	17  <unknown>
    1b7f:	00 00 	addb	%al, (%rax)
    1b81:	fa 	cli
    1b82:	00 00 	addb	%al, (%rax)
    1b84:	00 00 	addb	%al, (%rax)
    1b86:	00 00 	addb	%al, (%rax)
    1b88:	00 05 01 00 00 00 	addb	%al, 1(%rip)
    1b8e:	00 00 	addb	%al, (%rax)
    1b90:	00 5f 12 	addb	%bl, 18(%rdi)
    1b93:	00 00 	addb	%al, (%rax)
    1b95:	22 24 18 	andb	(%rax,%rbx), %ah
    1b98:	00 00 	addb	%al, (%rax)
    1b9a:	03 91 88 7a 00 24 	addl	604011144(%rcx), %edx
    1ba0:	eb 17 	jmp	23 <__debug_info+0x1279>
    1ba2:	00 00 	addb	%al, (%rax)
    1ba4:	1b 01 	sbbl	(%rcx), %eax
    1ba6:	00 00 	addb	%al, (%rax)
    1ba8:	00 00 	addb	%al, (%rax)
    1baa:	00 00 	addb	%al, (%rax)
    1bac:	26 01 00 	addl	%eax, %es:(%rax)
    1baf:	00 00 	addb	%al, (%rax)
    1bb1:	00 00 	addb	%al, (%rax)
    1bb3:	00 82 12 00 00 22 	addb	%al, 570425362(%rdx)
    1bb9:	24 18 	andb	$24, %al
    1bbb:	00 00 	addb	%al, (%rax)
    1bbd:	03 91 90 7a 00 24 	addl	604011152(%rcx), %edx
    1bc3:	eb 17 	jmp	23 <__debug_info+0x129c>
    1bc5:	00 00 	addb	%al, (%rax)
    1bc7:	3c 01 	cmpb	$1, %al
    1bc9:	00 00 	addb	%al, (%rax)
    1bcb:	00 00 	addb	%al, (%rax)
    1bcd:	00 00 	addb	%al, (%rax)
    1bcf:	47 01 00 	addl	%r8d, (%r8)
    1bd2:	00 00 	addb	%al, (%rax)
    1bd4:	00 00 	addb	%al, (%rax)
    1bd6:	00 a5 12 00 00 22 	addb	%ah, 570425362(%rbp)
    1bdc:	24 18 	andb	$24, %al
    1bde:	00 00 	addb	%al, (%rax)
    1be0:	03 91 98 7a 00 24 	addl	604011160(%rcx), %edx
    1be6:	eb 17 	jmp	23 <__debug_info+0x12bf>
    1be8:	00 00 	addb	%al, (%rax)
    1bea:	5d 	popq	%rbp
    1beb:	01 00 	addl	%eax, (%rax)
    1bed:	00 00 	addb	%al, (%rax)
    1bef:	00 00 	addb	%al, (%rax)
    1bf1:	00 68 01 	addb	%ch, 1(%rax)
    1bf4:	00 00 	addb	%al, (%rax)
    1bf6:	00 00 	addb	%al, (%rax)
    1bf8:	00 00 	addb	%al, (%rax)
    1bfa:	c8 12 00 00 	enter	$18, $0
    1bfe:	22 24 18 	andb	(%rax,%rbx), %ah
    1c01:	00 00 	addb	%al, (%rax)
    1c03:	03 91 a0 7a 00 24 	addl	604011168(%rcx), %edx
    1c09:	eb 17 	jmp	23 <__debug_info+0x12e2>
    1c0b:	00 00 	addb	%al, (%rax)
    1c0d:	7e 01 	jle	1 <__debug_info+0x12d0>
    1c0f:	00 00 	addb	%al, (%rax)
    1c11:	00 00 	addb	%al, (%rax)
    1c13:	00 00 	addb	%al, (%rax)
    1c15:	89 01 	movl	%eax, (%rcx)
    1c17:	00 00 	addb	%al, (%rax)
    1c19:	00 00 	addb	%al, (%rax)
    1c1b:	00 00 	addb	%al, (%rax)
    1c1d:	eb 12 	jmp	18 <__debug_info+0x12f1>
    1c1f:	00 00 	addb	%al, (%rax)
    1c21:	22 24 18 	andb	(%rax,%rbx), %ah
    1c24:	00 00 	addb	%al, (%rax)
    1c26:	03 91 a8 7a 00 24 	addl	604011176(%rcx), %edx
    1c2c:	48 16  <unknown>
    1c2e:	00 00 	addb	%al, (%rax)
    1c30:	a5 	movsl	(%rsi), %es:(%rdi)
    1c31:	01 00 	addl	%eax, (%rax)
    1c33:	00 00 	addb	%al, (%rax)
    1c35:	00 00 	addb	%al, (%rax)
    1c37:	00 b9 01 00 00 00 	addb	%bh, 1(%rcx)
    1c3d:	00 00 	addb	%al, (%rax)
    1c3f:	00 17 	addb	%dl, (%rdi)
    1c41:	13 00 	adcl	(%rax), %eax
    1c43:	00 22 	addb	%ah, (%rdx)
    1c45:	8c 16 	movw	%ss, (%rsi)
    1c47:	00 00 	addb	%al, (%rax)
    1c49:	03 91 b0 7a 22 7f 	addl	2132966064(%rcx), %edx
    1c4f:	16  <unknown>
    1c50:	00 00 	addb	%al, (%rax)
    1c52:	03 91 c0 7a 00 24 	addl	604011200(%rcx), %edx
    1c58:	9a  <unknown>
    1c59:	16  <unknown>
    1c5a:	00 00 	addb	%al, (%rax)
    1c5c:	d3 01 	roll	%cl, (%rcx)
    1c5e:	00 00 	addb	%al, (%rax)
    1c60:	00 00 	addb	%al, (%rax)
    1c62:	00 00 	addb	%al, (%rax)
    1c64:	eb 01 	jmp	1 <__debug_info+0x1327>
    1c66:	00 00 	addb	%al, (%rax)
    1c68:	00 00 	addb	%al, (%rax)
    1c6a:	00 00 	addb	%al, (%rax)
    1c6c:	43 13 00 	adcl	(%r8), %eax
    1c6f:	00 22 	addb	%ah, (%rdx)
    1c71:	df 16 	fists	(%rsi)
    1c73:	00 00 	addb	%al, (%rax)
    1c75:	03 91 dc 7a 22 d2 	addl	-769492260(%rcx), %edx
    1c7b:	16  <unknown>
    1c7c:	00 00 	addb	%al, (%rax)
    1c7e:	03 91 e0 7a 00 24 	addl	604011232(%rcx), %edx
    1c84:	f2 15 00 00 07 02 	repne		adcl	$34013184, %eax
    1c8a:	00 00 	addb	%al, (%rax)
    1c8c:	00 00 	addb	%al, (%rax)
    1c8e:	00 00 	addb	%al, (%rax)
    1c90:	1c 02 	sbbb	$2, %al
    1c92:	00 00 	addb	%al, (%rax)
    1c94:	00 00 	addb	%al, (%rax)
    1c96:	00 00 	addb	%al, (%rax)
    1c98:	6f 	outsl	(%rsi), %dx
    1c99:	13 00 	adcl	(%rax), %eax
    1c9b:	00 22 	addb	%ah, (%rdx)
    1c9d:	3a 16 	cmpb	(%rsi), %dl
    1c9f:	00 00 	addb	%al, (%rax)
    1ca1:	03 91 f0 7a 22 2d 	addl	757234416(%rcx), %edx
    1ca7:	16  <unknown>
    1ca8:	00 00 	addb	%al, (%rax)
    1caa:	03 91 80 7b 00 24 	addl	604011392(%rcx), %edx
    1cb0:	40 17  <unknown>
    1cb2:	00 00 	addb	%al, (%rax)
    1cb4:	38 02 	cmpb	%al, (%rdx)
    1cb6:	00 00 	addb	%al, (%rax)
    1cb8:	00 00 	addb	%al, (%rax)
    1cba:	00 00 	addb	%al, (%rax)
    1cbc:	4c 02 00 	addb	(%rax), %r8b
    1cbf:	00 00 	addb	%al, (%rax)
    1cc1:	00 00 	addb	%al, (%rax)
    1cc3:	00 9b 13 00 00 22 	addb	%bl, 570425363(%rbx)
    1cc9:	84 17 	testb	%dl, (%rdi)
    1ccb:	00 00 	addb	%al, (%rax)
    1ccd:	03 91 90 7b 22 77 	addl	1998748560(%rcx), %edx
    1cd3:	17  <unknown>
    1cd4:	00 00 	addb	%al, (%rax)
    1cd6:	03 91 a0 7b 00 24 	addl	604011424(%rcx), %edx
    1cdc:	92 	xchgl	%edx, %eax
    1cdd:	17  <unknown>
    1cde:	00 00 	addb	%al, (%rax)
    1ce0:	70 02 	jo	2 <__debug_info+0x13a4>
    1ce2:	00 00 	addb	%al, (%rax)
    1ce4:	00 00 	addb	%al, (%rax)
    1ce6:	00 00 	addb	%al, (%rax)
    1ce8:	9a  <unknown>
    1ce9:	02 00 	addb	(%rax), %al
    1ceb:	00 00 	addb	%al, (%rax)
    1ced:	00 00 	addb	%al, (%rax)
    1cef:	00 c7 	addb	%al, %bh
    1cf1:	13 00 	adcl	(%rax), %eax
    1cf3:	00 22 	addb	%ah, (%rdx)
    1cf5:	d7 	xlatb
    1cf6:	17  <unknown>
    1cf7:	00 00 	addb	%al, (%rax)
    1cf9:	03 91 b0 7b 22 ca 	addl	-903709776(%rcx), %edx
    1cff:	17  <unknown>
    1d00:	00 00 	addb	%al, (%rax)
    1d02:	03 91 c8 7b 00 24 	addl	604011464(%rcx), %edx
    1d08:	48 16  <unknown>
    1d0a:	00 00 	addb	%al, (%rax)
    1d0c:	9a  <unknown>
    1d0d:	02 00 	addb	(%rax), %al
    1d0f:	00 00 	addb	%al, (%rax)
    1d11:	00 00 	addb	%al, (%rax)
    1d13:	00 ae 02 00 00 00 	addb	%ch, 2(%rsi)
    1d19:	00 00 	addb	%al, (%rax)
    1d1b:	00 f3 	addb	%dh, %bl
    1d1d:	13 00 	adcl	(%rax), %eax
    1d1f:	00 22 	addb	%ah, (%rdx)
    1d21:	8c 16 	movw	%ss, (%rsi)
    1d23:	00 00 	addb	%al, (%rax)
    1d25:	03 91 d0 7b 22 7f 	addl	2132966352(%rcx), %edx
    1d2b:	16  <unknown>
    1d2c:	00 00 	addb	%al, (%rax)
    1d2e:	03 91 e0 7b 00 24 	addl	604011488(%rcx), %edx
    1d34:	9a  <unknown>
    1d35:	16  <unknown>
    1d36:	00 00 	addb	%al, (%rax)
    1d38:	cb 	lretl
    1d39:	02 00 	addb	(%rax), %al
    1d3b:	00 00 	addb	%al, (%rax)
    1d3d:	00 00 	addb	%al, (%rax)
    1d3f:	00 e3 	addb	%ah, %bl
    1d41:	02 00 	addb	(%rax), %al
    1d43:	00 00 	addb	%al, (%rax)
    1d45:	00 00 	addb	%al, (%rax)
    1d47:	00 1f 	addb	%bl, (%rdi)
    1d49:	14 00 	adcb	$0, %al
    1d4b:	00 22 	addb	%ah, (%rdx)
    1d4d:	df 16 	fists	(%rsi)
    1d4f:	00 00 	addb	%al, (%rax)
    1d51:	03 91 fc 7b 22 d2 	addl	-769491972(%rcx), %edx
    1d57:	16  <unknown>
    1d58:	00 00 	addb	%al, (%rax)
    1d5a:	03 91 80 7c 00 24 	addl	604011648(%rcx), %edx
    1d60:	f2 15 00 00 05 03 	repne		adcl	$50659328, %eax
    1d66:	00 00 	addb	%al, (%rax)
    1d68:	00 00 	addb	%al, (%rax)
    1d6a:	00 00 	addb	%al, (%rax)
    1d6c:	1a 03 	sbbb	(%rbx), %al
    1d6e:	00 00 	addb	%al, (%rax)
    1d70:	00 00 	addb	%al, (%rax)
    1d72:	00 00 	addb	%al, (%rax)
    1d74:	4b 14 00 	adcb	$0, %al
    1d77:	00 22 	addb	%ah, (%rdx)
    1d79:	3a 16 	cmpb	(%rsi), %dl
    1d7b:	00 00 	addb	%al, (%rax)
    1d7d:	03 91 90 7c 22 2d 	addl	757234832(%rcx), %edx
    1d83:	16  <unknown>
    1d84:	00 00 	addb	%al, (%rax)
    1d86:	03 91 a0 7c 00 24 	addl	604011680(%rcx), %edx
    1d8c:	40 17  <unknown>
    1d8e:	00 00 	addb	%al, (%rax)
    1d90:	3f  <unknown>
    1d91:	03 00 	addl	(%rax), %eax
    1d93:	00 00 	addb	%al, (%rax)
    1d95:	00 00 	addb	%al, (%rax)
    1d97:	00 53 03 	addb	%dl, 3(%rbx)
    1d9a:	00 00 	addb	%al, (%rax)
    1d9c:	00 00 	addb	%al, (%rax)
    1d9e:	00 00 	addb	%al, (%rax)
    1da0:	77 14 	ja	20 <__debug_info+0x1476>
    1da2:	00 00 	addb	%al, (%rax)
    1da4:	22 84 17 00 00 03 91 	andb	-1862074368(%rdi,%rdx), %al
    1dab:	b0 7c 	movb	$124, %al
    1dad:	22 77 17 	andb	23(%rdi), %dh
    1db0:	00 00 	addb	%al, (%rax)
    1db2:	03 91 c0 7c 00 24 	addl	604011712(%rcx), %edx
    1db8:	92 	xchgl	%edx, %eax
    1db9:	17  <unknown>
    1dba:	00 00 	addb	%al, (%rax)
    1dbc:	7b 03 	jnp	3 <__debug_info+0x1481>
    1dbe:	00 00 	addb	%al, (%rax)
    1dc0:	00 00 	addb	%al, (%rax)
    1dc2:	00 00 	addb	%al, (%rax)
    1dc4:	a8 03 	testb	$3, %al
    1dc6:	00 00 	addb	%al, (%rax)
    1dc8:	00 00 	addb	%al, (%rax)
    1dca:	00 00 	addb	%al, (%rax)
    1dcc:	a3 14 00 00 22 d7 17 00 00 	movabsl	%eax, 26212755832852
    1dd5:	03 91 d0 7c 22 ca 	addl	-903709488(%rcx), %edx
    1ddb:	17  <unknown>
    1ddc:	00 00 	addb	%al, (%rax)
    1dde:	03 91 e8 7c 00 24 	addl	604011752(%rcx), %edx
    1de4:	48 16  <unknown>
    1de6:	00 00 	addb	%al, (%rax)
    1de8:	a8 03 	testb	$3, %al
    1dea:	00 00 	addb	%al, (%rax)
    1dec:	00 00 	addb	%al, (%rax)
    1dee:	00 00 	addb	%al, (%rax)
    1df0:	bc 03 00 00 00 	movl	$3, %esp
    1df5:	00 00 	addb	%al, (%rax)
    1df7:	00 cf 	addb	%cl, %bh
    1df9:	14 00 	adcb	$0, %al
    1dfb:	00 22 	addb	%ah, (%rdx)
    1dfd:	8c 16 	movw	%ss, (%rsi)
    1dff:	00 00 	addb	%al, (%rax)
    1e01:	03 91 f0 7c 22 7f 	addl	2132966640(%rcx), %edx
    1e07:	16  <unknown>
    1e08:	00 00 	addb	%al, (%rax)
    1e0a:	03 91 80 7d 00 24 	addl	604011904(%rcx), %edx
    1e10:	ed 	inl	%dx, %eax
    1e11:	16  <unknown>
    1e12:	00 00 	addb	%al, (%rax)
    1e14:	dc 03 	faddl	(%rbx)
    1e16:	00 00 	addb	%al, (%rax)
    1e18:	00 00 	addb	%al, (%rax)
    1e1a:	00 00 	addb	%al, (%rax)
    1e1c:	f4 	hlt
    1e1d:	03 00 	addl	(%rax), %eax
    1e1f:	00 00 	addb	%al, (%rax)
    1e21:	00 00 	addb	%al, (%rax)
    1e23:	00 fb 	addb	%bh, %bl
    1e25:	14 00 	adcb	$0, %al
    1e27:	00 22 	addb	%ah, (%rdx)
    1e29:	32 17 	xorb	(%rdi), %dl
    1e2b:	00 00 	addb	%al, (%rax)
    1e2d:	03 91 9c 7d 22 25 	addl	623017372(%rcx), %edx
    1e33:	17  <unknown>
    1e34:	00 00 	addb	%al, (%rax)
    1e36:	03 91 a0 7d 00 24 	addl	604011936(%rcx), %edx
    1e3c:	40 17  <unknown>
    1e3e:	00 00 	addb	%al, (%rax)
    1e40:	19 04 00 	sbbl	%eax, (%rax,%rax)
    1e43:	00 00 	addb	%al, (%rax)
    1e45:	00 00 	addb	%al, (%rax)
    1e47:	00 2d 04 00 00 00 	addb	%ch, 4(%rip)
    1e4d:	00 00 	addb	%al, (%rax)
    1e4f:	00 27 	addb	%ah, (%rdi)
    1e51:	15 00 00 22 84 	adcl	$2216820736, %eax
    1e56:	17  <unknown>
    1e57:	00 00 	addb	%al, (%rax)
    1e59:	03 91 b0 7d 22 77 	addl	1998749104(%rcx), %edx
    1e5f:	17  <unknown>
    1e60:	00 00 	addb	%al, (%rax)
    1e62:	03 91 c0 7d 00 21 	addl	553680320(%rcx), %edx
    1e68:	92 	xchgl	%edx, %eax
    1e69:	17  <unknown>
    1e6a:	00 00 	addb	%al, (%rax)
    1e6c:	55 	pushq	%rbp
    1e6d:	04 00 	addb	$0, %al
    1e6f:	00 00 	addb	%al, (%rax)
    1e71:	00 00 	addb	%al, (%rax)
    1e73:	00 67 04 	addb	%ah, 4(%rdi)
    1e76:	00 00 	addb	%al, (%rax)
    1e78:	00 00 	addb	%al, (%rax)
    1e7a:	00 00 	addb	%al, (%rax)
    1e7c:	22 d7 	andb	%bh, %dl
    1e7e:	17  <unknown>
    1e7f:	00 00 	addb	%al, (%rax)
    1e81:	03 91 d0 7d 22 ca 	addl	-903709232(%rcx), %edx
    1e87:	17  <unknown>
    1e88:	00 00 	addb	%al, (%rax)
    1e8a:	03 91 e8 7d 00 00 	addl	32232(%rcx), %edx
    1e90:	06  <unknown>
    1e91:	08 3c 0f 	orb	%bh, (%rdi,%rcx)
    1e94:	00 00 	addb	%al, (%rax)
    1e96:	25 01 49 6e 69 	andl	$1768835329, %eax
    1e9b:	74 46 	je	70 <__debug_info+0x15a3>
    1e9d:	61  <unknown>
    1e9e:	73 74 	jae	116 <__debug_info+0x15d4>
    1ea0:	52 	pushq	%rdx
    1ea1:	61  <unknown>
    1ea2:	6e 	outsb	(%rsi), %dx
    1ea3:	64 00 01 	addb	%al, %fs:(%rcx)
    1ea6:	1c 0a 	sbbb	$10, %al
    1ea8:	5f 	popq	%rdi
    1ea9:	5a 	popq	%rdx
    1eaa:	31 32 	xorl	%esi, (%rdx)
    1eac:	49 6e 	outsb	(%rsi), %dx
    1eae:	69 74 46 61 73 74 52 61 	imull	$1632793715, 97(%rsi,%rax,2), %esi
    1eb6:	6e 	outsb	(%rsi), %dx
    1eb7:	64 76 00 	jbe	0 <__debug_info+0x157a>
    1eba:	3c 0f 	cmpb	$15, %al
    1ebc:	00 00 	addb	%al, (%rax)
    1ebe:	00 00 	addb	%al, (%rax)
    1ec0:	00 00 	addb	%al, (%rax)
    1ec2:	00 00 	addb	%al, (%rax)
    1ec4:	00 00 	addb	%al, (%rax)
    1ec6:	da 00 	fiaddl	(%rax)
    1ec8:	00 00 	addb	%al, (%rax)
    1eca:	00 00 	addb	%al, (%rax)
    1ecc:	00 00 	addb	%al, (%rax)
    1ece:	c0 00 00 	rolb	$0, (%rax)
    1ed1:	00 b2 15 00 00 1e 	addb	%dh, 503316501(%rdx)
    1ed7:	66 00 01 	addb	%al, (%rcx)
    1eda:	24 0e 	andb	$14, %al
    1edc:	3c 0f 	cmpb	$15, %al
    1ede:	00 00 	addb	%al, (%rax)
    1ee0:	03 91 58 06 1e 69 	addl	1763575384(%rcx), %edx
    1ee6:	00 01 	addb	%al, (%rcx)
    1ee8:	26 0d 21 02 00 00 	orl	$545, %eax
    1eee:	02 91 6f 00 26 01 	addb	19267695(%rcx), %dl
    1ef4:	5f 	popq	%rdi
    1ef5:	72 64 	jb	100 <__debug_info+0x161b>
    1ef7:	72 61 	jb	97 <__debug_info+0x161a>
    1ef9:	6e 	outsb	(%rsi), %dx
    1efa:	64 36 34 5f 	xorb	$95, %al
    1efe:	73 74 	jae	116 <__debug_info+0x1634>
    1f00:	65 70 00 	jo	0 <__debug_info+0x15c3>
    1f03:	05 eb 01 5f 5a 	addl	$1516175851, %eax
    1f08:	31 34 5f 	xorl	%esi, (%rdi,%rbx,2)
    1f0b:	72 64 	jb	100 <__debug_info+0x1631>
    1f0d:	72 61 	jb	97 <__debug_info+0x1630>
    1f0f:	6e 	outsb	(%rsi), %dx
    1f10:	64 36 34 5f 	xorb	$95, %al
    1f14:	73 74 	jae	116 <__debug_info+0x164a>
    1f16:	65 70 50 	jo	80 <__debug_info+0x1629>
    1f19:	79 00 	jns	0 <__debug_info+0x15db>
    1f1b:	1f  <unknown>
    1f1c:	01 00 	addl	%eax, (%rax)
    1f1e:	00 03 	addb	%al, (%rbx)
    1f20:	01 f2 	addl	%esi, %edx
    1f22:	15 00 00 27 5f 	adcl	$1596391424, %eax
    1f27:	5f 	popq	%rdi
    1f28:	50 	pushq	%rax
    1f29:	00 05 eb 25 ec 10 	addb	%al, 283911659(%rip)
    1f2f:	00 00 	addb	%al, (%rax)
    1f31:	00 28 	addb	%ch, (%rax)
    1f33:	01 5f 6d 	addl	%ebx, 109(%rdi)
    1f36:	6d 	insl	%dx, %es:(%rdi)
    1f37:	5f 	popq	%rdi
    1f38:	6d 	insl	%dx, %es:(%rdi)
    1f39:	75 6c 	jne	108 <__debug_info+0x1667>
    1f3b:	6c 	insb	%dx, %es:(%rdi)
    1f3c:	6f 	outsl	(%rsi), %dx
    1f3d:	5f 	popq	%rdi
    1f3e:	65 70 69 	jo	105 <__debug_info+0x166a>
    1f41:	33 32 	xorl	(%rdx), %esi
    1f43:	00 03 	addb	%al, (%rbx)
    1f45:	46 01 01 	addl	%r8d, (%rcx)
    1f48:	5f 	popq	%rdi
    1f49:	5a 	popq	%rdx
    1f4a:	31 35 5f 6d 6d 5f 	xorl	%esi, 1601006943(%rip)
    1f50:	6d 	insl	%dx, %es:(%rdi)
    1f51:	75 6c 	jne	108 <__debug_info+0x167f>
    1f53:	6c 	insb	%dx, %es:(%rdi)
    1f54:	6f 	outsl	(%rsi), %dx
    1f55:	5f 	popq	%rdi
    1f56:	65 70 69 	jo	105 <__debug_info+0x1682>
    1f59:	33 32 	xorl	(%rdx), %esi
    1f5b:	44 76 32 	jbe	50 <__debug_info+0x1650>
    1f5e:	5f 	popq	%rdi
    1f5f:	78 53 	js	83 <__debug_info+0x1674>
    1f61:	5f 	popq	%rdi
    1f62:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    1f66:	00 03 	addb	%al, (%rbx)
    1f68:	01 48 16 	addl	%ecx, 22(%rax)
    1f6b:	00 00 	addb	%al, (%rax)
    1f6d:	29 5f 5f 	subl	%ebx, 95(%rdi)
    1f70:	58 	popq	%rax
    1f71:	00 03 	addb	%al, (%rbx)
    1f73:	46 01 1a 	addl	%r11d, (%rdx)
    1f76:	44 0e  <unknown>
    1f78:	00 00 	addb	%al, (%rax)
    1f7a:	29 5f 5f 	subl	%ebx, 95(%rdi)
    1f7d:	59 	popq	%rcx
    1f7e:	00 03 	addb	%al, (%rbx)
    1f80:	46 01 27 	addl	%r12d, (%rdi)
    1f83:	44 0e  <unknown>
    1f85:	00 00 	addb	%al, (%rax)
    1f87:	00 28 	addb	%ch, (%rax)
    1f89:	01 5f 6d 	addl	%ebx, 109(%rdi)
    1f8c:	6d 	insl	%dx, %es:(%rdi)
    1f8d:	5f 	popq	%rdi
    1f8e:	61  <unknown>
    1f8f:	6e 	outsb	(%rsi), %dx
    1f90:	64 5f 	popq	%rdi
    1f92:	73 69 	jae	105 <__debug_info+0x16bd>
    1f94:	31 32 	xorl	%esi, (%rdx)
    1f96:	38 00 	cmpb	%al, (%rax)
    1f98:	02 f8 	addb	%al, %bh
    1f9a:	04 01 	addb	$1, %al
    1f9c:	5f 	popq	%rdi
    1f9d:	5a 	popq	%rdx
    1f9e:	31 33 	xorl	%esi, (%rbx)
    1fa0:	5f 	popq	%rdi
    1fa1:	6d 	insl	%dx, %es:(%rdi)
    1fa2:	6d 	insl	%dx, %es:(%rdi)
    1fa3:	5f 	popq	%rdi
    1fa4:	61  <unknown>
    1fa5:	6e 	outsb	(%rsi), %dx
    1fa6:	64 5f 	popq	%rdi
    1fa8:	73 69 	jae	105 <__debug_info+0x16d3>
    1faa:	31 32 	xorl	%esi, (%rdx)
    1fac:	38 44 76 32 	cmpb	%al, 50(%rsi,%rsi,2)
    1fb0:	5f 	popq	%rdi
    1fb1:	78 53 	js	83 <__debug_info+0x16c6>
    1fb3:	5f 	popq	%rdi
    1fb4:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    1fb8:	00 03 	addb	%al, (%rbx)
    1fba:	01 9a 16 00 00 29 	addl	%ebx, 687865878(%rdx)
    1fc0:	5f 	popq	%rdi
    1fc1:	5f 	popq	%rdi
    1fc2:	41 00 02 	addb	%al, (%r10)
    1fc5:	f8 	clc
    1fc6:	04 18 	addb	$24, %al
    1fc8:	44 0e  <unknown>
    1fca:	00 00 	addb	%al, (%rax)
    1fcc:	29 5f 5f 	subl	%ebx, 95(%rdi)
    1fcf:	42 00 02 	addb	%al, (%rdx)
    1fd2:	f8 	clc
    1fd3:	04 25 	addb	$37, %al
    1fd5:	44 0e  <unknown>
    1fd7:	00 00 	addb	%al, (%rax)
    1fd9:	00 28 	addb	%ch, (%rax)
    1fdb:	01 5f 6d 	addl	%ebx, 109(%rdi)
    1fde:	6d 	insl	%dx, %es:(%rdi)
    1fdf:	5f 	popq	%rdi
    1fe0:	73 72 	jae	114 <__debug_info+0x1714>
    1fe2:	6c 	insb	%dx, %es:(%rdi)
    1fe3:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    1fea:	00 02 	addb	%al, (%rdx)
    1fec:	bc 04 01 5f 5a 	movl	$1516175620, %esp
    1ff1:	31 34 5f 	xorl	%esi, (%rdi,%rbx,2)
    1ff4:	6d 	insl	%dx, %es:(%rdi)
    1ff5:	6d 	insl	%dx, %es:(%rdi)
    1ff6:	5f 	popq	%rdi
    1ff7:	73 72 	jae	114 <__debug_info+0x172b>
    1ff9:	6c 	insb	%dx, %es:(%rdi)
    1ffa:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    2001:	44 76 32 	jbe	50 <__debug_info+0x16f6>
    2004:	5f 	popq	%rdi
    2005:	78 69 	js	105 <__debug_info+0x1730>
    2007:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    200b:	00 03 	addb	%al, (%rbx)
    200d:	01 ed 	addl	%ebp, %ebp
    200f:	16  <unknown>
    2010:	00 00 	addb	%al, (%rax)
    2012:	29 5f 5f 	subl	%ebx, 95(%rdi)
    2015:	41 00 02 	addb	%al, (%r10)
    2018:	bc 04 19 44 0e 	movl	$239343876, %esp
    201d:	00 00 	addb	%al, (%rax)
    201f:	29 5f 5f 	subl	%ebx, 95(%rdi)
    2022:	42 00 02 	addb	%al, (%rdx)
    2025:	bc 04 22 1f 01 	movl	$18817540, %esp
    202a:	00 00 	addb	%al, (%rax)
    202c:	00 28 	addb	%ch, (%rax)
    202e:	01 5f 6d 	addl	%ebx, 109(%rdi)
    2031:	6d 	insl	%dx, %es:(%rdi)
    2032:	5f 	popq	%rdi
    2033:	73 6c 	jae	108 <__debug_info+0x1761>
    2035:	6c 	insb	%dx, %es:(%rdi)
    2036:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    203d:	00 02 	addb	%al, (%rdx)
    203f:	7b 04 	jnp	4 <__debug_info+0x1705>
    2041:	01 5f 5a 	addl	%ebx, 90(%rdi)
    2044:	31 34 5f 	xorl	%esi, (%rdi,%rbx,2)
    2047:	6d 	insl	%dx, %es:(%rdi)
    2048:	6d 	insl	%dx, %es:(%rdi)
    2049:	5f 	popq	%rdi
    204a:	73 6c 	jae	108 <__debug_info+0x1778>
    204c:	6c 	insb	%dx, %es:(%rdi)
    204d:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    2054:	44 76 32 	jbe	50 <__debug_info+0x1749>
    2057:	5f 	popq	%rdi
    2058:	78 69 	js	105 <__debug_info+0x1783>
    205a:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    205e:	00 03 	addb	%al, (%rbx)
    2060:	01 40 17 	addl	%eax, 23(%rax)
    2063:	00 00 	addb	%al, (%rax)
    2065:	29 5f 5f 	subl	%ebx, 95(%rdi)
    2068:	41 00 02 	addb	%al, (%r10)
    206b:	7b 04 	jnp	4 <__debug_info+0x1731>
    206d:	19 44 0e 00 	sbbl	%eax, (%rsi,%rcx)
    2071:	00 29 	addb	%ch, (%rcx)
    2073:	5f 	popq	%rdi
    2074:	5f 	popq	%rdi
    2075:	42 00 02 	addb	%al, (%rdx)
    2078:	7b 04 	jnp	4 <__debug_info+0x173e>
    207a:	22 1f 	andb	(%rdi), %bl
    207c:	01 00 	addl	%eax, (%rax)
    207e:	00 00 	addb	%al, (%rax)
    2080:	28 01 	subb	%al, (%rcx)
    2082:	5f 	popq	%rdi
    2083:	6d 	insl	%dx, %es:(%rdi)
    2084:	6d 	insl	%dx, %es:(%rdi)
    2085:	5f 	popq	%rdi
    2086:	61  <unknown>
    2087:	64 64 5f 	popq	%rdi
    208a:	65 70 69 	jo	105 <__debug_info+0x17b6>
    208d:	33 32 	xorl	(%rdx), %esi
    208f:	00 02 	addb	%al, (%rdx)
    2091:	03 04 01 	addl	(%rcx,%rax), %eax
    2094:	5f 	popq	%rdi
    2095:	5a 	popq	%rdx
    2096:	31 33 	xorl	%esi, (%rbx)
    2098:	5f 	popq	%rdi
    2099:	6d 	insl	%dx, %es:(%rdi)
    209a:	6d 	insl	%dx, %es:(%rdi)
    209b:	5f 	popq	%rdi
    209c:	61  <unknown>
    209d:	64 64 5f 	popq	%rdi
    20a0:	65 70 69 	jo	105 <__debug_info+0x17cc>
    20a3:	33 32 	xorl	(%rdx), %esi
    20a5:	44 76 32 	jbe	50 <__debug_info+0x179a>
    20a8:	5f 	popq	%rdi
    20a9:	78 53 	js	83 <__debug_info+0x17be>
    20ab:	5f 	popq	%rdi
    20ac:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    20b0:	00 03 	addb	%al, (%rbx)
    20b2:	01 92 17 00 00 29 	addl	%edx, 687865879(%rdx)
    20b8:	5f 	popq	%rdi
    20b9:	5f 	popq	%rdi
    20ba:	41 00 02 	addb	%al, (%r10)
    20bd:	03 04 18 	addl	(%rax,%rbx), %eax
    20c0:	44 0e  <unknown>
    20c2:	00 00 	addb	%al, (%rax)
    20c4:	29 5f 5f 	subl	%ebx, 95(%rdi)
    20c7:	42 00 02 	addb	%al, (%rdx)
    20ca:	03 04 25 44 0e 00 00 	addl	3652, %eax
    20d1:	00 2a 	addb	%ch, (%rdx)
    20d3:	01 5f 6d 	addl	%ebx, 109(%rdi)
    20d6:	6d 	insl	%dx, %es:(%rdi)
    20d7:	5f 	popq	%rdi
    20d8:	73 74 	jae	116 <__debug_info+0x180e>
    20da:	6f 	outsl	(%rsi), %dx
    20db:	72 65 	jb	101 <__debug_info+0x1802>
    20dd:	5f 	popq	%rdi
    20de:	73 69 	jae	105 <__debug_info+0x1809>
    20e0:	31 32 	xorl	%esi, (%rdx)
    20e2:	38 00 	cmpb	%al, (%rax)
    20e4:	02 c8 	addb	%al, %cl
    20e6:	02 01 	addb	(%rcx), %al
    20e8:	5f 	popq	%rdi
    20e9:	5a 	popq	%rdx
    20ea:	31 35 5f 6d 6d 5f 	xorl	%esi, 1601006943(%rip)
    20f0:	73 74 	jae	116 <__debug_info+0x1826>
    20f2:	6f 	outsl	(%rsi), %dx
    20f3:	72 65 	jb	101 <__debug_info+0x181a>
    20f5:	5f 	popq	%rdi
    20f6:	73 69 	jae	105 <__debug_info+0x1821>
    20f8:	31 32 	xorl	%esi, (%rdx)
    20fa:	38 50 44 	cmpb	%dl, 68(%rax)
    20fd:	76 32 	jbe	50 <__debug_info+0x17f1>
    20ff:	5f 	popq	%rdi
    2100:	78 53 	js	83 <__debug_info+0x1815>
    2102:	5f 	popq	%rdi
    2103:	00 03 	addb	%al, (%rbx)
    2105:	01 e5 	addl	%esp, %ebp
    2107:	17  <unknown>
    2108:	00 00 	addb	%al, (%rax)
    210a:	29 5f 5f 	subl	%ebx, 95(%rdi)
    210d:	50 	pushq	%rax
    210e:	00 02 	addb	%al, (%rdx)
    2110:	c8 02 1b e5 	enter	$6914, $-27
    2114:	17  <unknown>
    2115:	00 00 	addb	%al, (%rax)
    2117:	29 5f 5f 	subl	%ebx, 95(%rdi)
    211a:	42 00 02 	addb	%al, (%rdx)
    211d:	c8 02 28 44 	enter	$10242, $68
    2121:	0e  <unknown>
    2122:	00 00 	addb	%al, (%rax)
    2124:	00 06 	addb	%al, (%rsi)
    2126:	08 44 0e 00 	orb	%al, (%rsi,%rcx)
    212a:	00 28 	addb	%ch, (%rax)
    212c:	01 5f 6d 	addl	%ebx, 109(%rdi)
    212f:	6d 	insl	%dx, %es:(%rdi)
    2130:	5f 	popq	%rdi
    2131:	6c 	insb	%dx, %es:(%rdi)
    2132:	6f 	outsl	(%rsi), %dx
    2133:	61  <unknown>
    2134:	64 5f 	popq	%rdi
    2136:	73 69 	jae	105 <__debug_info+0x1861>
    2138:	31 32 	xorl	%esi, (%rdx)
    213a:	38 00 	cmpb	%al, (%rax)
    213c:	02 b6 02 01 5f 5a 	addb	1516175618(%rsi), %dh
    2142:	31 34 5f 	xorl	%esi, (%rdi,%rbx,2)
    2145:	6d 	insl	%dx, %es:(%rdi)
    2146:	6d 	insl	%dx, %es:(%rdi)
    2147:	5f 	popq	%rdi
    2148:	6c 	insb	%dx, %es:(%rdi)
    2149:	6f 	outsl	(%rsi), %dx
    214a:	61  <unknown>
    214b:	64 5f 	popq	%rdi
    214d:	73 69 	jae	105 <__debug_info+0x1878>
    214f:	31 32 	xorl	%esi, (%rdx)
    2151:	38 50 4b 	cmpb	%dl, 75(%rax)
    2154:	44 76 32 	jbe	50 <__debug_info+0x1849>
    2157:	5f 	popq	%rdi
    2158:	78 00 	js	0 <__debug_info+0x181a>
    215a:	44 0e  <unknown>
    215c:	00 00 	addb	%al, (%rax)
    215e:	03 01 	addl	(%rcx), %eax
    2160:	32 18 	xorb	(%rax), %bl
    2162:	00 00 	addb	%al, (%rax)
    2164:	29 5f 5f 	subl	%ebx, 95(%rdi)
    2167:	50 	pushq	%rax
    2168:	00 02 	addb	%al, (%rdx)
    216a:	b6 02 	movb	$2, %dh
    216c:	20 32 	andb	%dh, (%rdx)
    216e:	18 00 	sbbb	%al, (%rax)
    2170:	00 00 	addb	%al, (%rax)
    2172:	06  <unknown>
    2173:	08 54 0e 00 	orb	%dl, (%rsi,%rcx)
    2177:	00 00 	addb	%al, (%rax)
Disassembly of section __DWARF,__debug_abbrev:
__debug_abbrev:
    2179:	01 11 	addl	%edx, (%rcx)
    217b:	01 25 08 13 0b 03 	addl	%esp, 51057416(%rip)
    2181:	08 1b 	orb	%bl, (%rbx)
    2183:	08 b4 42 0c 11 01 12 	orb	%dh, 302059788(%rdx,%rax,2)
    218a:	01 10 	addl	%edx, (%rax)
    218c:	06  <unknown>
    218d:	00 00 	addb	%al, (%rax)
    218f:	02 24 00 	addb	(%rax,%rax), %ah
    2192:	0b 0b 	orl	(%rbx), %ecx
    2194:	3e 0b 03 	orl	%ds:(%rbx), %eax
    2197:	08 00 	orb	%al, (%rax)
    2199:	00 03 	addb	%al, (%rbx)
    219b:	16  <unknown>
    219c:	00 03 	addb	%al, (%rbx)
    219e:	08 3a 	orb	%bh, (%rdx)
    21a0:	0b 3b 	orl	(%rbx), %edi
    21a2:	0b 39 	orl	(%rcx), %edi
    21a4:	0b 49 13 	orl	19(%rcx), %ecx
    21a7:	00 00 	addb	%al, (%rax)
    21a9:	04 26 	addb	$38, %al
    21ab:	00 49 13 	addb	%cl, 19(%rcx)
    21ae:	00 00 	addb	%al, (%rax)
    21b0:	05 0f 00 0b 0b 	addl	$185270287, %eax
    21b5:	00 00 	addb	%al, (%rax)
    21b7:	06  <unknown>
    21b8:	0f 00 0b 	strw	(%rbx)
    21bb:	0b 49 13 	orl	19(%rcx), %ecx
    21be:	00 00 	addb	%al, (%rax)
    21c0:	07  <unknown>
    21c1:	13 01 	adcl	(%rcx), %eax
    21c3:	03 08 	addl	(%rax), %ecx
    21c5:	0b 0b 	orl	(%rbx), %ecx
    21c7:	3a 0b 	cmpb	(%rbx), %cl
    21c9:	3b 0b 	cmpl	(%rbx), %ecx
    21cb:	39 0b 	cmpl	%ecx, (%rbx)
    21cd:	01 13 	addl	%edx, (%rbx)
    21cf:	00 00 	addb	%al, (%rax)
    21d1:	08 0d 00 03 08 3a 	orb	%cl, 973603584(%rip)
    21d7:	0b 3b 	orl	(%rbx), %edi
    21d9:	0b 39 	orl	(%rcx), %edi
    21db:	0b 49 13 	orl	19(%rcx), %ecx
    21de:	38 0a 	cmpb	%cl, (%rdx)
    21e0:	00 00 	addb	%al, (%rax)
    21e2:	09 13 	orl	%edx, (%rbx)
    21e4:	01 0b 	addl	%ecx, (%rbx)
    21e6:	0b 3a 	orl	(%rdx), %edi
    21e8:	0b 3b 	orl	(%rbx), %edi
    21ea:	0b 39 	orl	(%rcx), %edi
    21ec:	0b 87 40 08 01 13 	orl	318834752(%rdi), %eax
    21f2:	00 00 	addb	%al, (%rax)
    21f4:	0a 34 00 	orb	(%rax,%rax), %dh
    21f7:	03 08 	addl	(%rax), %ecx
    21f9:	3a 0b 	cmpb	(%rbx), %cl
    21fb:	3b 0b 	cmpl	(%rbx), %ecx
    21fd:	39 0b 	cmpl	%ecx, (%rbx)
    21ff:	49 13 3f 	adcq	(%r15), %rdi
    2202:	0c 3c 	orb	$60, %al
    2204:	0c 00 	orb	$0, %al
    2206:	00 0b 	addb	%cl, (%rbx)
    2208:	34 00 	xorb	$0, %al
    220a:	03 08 	addl	(%rax), %ecx
    220c:	3a 0b 	cmpb	(%rbx), %cl
    220e:	3b 05 39 0b 49 13 	cmpl	323554105(%rip), %eax
    2214:	3f  <unknown>
    2215:	0c 3c 	orb	$60, %al
    2217:	0c 00 	orb	$0, %al
    2219:	00 0c 08 	addb	%cl, (%rax,%rcx)
    221c:	00 3a 	addb	%bh, (%rdx)
    221e:	0b 3b 	orl	(%rbx), %edi
    2220:	0b 39 	orl	(%rcx), %edi
    2222:	0b 18 	orl	(%rax), %ebx
    2224:	13 00 	adcl	(%rax), %eax
    2226:	00 0d 2e 01 3f 0c 	addb	%cl, 205455662(%rip)
    222c:	03 08 	addl	(%rax), %ecx
    222e:	3a 0b 	cmpb	(%rbx), %cl
    2230:	3b 0b 	cmpl	(%rbx), %ecx
    2232:	39 0b 	cmpl	%ecx, (%rbx)
    2234:	49 13 3c 0c 	adcq	(%r12,%rcx), %rdi
    2238:	01 13 	addl	%edx, (%rbx)
    223a:	00 00 	addb	%al, (%rax)
    223c:	0e  <unknown>
    223d:	05 00 49 13 00 	addl	$1263872, %eax
    2242:	00 0f 	addb	%cl, (%rdi)
    2244:	15 00 00 00 10 	adcl	$268435456, %eax
    2249:	26 00 00 	addb	%al, %es:(%rax)
    224c:	00 11 	addb	%dl, (%rcx)
    224e:	15 01 49 13 01 	adcl	$18041089, %eax
    2253:	13 00 	adcl	(%rax), %eax
    2255:	00 12 	addb	%dl, (%rdx)
    2257:	2e 01 3f 	addl	%edi, %cs:(%rdi)
    225a:	0c 03 	orb	$3, %al
    225c:	08 3a 	orb	%bh, (%rdx)
    225e:	0b 3b 	orl	(%rbx), %edi
    2260:	0b 39 	orl	(%rcx), %edi
    2262:	0b 3c 0c 	orl	(%rsp,%rcx), %edi
    2265:	01 13 	addl	%edx, (%rbx)
    2267:	00 00 	addb	%al, (%rax)
    2269:	13 2e 	adcl	(%rsi), %ebp
    226b:	00 3f 	addb	%bh, (%rdi)
    226d:	0c 03 	orb	$3, %al
    226f:	08 3a 	orb	%bh, (%rdx)
    2271:	0b 3b 	orl	(%rbx), %edi
    2273:	0b 39 	orl	(%rcx), %edi
    2275:	0b 49 13 	orl	19(%rcx), %ecx
    2278:	3c 0c 	cmpb	$12, %al
    227a:	00 00 	addb	%al, (%rax)
    227c:	14 2e 	adcb	$46, %al
    227e:	01 3f 	addl	%edi, (%rdi)
    2280:	0c 03 	orb	$3, %al
    2282:	08 3a 	orb	%bh, (%rdx)
    2284:	0b 3b 	orl	(%rbx), %edi
    2286:	0b 39 	orl	(%rcx), %edi
    2288:	0b 87 40 08 49 13 	orl	323553344(%rdi), %eax
    228e:	3c 0c 	cmpb	$12, %al
    2290:	01 13 	addl	%edx, (%rbx)
    2292:	00 00 	addb	%al, (%rax)
    2294:	15 01 01 49 13 	adcl	$323551489, %eax
    2299:	01 13 	addl	%edx, (%rbx)
    229b:	00 00 	addb	%al, (%rax)
    229d:	16  <unknown>
    229e:	21 00 	andl	%eax, (%rax)
    22a0:	00 00 	addb	%al, (%rax)
    22a2:	17  <unknown>
    22a3:	34 00 	xorb	$0, %al
    22a5:	03 08 	addl	(%rax), %ecx
    22a7:	3a 0b 	cmpb	(%rbx), %cl
    22a9:	3b 0b 	cmpl	(%rbx), %ecx
    22ab:	39 0b 	cmpl	%ecx, (%rbx)
    22ad:	87 40 08 	xchgl	%eax, 8(%rax)
    22b0:	49 13 3f 	adcq	(%r15), %rdi
    22b3:	0c 3c 	orb	$60, %al
    22b5:	0c 00 	orb	$0, %al
    22b7:	00 18 	addb	%bl, (%rax)
    22b9:	13 00 	adcl	(%rax), %eax
    22bb:	03 08 	addl	(%rax), %ecx
    22bd:	3c 0c 	cmpb	$12, %al
    22bf:	00 00 	addb	%al, (%rax)
    22c1:	19 21 	sbbl	%esp, (%rcx)
    22c3:	00 49 13 	addb	%cl, 19(%rcx)
    22c6:	2f  <unknown>
    22c7:	0b 00 	orl	(%rax), %eax
    22c9:	00 1a 	addb	%bl, (%rdx)
    22cb:	01 01 	addl	%eax, (%rcx)
    22cd:	87 42 0c 	xchgl	%eax, 12(%rdx)
    22d0:	49 13 01 	adcq	(%r9), %rax
    22d3:	13 00 	adcl	(%rax), %eax
    22d5:	00 1b 	addb	%bl, (%rbx)
    22d7:	21 00 	andl	%eax, (%rax)
    22d9:	2f  <unknown>
    22da:	0b 00 	orl	(%rax), %eax
    22dc:	00 1c 2e 	addb	%bl, (%rsi,%rbp)
    22df:	01 3f 	addl	%edi, (%rdi)
    22e1:	0c 03 	orb	$3, %al
    22e3:	08 3a 	orb	%bh, (%rdx)
    22e5:	0b 3b 	orl	(%rbx), %edi
    22e7:	0b 39 	orl	(%rcx), %edi
    22e9:	0b 49 13 	orl	19(%rcx), %ecx
    22ec:	11 01 	adcl	%eax, (%rcx)
    22ee:	12 01 	adcb	(%rcx), %al
    22f0:	40 06  <unknown>
    22f2:	01 13 	addl	%edx, (%rbx)
    22f4:	00 00 	addb	%al, (%rax)
    22f6:	1d 05 00 03 08 	sbbl	$134414341, %eax
    22fb:	3a 0b 	cmpb	(%rbx), %cl
    22fd:	3b 0b 	cmpl	(%rbx), %ecx
    22ff:	39 0b 	cmpl	%ecx, (%rbx)
    2301:	49 13 02 	adcq	(%r10), %rax
    2304:	0a 00 	orb	(%rax), %al
    2306:	00 1e 	addb	%bl, (%rsi)
    2308:	34 00 	xorb	$0, %al
    230a:	03 08 	addl	(%rax), %ecx
    230c:	3a 0b 	cmpb	(%rbx), %cl
    230e:	3b 0b 	cmpl	(%rbx), %ecx
    2310:	39 0b 	cmpl	%ecx, (%rbx)
    2312:	49 13 02 	adcq	(%r10), %rax
    2315:	0a 00 	orb	(%rax), %al
    2317:	00 1f 	addb	%bl, (%rdi)
    2319:	0b 01 	orl	(%rcx), %eax
    231b:	11 01 	adcl	%eax, (%rcx)
    231d:	12 01 	adcb	(%rcx), %al
    231f:	01 13 	addl	%edx, (%rbx)
    2321:	00 00 	addb	%al, (%rax)
    2323:	20 0b 	andb	%cl, (%rbx)
    2325:	01 11 	addl	%edx, (%rcx)
    2327:	01 12 	addl	%edx, (%rdx)
    2329:	01 00 	addl	%eax, (%rax)
    232b:	00 21 	addb	%ah, (%rcx)
    232d:	1d 01 31 13 11 	sbbl	$286470401, %eax
    2332:	01 12 	addl	%edx, (%rdx)
    2334:	01 00 	addl	%eax, (%rax)
    2336:	00 22 	addb	%ah, (%rdx)
    2338:	05 00 31 13 02 	addl	$34812160, %eax
    233d:	0a 00 	orb	(%rax), %al
    233f:	00 23 	addb	%ah, (%rbx)
    2341:	2e 01 03 	addl	%eax, %cs:(%rbx)
    2344:	08 3a 	orb	%bh, (%rdx)
    2346:	0b 3b 	orl	(%rbx), %edi
    2348:	0b 39 	orl	(%rcx), %edi
    234a:	0b 11 	orl	(%rcx), %edx
    234c:	01 12 	addl	%edx, (%rdx)
    234e:	01 40 06 	addl	%eax, 6(%rax)
    2351:	01 13 	addl	%edx, (%rbx)
    2353:	00 00 	addb	%al, (%rax)
    2355:	24 1d 	andb	$29, %al
    2357:	01 31 	addl	%esi, (%rcx)
    2359:	13 11 	adcl	(%rcx), %edx
    235b:	01 12 	addl	%edx, (%rdx)
    235d:	01 01 	addl	%eax, (%rcx)
    235f:	13 00 	adcl	(%rax), %eax
    2361:	00 25 2e 01 3f 0c 	addb	%ah, 205455662(%rip)
    2367:	03 08 	addl	(%rax), %ecx
    2369:	3a 0b 	cmpb	(%rbx), %cl
    236b:	3b 0b 	cmpl	(%rbx), %ecx
    236d:	39 0b 	cmpl	%ecx, (%rbx)
    236f:	87 40 08 	xchgl	%eax, 8(%rax)
    2372:	49 13 11 	adcq	(%r9), %rdx
    2375:	01 12 	addl	%edx, (%rdx)
    2377:	01 40 06 	addl	%eax, 6(%rax)
    237a:	01 13 	addl	%edx, (%rbx)
    237c:	00 00 	addb	%al, (%rax)
    237e:	26 2e 01 3f 	addl	%edi, %cs:(%rdi)
    2382:	0c 03 	orb	$3, %al
    2384:	08 3a 	orb	%bh, (%rdx)
    2386:	0b 3b 	orl	(%rbx), %edi
    2388:	0b 39 	orl	(%rcx), %edi
    238a:	0b 87 40 08 49 13 	orl	323553344(%rdi), %eax
    2390:	20 0b 	andb	%cl, (%rbx)
    2392:	34 0c 	xorb	$12, %al
    2394:	01 13 	addl	%edx, (%rbx)
    2396:	00 00 	addb	%al, (%rax)
    2398:	27  <unknown>
    2399:	05 00 03 08 3a 	addl	$973603584, %eax
    239e:	0b 3b 	orl	(%rbx), %edi
    23a0:	0b 39 	orl	(%rcx), %edi
    23a2:	0b 49 13 	orl	19(%rcx), %ecx
    23a5:	00 00 	addb	%al, (%rax)
    23a7:	28 2e 	subb	%ch, (%rsi)
    23a9:	01 3f 	addl	%edi, (%rdi)
    23ab:	0c 03 	orb	$3, %al
    23ad:	08 3a 	orb	%bh, (%rdx)
    23af:	0b 3b 	orl	(%rbx), %edi
    23b1:	05 39 0b 87 40 	addl	$1082592057, %eax
    23b6:	08 49 13 	orb	%cl, 19(%rcx)
    23b9:	20 0b 	andb	%cl, (%rbx)
    23bb:	34 0c 	xorb	$12, %al
    23bd:	01 13 	addl	%edx, (%rbx)
    23bf:	00 00 	addb	%al, (%rax)
    23c1:	29 05 00 03 08 3a 	subl	%eax, 973603584(%rip)
    23c7:	0b 3b 	orl	(%rbx), %edi
    23c9:	05 39 0b 49 13 	addl	$323554105, %eax
    23ce:	00 00 	addb	%al, (%rax)
    23d0:	2a 2e 	subb	(%rsi), %ch
    23d2:	01 3f 	addl	%edi, (%rdi)
    23d4:	0c 03 	orb	$3, %al
    23d6:	08 3a 	orb	%bh, (%rdx)
    23d8:	0b 3b 	orl	(%rbx), %edi
    23da:	05 39 0b 87 40 	addl	$1082592057, %eax
    23df:	08 20 	orb	%ah, (%rax)
    23e1:	0b 34 0c 	orl	(%rsp,%rcx), %esi
    23e4:	01 13 	addl	%edx, (%rbx)
    23e6:	00 00 	addb	%al, (%rax)
    23e8:	00  <unknown>
Disassembly of section __DWARF,__debug_loc:
__debug_loc:
    23e9:	6a 04 	pushq	$4
    23eb:	00 00 	addb	%al, (%rax)
    23ed:	00 00 	addb	%al, (%rax)
    23ef:	00 00 	addb	%al, (%rax)
    23f1:	6b 04 00 00 	imull	$0, (%rax,%rax), %eax
    23f5:	00 00 	addb	%al, (%rax)
    23f7:	00 00 	addb	%al, (%rax)
    23f9:	02 00 	addb	(%rax), %al
    23fb:	77 08 	ja	8 <__debug_loc+0x1c>
    23fd:	6b 04 00 00 	imull	$0, (%rax,%rax), %eax
    2401:	00 00 	addb	%al, (%rax)
    2403:	00 00 	addb	%al, (%rax)
    2405:	6e 	outsb	(%rsi), %dx
    2406:	04 00 	addb	$0, %al
    2408:	00 00 	addb	%al, (%rax)
    240a:	00 00 	addb	%al, (%rax)
    240c:	00 02 	addb	%al, (%rdx)
    240e:	00 77 10 	addb	%dh, 16(%rdi)
    2411:	6e 	outsb	(%rsi), %dx
    2412:	04 00 	addb	$0, %al
    2414:	00 00 	addb	%al, (%rax)
    2416:	00 00 	addb	%al, (%rax)
    2418:	00 09 	addb	%cl, (%rcx)
    241a:	07  <unknown>
    241b:	00 00 	addb	%al, (%rax)
    241d:	00 00 	addb	%al, (%rax)
    241f:	00 00 	addb	%al, (%rax)
    2421:	02 00 	addb	(%rax), %al
    2423:	76 10 	jbe	16 <__debug_loc+0x4c>
    2425:	09 07 	orl	%eax, (%rdi)
    2427:	00 00 	addb	%al, (%rax)
    2429:	00 00 	addb	%al, (%rax)
    242b:	00 00 	addb	%al, (%rax)
    242d:	0a 07 	orb	(%rdi), %al
    242f:	00 00 	addb	%al, (%rax)
    2431:	00 00 	addb	%al, (%rax)
    2433:	00 00 	addb	%al, (%rax)
    2435:	02 00 	addb	(%rax), %al
    2437:	77 08 	ja	8 <__debug_loc+0x58>
    2439:	00 00 	addb	%al, (%rax)
    243b:	00 00 	addb	%al, (%rax)
    243d:	00 00 	addb	%al, (%rax)
    243f:	00 00 	addb	%al, (%rax)
    2441:	00 00 	addb	%al, (%rax)
    2443:	00 00 	addb	%al, (%rax)
    2445:	00 00 	addb	%al, (%rax)
    2447:	00 00 	addb	%al, (%rax)
    2449:	da 00 	fiaddl	(%rax)
    244b:	00 00 	addb	%al, (%rax)
    244d:	00 00 	addb	%al, (%rax)
    244f:	00 00 	addb	%al, (%rax)
    2451:	db 00 	fildl	(%rax)
    2453:	00 00 	addb	%al, (%rax)
    2455:	00 00 	addb	%al, (%rax)
    2457:	00 00 	addb	%al, (%rax)
    2459:	02 00 	addb	(%rax), %al
    245b:	77 08 	ja	8 <__debug_loc+0x7c>
    245d:	db 00 	fildl	(%rax)
    245f:	00 00 	addb	%al, (%rax)
    2461:	00 00 	addb	%al, (%rax)
    2463:	00 00 	addb	%al, (%rax)
    2465:	de 00 	fiadds	(%rax)
    2467:	00 00 	addb	%al, (%rax)
    2469:	00 00 	addb	%al, (%rax)
    246b:	00 00 	addb	%al, (%rax)
    246d:	02 00 	addb	(%rax), %al
    246f:	77 10 	ja	16 <__debug_loc+0x98>
    2471:	de 00 	fiadds	(%rax)
    2473:	00 00 	addb	%al, (%rax)
    2475:	00 00 	addb	%al, (%rax)
    2477:	00 00 	addb	%al, (%rax)
    2479:	69 04 00 00 00 00 00 	imull	$0, (%rax,%rax), %eax
    2480:	00 02 	addb	%al, (%rdx)
    2482:	00 76 10 	addb	%dh, 16(%rsi)
    2485:	69 04 00 00 00 00 00 	imull	$0, (%rax,%rax), %eax
    248c:	00 6a 04 	addb	%ch, 4(%rdx)
    248f:	00 00 	addb	%al, (%rax)
    2491:	00 00 	addb	%al, (%rax)
    2493:	00 00 	addb	%al, (%rax)
    2495:	02 00 	addb	(%rax), %al
    2497:	77 08 	ja	8 <__debug_loc+0xb8>
    2499:	00 00 	addb	%al, (%rax)
    249b:	00 00 	addb	%al, (%rax)
    249d:	00 00 	addb	%al, (%rax)
    249f:	00 00 	addb	%al, (%rax)
    24a1:	00 00 	addb	%al, (%rax)
    24a3:	00 00 	addb	%al, (%rax)
    24a5:	00 00 	addb	%al, (%rax)
    24a7:	00 00 	addb	%al, (%rax)
    24a9:	00 00 	addb	%al, (%rax)
    24ab:	00 00 	addb	%al, (%rax)
    24ad:	00 00 	addb	%al, (%rax)
    24af:	00 00 	addb	%al, (%rax)
    24b1:	01 00 	addl	%eax, (%rax)
    24b3:	00 00 	addb	%al, (%rax)
    24b5:	00 00 	addb	%al, (%rax)
    24b7:	00 00 	addb	%al, (%rax)
    24b9:	02 00 	addb	(%rax), %al
    24bb:	77 08 	ja	8 <__debug_loc+0xdc>
    24bd:	01 00 	addl	%eax, (%rax)
    24bf:	00 00 	addb	%al, (%rax)
    24c1:	00 00 	addb	%al, (%rax)
    24c3:	00 00 	addb	%al, (%rax)
    24c5:	04 00 	addb	$0, %al
    24c7:	00 00 	addb	%al, (%rax)
    24c9:	00 00 	addb	%al, (%rax)
    24cb:	00 00 	addb	%al, (%rax)
    24cd:	02 00 	addb	(%rax), %al
    24cf:	77 10 	ja	16 <__debug_loc+0xf8>
    24d1:	04 00 	addb	$0, %al
    24d3:	00 00 	addb	%al, (%rax)
    24d5:	00 00 	addb	%al, (%rax)
    24d7:	00 00 	addb	%al, (%rax)
    24d9:	d9 00 	flds	(%rax)
    24db:	00 00 	addb	%al, (%rax)
    24dd:	00 00 	addb	%al, (%rax)
    24df:	00 00 	addb	%al, (%rax)
    24e1:	02 00 	addb	(%rax), %al
    24e3:	76 10 	jbe	16 <__debug_loc+0x10c>
    24e5:	d9 00 	flds	(%rax)
    24e7:	00 00 	addb	%al, (%rax)
    24e9:	00 00 	addb	%al, (%rax)
    24eb:	00 00 	addb	%al, (%rax)
    24ed:	da 00 	fiaddl	(%rax)
    24ef:	00 00 	addb	%al, (%rax)
    24f1:	00 00 	addb	%al, (%rax)
    24f3:	00 00 	addb	%al, (%rax)
    24f5:	02 00 	addb	(%rax), %al
    24f7:	77 08 	ja	8 <__debug_loc+0x118>
    24f9:	00 00 	addb	%al, (%rax)
    24fb:	00 00 	addb	%al, (%rax)
    24fd:	00 00 	addb	%al, (%rax)
    24ff:	00 00 	addb	%al, (%rax)
    2501:	00 00 	addb	%al, (%rax)
    2503:	00 00 	addb	%al, (%rax)
    2505:	00 00 	addb	%al, (%rax)
    2507:	00 00 	addb	%al, (%rax)
Disassembly of section __DWARF,__debug_pubnames:
__debug_pubnames:
    2509:	66 02 00 	addb	(%rax), %al
    250c:	00 02 	addb	%al, (%rdx)
    250e:	00 00 	addb	%al, (%rax)
    2510:	00 00 	addb	%al, (%rax)
    2512:	00 39 	addb	%bh, (%rcx)
    2514:	18 00 	sbbb	%al, (%rax)
    2516:	00 64 03 00 	addb	%ah, (%rbx,%rax)
    251a:	00 61 74 	addb	%ah, 116(%rcx)
    251d:	65 78 69 	js	105 <__debug_pubnames+0x80>
    2520:	74 00 	je	0 <__debug_pubnames+0x19>
    2522:	8e 03 	movw	(%rbx), %es
    2524:	00 00 	addb	%al, (%rax)
    2526:	61  <unknown>
    2527:	74 6f 	je	111 <__debug_pubnames+0x8f>
    2529:	66 00 c4 	addb	%al, %ah
    252c:	03 00 	addl	(%rax), %eax
    252e:	00 61 74 	addb	%ah, 116(%rcx)
    2531:	6f 	outsl	(%rsi), %dx
    2532:	69 00 e5 03 00 00 	imull	$997, (%rax), %eax
    2538:	61  <unknown>
    2539:	74 6f 	je	111 <__debug_pubnames+0xa1>
    253b:	6c 	insb	%dx, %es:(%rdi)
    253c:	00 06 	addb	%al, (%rsi)
    253e:	04 00 	addb	$0, %al
    2540:	00 62 73 	addb	%ah, 115(%rdx)
    2543:	65 61  <unknown>
    2545:	72 63 	jb	99 <__debug_pubnames+0xa1>
    2547:	68 00 5f 04 00 	pushq	$286464
    254c:	00 64 69 76 	addb	%ah, 118(%rcx,%rbp,2)
    2550:	00 84 04 00 00 67 65 	addb	%al, 1701249024(%rsp,%rax)
    2557:	74 65 	je	101 <__debug_pubnames+0xb5>
    2559:	6e 	outsb	(%rsi), %dx
    255a:	76 00 	jbe	0 <__debug_pubnames+0x53>
    255c:	a7 	cmpsl	%es:(%rdi), (%rsi)
    255d:	04 00 	addb	$0, %al
    255f:	00 6c 64 69 	addb	%ch, 105(%rsp)
    2563:	76 00 	jbe	0 <__debug_pubnames+0x5c>
    2565:	cd 04 	int	$4
    2567:	00 00 	addb	%al, (%rax)
    2569:	6d 	insl	%dx, %es:(%rdi)
    256a:	62  <unknown>
    256b:	6c 	insb	%dx, %es:(%rdi)
    256c:	65 6e 	outsb	%gs:(%rsi), %dx
    256e:	00 f4 	addb	%dh, %ah
    2570:	04 00 	addb	$0, %al
    2572:	00 6d 62 	addb	%ch, 98(%rbp)
    2575:	73 74 	jae	116 <__debug_pubnames+0xe2>
    2577:	6f 	outsl	(%rsi), %dx
    2578:	77 63 	ja	99 <__debug_pubnames+0xd4>
    257a:	73 00 	jae	0 <__debug_pubnames+0x73>
    257c:	39 05 00 00 6d 62 	cmpl	%eax, 1651310592(%rip)
    2582:	74 6f 	je	111 <__debug_pubnames+0xea>
    2584:	77 63 	ja	99 <__debug_pubnames+0xe0>
    2586:	00 66 05 	addb	%ah, 5(%rsi)
    2589:	00 00 	addb	%al, (%rax)
    258b:	71 73 	jno	115 <__debug_pubnames+0xf7>
    258d:	6f 	outsl	(%rsi), %dx
    258e:	72 74 	jb	116 <__debug_pubnames+0xfb>
    2590:	00 93 05 00 00 72 	addb	%dl, 1912602629(%rbx)
    2596:	61  <unknown>
    2597:	6e 	outsb	(%rsi), %dx
    2598:	64 00 aa 05 00 00 73 	addb	%ch, %fs:1929379845(%rdx)
    259f:	72 61 	jb	97 <__debug_pubnames+0xf9>
    25a1:	6e 	outsb	(%rsi), %dx
    25a2:	64 00 c8 	addb	%cl, %al
    25a5:	05 00 00 73 74 	addl	$1953693696, %eax
    25aa:	72 74 	jb	116 <__debug_pubnames+0x117>
    25ac:	6f 	outsl	(%rsi), %dx
    25ad:	64 00 fe 	addb	%bh, %dh
    25b0:	05 00 00 73 74 	addl	$1953693696, %eax
    25b5:	72 74 	jb	116 <__debug_pubnames+0x122>
    25b7:	6f 	outsl	(%rsi), %dx
    25b8:	6c 	insb	%dx, %es:(%rdi)
    25b9:	00 2b 	addb	%ch, (%rbx)
    25bb:	06  <unknown>
    25bc:	00 00 	addb	%al, (%rax)
    25be:	73 74 	jae	116 <__debug_pubnames+0x12b>
    25c0:	72 74 	jb	116 <__debug_pubnames+0x12d>
    25c2:	6f 	outsl	(%rsi), %dx
    25c3:	75 6c 	jne	108 <__debug_pubnames+0x128>
    25c5:	00 59 06 	addb	%bl, 6(%rcx)
    25c8:	00 00 	addb	%al, (%rax)
    25ca:	73 79 	jae	121 <__debug_pubnames+0x13c>
    25cc:	73 74 	jae	116 <__debug_pubnames+0x139>
    25ce:	65 6d 	insl	%dx, %es:(%rdi)
    25d0:	00 84 06 00 00 77 63 	addb	%al, 1668743168(%rsi,%rax)
    25d7:	73 74 	jae	116 <__debug_pubnames+0x144>
    25d9:	6f 	outsl	(%rsi), %dx
    25da:	6d 	insl	%dx, %es:(%rdi)
    25db:	62  <unknown>
    25dc:	73 00 	jae	0 <__debug_pubnames+0xd5>
    25de:	b9 06 00 00 77 	movl	$1996488710, %ecx
    25e3:	63  <unknown>
    25e4:	74 6f 	je	111 <__debug_pubnames+0x14c>
    25e6:	6d 	insl	%dx, %es:(%rdi)
    25e7:	62  <unknown>
    25e8:	00 e9 	addb	%ch, %cl
    25ea:	06  <unknown>
    25eb:	00 00 	addb	%al, (%rax)
    25ed:	6c 	insb	%dx, %es:(%rdi)
    25ee:	6c 	insb	%dx, %es:(%rdi)
    25ef:	64 69 76 00 10 07 00 00 	imull	$1808, %fs:(%rsi), %esi
    25f7:	61  <unknown>
    25f8:	74 6f 	je	111 <__debug_pubnames+0x160>
    25fa:	6c 	insb	%dx, %es:(%rdi)
    25fb:	6c 	insb	%dx, %es:(%rdi)
    25fc:	00 32 	addb	%dh, (%rdx)
    25fe:	07  <unknown>
    25ff:	00 00 	addb	%al, (%rax)
    2601:	73 74 	jae	116 <__debug_pubnames+0x16e>
    2603:	72 74 	jb	116 <__debug_pubnames+0x170>
    2605:	6f 	outsl	(%rsi), %dx
    2606:	6c 	insb	%dx, %es:(%rdi)
    2607:	6c 	insb	%dx, %es:(%rdi)
    2608:	00 60 07 	addb	%ah, 7(%rax)
    260b:	00 00 	addb	%al, (%rax)
    260d:	73 74 	jae	116 <__debug_pubnames+0x17a>
    260f:	72 74 	jb	116 <__debug_pubnames+0x17c>
    2611:	6f 	outsl	(%rsi), %dx
    2612:	75 6c 	jne	108 <__debug_pubnames+0x177>
    2614:	6c 	insb	%dx, %es:(%rdi)
    2615:	00 8f 07 00 00 73 	addb	%cl, 1929379847(%rdi)
    261b:	74 72 	je	114 <__debug_pubnames+0x186>
    261d:	74 6f 	je	111 <__debug_pubnames+0x185>
    261f:	66 00 c8 	addb	%cl, %al
    2622:	07  <unknown>
    2623:	00 00 	addb	%al, (%rax)
    2625:	73 74 	jae	116 <__debug_pubnames+0x192>
    2627:	72 74 	jb	116 <__debug_pubnames+0x194>
    2629:	6f 	outsl	(%rsi), %dx
    262a:	6c 	insb	%dx, %es:(%rdi)
    262b:	64 00 08 	addb	%cl, %fs:(%rax)
    262e:	08 00 	orb	%al, (%rax)
    2630:	00 5f 5f 	addb	%bl, 95(%rdi)
    2633:	67 6e 	outsb	(%esi), %dx
    2635:	75 5f 	jne	95 <__debug_pubnames+0x18d>
    2637:	63  <unknown>
    2638:	78 78 	js	120 <__debug_pubnames+0x1a9>
    263a:	3a 3a 	cmpb	(%rdx), %bh
    263c:	64 69 76 00 8a 08 00 00 	imull	$2186, %fs:(%rsi), %esi
    2644:	61  <unknown>
    2645:	62  <unknown>
    2646:	73 00 	jae	0 <__debug_pubnames+0x13f>
    2648:	aa 	stosb	%al, %es:(%rdi)
    2649:	08 00 	orb	%al, (%rax)
    264b:	00 73 74 	addb	%dh, 116(%rbx)
    264e:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    2651:	61  <unknown>
    2652:	62  <unknown>
    2653:	73 00 	jae	0 <__debug_pubnames+0x14c>
    2655:	e2 08 	loop	8
    2657:	00 00 	addb	%al, (%rax)
    2659:	73 74 	jae	116 <__debug_pubnames+0x1c6>
    265b:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    265e:	61  <unknown>
    265f:	62  <unknown>
    2660:	73 00 	jae	0 <__debug_pubnames+0x159>
    2662:	18 09 	sbbb	%cl, (%rcx)
    2664:	00 00 	addb	%al, (%rax)
    2666:	73 74 	jae	116 <__debug_pubnames+0x1d3>
    2668:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    266b:	61  <unknown>
    266c:	62  <unknown>
    266d:	73 00 	jae	0 <__debug_pubnames+0x166>
    266f:	42 09 00 	orl	%eax, (%rax)
    2672:	00 73 74 	addb	%dh, 116(%rbx)
    2675:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    2678:	61  <unknown>
    2679:	62  <unknown>
    267a:	73 00 	jae	0 <__debug_pubnames+0x173>
    267c:	6c 	insb	%dx, %es:(%rdi)
    267d:	09 00 	orl	%eax, (%rax)
    267f:	00 73 74 	addb	%dh, 116(%rbx)
    2682:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    2685:	61  <unknown>
    2686:	62  <unknown>
    2687:	73 00 	jae	0 <__debug_pubnames+0x180>
    2689:	96 	xchgl	%esi, %eax
    268a:	09 00 	orl	%eax, (%rax)
    268c:	00 73 74 	addb	%dh, 116(%rbx)
    268f:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    2692:	61  <unknown>
    2693:	62  <unknown>
    2694:	73 00 	jae	0 <__debug_pubnames+0x18d>
    2696:	c0 09 00 	rorb	$0, (%rcx)
    2699:	00 73 74 	addb	%dh, 116(%rbx)
    269c:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    269f:	61  <unknown>
    26a0:	62  <unknown>
    26a1:	73 00 	jae	0 <__debug_pubnames+0x19a>
    26a3:	1a 0a 	sbbb	(%rdx), %cl
    26a5:	00 00 	addb	%al, (%rax)
    26a7:	73 74 	jae	116 <__debug_pubnames+0x214>
    26a9:	64 3a 3a 	cmpb	%fs:(%rdx), %bh
    26ac:	64 69 76 00 4d 0f 00 00 	imull	$3917, %fs:(%rsi), %esi
    26b4:	6d 	insl	%dx, %es:(%rdi)
    26b5:	61  <unknown>
    26b6:	69 6e 00 f8 10 00 00 	imull	$4344, (%rsi), %ebp
    26bd:	46 61  <unknown>
    26bf:	73 74 	jae	116 <__debug_pubnames+0x22c>
    26c1:	52 	pushq	%rdx
    26c2:	61  <unknown>
    26c3:	6e 	outsb	(%rsi), %dx
    26c4:	64 00 56 15 	addb	%dl, %fs:21(%rsi)
    26c8:	00 00 	addb	%al, (%rax)
    26ca:	49 6e 	outsb	(%rsi), %dx
    26cc:	69 74 46 61 73 74 52 61 	imull	$1632793715, 97(%rsi,%rax,2), %esi
    26d4:	6e 	outsb	(%rsi), %dx
    26d5:	64 00 b2 15 00 00 5f 	addb	%dh, %fs:1593835541(%rdx)
    26dc:	72 64 	jb	100 <__debug_pubnames+0x239>
    26de:	72 61 	jb	97 <__debug_pubnames+0x238>
    26e0:	6e 	outsb	(%rsi), %dx
    26e1:	64 36 34 5f 	xorb	$95, %al
    26e5:	73 74 	jae	116 <__debug_pubnames+0x252>
    26e7:	65 70 00 	jo	0 <__debug_pubnames+0x1e1>
    26ea:	f2 15 00 00 5f 6d 	repne		adcl	$1834942464, %eax
    26f0:	6d 	insl	%dx, %es:(%rdi)
    26f1:	5f 	popq	%rdi
    26f2:	6d 	insl	%dx, %es:(%rdi)
    26f3:	75 6c 	jne	108 <__debug_pubnames+0x258>
    26f5:	6c 	insb	%dx, %es:(%rdi)
    26f6:	6f 	outsl	(%rsi), %dx
    26f7:	5f 	popq	%rdi
    26f8:	65 70 69 	jo	105 <__debug_pubnames+0x25b>
    26fb:	33 32 	xorl	(%rdx), %esi
    26fd:	00 48 16 	addb	%cl, 22(%rax)
    2700:	00 00 	addb	%al, (%rax)
    2702:	5f 	popq	%rdi
    2703:	6d 	insl	%dx, %es:(%rdi)
    2704:	6d 	insl	%dx, %es:(%rdi)
    2705:	5f 	popq	%rdi
    2706:	61  <unknown>
    2707:	6e 	outsb	(%rsi), %dx
    2708:	64 5f 	popq	%rdi
    270a:	73 69 	jae	105 <__debug_pubnames+0x26c>
    270c:	31 32 	xorl	%esi, (%rdx)
    270e:	38 00 	cmpb	%al, (%rax)
    2710:	9a  <unknown>
    2711:	16  <unknown>
    2712:	00 00 	addb	%al, (%rax)
    2714:	5f 	popq	%rdi
    2715:	6d 	insl	%dx, %es:(%rdi)
    2716:	6d 	insl	%dx, %es:(%rdi)
    2717:	5f 	popq	%rdi
    2718:	73 72 	jae	114 <__debug_pubnames+0x283>
    271a:	6c 	insb	%dx, %es:(%rdi)
    271b:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    2722:	00 ed 	addb	%ch, %ch
    2724:	16  <unknown>
    2725:	00 00 	addb	%al, (%rax)
    2727:	5f 	popq	%rdi
    2728:	6d 	insl	%dx, %es:(%rdi)
    2729:	6d 	insl	%dx, %es:(%rdi)
    272a:	5f 	popq	%rdi
    272b:	73 6c 	jae	108 <__debug_pubnames+0x290>
    272d:	6c 	insb	%dx, %es:(%rdi)
    272e:	69 5f 65 70 69 33 32 	imull	$842230128, 101(%rdi), %ebx
    2735:	00 40 17 	addb	%al, 23(%rax)
    2738:	00 00 	addb	%al, (%rax)
    273a:	5f 	popq	%rdi
    273b:	6d 	insl	%dx, %es:(%rdi)
    273c:	6d 	insl	%dx, %es:(%rdi)
    273d:	5f 	popq	%rdi
    273e:	61  <unknown>
    273f:	64 64 5f 	popq	%rdi
    2742:	65 70 69 	jo	105 <__debug_pubnames+0x2a5>
    2745:	33 32 	xorl	(%rdx), %esi
    2747:	00 92 17 00 00 5f 	addb	%dl, 1593835543(%rdx)
    274d:	6d 	insl	%dx, %es:(%rdi)
    274e:	6d 	insl	%dx, %es:(%rdi)
    274f:	5f 	popq	%rdi
    2750:	73 74 	jae	116 <__debug_pubnames+0x2bd>
    2752:	6f 	outsl	(%rsi), %dx
    2753:	72 65 	jb	101 <__debug_pubnames+0x2b1>
    2755:	5f 	popq	%rdi
    2756:	73 69 	jae	105 <__debug_pubnames+0x2b8>
    2758:	31 32 	xorl	%esi, (%rdx)
    275a:	38 00 	cmpb	%al, (%rax)
    275c:	eb 17 	jmp	23 <__debug_pubnames+0x26c>
    275e:	00 00 	addb	%al, (%rax)
    2760:	5f 	popq	%rdi
    2761:	6d 	insl	%dx, %es:(%rdi)
    2762:	6d 	insl	%dx, %es:(%rdi)
    2763:	5f 	popq	%rdi
    2764:	6c 	insb	%dx, %es:(%rdi)
    2765:	6f 	outsl	(%rsi), %dx
    2766:	61  <unknown>
    2767:	64 5f 	popq	%rdi
    2769:	73 69 	jae	105 <__debug_pubnames+0x2cb>
    276b:	31 32 	xorl	%esi, (%rdx)
    276d:	38 00 	cmpb	%al, (%rax)
    276f:	00 00 	addb	%al, (%rax)
    2771:	00 00 	addb	%al, (%rax)
Disassembly of section __DWARF,__debug_pubtypes:
__debug_pubtypes:
    2773:	33 02 	xorl	(%rdx), %eax
    2775:	00 00 	addb	%al, (%rax)
    2777:	02 00 	addb	(%rax), %al
    2779:	00 00 	addb	%al, (%rax)
    277b:	00 00 	addb	%al, (%rax)
    277d:	39 18 	cmpl	%ebx, (%rax)
    277f:	00 00 	addb	%al, (%rax)
    2781:	ca 00 00 	lretl	$0
    2784:	00 73 69 	addb	%dh, 105(%rbx)
    2787:	67 6e 	outsb	(%esi), %dx
    2789:	65 64 20 63 68 	andb	%ah, %fs:104(%rbx)
    278e:	61  <unknown>
    278f:	72 00 	jb	0 <__debug_pubtypes+0x1e>
    2791:	d9 00 	flds	(%rax)
    2793:	00 00 	addb	%al, (%rax)
    2795:	75 6e 	jne	110 <__debug_pubtypes+0x92>
    2797:	73 69 	jae	105 <__debug_pubtypes+0x8f>
    2799:	67 6e 	outsb	(%esi), %dx
    279b:	65 64 20 63 68 	andb	%ah, %fs:104(%rbx)
    27a0:	61  <unknown>
    27a1:	72 00 	jb	0 <__debug_pubtypes+0x30>
    27a3:	ea  <unknown>
    27a4:	00 00 	addb	%al, (%rax)
    27a6:	00 73 68 	addb	%dh, 104(%rbx)
    27a9:	6f 	outsl	(%rsi), %dx
    27aa:	72 74 	jb	116 <__debug_pubtypes+0xad>
    27ac:	20 69 6e 	andb	%ch, 110(%rcx)
    27af:	74 00 	je	0 <__debug_pubtypes+0x3e>
    27b1:	f7 00 00 00 73 68 	testl	$1752367104, (%rax)
    27b7:	6f 	outsl	(%rsi), %dx
    27b8:	72 74 	jb	116 <__debug_pubtypes+0xbb>
    27ba:	20 75 6e 	andb	%dh, 110(%rbp)
    27bd:	73 69 	jae	105 <__debug_pubtypes+0xb5>
    27bf:	67 6e 	outsb	(%esi), %dx
    27c1:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
    27c6:	74 00 	je	0 <__debug_pubtypes+0x55>
    27c8:	1f  <unknown>
    27c9:	01 00 	addl	%eax, (%rax)
    27cb:	00 69 6e 	addb	%ch, 110(%rcx)
    27ce:	74 00 	je	0 <__debug_pubtypes+0x5d>
    27d0:	0d 01 00 00 5f 	orl	$1593835521, %eax
    27d5:	5f 	popq	%rdi
    27d6:	69 6e 74 33 32 5f 74 	imull	$1952395827, 116(%rsi), %ebp
    27dd:	00 2b 	addb	%ch, (%rbx)
    27df:	01 00 	addl	%eax, (%rax)
    27e1:	00 75 6e 	addb	%dh, 110(%rbp)
    27e4:	73 69 	jae	105 <__debug_pubtypes+0xdc>
    27e6:	67 6e 	outsb	(%esi), %dx
    27e8:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
    27ed:	74 00 	je	0 <__debug_pubtypes+0x7c>
    27ef:	4d 01 00 	addq	%r8, (%r8)
    27f2:	00 6c 6f 6e 	addb	%ch, 110(%rdi,%rbp,2)
    27f6:	67 20 6c 6f 6e 	andb	%ch, 110(%edi,%ebp,2)
    27fb:	67 20 69 6e 	andb	%ch, 110(%ecx)
    27ff:	74 00 	je	0 <__debug_pubtypes+0x8e>
    2801:	3b 01 	cmpl	(%rcx), %eax
    2803:	00 00 	addb	%al, (%rax)
    2805:	5f 	popq	%rdi
    2806:	5f 	popq	%rdi
    2807:	69 6e 74 36 34 5f 74 	imull	$1952396342, 116(%rsi), %ebp
    280e:	00 5e 01 	addb	%bl, 1(%rsi)
    2811:	00 00 	addb	%al, (%rax)
    2813:	6c 	insb	%dx, %es:(%rdi)
    2814:	6f 	outsl	(%rsi), %dx
    2815:	6e 	outsb	(%rsi), %dx
    2816:	67 20 6c 6f 6e 	andb	%ch, 110(%edi,%ebp,2)
    281b:	67 20 75 6e 	andb	%dh, 110(%ebp)
    281f:	73 69 	jae	105 <__debug_pubtypes+0x117>
    2821:	67 6e 	outsb	(%esi), %dx
    2823:	65 64 20 69 6e 	andb	%ch, %fs:110(%rcx)
    2828:	74 00 	je	0 <__debug_pubtypes+0xb7>
    282a:	78 01 	js	1 <__debug_pubtypes+0xba>
    282c:	00 00 	addb	%al, (%rax)
    282e:	6c 	insb	%dx, %es:(%rdi)
    282f:	6f 	outsl	(%rsi), %dx
    2830:	6e 	outsb	(%rsi), %dx
    2831:	67 20 69 6e 	andb	%ch, 110(%ecx)
    2835:	74 00 	je	0 <__debug_pubtypes+0xc4>
    2837:	84 01 	testb	%al, (%rcx)
    2839:	00 00 	addb	%al, (%rax)
    283b:	73 69 	jae	105 <__debug_pubtypes+0x133>
    283d:	7a 65 	jp	101 <__debug_pubtypes+0x131>
    283f:	74 79 	je	121 <__debug_pubtypes+0x147>
    2841:	70 65 	jo	101 <__debug_pubtypes+0x135>
    2843:	00 99 01 00 00 63 	addb	%bl, 1660944385(%rcx)
    2849:	68 61 72 00 a6 	pushq	$-1509920159
    284e:	01 00 	addl	%eax, (%rax)
    2850:	00 5f 5f 	addb	%bl, 95(%rdi)
    2853:	64 61  <unknown>
    2855:	72 77 	jb	119 <__debug_pubtypes+0x15b>
    2857:	69 6e 5f 73 69 7a 65 	imull	$1702521203, 95(%rsi), %ebp
    285e:	5f 	popq	%rdi
    285f:	74 00 	je	0 <__debug_pubtypes+0xee>
    2861:	c0 01 00 	rolb	$0, (%rcx)
    2864:	00 5f 5f 	addb	%bl, 95(%rdi)
    2867:	64 61  <unknown>
    2869:	72 77 	jb	119 <__debug_pubtypes+0x16f>
    286b:	69 6e 5f 74 69 6d 65 	imull	$1701669236, 95(%rsi), %ebp
    2872:	5f 	popq	%rdi
    2873:	74 00 	je	0 <__debug_pubtypes+0x102>
    2875:	d8 01 	fadds	(%rcx)
    2877:	00 00 	addb	%al, (%rax)
    2879:	5f 	popq	%rdi
    287a:	5f 	popq	%rdi
    287b:	64 61  <unknown>
    287d:	72 77 	jb	119 <__debug_pubtypes+0x183>
    287f:	69 6e 5f 6f 66 66 5f 	imull	$1600546415, 95(%rsi), %ebp
    2886:	74 00 	je	0 <__debug_pubtypes+0x115>
    2888:	ef 	outl	%eax, %dx
    2889:	01 00 	addl	%eax, (%rax)
    288b:	00 5f 5f 	addb	%bl, 95(%rdi)
    288e:	64 61  <unknown>
    2890:	72 77 	jb	119 <__debug_pubtypes+0x196>
    2892:	69 6e 5f 73 75 73 65 	imull	$1702065523, 95(%rsi), %ebp
    2899:	63  <unknown>
    289a:	6f 	outsl	(%rsi), %dx
    289b:	6e 	outsb	(%rsi), %dx
    289c:	64 73 5f 	jae	95 <__debug_pubtypes+0x18b>
    289f:	74 00 	je	0 <__debug_pubtypes+0x12e>
    28a1:	0c 02 	orb	$2, %al
    28a3:	00 00 	addb	%al, (%rax)
    28a5:	73 69 	jae	105 <__debug_pubtypes+0x19d>
    28a7:	7a 65 	jp	101 <__debug_pubtypes+0x19b>
    28a9:	5f 	popq	%rdi
    28aa:	74 00 	je	0 <__debug_pubtypes+0x139>
    28ac:	21 02 	andl	%eax, (%rdx)
    28ae:	00 00 	addb	%al, (%rax)
    28b0:	75 69 	jne	105 <__debug_pubtypes+0x1a8>
    28b2:	6e 	outsb	(%rsi), %dx
    28b3:	74 38 	je	56 <__debug_pubtypes+0x17a>
    28b5:	5f 	popq	%rdi
    28b6:	74 00 	je	0 <__debug_pubtypes+0x145>
    28b8:	31 02 	xorl	%eax, (%rdx)
    28ba:	00 00 	addb	%al, (%rax)
    28bc:	74 69 	je	105 <__debug_pubtypes+0x1b4>
    28be:	6d 	insl	%dx, %es:(%rdi)
    28bf:	65 76 61 	jbe	97 <__debug_pubtypes+0x1b0>
    28c2:	6c 	insb	%dx, %es:(%rdi)
    28c3:	00 98 02 00 00 64 	addb	%bl, 1677721602(%rax)
    28c9:	69 76 5f 74 00 d7 02 	imull	$47644788, 95(%rsi), %esi
    28d0:	00 00 	addb	%al, (%rax)
    28d2:	6c 	insb	%dx, %es:(%rdi)
    28d3:	64 69 76 5f 74 00 18 03 	imull	$51904628, %fs:95(%rsi), %esi
    28db:	00 00 	addb	%al, (%rax)
    28dd:	6c 	insb	%dx, %es:(%rdi)
    28de:	6c 	insb	%dx, %es:(%rdi)
    28df:	64 69 76 5f 74 00 a7 03 	imull	$61276276, %fs:95(%rsi), %esi
    28e7:	00 00 	addb	%al, (%rax)
    28e9:	64 6f 	outsl	%fs:(%rsi), %dx
    28eb:	75 62 	jne	98 <__debug_pubtypes+0x1dc>
    28ed:	6c 	insb	%dx, %es:(%rdi)
    28ee:	65 00 21 	addb	%ah, %gs:(%rcx)
    28f1:	05 00 00 77 63 	addl	$1668743168, %eax
    28f6:	68 61 72 5f 74 	pushq	$1952412257
    28fb:	00 b7 07 00 00 66 	addb	%dh, 1711276039(%rdi)
    2901:	6c 	insb	%dx, %es:(%rdi)
    2902:	6f 	outsl	(%rsi), %dx
    2903:	61  <unknown>
    2904:	74 00 	je	0 <__debug_pubtypes+0x193>
    2906:	e9 07 00 00 6c 	jmp	1811939335 <__debug_pubtypes+0x6c00019f>
    290b:	6f 	outsl	(%rsi), %dx
    290c:	6e 	outsb	(%rsi), %dx
    290d:	67 20 64 6f 75 	andb	%ah, 117(%edi,%ebp,2)
    2912:	62  <unknown>
    2913:	6c 	insb	%dx, %es:(%rdi)
    2914:	65 00 cc 	addb	%cl, %ah
    2917:	08 00 	orb	%al, (%rax)
    2919:	00 5f 5f 	addb	%bl, 95(%rdi)
    291c:	66 6c 	insb	%dx, %es:(%rdi)
    291e:	6f 	outsl	(%rsi), %dx
    291f:	61  <unknown>
    2920:	74 31 	je	49 <__debug_pubtypes+0x1e0>
    2922:	32 38 	xorb	(%rax), %bh
    2924:	00 04 09 	addb	%al, (%rcx,%rcx)
    2927:	00 00 	addb	%al, (%rax)
    2929:	5f 	popq	%rdi
    292a:	5f 	popq	%rdi
    292b:	69 6e 74 31 32 38 00 	imull	$3682865, 116(%rsi), %ebp
    2932:	1c 0b 	sbbb	$11, %al
    2934:	00 00 	addb	%al, (%rax)
    2936:	66 70 6f 	jo	111 <__debug_pubtypes+0x235>
    2939:	73 5f 	jae	95 <__debug_pubtypes+0x227>
    293b:	74 00 	je	0 <__debug_pubtypes+0x1ca>
    293d:	2b 0b 	subl	(%rbx), %ecx
    293f:	00 00 	addb	%al, (%rax)
    2941:	5f 	popq	%rdi
    2942:	5f 	popq	%rdi
    2943:	73 62 	jae	98 <__debug_pubtypes+0x234>
    2945:	75 66 	jne	102 <__debug_pubtypes+0x23a>
    2947:	00 64 0b 00 	addb	%ah, (%rbx,%rcx)
    294b:	00 5f 5f 	addb	%bl, 95(%rdi)
    294e:	73 46 	jae	70 <__debug_pubtypes+0x223>
    2950:	49 4c  <unknown>
    2952:	45 00 6c 0d 00 	addb	%r13b, (%r13,%rcx)
    2957:	00 46 49 	addb	%al, 73(%rsi)
    295a:	4c 45  <unknown>
    295c:	00 f0 	addb	%dh, %al
    295e:	0d 00 00 5f 5f 	orl	$1600061440, %eax
    2963:	76 32 	jbe	50 <__debug_pubtypes+0x224>
    2965:	64 75 00 	jne	0 <__debug_pubtypes+0x1f5>
    2968:	0c 0e 	orb	$14, %al
    296a:	00 00 	addb	%al, (%rax)
    296c:	5f 	popq	%rdi
    296d:	5f 	popq	%rdi
    296e:	76 34 	jbe	52 <__debug_pubtypes+0x231>
    2970:	73 69 	jae	105 <__debug_pubtypes+0x268>
    2972:	00 28 	addb	%ch, (%rax)
    2974:	0e  <unknown>
    2975:	00 00 	addb	%al, (%rax)
    2977:	5f 	popq	%rdi
    2978:	5f 	popq	%rdi
    2979:	76 34 	jbe	52 <__debug_pubtypes+0x23c>
    297b:	73 75 	jae	117 <__debug_pubtypes+0x27f>
    297d:	00 44 0e 00 	addb	%al, (%rsi,%rcx)
    2981:	00 5f 5f 	addb	%bl, 95(%rdi)
    2984:	6d 	insl	%dx, %es:(%rdi)
    2985:	31 32 	xorl	%esi, (%rdx)
    2987:	38 69 00 	cmpb	%ch, (%rcx)
    298a:	c2 0e 00 	retq	$14
    298d:	00 66 61 	addb	%ah, 97(%rsi)
    2990:	73 74 	jae	116 <__debug_pubtypes+0x293>
    2992:	72 61 	jb	97 <__debug_pubtypes+0x282>
    2994:	6e 	outsb	(%rsi), %dx
    2995:	64 5f 	popq	%rdi
    2997:	74 00 	je	0 <__debug_pubtypes+0x226>
    2999:	3c 0f 	cmpb	$15, %al
    299b:	00 00 	addb	%al, (%rax)
    299d:	66 61  <unknown>
    299f:	73 74 	jae	116 <__debug_pubtypes+0x2a2>
    29a1:	72 61 	jb	97 <__debug_pubtypes+0x291>
    29a3:	6e 	outsb	(%rsi), %dx
    29a4:	64 00 00 	addb	%al, %fs:(%rax)
    29a7:	00 00 	addb	%al, (%rax)
    29a9:	00  <unknown>
Disassembly of section __DWARF,__debug_aranges:
__debug_aranges:
    29aa:	2c 00 	subb	$0, %al
    29ac:	00 00 	addb	%al, (%rax)
    29ae:	02 00 	addb	(%rax), %al
    29b0:	00 00 	addb	%al, (%rax)
    29b2:	00 00 	addb	%al, (%rax)
    29b4:	08 00 	orb	%al, (%rax)
    29b6:	00 00 	addb	%al, (%rax)
    29b8:	00 00 	addb	%al, (%rax)
    29ba:	00 00 	addb	%al, (%rax)
    29bc:	00 00 	addb	%al, (%rax)
    29be:	00 00 	addb	%al, (%rax)
    29c0:	00 00 	addb	%al, (%rax)
    29c2:	0a 07 	orb	(%rdi), %al
    29c4:	00 00 	addb	%al, (%rax)
    29c6:	00 00 	addb	%al, (%rax)
    29c8:	00 00 	addb	%al, (%rax)
    29ca:	00 00 	addb	%al, (%rax)
    29cc:	00 00 	addb	%al, (%rax)
    29ce:	00 00 	addb	%al, (%rax)
    29d0:	00 00 	addb	%al, (%rax)
    29d2:	00 00 	addb	%al, (%rax)
    29d4:	00 00 	addb	%al, (%rax)
    29d6:	00 00 	addb	%al, (%rax)
    29d8:	00 00 	addb	%al, (%rax)
Disassembly of section __DWARF,__debug_line:
__debug_line:
    29da:	4b 05 00 00 02 00 	addq	$131072, %rax
    29e0:	69 02 00 00 01 01 	imull	$16842752, (%rdx), %eax
    29e6:	fb 	sti
    29e7:	0e  <unknown>
    29e8:	0d 00 01 01 01 	orl	$16843008, %eax
    29ed:	01 00 	addl	%eax, (%rax)
    29ef:	00 00 	addb	%al, (%rax)
    29f1:	01 00 	addl	%eax, (%rax)
    29f3:	00 01 	addb	%al, (%rcx)
    29f5:	2f  <unknown>
    29f6:	75 73 	jne	115 <__debug_line+0x91>
    29f8:	72 2f 	jb	47 <__debug_line+0x4f>
    29fa:	6c 	insb	%dx, %es:(%rdi)
    29fb:	6f 	outsl	(%rsi), %dx
    29fc:	63  <unknown>
    29fd:	61  <unknown>
    29fe:	6c 	insb	%dx, %es:(%rdi)
    29ff:	2f  <unknown>
    2a00:	43 65 	gs
    2a02:	6c 	insb	%dx, %es:(%rdi)
    2a03:	6c 	insb	%dx, %es:(%rdi)
    2a04:	61  <unknown>
    2a05:	72 2f 	jb	47 <__debug_line+0x5c>
    2a07:	67 63  <unknown>
    2a09:	63  <unknown>
    2a0a:	2f  <unknown>
    2a0b:	38 2e 	cmpb	%ch, (%rsi)
    2a0d:	32 2e 	xorb	(%rsi), %ch
    2a0f:	30 2f 	xorb	%ch, (%rdi)
    2a11:	6c 	insb	%dx, %es:(%rdi)
    2a12:	69 62 2f 67 63 63 2f 	imull	$795042663, 47(%rdx), %esp
    2a19:	38 2f 	cmpb	%ch, (%rdi)
    2a1b:	67 63  <unknown>
    2a1d:	63  <unknown>
    2a1e:	2f  <unknown>
    2a1f:	78 38 	js	56 <__debug_line+0x7f>
    2a21:	36 5f 	popq	%rdi
    2a23:	36 34 2d 	xorb	$45, %al
    2a26:	61  <unknown>
    2a27:	70 70 	jo	112 <__debug_line+0xbf>
    2a29:	6c 	insb	%dx, %es:(%rdi)
    2a2a:	65 2d 64 61 72 77 	subl	$2003984740, %eax
    2a30:	69 6e 31 37 2e 37 2e 	imull	$775368247, 49(%rsi), %ebp
    2a37:	30 2f 	xorb	%ch, (%rdi)
    2a39:	38 2e 	cmpb	%ch, (%rsi)
    2a3b:	32 2e 	xorb	(%rsi), %ch
    2a3d:	30 2f 	xorb	%ch, (%rdi)
    2a3f:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2a46:	00 2f 	addb	%ch, (%rdi)
    2a48:	75 73 	jne	115 <__debug_line+0xe3>
    2a4a:	72 2f 	jb	47 <__debug_line+0xa1>
    2a4c:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2a53:	2f  <unknown>
    2a54:	69 33 38 36 00 2f 	imull	$788543032, (%rbx), %esi
    2a5a:	75 73 	jne	115 <__debug_line+0xf5>
    2a5c:	72 2f 	jb	47 <__debug_line+0xb3>
    2a5e:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2a65:	2f  <unknown>
    2a66:	73 79 	jae	121 <__debug_line+0x107>
    2a68:	73 00 	jae	0 <__debug_line+0x90>
    2a6a:	2f  <unknown>
    2a6b:	75 73 	jne	115 <__debug_line+0x106>
    2a6d:	72 2f 	jb	47 <__debug_line+0xc4>
    2a6f:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2a76:	2f  <unknown>
    2a77:	73 79 	jae	121 <__debug_line+0x118>
    2a79:	73 2f 	jae	47 <__debug_line+0xd0>
    2a7b:	5f 	popq	%rdi
    2a7c:	74 79 	je	121 <__debug_line+0x11d>
    2a7e:	70 65 	jo	101 <__debug_line+0x10b>
    2a80:	73 00 	jae	0 <__debug_line+0xa8>
    2a82:	2f  <unknown>
    2a83:	75 73 	jne	115 <__debug_line+0x11e>
    2a85:	72 2f 	jb	47 <__debug_line+0xdc>
    2a87:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2a8e:	2f  <unknown>
    2a8f:	5f 	popq	%rdi
    2a90:	74 79 	je	121 <__debug_line+0x131>
    2a92:	70 65 	jo	101 <__debug_line+0x11f>
    2a94:	73 00 	jae	0 <__debug_line+0xbc>
    2a96:	2f  <unknown>
    2a97:	75 73 	jne	115 <__debug_line+0x132>
    2a99:	72 2f 	jb	47 <__debug_line+0xf0>
    2a9b:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2aa2:	00 2f 	addb	%ch, (%rdi)
    2aa4:	75 73 	jne	115 <__debug_line+0x13f>
    2aa6:	72 2f 	jb	47 <__debug_line+0xfd>
    2aa8:	6c 	insb	%dx, %es:(%rdi)
    2aa9:	6f 	outsl	(%rsi), %dx
    2aaa:	63  <unknown>
    2aab:	61  <unknown>
    2aac:	6c 	insb	%dx, %es:(%rdi)
    2aad:	2f  <unknown>
    2aae:	43 65 	gs
    2ab0:	6c 	insb	%dx, %es:(%rdi)
    2ab1:	6c 	insb	%dx, %es:(%rdi)
    2ab2:	61  <unknown>
    2ab3:	72 2f 	jb	47 <__debug_line+0x10a>
    2ab5:	67 63  <unknown>
    2ab7:	63  <unknown>
    2ab8:	2f  <unknown>
    2ab9:	38 2e 	cmpb	%ch, (%rsi)
    2abb:	32 2e 	xorb	(%rsi), %ch
    2abd:	30 2f 	xorb	%ch, (%rdi)
    2abf:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2ac6:	2f  <unknown>
    2ac7:	63  <unknown>
    2ac8:	2b 2b 	subl	(%rbx), %ebp
    2aca:	2f  <unknown>
    2acb:	38 2e 	cmpb	%ch, (%rsi)
    2acd:	32 2e 	xorb	(%rsi), %ch
    2acf:	30 00 	xorb	%al, (%rax)
    2ad1:	2f  <unknown>
    2ad2:	75 73 	jne	115 <__debug_line+0x16d>
    2ad4:	72 2f 	jb	47 <__debug_line+0x12b>
    2ad6:	6c 	insb	%dx, %es:(%rdi)
    2ad7:	6f 	outsl	(%rsi), %dx
    2ad8:	63  <unknown>
    2ad9:	61  <unknown>
    2ada:	6c 	insb	%dx, %es:(%rdi)
    2adb:	2f  <unknown>
    2adc:	43 65 	gs
    2ade:	6c 	insb	%dx, %es:(%rdi)
    2adf:	6c 	insb	%dx, %es:(%rdi)
    2ae0:	61  <unknown>
    2ae1:	72 2f 	jb	47 <__debug_line+0x138>
    2ae3:	67 63  <unknown>
    2ae5:	63  <unknown>
    2ae6:	2f  <unknown>
    2ae7:	38 2e 	cmpb	%ch, (%rsi)
    2ae9:	32 2e 	xorb	(%rsi), %ch
    2aeb:	30 2f 	xorb	%ch, (%rdi)
    2aed:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2af4:	2f  <unknown>
    2af5:	63  <unknown>
    2af6:	2b 2b 	subl	(%rbx), %ebp
    2af8:	2f  <unknown>
    2af9:	38 2e 	cmpb	%ch, (%rsi)
    2afb:	32 2e 	xorb	(%rsi), %ch
    2afd:	30 2f 	xorb	%ch, (%rdi)
    2aff:	62  <unknown>
    2b00:	69 74 73 00 2f 75 73 72 	imull	$1920169263, (%rbx,%rsi,2), %esi
    2b08:	2f  <unknown>
    2b09:	6c 	insb	%dx, %es:(%rdi)
    2b0a:	6f 	outsl	(%rsi), %dx
    2b0b:	63  <unknown>
    2b0c:	61  <unknown>
    2b0d:	6c 	insb	%dx, %es:(%rdi)
    2b0e:	2f  <unknown>
    2b0f:	43 65 	gs
    2b11:	6c 	insb	%dx, %es:(%rdi)
    2b12:	6c 	insb	%dx, %es:(%rdi)
    2b13:	61  <unknown>
    2b14:	72 2f 	jb	47 <__debug_line+0x16b>
    2b16:	67 63  <unknown>
    2b18:	63  <unknown>
    2b19:	2f  <unknown>
    2b1a:	38 2e 	cmpb	%ch, (%rsi)
    2b1c:	32 2e 	xorb	(%rsi), %ch
    2b1e:	30 2f 	xorb	%ch, (%rdi)
    2b20:	6c 	insb	%dx, %es:(%rdi)
    2b21:	69 62 2f 67 63 63 2f 	imull	$795042663, 47(%rdx), %esp
    2b28:	38 2f 	cmpb	%ch, (%rdi)
    2b2a:	67 63  <unknown>
    2b2c:	63  <unknown>
    2b2d:	2f  <unknown>
    2b2e:	78 38 	js	56 <__debug_line+0x18e>
    2b30:	36 5f 	popq	%rdi
    2b32:	36 34 2d 	xorb	$45, %al
    2b35:	61  <unknown>
    2b36:	70 70 	jo	112 <__debug_line+0x1ce>
    2b38:	6c 	insb	%dx, %es:(%rdi)
    2b39:	65 2d 64 61 72 77 	subl	$2003984740, %eax
    2b3f:	69 6e 31 37 2e 37 2e 	imull	$775368247, 49(%rsi), %ebp
    2b46:	30 2f 	xorb	%ch, (%rdi)
    2b48:	38 2e 	cmpb	%ch, (%rsi)
    2b4a:	32 2e 	xorb	(%rsi), %ch
    2b4c:	30 2f 	xorb	%ch, (%rdi)
    2b4e:	69 6e 63 6c 75 64 65 	imull	$1701082476, 99(%rsi), %ebp
    2b55:	2d 66 69 78 65 	subl	$1702390118, %eax
    2b5a:	64 00 00 	addb	%al, %fs:(%rax)
    2b5d:	66 61  <unknown>
    2b5f:	73 74 	jae	116 <__debug_line+0x1fb>
    2b61:	5f 	popq	%rdi
    2b62:	72 61 	jb	97 <__debug_line+0x1eb>
    2b64:	6e 	outsb	(%rsi), %dx
    2b65:	64 2e 68 00 00 00 00 	pushq	$0
    2b6c:	65 6d 	insl	%dx, %es:(%rdi)
    2b6e:	6d 	insl	%dx, %es:(%rdi)
    2b6f:	69 6e 74 72 69 6e 2e 	imull	$778987890, 116(%rsi), %ebp
    2b76:	68 00 01 00 00 	pushq	$256
    2b7b:	73 6d 	jae	109 <__debug_line+0x210>
    2b7d:	6d 	insl	%dx, %es:(%rdi)
    2b7e:	69 6e 74 72 69 6e 2e 	imull	$778987890, 116(%rsi), %ebp
    2b85:	68 00 01 00 00 	pushq	$256
    2b8a:	74 65 	je	101 <__debug_line+0x217>
    2b8c:	73 74 	jae	116 <__debug_line+0x228>
    2b8e:	5f 	popq	%rdi
    2b8f:	72 61 	jb	97 <__debug_line+0x218>
    2b91:	6e 	outsb	(%rsi), %dx
    2b92:	64 5f 	popq	%rdi
    2b94:	73 70 	jae	112 <__debug_line+0x22c>
    2b96:	65 65 64 2e 63  <unknown>
    2b9b:	00 00 	addb	%al, (%rax)
    2b9d:	00 00 	addb	%al, (%rax)
    2b9f:	69 6d 6d 69 6e 74 72 	imull	$1920233065, 109(%rbp), %ebp
    2ba6:	69 6e 2e 68 00 01 00 	imull	$65640, 46(%rsi), %ebp
    2bad:	00 5f 74 	addb	%bl, 116(%rdi)
    2bb0:	79 70 	jns	112 <__debug_line+0x248>
    2bb2:	65 73 2e 	jae	46 <__debug_line+0x209>
    2bb5:	68 00 02 00 00 	pushq	$512
    2bba:	5f 	popq	%rdi
    2bbb:	74 79 	je	121 <__debug_line+0x25c>
    2bbd:	70 65 	jo	101 <__debug_line+0x24a>
    2bbf:	73 2e 	jae	46 <__debug_line+0x215>
    2bc1:	68 00 03 00 00 	pushq	$768
    2bc6:	5f 	popq	%rdi
    2bc7:	73 69 	jae	105 <__debug_line+0x258>
    2bc9:	7a 65 	jp	101 <__debug_line+0x256>
    2bcb:	5f 	popq	%rdi
    2bcc:	74 2e 	je	46 <__debug_line+0x222>
    2bce:	68 00 04 00 00 	pushq	$1024
    2bd3:	5f 	popq	%rdi
    2bd4:	75 69 	jne	105 <__debug_line+0x265>
    2bd6:	6e 	outsb	(%rsi), %dx
    2bd7:	74 38 	je	56 <__debug_line+0x237>
    2bd9:	5f 	popq	%rdi
    2bda:	74 2e 	je	46 <__debug_line+0x230>
    2bdc:	68 00 05 00 00 	pushq	$1280
    2be1:	5f 	popq	%rdi
    2be2:	74 69 	je	105 <__debug_line+0x273>
    2be4:	6d 	insl	%dx, %es:(%rdi)
    2be5:	65 76 61 	jbe	97 <__debug_line+0x26f>
    2be8:	6c 	insb	%dx, %es:(%rdi)
    2be9:	2e 68 00 04 00 00 	pushq	$1024
    2bef:	73 74 	jae	116 <__debug_line+0x28b>
    2bf1:	64 6c 	insb	%dx, %es:(%rdi)
    2bf3:	69 62 2e 68 00 06 00 	imull	$393320, 46(%rdx), %esp
    2bfa:	00 63 73 	addb	%ah, 115(%rbx)
    2bfd:	74 64 	je	100 <__debug_line+0x289>
    2bff:	6c 	insb	%dx, %es:(%rdi)
    2c00:	69 62 00 07 00 00 73 	imull	$1929379847, (%rdx), %esp
    2c07:	74 64 	je	100 <__debug_line+0x293>
    2c09:	6c 	insb	%dx, %es:(%rdi)
    2c0a:	69 62 2e 68 00 07 00 	imull	$458856, 46(%rdx), %esp
    2c11:	00 73 74 	addb	%dh, 116(%rbx)
    2c14:	64 5f 	popq	%rdi
    2c16:	61  <unknown>
    2c17:	62 73 2e 68 00  <unknown>
    2c1c:	08 00 	orb	%al, (%rax)
    2c1e:	00 74 69 6d 	addb	%dh, 109(%rcx,%rbp,2)
    2c22:	65 2e 68 00 06 00 00 	pushq	$1536
    2c29:	5f 	popq	%rdi
    2c2a:	73 74 	jae	116 <__debug_line+0x2c6>
    2c2c:	64 69 6f 2e 68 00 06 00 	imull	$393320, %fs:46(%rdi), %ebp
    2c34:	00 73 74 	addb	%dh, 116(%rbx)
    2c37:	64 69 6f 2e 68 00 09 00 	imull	$589928, %fs:46(%rdi), %ebp
    2c3f:	00 75 6e 	addb	%dh, 110(%rbp)
    2c42:	69 73 74 64 2e 68 00 	imull	$6827620, 116(%rbx), %esi
    2c49:	06  <unknown>
    2c4a:	00 00 	addb	%al, (%rax)
    2c4c:	00 05 01 00 09 02 	addb	%al, 34144257(%rip)
    2c52:	00 00 	addb	%al, (%rax)
    2c54:	00 00 	addb	%al, (%rax)
    2c56:	00 00 	addb	%al, (%rax)
    2c58:	00 00 	addb	%al, (%rax)
    2c5a:	03 1c 01 	addl	(%rcx,%rax), %ebx
    2c5d:	05 0a 03 0b ba 	addl	$3121283850, %eax
    2c62:	05 0e 4a 05 11 	addl	$285559310, %eax
    2c67:	67 05 12 4a 05 0f 	addl	$252004882, %eax
    2c6d:	08 21 	orb	%ah, (%rcx)
    2c6f:	05 10 4a 05 0f 	addl	$252004880, %eax
    2c74:	08 21 	orb	%ah, (%rcx)
    2c76:	05 10 4a 05 05 	addl	$84232720, %eax
    2c7b:	08 1d 05 14 c0 05 	orb	%bl, 96474117(%rip)
    2c81:	0c 58 	orb	$88, %al
    2c83:	05 14 83 05 0c 	addl	$201687828, %eax
    2c88:	58 	popq	%rax
    2c89:	05 14 91 05 0c 	addl	$201691412, %eax
    2c8e:	58 	popq	%rax
    2c8f:	05 14 91 05 0c 	addl	$201691412, %eax
    2c94:	58 	popq	%rax
    2c95:	05 14 91 05 0c 	addl	$201691412, %eax
    2c9a:	58 	popq	%rax
    2c9b:	05 14 91 05 0c 	addl	$201691412, %eax
    2ca0:	58 	popq	%rax
    2ca1:	05 14 91 05 0c 	addl	$201691412, %eax
    2ca6:	58 	popq	%rax
    2ca7:	05 14 91 05 0c 	addl	$201691412, %eax
    2cac:	58 	popq	%rax
    2cad:	91 	xchgl	%ecx, %eax
    2cae:	05 01 21 69 05 	addl	$90775809, %eax
    2cb3:	34 08 	xorb	$8, %al
    2cb5:	21 04 02 	andl	%eax, (%rdx,%rax)
    2cb8:	05 0b 03 fd 04 	addl	$83690251, %eax
    2cbd:	d6  <unknown>
    2cbe:	04 01 	addb	$1, %al
    2cc0:	05 1f 03 83 7b 	addl	$2072183583, %eax
    2cc5:	ac 	lodsb	(%rsi), %al
    2cc6:	05 34 4b 04 02 	addl	$33835828, %eax
    2ccb:	05 0b 03 fc 04 	addl	$83624715, %eax
    2cd0:	08 20 	orb	%ah, (%rax)
    2cd2:	04 01 	addb	$1, %al
    2cd4:	05 1f 03 84 7b 	addl	$2072249119, %eax
    2cd9:	ac 	lodsb	(%rsi), %al
    2cda:	05 3d 4c 04 02 	addl	$33836093, %eax
    2cdf:	05 0b 03 fa 04 	addl	$83493643, %eax
    2ce4:	08 20 	orb	%ah, (%rax)
    2ce6:	04 01 	addb	$1, %al
    2ce8:	05 28 03 86 7b 	addl	$2072380200, %eax
    2ced:	ac 	lodsb	(%rsi), %al
    2cee:	05 3b 4b 04 02 	addl	$33835835, %eax
    2cf3:	05 0b 03 f9 04 	addl	$83428107, %eax
    2cf8:	08 20 	orb	%ah, (%rax)
    2cfa:	04 01 	addb	$1, %al
    2cfc:	05 26 03 87 7b 	addl	$2072445734, %eax
    2d01:	ac 	lodsb	(%rsi), %al
    2d02:	05 3b 4b 04 02 	addl	$33835835, %eax
    2d07:	05 0b 03 f8 04 	addl	$83362571, %eax
    2d0c:	08 20 	orb	%ah, (%rax)
    2d0e:	04 01 	addb	$1, %al
    2d10:	05 26 03 88 7b 	addl	$2072511270, %eax
    2d15:	ac 	lodsb	(%rsi), %al
    2d16:	04 02 	addb	$2, %al
    2d18:	05 15 03 ba 09 	addl	$163185429, %eax
    2d1d:	08 ac 05 23 82 05 21 	orb	%ch, 554009123(%rbp,%rax)
    2d24:	82  <unknown>
    2d25:	04 01 	addb	$1, %al
    2d27:	05 22 03 c8 76 	addl	$1992819490, %eax
    2d2c:	4a 04 02 	addb	$2, %al
    2d2f:	05 2c 03 fc 08 	addl	$150733612, %eax
    2d34:	08 90 04 01 05 24 	orb	%dl, 604307716(%rax)
    2d3a:	03 85 77 08 74 04 	addl	74713207(%rbp), %eax
    2d40:	03 05 15 03 85 02 	addl	42271509(%rip), %eax
    2d46:	08 ac 05 23 82 05 21 	orb	%ch, 554009123(%rbp,%rax)
    2d4d:	82  <unknown>
    2d4e:	04 01 	addb	$1, %al
    2d50:	05 23 03 fc 7d 	addl	$2113667875, %eax
    2d55:	58 	popq	%rax
    2d56:	04 02 	addb	$2, %al
    2d58:	05 15 03 c1 07 	addl	$130089749, %eax
    2d5d:	08 ac 05 23 82 05 21 	orb	%ch, 554009123(%rbp,%rax)
    2d64:	82  <unknown>
    2d65:	04 01 	addb	$1, %al
    2d67:	03 c0 	addl	%eax, %eax
    2d69:	78 4a 	js	74 <__debug_line+0x3db>
    2d6b:	05 23 75 04 02 	addl	$33846563, %eax
    2d70:	05 08 03 84 05 	addl	$92537608, %eax
    2d75:	08 ba 05 15 03 b0 	orb	%bh, -1341975291(%rdx)
    2d7b:	04 02 	addb	$2, %al
    2d7d:	2a 01 	subb	(%rcx), %al
    2d7f:	05 23 82 05 21 	addl	$554009123, %eax
    2d84:	82  <unknown>
    2d85:	04 01 	addb	$1, %al
    2d87:	05 22 03 ce 76 	addl	$1993212706, %eax
    2d8c:	4a 04 02 	addb	$2, %al
    2d8f:	05 2c 03 f6 08 	addl	$150340396, %eax
    2d94:	08 ba 04 01 05 24 	orb	%bh, 604307716(%rdx)
    2d9a:	03 8b 77 08 74 04 	addl	74713207(%rbx), %ecx
    2da0:	03 05 15 03 ff 01 	addl	33489685(%rip), %eax
    2da6:	02 22 	addb	(%rdx), %ah
    2da8:	01 05 23 82 05 21 	addl	%eax, 554009123(%rip)
    2dae:	82  <unknown>
    2daf:	04 01 	addb	$1, %al
    2db1:	05 23 03 82 7e 	addl	$2122449699, %eax
    2db6:	58 	popq	%rax
    2db7:	04 02 	addb	$2, %al
    2db9:	05 15 03 bb 07 	addl	$129696533, %eax
    2dbe:	02 25 01 05 23 82 	addb	-2111634175(%rip), %ah
    2dc4:	05 21 82 04 01 	addl	$17072673, %eax
    2dc9:	03 c6 	addl	%esi, %eax
    2dcb:	78 4a 	js	74 <__debug_line+0x43d>
    2dcd:	05 23 75 04 02 	addl	$33846563, %eax
    2dd2:	05 08 03 fe 04 	addl	$83755784, %eax
    2dd7:	08 f2 	orb	%dh, %dl
    2dd9:	05 15 03 b0 04 	addl	$78643989, %eax
    2dde:	02 2d 01 05 23 82 	addb	-2111634175(%rip), %ch
    2de4:	05 21 82 04 01 	addl	$17072673, %eax
    2de9:	05 25 03 d4 76 	addl	$1993605925, %eax
    2dee:	4a 04 02 	addb	$2, %al
    2df1:	05 2c 03 af 08 	addl	$145687340, %eax
    2df6:	08 e4 	orb	%ah, %ah
    2df8:	04 01 	addb	$1, %al
    2dfa:	05 27 03 d2 77 	addl	$2010252071, %eax
    2dff:	08 74 04 02 	orb	%dh, 2(%rsp,%rax)
    2e03:	05 15 03 b6 07 	addl	$129368853, %eax
    2e08:	02 25 01 05 23 82 	addb	-2111634175(%rip), %ah
    2e0e:	05 21 82 04 01 	addl	$17072673, %eax
    2e13:	05 20 03 cb 78 	addl	$2026570528, %eax
    2e18:	4a 05 23 75 04 02 	addq	$33846563, %rax
    2e1e:	05 08 03 f9 04 	addl	$83428104, %eax
    2e23:	08 f2 	orb	%dh, %dl
    2e25:	04 01 	addb	$1, %al
    2e27:	05 01 03 88 7b 	addl	$2072511233, %eax
    2e2c:	08 20 	orb	%ah, (%rax)
    2e2e:	04 04 	addb	$4, %al
    2e30:	05 20 03 b8 7f 	addl	$2142765856, %eax
    2e35:	3c 05 	cmpb	$5, %al
    2e37:	11 08 	adcl	%ecx, (%rax)
    2e39:	77 05 	ja	5 <__debug_line+0x466>
    2e3b:	2d 08 13 05 25 	subl	$621089544, %eax
    2e40:	4a 05 3c 74 05 34 	addq	$872772668, %rax
    2e46:	58 	popq	%rax
    2e47:	05 13 3c 05 22 	addl	$570768403, %eax
    2e4c:	4c 05 1e d7 05 0b 	addq	$184932126, %rax
    2e52:	83 05 09 83 05 0e 76 	addl	$118, 235242249(%rip)
    2e59:	05 17 74 05 13 	addl	$319124503, %eax
    2e5e:	92 	xchgl	%edx, %eax
    2e5f:	05 1c 74 05 2e 	addl	$772109340, %eax
    2e64:	67 05 1b c8 04 05 	addl	$84199451, %eax
    2e6a:	05 27 03 d5 01 	addl	$30737191, %eax
    2e6f:	ac 	lodsb	(%rsi), %al
    2e70:	04 04 	addb	$4, %al
    2e72:	05 0f 03 ac 7e 	addl	$2125202191, %eax
    2e77:	ac 	lodsb	(%rsi), %al
    2e78:	05 0a 48 05 05 	addl	$84232202, %eax
    2e7d:	64 05 11 6e 05 29 	addl	$688221713, %eax
    2e83:	08 13 	orb	%dl, (%rbx)
    2e85:	05 23 4a 05 36 	addl	$906316323, %eax
    2e8a:	74 05 	je	5 <__debug_line+0x4b7>
    2e8c:	30 58 05 	xorb	%bl, 5(%rax)
    2e8f:	13 3c 05 0b 4b 05 4c 	adcl	1275415307(,%rax), %edi
    2e96:	08 ad 05 0b ac 05 	orb	%ch, 95161093(%rbp)
    2e9c:	11 08 	adcl	%ecx, (%rax)
    2e9e:	f3 05 1f 08 13 05 	rep		addl	$85133343, %eax
    2ea4:	17  <unknown>
    2ea5:	4a 05 2e 74 05 26 	addq	$637891630, %rax
    2eab:	58 	popq	%rax
    2eac:	05 0d 3c 05 07 	addl	$117783565, %eax
    2eb1:	4c 05 1f 75 05 0e 	addq	$235238687, %rax
    2eb7:	e5 05 	inl	$5, %eax
    2eb9:	17  <unknown>
    2eba:	74 05 	je	5 <__debug_line+0x4e7>
    2ebc:	12 ca 	adcb	%dl, %cl
    2ebe:	05 1b 74 05 15 	addl	$352678939, %eax
    2ec3:	9f 	lahf
    2ec4:	05 20 e5 05 2b 	addl	$721806624, %eax
    2ec9:	08 3c 05 22 3c 05 0f 	orb	%bh, 252001314(,%rax)
    2ed0:	2f  <unknown>
    2ed1:	05 20 4b 05 2b 	addl	$721767200, %eax
    2ed6:	08 3c 05 22 3c 05 0f 	orb	%bh, 252001314(,%rax)
    2edd:	2f  <unknown>
    2ede:	05 20 4b 05 2b 	addl	$721767200, %eax
    2ee3:	08 3c 05 22 3c 05 0f 	orb	%bh, 252001314(,%rax)
    2eea:	2f  <unknown>
    2eeb:	05 20 4b 05 2b 	addl	$721767200, %eax
    2ef0:	08 3c 05 22 3c 05 0f 	orb	%bh, 252001314(,%rax)
    2ef7:	2f  <unknown>
    2ef8:	05 09 03 77 4a 	addl	$1249313545, %eax
    2efd:	05 05 8e 05 09 	addl	$151358981, %eax
    2f02:	03 0e 	addl	(%rsi), %ecx
    2f04:	90 	nop
    2f05:	05 11 bb 05 1b 	addl	$453360401, %eax
    2f0a:	08 13 	orb	%dl, (%rbx)
    2f0c:	05 15 4a 05 28 	addl	$671435285, %eax
    2f11:	74 05 	je	5 <__debug_line+0x53e>
    2f13:	22 58 05 	andb	5(%rax), %bl
    2f16:	0b 3c 4b 	orl	(%rbx,%rcx,2), %edi
    2f19:	05 4c 08 ad 05 	addl	$95225932, %eax
    2f1e:	0b ac 05 01 08 f3 02 	orl	49481729(%rbp,%rax), %ebp
    2f25:	07  <unknown>
    2f26:	00 01 	addb	%al, (%rcx)
    2f28:	01  <unknown>
