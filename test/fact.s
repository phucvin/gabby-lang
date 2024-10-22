	.text
	.file	"fact.ll"
	.globl	fact                    # -- Begin function fact
	.p2align	4, 0x90
	.type	fact,@function
fact:                                   # @fact
	.cfi_startproc
# %bb.0:                                # %fact_entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%edi, 12(%rsp)
	cmpl	$1, %edi
	jg	.LBB0_3
# %bb.1:                                # %fact_entry.if
	movl	$1, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %fact_entry.endif
	movl	12(%rsp), %ebx
	leal	-1(%rbx), %edi
	callq	fact
	imull	%ebx, %eax
.LBB0_2:                                # %fact_entry.if
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	fact, .Lfunc_end0-fact
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
	movl	$6, %edi
	callq	fact
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
