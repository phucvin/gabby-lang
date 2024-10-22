	.text
	.file	"fib.ll"
	.globl	fib                     # -- Begin function fib
	.p2align	4, 0x90
	.type	fib,@function
fib:                                    # @fib
	.cfi_startproc
# %bb.0:                                # %fib_entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%edi, 12(%rsp)
	cmpl	$1, %edi
	jg	.LBB0_3
# %bb.1:                                # %fib_entry.if
	movl	12(%rsp), %eax
	jmp	.LBB0_2
.LBB0_3:                                # %fib_entry.endif
	movl	12(%rsp), %edi
	addl	$-2, %edi
	callq	fib
	movl	%eax, %ebx
	movl	12(%rsp), %edi
	decl	%edi
	callq	fib
	addl	%ebx, %eax
.LBB0_2:                                # %fib_entry.if
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	fib, .Lfunc_end0-fib
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %main_entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$40, %edi
	callq	fib
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
