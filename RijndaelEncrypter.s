	.file	"RijndaelEncrypter.cpp"
	.text
	.align 2
	.globl	_ZN18CRijndaelEncrypter4InitEPKh
	.type	_ZN18CRijndaelEncrypter4InitEPKh, @function
_ZN18CRijndaelEncrypter4InitEPKh:
.LFB20:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	%rsi, 8(%rsp)
	call	*24(%rax)
	movq	(%rbx), %rax
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	48(%rax), %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.cfi_endproc
.LFE20:
	.size	_ZN18CRijndaelEncrypter4InitEPKh, .-_ZN18CRijndaelEncrypter4InitEPKh
	.align 2
	.globl	_ZN18CRijndaelEncrypter5ClearEv
	.type	_ZN18CRijndaelEncrypter5ClearEv, @function
_ZN18CRijndaelEncrypter5ClearEv:
.LFB21:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	8(%rdi), %rbp
	leaq	184(%rdi), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L5:
	movq	%rbp, %r13
	xorl	%r12d, %r12d
.L4:
	movq	%r13, %rdi
	movl	$4, %esi
	incl	%r12d
	call	_ZN11CCryptUtils5ClearEPhi
	addq	$4, %r13
	cmpl	$4, %r12d
	jne	.L4
	addq	$16, %rbp
	cmpq	%rbx, %rbp
	jne	.L5
	popq	%rax
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN18CRijndaelEncrypter5ClearEv, .-_ZN18CRijndaelEncrypter5ClearEv
	.align 2
	.globl	_ZN18CRijndaelEncrypterD2Ev
	.type	_ZN18CRijndaelEncrypterD2Ev, @function
_ZN18CRijndaelEncrypterD2Ev:
.LFB17:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA17
	movq	$_ZTV18CRijndaelEncrypter+16, (%rdi)
	jmp	_ZN18CRijndaelEncrypter5ClearEv
	.cfi_endproc
.LFE17:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA17:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17-.LLSDACSB17
.LLSDACSB17:
.LLSDACSE17:
	.text
	.size	_ZN18CRijndaelEncrypterD2Ev, .-_ZN18CRijndaelEncrypterD2Ev
	.globl	_ZN18CRijndaelEncrypterD1Ev
	.set	_ZN18CRijndaelEncrypterD1Ev,_ZN18CRijndaelEncrypterD2Ev
	.align 2
	.globl	_ZN18CRijndaelEncrypterD0Ev
	.type	_ZN18CRijndaelEncrypterD0Ev, @function
_ZN18CRijndaelEncrypterD0Ev:
.LFB19:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN18CRijndaelEncrypterD1Ev
	movq	%rbx, %rdi
	movl	$184, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.cfi_endproc
.LFE19:
	.size	_ZN18CRijndaelEncrypterD0Ev, .-_ZN18CRijndaelEncrypterD0Ev
	.align 2
	.globl	_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi
	.type	_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi, @function
_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi:
.LFB25:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movslq	%edx, %rbx
	salq	$4, %rbx
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	addq	$8, %rbx
.L14:
	leaq	0(%r13,%rbp), %rdi
	leaq	(%rbx,%rbp), %rsi
	movl	$4, %ecx
	addq	$4, %rbp
	addq	%r12, %rsi
	movq	%rdi, %rdx
	call	_ZN11CCryptUtils3XorEPhPKhS2_i
	cmpq	$16, %rbp
	jne	.L14
	popq	%rax
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi, .-_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi
	.align 2
	.globl	_ZN18CRijndaelEncrypter10GetDataRowEPhPA4_Khi
	.type	_ZN18CRijndaelEncrypter10GetDataRowEPhPA4_Khi, @function
_ZN18CRijndaelEncrypter10GetDataRowEPhPA4_Khi:
.LFB0:
	.cfi_startproc
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,4), %rsi
	movl	$4, %edx
	jmp	_ZN11CCryptUtils4CopyEPhPKhi
	.cfi_endproc
.LFE0:
	.size	_ZN18CRijndaelEncrypter10GetDataRowEPhPA4_Khi, .-_ZN18CRijndaelEncrypter10GetDataRowEPhPA4_Khi
	.align 2
	.globl	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi
	.type	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi, @function
_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi:
.LFB1:
	.cfi_startproc
	movslq	%edx, %rdx
	xorl	%eax, %eax
	addq	%rdx, %rsi
.L19:
	movb	(%rsi,%rax,4), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$4, %rax
	jne	.L19
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi, .-_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi
	.align 2
	.globl	_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi
	.type	_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi, @function
_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi:
.LFB2:
	.cfi_startproc
	movslq	%edx, %rdx
	leaq	(%rdi,%rdx,4), %rdi
	movl	$4, %edx
	jmp	_ZN11CCryptUtils4CopyEPhPKhi
	.cfi_endproc
.LFE2:
	.size	_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi, .-_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi
	.align 2
	.globl	_ZN18CRijndaelEncrypter9ExpandKeyEPKh
	.type	_ZN18CRijndaelEncrypter9ExpandKeyEPKh, @function
_ZN18CRijndaelEncrypter9ExpandKeyEPKh:
.LFB24:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	16(%rsi), %rcx
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$192, %rsp
	.cfi_def_cfa_offset 240
	leaq	16(%rsp), %rbx
	movb	$1, 8(%rsp)
	movb	$0, 9(%rsp)
	movb	$0, 10(%rsp)
	movb	$0, 11(%rsp)
	movq	%rbx, %rdx
.L24:
	xorl	%eax, %eax
.L23:
	imulq	$44, %rax, %rdi
	movb	(%rsi,%rax), %r8b
	incq	%rax
	cmpq	$4, %rax
	movb	%r8b, (%rdx,%rdi)
	jne	.L23
	addq	$4, %rsi
	incq	%rdx
	cmpq	%rcx, %rsi
	jne	.L24
	movq	%rbx, %rbp
	movl	$4, %r13d
.L28:
	xorl	%eax, %eax
.L25:
	imulq	$44, %rax, %rdx
	incq	%rax
	movb	3(%rbp,%rdx), %dl
	movb	%dl, 11(%rsp,%rax)
	cmpq	$4, %rax
	jne	.L25
	testb	$3, %r13b
	jne	.L26
	leaq	12(%rsp), %rsi
	movl	$4, %ecx
	movl	$1, %edx
	movq	%rsi, %rdi
	call	_ZN11CCryptUtils10RotateLeftEPhPKhii
	leaq	12(%rsp), %rsi
	movl	$4, %ecx
	movl	$_ZN18CRijndaelEncrypter1SE, %edx
	movq	%rsi, %rdi
	call	_ZN11CCryptUtils10SubstituteEPhPKhS2_i
	leaq	12(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movl	$4, %ecx
	movq	%rsi, %rdi
	call	_ZN11CCryptUtils3XorEPhPKhS2_i
	movzbl	8(%rsp), %edi
	movl	$2, %esi
	call	_ZN11CCryptUtils3MulEhh
	movb	%al, 8(%rsp)
.L26:
	leaq	12(%rsp), %rdx
	xorl	%eax, %eax
.L27:
	movb	0(%rbp,%rax), %cl
	xorb	(%rdx), %cl
	addq	$44, %rax
	incq	%rdx
	movb	%cl, -40(%rax,%rbp)
	cmpq	$176, %rax
	jne	.L27
	incl	%r13d
	incq	%rbp
	cmpl	$44, %r13d
	jne	.L28
	leaq	8(%r12), %rbp
	addq	$184, %r12
.L30:
	movq	%rbx, %r14
	xorl	%r13d, %r13d
.L29:
	movl	%r13d, %edx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	incl	%r13d
	addq	$44, %r14
	call	_ZN18CRijndaelEncrypter10SetDataRowEPA4_hPKhi
	cmpl	$4, %r13d
	jne	.L29
	addq	$16, %rbp
	addq	$4, %rbx
	cmpq	%r12, %rbp
	jne	.L30
	addq	$192, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN18CRijndaelEncrypter9ExpandKeyEPKh, .-_ZN18CRijndaelEncrypter9ExpandKeyEPKh
	.align 2
	.globl	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi
	.type	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi, @function
_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi:
.LFB3:
	.cfi_startproc
	movslq	%edx, %rdx
	xorl	%eax, %eax
	addq	%rdx, %rdi
.L40:
	movb	(%rsi,%rax), %dl
	movb	%dl, (%rdi,%rax,4)
	incq	%rax
	cmpq	$4, %rax
	jne	.L40
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi, .-_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi
	.align 2
	.globl	_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh
	.type	_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh, @function
_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh:
.LFB4:
	.cfi_startproc
	movq	%rdi, %r9
	movq	%rsi, %r8
	xorl	%ecx, %ecx
.L43:
	movl	%ecx, %edx
	movq	%r8, %rsi
	movq	%r9, %rdi
	call	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi
	incl	%ecx
	addq	$4, %r8
	cmpl	$4, %ecx
	jne	.L43
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh, .-_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh
	.align 2
	.globl	_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh
	.type	_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh, @function
_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh:
.LFB5:
	.cfi_startproc
	movq	%rsi, %r9
	movq	%rdi, %rcx
	xorl	%r8d, %r8d
.L46:
	movl	%r8d, %edx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	call	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi
	incl	%r8d
	addq	$4, %rcx
	cmpl	$4, %r8d
	jne	.L46
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh, .-_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh
	.align 2
	.globl	_ZN18CRijndaelEncrypter10SubstituteEPA4_h
	.type	_ZN18CRijndaelEncrypter10SubstituteEPA4_h, @function
_ZN18CRijndaelEncrypter10SubstituteEPA4_h:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	16(%rdi), %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L49:
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	movl	$4, %ecx
	movl	$_ZN18CRijndaelEncrypter1SE, %edx
	addq	$4, %rbx
	call	_ZN11CCryptUtils10SubstituteEPhPKhS2_i
	cmpq	%rbp, %rbx
	jne	.L49
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN18CRijndaelEncrypter10SubstituteEPA4_h, .-_ZN18CRijndaelEncrypter10SubstituteEPA4_h
	.align 2
	.globl	_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h
	.type	_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h, @function
_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	16(%rdi), %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L53:
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	movl	$4, %ecx
	movl	$_ZN18CRijndaelEncrypter4InvSE, %edx
	addq	$4, %rbx
	call	_ZN11CCryptUtils10SubstituteEPhPKhS2_i
	cmpq	%rbp, %rbx
	jne	.L53
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h, .-_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h
	.align 2
	.globl	_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h
	.type	_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h, @function
_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h:
.LFB8:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	4(%rdi), %rdi
	movl	$4, %ecx
	movl	$1, %edx
	movq	%rdi, %rsi
	call	_ZN11CCryptUtils10RotateLeftEPhPKhii
	leaq	8(%rbx), %rdi
	movl	$4, %ecx
	movl	$2, %edx
	movq	%rdi, %rsi
	call	_ZN11CCryptUtils10RotateLeftEPhPKhii
	leaq	12(%rbx), %rdi
	movl	$4, %ecx
	movl	$3, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rdi, %rsi
	jmp	_ZN11CCryptUtils10RotateLeftEPhPKhii
	.cfi_endproc
.LFE8:
	.size	_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h, .-_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h
	.align 2
	.globl	_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h
	.type	_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h, @function
_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h:
.LFB9:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	4(%rdi), %rdi
	movl	$4, %ecx
	movl	$1, %edx
	movq	%rdi, %rsi
	call	_ZN11CCryptUtils11RotateRightEPhPKhii
	leaq	8(%rbx), %rdi
	movl	$4, %ecx
	movl	$2, %edx
	movq	%rdi, %rsi
	call	_ZN11CCryptUtils11RotateRightEPhPKhii
	leaq	12(%rbx), %rdi
	movl	$4, %ecx
	movl	$3, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rdi, %rsi
	jmp	_ZN11CCryptUtils11RotateRightEPhPKhii
	.cfi_endproc
.LFE9:
	.size	_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h, .-_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h
	.align 2
	.globl	_ZN18CRijndaelEncrypter10MixColumnsEPA4_h
	.type	_ZN18CRijndaelEncrypter10MixColumnsEPA4_h, @function
_ZN18CRijndaelEncrypter10MixColumnsEPA4_h:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
.L61:
	leaq	8(%rsp), %rdi
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi
	leaq	8(%rsp), %rsi
	leaq	12(%rsp), %rdi
	movl	$_ZN18CRijndaelEncrypter15MixColumnMatrixE, %edx
	call	_ZN11CCryptUtils3MulEPhPKhPA4_S1_
	leaq	12(%rsp), %rsi
	movl	%ebx, %edx
	movq	%rbp, %rdi
	incl	%ebx
	call	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi
	cmpl	$4, %ebx
	jne	.L61
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN18CRijndaelEncrypter10MixColumnsEPA4_h, .-_ZN18CRijndaelEncrypter10MixColumnsEPA4_h
	.align 2
	.globl	_ZNK18CRijndaelEncrypter7EncryptEPhPKh
	.type	_ZNK18CRijndaelEncrypter7EncryptEPhPKh, @function
_ZNK18CRijndaelEncrypter7EncryptEPhPKh:
.LFB22:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rsi
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh
	movq	(%rbx), %rax
	xorl	%edx, %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*56(%rax)
.L65:
	movq	%rsp, %rdi
	incl	%ebp
	call	_ZN18CRijndaelEncrypter10SubstituteEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter10MixColumnsEPA4_h
	movq	(%rbx), %rax
	movl	%ebp, %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*56(%rax)
	cmpl	$9, %ebp
	jne	.L65
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter10SubstituteEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter9ShiftRowsEPA4_h
	movq	(%rbx), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movl	$10, %edx
	call	*56(%rax)
	movq	%rsp, %rsi
	movq	%r12, %rdi
	call	_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	_ZNK18CRijndaelEncrypter7EncryptEPhPKh, .-_ZNK18CRijndaelEncrypter7EncryptEPhPKh
	.align 2
	.globl	_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h
	.type	_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h, @function
_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
.L69:
	leaq	8(%rsp), %rdi
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	_ZN18CRijndaelEncrypter13GetDataColumnEPhPA4_Khi
	leaq	8(%rsp), %rsi
	leaq	12(%rsp), %rdi
	movl	$_ZN18CRijndaelEncrypter18InvMixColumnMatrixE, %edx
	call	_ZN11CCryptUtils3MulEPhPKhPA4_S1_
	leaq	12(%rsp), %rsi
	movl	%ebx, %edx
	movq	%rbp, %rdi
	incl	%ebx
	call	_ZN18CRijndaelEncrypter13SetDataColumnEPA4_hPKhi
	cmpl	$4, %ebx
	jne	.L69
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h, .-_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h
	.align 2
	.globl	_ZNK18CRijndaelEncrypter7DecryptEPhPKh
	.type	_ZNK18CRijndaelEncrypter7DecryptEPhPKh, @function
_ZNK18CRijndaelEncrypter7DecryptEPhPKh:
.LFB23:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rsi
	movq	%rdi, %rbx
	movl	$9, %ebp
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter25ConvertDataVectorToMatrixEPA4_hPKh
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*56(%rax)
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h
.L73:
	movq	(%rbx), %rax
	movl	%ebp, %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*56(%rax)
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter13InvMixColumnsEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter12InvShiftRowsEPA4_h
	movq	%rsp, %rdi
	call	_ZN18CRijndaelEncrypter13InvSubstituteEPA4_h
	decl	%ebp
	jne	.L73
	movq	(%rbx), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	call	*56(%rax)
	movq	%rsp, %rsi
	movq	%r12, %rdi
	call	_ZN18CRijndaelEncrypter25ConvertDataMatrixToVectorEPhPA4_Kh
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	_ZNK18CRijndaelEncrypter7DecryptEPhPKh, .-_ZNK18CRijndaelEncrypter7DecryptEPhPKh
	.align 2
	.globl	_ZN18CRijndaelEncrypter9DumpBytesEPKcPKvi
	.type	_ZN18CRijndaelEncrypter9DumpBytesEPKcPKvi, @function
_ZN18CRijndaelEncrypter9DumpBytesEPKcPKvi:
.LFB12:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN18CRijndaelEncrypter9DumpBytesEPKcPKvi, .-_ZN18CRijndaelEncrypter9DumpBytesEPKcPKvi
	.align 2
	.globl	_ZN18CRijndaelEncrypterC2Ev
	.type	_ZN18CRijndaelEncrypterC2Ev, @function
_ZN18CRijndaelEncrypterC2Ev:
.LFB14:
	.cfi_startproc
	movq	$_ZTV18CRijndaelEncrypter+16, (%rdi)
	jmp	_ZN18CRijndaelEncrypter5ClearEv
	.cfi_endproc
.LFE14:
	.size	_ZN18CRijndaelEncrypterC2Ev, .-_ZN18CRijndaelEncrypterC2Ev
	.globl	_ZN18CRijndaelEncrypterC1Ev
	.set	_ZN18CRijndaelEncrypterC1Ev,_ZN18CRijndaelEncrypterC2Ev
	.weak	_ZTS18CRijndaelEncrypter
	.section	.rodata._ZTS18CRijndaelEncrypter,"aG",@progbits,_ZTS18CRijndaelEncrypter,comdat
	.align 16
	.type	_ZTS18CRijndaelEncrypter, @object
	.size	_ZTS18CRijndaelEncrypter, 21
_ZTS18CRijndaelEncrypter:
	.string	"18CRijndaelEncrypter"
	.weak	_ZTI18CRijndaelEncrypter
	.section	.rodata._ZTI18CRijndaelEncrypter,"aG",@progbits,_ZTI18CRijndaelEncrypter,comdat
	.align 8
	.type	_ZTI18CRijndaelEncrypter, @object
	.size	_ZTI18CRijndaelEncrypter, 16
_ZTI18CRijndaelEncrypter:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS18CRijndaelEncrypter
	.weak	_ZTV18CRijndaelEncrypter
	.section	.rodata._ZTV18CRijndaelEncrypter,"aG",@progbits,_ZTV18CRijndaelEncrypter,comdat
	.align 8
	.type	_ZTV18CRijndaelEncrypter, @object
	.size	_ZTV18CRijndaelEncrypter, 80
_ZTV18CRijndaelEncrypter:
	.quad	0
	.quad	_ZTI18CRijndaelEncrypter
	.quad	_ZN18CRijndaelEncrypterD1Ev
	.quad	_ZN18CRijndaelEncrypterD0Ev
	.quad	_ZN18CRijndaelEncrypter4InitEPKh
	.quad	_ZN18CRijndaelEncrypter5ClearEv
	.quad	_ZNK18CRijndaelEncrypter7EncryptEPhPKh
	.quad	_ZNK18CRijndaelEncrypter7DecryptEPhPKh
	.quad	_ZN18CRijndaelEncrypter9ExpandKeyEPKh
	.quad	_ZNK18CRijndaelEncrypter11AddRoundKeyEPA4_hi
	.globl	_ZN18CRijndaelEncrypter18InvMixColumnMatrixE
	.section	.rodata
	.align 16
	.type	_ZN18CRijndaelEncrypter18InvMixColumnMatrixE, @object
	.size	_ZN18CRijndaelEncrypter18InvMixColumnMatrixE, 16
_ZN18CRijndaelEncrypter18InvMixColumnMatrixE:
	.byte	14
	.byte	11
	.byte	13
	.byte	9
	.byte	9
	.byte	14
	.byte	11
	.byte	13
	.byte	13
	.byte	9
	.byte	14
	.byte	11
	.byte	11
	.byte	13
	.byte	9
	.byte	14
	.globl	_ZN18CRijndaelEncrypter15MixColumnMatrixE
	.align 16
	.type	_ZN18CRijndaelEncrypter15MixColumnMatrixE, @object
	.size	_ZN18CRijndaelEncrypter15MixColumnMatrixE, 16
_ZN18CRijndaelEncrypter15MixColumnMatrixE:
	.byte	2
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	2
	.globl	_ZN18CRijndaelEncrypter4InvSE
	.align 32
	.type	_ZN18CRijndaelEncrypter4InvSE, @object
	.size	_ZN18CRijndaelEncrypter4InvSE, 256
_ZN18CRijndaelEncrypter4InvSE:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.byte	-65
	.byte	64
	.byte	-93
	.byte	-98
	.byte	-127
	.byte	-13
	.byte	-41
	.byte	-5
	.byte	124
	.byte	-29
	.byte	57
	.byte	-126
	.byte	-101
	.byte	47
	.byte	-1
	.byte	-121
	.byte	52
	.byte	-114
	.byte	67
	.byte	68
	.byte	-60
	.byte	-34
	.byte	-23
	.byte	-53
	.byte	84
	.byte	123
	.byte	-108
	.byte	50
	.byte	-90
	.byte	-62
	.byte	35
	.byte	61
	.byte	-18
	.byte	76
	.byte	-107
	.byte	11
	.byte	66
	.byte	-6
	.byte	-61
	.byte	78
	.byte	8
	.byte	46
	.byte	-95
	.byte	102
	.byte	40
	.byte	-39
	.byte	36
	.byte	-78
	.byte	118
	.byte	91
	.byte	-94
	.byte	73
	.byte	109
	.byte	-117
	.byte	-47
	.byte	37
	.byte	114
	.byte	-8
	.byte	-10
	.byte	100
	.byte	-122
	.byte	104
	.byte	-104
	.byte	22
	.byte	-44
	.byte	-92
	.byte	92
	.byte	-52
	.byte	93
	.byte	101
	.byte	-74
	.byte	-110
	.byte	108
	.byte	112
	.byte	72
	.byte	80
	.byte	-3
	.byte	-19
	.byte	-71
	.byte	-38
	.byte	94
	.byte	21
	.byte	70
	.byte	87
	.byte	-89
	.byte	-115
	.byte	-99
	.byte	-124
	.byte	-112
	.byte	-40
	.byte	-85
	.byte	0
	.byte	-116
	.byte	-68
	.byte	-45
	.byte	10
	.byte	-9
	.byte	-28
	.byte	88
	.byte	5
	.byte	-72
	.byte	-77
	.byte	69
	.byte	6
	.byte	-48
	.byte	44
	.byte	30
	.byte	-113
	.byte	-54
	.byte	63
	.byte	15
	.byte	2
	.byte	-63
	.byte	-81
	.byte	-67
	.byte	3
	.byte	1
	.byte	19
	.byte	-118
	.byte	107
	.byte	58
	.byte	-111
	.byte	17
	.byte	65
	.byte	79
	.byte	103
	.byte	-36
	.byte	-22
	.byte	-105
	.byte	-14
	.byte	-49
	.byte	-50
	.byte	-16
	.byte	-76
	.byte	-26
	.byte	115
	.byte	-106
	.byte	-84
	.byte	116
	.byte	34
	.byte	-25
	.byte	-83
	.byte	53
	.byte	-123
	.byte	-30
	.byte	-7
	.byte	55
	.byte	-24
	.byte	28
	.byte	117
	.byte	-33
	.byte	110
	.byte	71
	.byte	-15
	.byte	26
	.byte	113
	.byte	29
	.byte	41
	.byte	-59
	.byte	-119
	.byte	111
	.byte	-73
	.byte	98
	.byte	14
	.byte	-86
	.byte	24
	.byte	-66
	.byte	27
	.byte	-4
	.byte	86
	.byte	62
	.byte	75
	.byte	-58
	.byte	-46
	.byte	121
	.byte	32
	.byte	-102
	.byte	-37
	.byte	-64
	.byte	-2
	.byte	120
	.byte	-51
	.byte	90
	.byte	-12
	.byte	31
	.byte	-35
	.byte	-88
	.byte	51
	.byte	-120
	.byte	7
	.byte	-57
	.byte	49
	.byte	-79
	.byte	18
	.byte	16
	.byte	89
	.byte	39
	.byte	-128
	.byte	-20
	.byte	95
	.byte	96
	.byte	81
	.byte	127
	.byte	-87
	.byte	25
	.byte	-75
	.byte	74
	.byte	13
	.byte	45
	.byte	-27
	.byte	122
	.byte	-97
	.byte	-109
	.byte	-55
	.byte	-100
	.byte	-17
	.byte	-96
	.byte	-32
	.byte	59
	.byte	77
	.byte	-82
	.byte	42
	.byte	-11
	.byte	-80
	.byte	-56
	.byte	-21
	.byte	-69
	.byte	60
	.byte	-125
	.byte	83
	.byte	-103
	.byte	97
	.byte	23
	.byte	43
	.byte	4
	.byte	126
	.byte	-70
	.byte	119
	.byte	-42
	.byte	38
	.byte	-31
	.byte	105
	.byte	20
	.byte	99
	.byte	85
	.byte	33
	.byte	12
	.byte	125
	.globl	_ZN18CRijndaelEncrypter1SE
	.align 32
	.type	_ZN18CRijndaelEncrypter1SE, @object
	.size	_ZN18CRijndaelEncrypter1SE, 256
_ZN18CRijndaelEncrypter1SE:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.byte	-54
	.byte	-126
	.byte	-55
	.byte	125
	.byte	-6
	.byte	89
	.byte	71
	.byte	-16
	.byte	-83
	.byte	-44
	.byte	-94
	.byte	-81
	.byte	-100
	.byte	-92
	.byte	114
	.byte	-64
	.byte	-73
	.byte	-3
	.byte	-109
	.byte	38
	.byte	54
	.byte	63
	.byte	-9
	.byte	-52
	.byte	52
	.byte	-91
	.byte	-27
	.byte	-15
	.byte	113
	.byte	-40
	.byte	49
	.byte	21
	.byte	4
	.byte	-57
	.byte	35
	.byte	-61
	.byte	24
	.byte	-106
	.byte	5
	.byte	-102
	.byte	7
	.byte	18
	.byte	-128
	.byte	-30
	.byte	-21
	.byte	39
	.byte	-78
	.byte	117
	.byte	9
	.byte	-125
	.byte	44
	.byte	26
	.byte	27
	.byte	110
	.byte	90
	.byte	-96
	.byte	82
	.byte	59
	.byte	-42
	.byte	-77
	.byte	41
	.byte	-29
	.byte	47
	.byte	-124
	.byte	83
	.byte	-47
	.byte	0
	.byte	-19
	.byte	32
	.byte	-4
	.byte	-79
	.byte	91
	.byte	106
	.byte	-53
	.byte	-66
	.byte	57
	.byte	74
	.byte	76
	.byte	88
	.byte	-49
	.byte	-48
	.byte	-17
	.byte	-86
	.byte	-5
	.byte	67
	.byte	77
	.byte	51
	.byte	-123
	.byte	69
	.byte	-7
	.byte	2
	.byte	127
	.byte	80
	.byte	60
	.byte	-97
	.byte	-88
	.byte	81
	.byte	-93
	.byte	64
	.byte	-113
	.byte	-110
	.byte	-99
	.byte	56
	.byte	-11
	.byte	-68
	.byte	-74
	.byte	-38
	.byte	33
	.byte	16
	.byte	-1
	.byte	-13
	.byte	-46
	.byte	-51
	.byte	12
	.byte	19
	.byte	-20
	.byte	95
	.byte	-105
	.byte	68
	.byte	23
	.byte	-60
	.byte	-89
	.byte	126
	.byte	61
	.byte	100
	.byte	93
	.byte	25
	.byte	115
	.byte	96
	.byte	-127
	.byte	79
	.byte	-36
	.byte	34
	.byte	42
	.byte	-112
	.byte	-120
	.byte	70
	.byte	-18
	.byte	-72
	.byte	20
	.byte	-34
	.byte	94
	.byte	11
	.byte	-37
	.byte	-32
	.byte	50
	.byte	58
	.byte	10
	.byte	73
	.byte	6
	.byte	36
	.byte	92
	.byte	-62
	.byte	-45
	.byte	-84
	.byte	98
	.byte	-111
	.byte	-107
	.byte	-28
	.byte	121
	.byte	-25
	.byte	-56
	.byte	55
	.byte	109
	.byte	-115
	.byte	-43
	.byte	78
	.byte	-87
	.byte	108
	.byte	86
	.byte	-12
	.byte	-22
	.byte	101
	.byte	122
	.byte	-82
	.byte	8
	.byte	-70
	.byte	120
	.byte	37
	.byte	46
	.byte	28
	.byte	-90
	.byte	-76
	.byte	-58
	.byte	-24
	.byte	-35
	.byte	116
	.byte	31
	.byte	75
	.byte	-67
	.byte	-117
	.byte	-118
	.byte	112
	.byte	62
	.byte	-75
	.byte	102
	.byte	72
	.byte	3
	.byte	-10
	.byte	14
	.byte	97
	.byte	53
	.byte	87
	.byte	-71
	.byte	-122
	.byte	-63
	.byte	29
	.byte	-98
	.byte	-31
	.byte	-8
	.byte	-104
	.byte	17
	.byte	105
	.byte	-39
	.byte	-114
	.byte	-108
	.byte	-101
	.byte	30
	.byte	-121
	.byte	-23
	.byte	-50
	.byte	85
	.byte	40
	.byte	-33
	.byte	-116
	.byte	-95
	.byte	-119
	.byte	13
	.byte	-65
	.byte	-26
	.byte	66
	.byte	104
	.byte	65
	.byte	-103
	.byte	45
	.byte	15
	.byte	-80
	.byte	84
	.byte	-69
	.byte	22
	.ident	"GCC: (GNU) 6.2.1 20160916 (Red Hat 6.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
