	.text
	.file	"loops.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %main_entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movabsq	$8028827855677384823, %rax # imm = 0x6F6C20656C696877
	movq	%rax, -33(%rbp)
	movb	$0, -21(%rbp)
	movl	$684143, -25(%rbp)      # imm = 0xA706F
	xorl	%ebx, %ebx
	leaq	-33(%rbp), %rdi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -20(%rbp)
	testb	%bl, %bl
	movabsq	$2930357942689912, %rbx # imm = 0xA6925203D2078
	jne	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # %while_loop_entry1
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movq	%rbx, -16(%rax)
	movb	$0, -8(%rax)
	xorl	%eax, %eax
	callq	printf
	movl	-20(%rbp), %eax
	incl	%eax
	movl	%eax, -20(%rbp)
	cmpl	$10, %eax
	jl	.LBB0_1
.LBB0_2:                                # %while_loop_otherwise1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movabsq	$8028827885692546645, %rcx # imm = 0x6F6C206C69746E55
	movq	%rcx, -16(%rax)
	movb	$0, -4(%rax)
	movl	$684143, -8(%rax)       # imm = 0xA706F
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	printf
	movl	$0, -20(%rbp)
	testb	%r14b, %r14b
	jne	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # %until_loop_entry1
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movq	%rbx, -16(%rax)
	movb	$0, -8(%rax)
	xorl	%eax, %eax
	callq	printf
	movl	-20(%rbp), %eax
	incl	%eax
	movl	%eax, -20(%rbp)
	cmpl	$11, %eax
	jl	.LBB0_3
.LBB0_4:                                # %until_loop_otherwise2
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
