	.file	"RijndaelTest.cpp"
	.section	.text.startup,"ax",@progbits
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.1, @function
_Z41__static_initialization_and_destruction_0ii.constprop.1:
.LFB2366:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2366:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.1, .-_Z41__static_initialization_and_destruction_0ii.constprop.1
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2364:
	.cfi_startproc
	jmp	_Z41__static_initialization_and_destruction_0ii.constprop.1
	.cfi_endproc
.LFE2364:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Rijndael : encryption passed."
.LC1:
	.string	"Rijndael : encryption FAILED!"
.LC2:
	.string	"Rijndael : decryption passed."
.LC3:
	.string	"Rijndael : decryption FAILED!"
	.text
	.type	_ZL22TestRijndaelEncryptionv, @function
_ZL22TestRijndaelEncryptionv:
.LFB1916:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1916
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$256, %rsp
	.cfi_def_cfa_offset 272
	leaq	72(%rsp), %rdi
	movb	$43, 8(%rsp)
	movb	$126, 9(%rsp)
	movb	$21, 10(%rsp)
	movb	$22, 11(%rsp)
	movb	$40, 12(%rsp)
	movb	$-82, 13(%rsp)
	movb	$-46, 14(%rsp)
	movb	$-90, 15(%rsp)
	movb	$-85, 16(%rsp)
	movb	$-9, 17(%rsp)
	movb	$21, 18(%rsp)
	movb	$-120, 19(%rsp)
	movb	$9, 20(%rsp)
	movb	$-49, 21(%rsp)
	movb	$79, 22(%rsp)
	movb	$60, 23(%rsp)
	movb	$50, 24(%rsp)
	movb	$67, 25(%rsp)
	movb	$-10, 26(%rsp)
	movb	$-88, 27(%rsp)
	movb	$-120, 28(%rsp)
	movb	$90, 29(%rsp)
	movb	$48, 30(%rsp)
	movb	$-115, 31(%rsp)
	movb	$49, 32(%rsp)
	movb	$49, 33(%rsp)
	movb	$-104, 34(%rsp)
	movb	$-94, 35(%rsp)
	movb	$-32, 36(%rsp)
	movb	$55, 37(%rsp)
	movb	$7, 38(%rsp)
	movb	$52, 39(%rsp)
	movb	$57, 40(%rsp)
	movb	$37, 41(%rsp)
	movb	$-124, 42(%rsp)
	movb	$29, 43(%rsp)
	movb	$2, 44(%rsp)
	movb	$-36, 45(%rsp)
	movb	$9, 46(%rsp)
	movb	$-5, 47(%rsp)
	movb	$-36, 48(%rsp)
	movb	$17, 49(%rsp)
	movb	$-123, 50(%rsp)
	movb	$-105, 51(%rsp)
	movb	$25, 52(%rsp)
	movb	$106, 53(%rsp)
	movb	$11, 54(%rsp)
	movb	$50, 55(%rsp)
.LEHB0:
	call	_ZN18CRijndaelEncrypterC1Ev
.LEHE0:
	leaq	8(%rsp), %rsi
	leaq	72(%rsp), %rdi
.LEHB1:
	call	_ZN18CRijndaelEncrypter4InitEPKh
	leaq	24(%rsp), %rdx
	leaq	56(%rsp), %rsi
	leaq	72(%rsp), %rdi
	call	_ZNK18CRijndaelEncrypter7EncryptEPhPKh
	leaq	40(%rsp), %rsi
	leaq	56(%rsp), %rdi
	movl	$16, %edx
	call	memcmp
	testl	%eax, %eax
	movl	$.LC1, %esi
	jne	.L20
	movl	$.LC0, %esi
.L20:
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	40(%rsp), %rdx
	leaq	56(%rsp), %rsi
	leaq	72(%rsp), %rdi
	call	_ZNK18CRijndaelEncrypter7DecryptEPhPKh
	leaq	24(%rsp), %rsi
	leaq	56(%rsp), %rdi
	movl	$16, %edx
	call	memcmp
	testl	%eax, %eax
	movl	$.LC3, %esi
	jne	.L22
	movl	$.LC2, %esi
.L22:
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE1:
	leaq	72(%rsp), %rdi
	call	_ZN18CRijndaelEncrypterD1Ev
	addq	$256, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	leaq	72(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN18CRijndaelEncrypterD1Ev
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1916:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1916:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1916-.LLSDACSB1916
.LLSDACSB1916:
	.uleb128 .LEHB0-.LFB1916
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1916
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB1916
	.uleb128 0
	.uleb128 .LEHB2-.LFB1916
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1916:
	.text
	.size	_ZL22TestRijndaelEncryptionv, .-_ZL22TestRijndaelEncryptionv
	.section	.rodata.str1.1
.LC4:
	.string	"Rijndael : encrypted "
.LC5:
	.string	" bytes per second"
.LC6:
	.string	"Rijndael : decrypted "
	.text
	.type	_ZL23TestRijndaelPerformancei, @function
_ZL23TestRijndaelPerformancei:
.LFB1917:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1917
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edi, %rbp
	movl	$16000, %edi
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movb	$43, 24(%rsp)
	movb	$126, 25(%rsp)
	movb	$21, 26(%rsp)
	movb	$22, 27(%rsp)
	movb	$40, 28(%rsp)
	movb	$-82, 29(%rsp)
	movb	$-46, 30(%rsp)
	movb	$-90, 31(%rsp)
	movb	$-85, 32(%rsp)
	movb	$-9, 33(%rsp)
	movb	$21, 34(%rsp)
	movb	$-120, 35(%rsp)
	movb	$9, 36(%rsp)
	movb	$-49, 37(%rsp)
	movb	$79, 38(%rsp)
	movb	$60, 39(%rsp)
.LEHB3:
	call	_Znam
	leaq	40(%rsp), %rdi
	movq	%rax, %r12
	call	_ZN18CRijndaelEncrypterC1Ev
.LEHE3:
	leaq	24(%rsp), %rsi
	leaq	40(%rsp), %rdi
.LEHB4:
	call	_ZN18CRijndaelEncrypter4InitEPKh
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	time
	movq	%rax, %r14
	leaq	(%rax,%rbp), %rax
	movq	%rax, 8(%rsp)
.L27:
	xorl	%edi, %edi
	call	time
	cmpq	8(%rsp), %rax
	jge	.L25
	leaq	16000(%r12), %r15
	movq	%r12, %r13
.L26:
	leaq	40(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r13, %rsi
	call	_ZNK18CRijndaelEncrypter7EncryptEPhPKh
	addq	$16, %r13
	cmpq	%r15, %r13
	jne	.L26
	incl	%ebx
	jmp	.L27
.L25:
	movslq	%ebx, %rbx
	subl	%r14d, %eax
	movl	$.LC4, %esi
	imulq	$16000, %rbx, %rbx
	movslq	%eax, %rcx
	movl	$_ZSt4cout, %edi
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rbx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	time
	movq	%rax, %r13
	addq	%rax, %rbp
.L30:
	xorl	%edi, %edi
	call	time
	cmpq	%rbp, %rax
	jge	.L28
	leaq	16000(%r12), %r15
	movq	%r12, %r14
.L29:
	leaq	40(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r14, %rsi
	call	_ZNK18CRijndaelEncrypter7DecryptEPhPKh
	addq	$16, %r14
	cmpq	%r14, %r15
	jne	.L29
	incl	%ebx
	jmp	.L30
.L28:
	movslq	%ebx, %rbx
	subl	%r13d, %eax
	movl	$.LC6, %esi
	imulq	$16000, %rbx, %rbx
	movslq	%eax, %rcx
	movl	$_ZSt4cout, %edi
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rbx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE4:
	movq	%r12, %rdi
	call	_ZdaPv
	leaq	40(%rsp), %rdi
	call	_ZN18CRijndaelEncrypterD1Ev
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L32:
	.cfi_restore_state
	leaq	40(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN18CRijndaelEncrypterD1Ev
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE1917:
	.section	.gcc_except_table
.LLSDA1917:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1917-.LLSDACSB1917
.LLSDACSB1917:
	.uleb128 .LEHB3-.LFB1917
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1917
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L32-.LFB1917
	.uleb128 0
	.uleb128 .LEHB5-.LFB1917
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1917:
	.text
	.size	_ZL23TestRijndaelPerformancei, .-_ZL23TestRijndaelPerformancei
	.section	.text.startup
	.globl	main
	.type	main, @function
main:
.LFB1918:
	.cfi_startproc
	decl	%edi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$60, %ebx
	jle	.L38
	movq	8(%rsi), %rdi
	call	atoi
	movl	%eax, %ebx
.L38:
	call	_ZL22TestRijndaelEncryptionv
	movl	%ebx, %edi
	call	_ZL23TestRijndaelPerformancei
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1918:
	.size	main, .-main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 6.2.1 20160916 (Red Hat 6.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
