	.file	"CryptUtils.cpp"
	.text
	.align 2
	.globl	_ZN11CCryptUtils3MulEhh
	.type	_ZN11CCryptUtils3MulEhh, @function
_ZN11CCryptUtils3MulEhh:
.LFB15:
	.cfi_startproc
	xorl	%eax, %eax
.L6:
	testb	%sil, %sil
	je	.L1
	movb	%al, %dl
	movzbl	%sil, %ecx
	xorl	%edi, %edx
	andb	$1, %sil
	leal	(%rdi,%rdi), %esi
	cmovne	%edx, %eax
	leal	(%rdi,%rdi), %edx
	xorl	$27, %edx
	testb	%dil, %dil
	cmovns	%esi, %edx
	shrl	%ecx
	movb	%dl, %dil
	movl	%ecx, %esi
	jmp	.L6
.L1:
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN11CCryptUtils3MulEhh, .-_ZN11CCryptUtils3MulEhh
	.align 2
	.globl	_ZN11CCryptUtils3MulEPhPKhPA4_S1_
	.type	_ZN11CCryptUtils3MulEPhPKhPA4_S1_, @function
_ZN11CCryptUtils3MulEPhPKhPA4_S1_:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	xorl	%r9d, %r9d
.L12:
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
.L11:
	movzbl	(%r10,%r8), %esi
	movzbl	0(%rbp,%r8), %edi
	call	_ZN11CCryptUtils3MulEhh
	incq	%r8
	xorl	%eax, %r11d
	cmpq	$4, %r8
	jne	.L11
	movb	%r11b, (%rbx,%r9)
	incq	%r9
	addq	$4, %r10
	cmpq	$4, %r9
	jne	.L12
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN11CCryptUtils3MulEPhPKhPA4_S1_, .-_ZN11CCryptUtils3MulEPhPKhPA4_S1_
	.align 2
	.globl	_ZN11CCryptUtils3InvEh
	.type	_ZN11CCryptUtils3InvEh, @function
_ZN11CCryptUtils3InvEh:
.LFB17:
	.cfi_startproc
	movzbl	%dil, %edi
	movb	_ZN11CCryptUtils9abInverseE(%rdi), %al
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN11CCryptUtils3InvEh, .-_ZN11CCryptUtils3InvEh
	.align 2
	.globl	_ZN11CCryptUtils4CopyEPhPKhi
	.type	_ZN11CCryptUtils4CopyEPhPKhi, @function
_ZN11CCryptUtils4CopyEPhPKhi:
.LFB18:
	.cfi_startproc
	movslq	%edx, %rdx
	jmp	memcpy
	.cfi_endproc
.LFE18:
	.size	_ZN11CCryptUtils4CopyEPhPKhi, .-_ZN11CCryptUtils4CopyEPhPKhi
	.align 2
	.globl	_ZN11CCryptUtils5ClearEPhi
	.type	_ZN11CCryptUtils5ClearEPhi, @function
_ZN11CCryptUtils5ClearEPhi:
.LFB19:
	.cfi_startproc
	movslq	%esi, %rdx
	xorl	%esi, %esi
	jmp	memset
	.cfi_endproc
.LFE19:
	.size	_ZN11CCryptUtils5ClearEPhi, .-_ZN11CCryptUtils5ClearEPhi
	.align 2
	.globl	_ZN11CCryptUtils3XorEPhPKhS2_i
	.type	_ZN11CCryptUtils3XorEPhPKhS2_i, @function
_ZN11CCryptUtils3XorEPhPKhS2_i:
.LFB20:
	.cfi_startproc
	xorl	%eax, %eax
.L21:
	cmpl	%eax, %ecx
	jle	.L19
	movb	(%rsi,%rax), %r8b
	xorb	(%rdx,%rax), %r8b
	movb	%r8b, (%rdi,%rax)
	incq	%rax
	jmp	.L21
.L19:
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN11CCryptUtils3XorEPhPKhS2_i, .-_ZN11CCryptUtils3XorEPhPKhS2_i
	.align 2
	.globl	_ZN11CCryptUtils10SubstituteEPhPKhS2_i
	.type	_ZN11CCryptUtils10SubstituteEPhPKhS2_i, @function
_ZN11CCryptUtils10SubstituteEPhPKhS2_i:
.LFB21:
	.cfi_startproc
	xorl	%eax, %eax
.L24:
	cmpl	%eax, %ecx
	jle	.L22
	movzbl	(%rsi,%rax), %r8d
	movb	(%rdx,%r8), %r8b
	movb	%r8b, (%rdi,%rax)
	incq	%rax
	jmp	.L24
.L22:
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN11CCryptUtils10SubstituteEPhPKhS2_i, .-_ZN11CCryptUtils10SubstituteEPhPKhS2_i
	.align 2
	.globl	_ZN11CCryptUtils10RotateLeftEPhPKhii
	.type	_ZN11CCryptUtils10RotateLeftEPhPKhii, @function
_ZN11CCryptUtils10RotateLeftEPhPKhii:
.LFB22:
	.cfi_startproc
	xorl	%eax, %eax
.L28:
	cmpl	%eax, %edx
	jg	.L26
	movl	%ecx, %r9d
	movslq	%edx, %r8
	xorl	%eax, %eax
	subl	%edx, %r9d
	addq	%r8, %rsi
	jmp	.L27
.L26:
	movb	(%rsi,%rax), %r8b
	movb	%r8b, -4(%rsp,%rax)
	incq	%rax
	jmp	.L28
.L29:
	movb	(%rsi,%rax), %r8b
	movb	%r8b, (%rdi,%rax)
	incq	%rax
.L27:
	cmpl	%eax, %r9d
	jg	.L29
	movslq	%ecx, %rcx
	movslq	%edx, %rsi
	xorl	%eax, %eax
	subq	%rsi, %rcx
	addq	%rdi, %rcx
.L30:
	cmpl	%eax, %edx
	jle	.L25
	movb	-4(%rsp,%rax), %sil
	movb	%sil, (%rcx,%rax)
	incq	%rax
	jmp	.L30
.L25:
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN11CCryptUtils10RotateLeftEPhPKhii, .-_ZN11CCryptUtils10RotateLeftEPhPKhii
	.align 2
	.globl	_ZN11CCryptUtils11RotateRightEPhPKhii
	.type	_ZN11CCryptUtils11RotateRightEPhPKhii, @function
_ZN11CCryptUtils11RotateRightEPhPKhii:
.LFB23:
	.cfi_startproc
	movslq	%ecx, %r8
	movslq	%edx, %r9
	xorl	%eax, %eax
	subq	%r9, %r8
	addq	%rsi, %r8
.L34:
	cmpl	%eax, %edx
	jle	.L33
	movb	(%r8,%rax), %r9b
	movb	%r9b, -4(%rsp,%rax)
	incq	%rax
	jmp	.L34
.L33:
	decl	%ecx
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	subq	%rax, %rsi
.L37:
	cmpl	%ecx, %edx
	jle	.L35
	xorl	%eax, %eax
	jmp	.L36
.L35:
	movb	(%rsi,%rcx), %al
	movb	%al, (%rdi,%rcx)
	decq	%rcx
	jmp	.L37
.L36:
	cmpl	%eax, %edx
	jle	.L32
	movb	-4(%rsp,%rax), %cl
	movb	%cl, (%rdi,%rax)
	incq	%rax
	jmp	.L36
.L32:
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN11CCryptUtils11RotateRightEPhPKhii, .-_ZN11CCryptUtils11RotateRightEPhPKhii
	.align 2
	.globl	_ZN11CCryptUtilsC2Ev
	.type	_ZN11CCryptUtilsC2Ev, @function
_ZN11CCryptUtilsC2Ev:
.LFB25:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN11CCryptUtilsC2Ev, .-_ZN11CCryptUtilsC2Ev
	.globl	_ZN11CCryptUtilsC1Ev
	.set	_ZN11CCryptUtilsC1Ev,_ZN11CCryptUtilsC2Ev
	.globl	_ZN11CCryptUtils9abInverseE
	.section	.rodata
	.align 32
	.type	_ZN11CCryptUtils9abInverseE, @object
	.size	_ZN11CCryptUtils9abInverseE, 256
_ZN11CCryptUtils9abInverseE:
	.byte	0
	.byte	1
	.byte	-115
	.byte	-10
	.byte	-53
	.byte	82
	.byte	123
	.byte	-47
	.byte	-24
	.byte	79
	.byte	41
	.byte	-64
	.byte	-80
	.byte	-31
	.byte	-27
	.byte	-57
	.byte	116
	.byte	-76
	.byte	-86
	.byte	75
	.byte	-103
	.byte	43
	.byte	96
	.byte	95
	.byte	88
	.byte	63
	.byte	-3
	.byte	-52
	.byte	-1
	.byte	64
	.byte	-18
	.byte	-78
	.byte	58
	.byte	110
	.byte	90
	.byte	-15
	.byte	85
	.byte	77
	.byte	-88
	.byte	-55
	.byte	-63
	.byte	10
	.byte	-104
	.byte	21
	.byte	48
	.byte	68
	.byte	-94
	.byte	-62
	.byte	44
	.byte	69
	.byte	-110
	.byte	108
	.byte	-13
	.byte	57
	.byte	102
	.byte	66
	.byte	-14
	.byte	53
	.byte	32
	.byte	111
	.byte	119
	.byte	-69
	.byte	89
	.byte	25
	.byte	29
	.byte	-2
	.byte	55
	.byte	103
	.byte	45
	.byte	49
	.byte	-11
	.byte	105
	.byte	-89
	.byte	100
	.byte	-85
	.byte	19
	.byte	84
	.byte	37
	.byte	-23
	.byte	9
	.byte	-19
	.byte	92
	.byte	5
	.byte	-54
	.byte	76
	.byte	36
	.byte	-121
	.byte	-65
	.byte	24
	.byte	62
	.byte	34
	.byte	-16
	.byte	81
	.byte	-20
	.byte	97
	.byte	23
	.byte	22
	.byte	94
	.byte	-81
	.byte	-45
	.byte	73
	.byte	-90
	.byte	54
	.byte	67
	.byte	-12
	.byte	71
	.byte	-111
	.byte	-33
	.byte	51
	.byte	-109
	.byte	33
	.byte	59
	.byte	121
	.byte	-73
	.byte	-105
	.byte	-123
	.byte	16
	.byte	-75
	.byte	-70
	.byte	60
	.byte	-74
	.byte	112
	.byte	-48
	.byte	6
	.byte	-95
	.byte	-6
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	126
	.byte	127
	.byte	-128
	.byte	-106
	.byte	115
	.byte	-66
	.byte	86
	.byte	-101
	.byte	-98
	.byte	-107
	.byte	-39
	.byte	-9
	.byte	2
	.byte	-71
	.byte	-92
	.byte	-34
	.byte	106
	.byte	50
	.byte	109
	.byte	-40
	.byte	-118
	.byte	-124
	.byte	114
	.byte	42
	.byte	20
	.byte	-97
	.byte	-120
	.byte	-7
	.byte	-36
	.byte	-119
	.byte	-102
	.byte	-5
	.byte	124
	.byte	46
	.byte	-61
	.byte	-113
	.byte	-72
	.byte	101
	.byte	72
	.byte	38
	.byte	-56
	.byte	18
	.byte	74
	.byte	-50
	.byte	-25
	.byte	-46
	.byte	98
	.byte	12
	.byte	-32
	.byte	31
	.byte	-17
	.byte	17
	.byte	117
	.byte	120
	.byte	113
	.byte	-91
	.byte	-114
	.byte	118
	.byte	61
	.byte	-67
	.byte	-68
	.byte	-122
	.byte	87
	.byte	11
	.byte	40
	.byte	47
	.byte	-93
	.byte	-38
	.byte	-44
	.byte	-28
	.byte	15
	.byte	-87
	.byte	39
	.byte	83
	.byte	4
	.byte	27
	.byte	-4
	.byte	-84
	.byte	-26
	.byte	122
	.byte	7
	.byte	-82
	.byte	99
	.byte	-59
	.byte	-37
	.byte	-30
	.byte	-22
	.byte	-108
	.byte	-117
	.byte	-60
	.byte	-43
	.byte	-99
	.byte	-8
	.byte	-112
	.byte	107
	.byte	-79
	.byte	13
	.byte	-42
	.byte	-21
	.byte	-58
	.byte	14
	.byte	-49
	.byte	-83
	.byte	8
	.byte	78
	.byte	-41
	.byte	-29
	.byte	93
	.byte	80
	.byte	30
	.byte	-77
	.byte	91
	.byte	35
	.byte	56
	.byte	52
	.byte	104
	.byte	70
	.byte	3
	.byte	-116
	.byte	-35
	.byte	-100
	.byte	125
	.byte	-96
	.byte	-51
	.byte	26
	.byte	65
	.byte	28
	.ident	"GCC: (GNU) 6.2.1 20160916 (Red Hat 6.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
