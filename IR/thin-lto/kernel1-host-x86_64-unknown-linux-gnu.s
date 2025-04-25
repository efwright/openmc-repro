	.file	"kernel1.cpp"
	.text
	.globl	_Z7kernel1Pfi                   # -- Begin function _Z7kernel1Pfi
	.p2align	4
	.type	_Z7kernel1Pfi,@function
_Z7kernel1Pfi:                          # @_Z7kernel1Pfi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -264(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rcx
	movq	%rcx, -256(%rbp)                # 8-byte Spill
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	movaps	.L.offload_sizes(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	$0, -112(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -96(%rbp)
	leaq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -80(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	decl	%eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	incl	%eax
                                        # kill: def $rax killed $eax
	movl	$3, -248(%rbp)
	movl	$3, -244(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	leaq	-72(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	leaq	-128(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	leaq	.L.offload_maptypes(%rip), %rcx
	movq	%rcx, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -152(%rbp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movq	.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id@GOTPCREL(%rip), %r8
	leaq	-248(%rbp), %r9
	movl	%ecx, %edx
	callq	__tgt_target_kernel@PLT
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:                                # %omp_offload.failed
	movq	-256(%rbp), %rdx                # 8-byte Reload
	movq	-264(%rbp), %rdi                # 8-byte Reload
	leaq	-16(%rbp), %rsi
	callq	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
.LBB0_2:                                # %omp_offload.cont
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z7kernel1Pfi, .Lfunc_end0-_Z7kernel1Pfi
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.type	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6,@function
__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6: # @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %r8
	movl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %r9
	leaq	.L__unnamed_1(%rip), %rdi
	movl	$3, %esi
	leaq	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined(%rip), %rdx
	movb	$0, %al
	callq	__kmpc_fork_teams@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6, .Lfunc_end1-__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined
	.type	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined,@function
__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined: # @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$0, %eax
	movl	$1, %ecx
	cltd
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
	xorl	%eax, %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB2_10
# %bb.1:                                # %omp.precond.then
	movl	$0, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L__unnamed_2(%rip), %rdi
	movl	$92, %edx
	leaq	-80(%rbp), %rcx
	leaq	-68(%rbp), %r8
	leaq	-72(%rbp), %r9
	leaq	-76(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	__kmpc_for_static_init_4@PLT
	movl	-72(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB2_3
# %bb.2:                                # %cond.true
	movl	-60(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
	movl	-72(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
.LBB2_4:                                # %cond.end
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB2_5:                                # %omp.inner.for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB2_8
# %bb.6:                                # %omp.inner.for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movl	-72(%rbp), %eax
	movl	%eax, %r8d
	movl	-24(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-96(%rbp), %r9
	movq	-40(%rbp), %rax
	leaq	.L__unnamed_1(%rip), %rdi
	movl	$5, %esi
	leaq	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined(%rip), %rdx
	leaq	-44(%rbp), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	__kmpc_fork_call@PLT
# %bb.7:                                # %omp.inner.for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-48(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_5
.LBB2_8:                                # %omp.inner.for.end
	jmp	.LBB2_9
.LBB2_9:                                # %omp.loop.exit
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L__unnamed_2(%rip), %rdi
	callq	__kmpc_for_static_fini@PLT
.LBB2_10:                               # %omp.precond.end
	leaq	-44(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	%esi, -124(%rbp)                # 4-byte Spill
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rcx
	movq	%rsp, %rax
	movq	%rcx, (%rax)
	leaq	.L__unnamed_3(%rip), %rdi
	leaq	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func(%rip), %r9
	movl	$1, %edx
	movl	$8, %ecx
	leaq	-104(%rbp), %r8
	callq	__kmpc_reduce_nowait@PLT
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)                # 4-byte Spill
	subl	$1, %eax
	je	.LBB2_11
	jmp	.LBB2_16
.LBB2_16:                               # %omp.precond.end
	movl	-120(%rbp), %eax                # 4-byte Reload
	subl	$2, %eax
	je	.LBB2_12
	jmp	.LBB2_15
.LBB2_11:                               # %.omp.reduction.case1
	movl	-124(%rbp), %esi                # 4-byte Reload
	movq	-112(%rbp), %rax                # 8-byte Reload
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	addss	-44(%rbp), %xmm0
	movss	%xmm0, (%rax)
	leaq	.L__unnamed_3(%rip), %rdi
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB2_15
.LBB2_12:                               # %.omp.reduction.case2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
.LBB2_13:                               # %atomicrmw.start
                                        # =>This Inner Loop Header: Depth=1
	movss	-128(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movss	-132(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movd	%xmm1, %edx
	movd	%xmm0, %eax
	lock		cmpxchgl	%edx, (%rcx)
	movl	%eax, %ecx
	sete	%al
	movd	%ecx, %xmm0
	testb	$1, %al
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	jne	.LBB2_14
	jmp	.LBB2_13
.LBB2_14:                               # %atomicrmw.end
	jmp	.LBB2_15
.LBB2_15:                               # %.omp.reduction.default
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined, .Lfunc_end2-__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined
	.type	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined,@function
__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined: # @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$0, %eax
	movl	$1, %ecx
	cltd
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -68(%rbp)
	xorl	%eax, %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB3_16
# %bb.1:                                # %omp.precond.then
	movl	$0, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%ecx, -72(%rbp)
	movl	%eax, -76(%rbp)
	movl	$1, -80(%rbp)
	movl	$0, -84(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L__unnamed_4(%rip), %rdi
	movl	$34, %edx
	leaq	-84(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	leaq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	__kmpc_for_static_init_4@PLT
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB3_3
# %bb.2:                                # %cond.true
	movl	-64(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	movl	-76(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
.LBB3_4:                                # %cond.end
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB3_5:                                # %omp.inner.for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB3_9
# %bb.6:                                # %omp.inner.for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-52(%rbp), %eax
	shll	$0, %eax
	addl	$0, %eax
	movl	%eax, -92(%rbp)
	movq	16(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
# %bb.7:                                # %omp.body.continue
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %omp.inner.for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_5
.LBB3_9:                                # %omp.inner.for.end
	jmp	.LBB3_10
.LBB3_10:                               # %omp.loop.exit
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L__unnamed_4(%rip), %rdi
	callq	__kmpc_for_static_fini@PLT
	leaq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	%esi, -124(%rbp)                # 4-byte Spill
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rcx
	movq	%rsp, %rax
	movq	%rcx, (%rax)
	leaq	.L__unnamed_3(%rip), %rdi
	leaq	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func(%rip), %r9
	movl	$1, %edx
	movl	$8, %ecx
	leaq	-104(%rbp), %r8
	callq	__kmpc_reduce_nowait@PLT
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)                # 4-byte Spill
	subl	$1, %eax
	je	.LBB3_11
	jmp	.LBB3_17
.LBB3_17:                               # %omp.loop.exit
	movl	-120(%rbp), %eax                # 4-byte Reload
	subl	$2, %eax
	je	.LBB3_12
	jmp	.LBB3_15
.LBB3_11:                               # %.omp.reduction.case1
	movl	-124(%rbp), %esi                # 4-byte Reload
	movq	-112(%rbp), %rax                # 8-byte Reload
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	leaq	.L__unnamed_3(%rip), %rdi
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB3_15
.LBB3_12:                               # %.omp.reduction.case2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movss	-88(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
.LBB3_13:                               # %atomicrmw.start
                                        # =>This Inner Loop Header: Depth=1
	movss	-128(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movss	-132(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movd	%xmm1, %edx
	movd	%xmm0, %eax
	lock		cmpxchgl	%edx, (%rcx)
	movl	%eax, %ecx
	sete	%al
	movd	%ecx, %xmm0
	testb	$1, %al
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	jne	.LBB3_14
	jmp	.LBB3_13
.LBB3_14:                               # %atomicrmw.end
	jmp	.LBB3_15
.LBB3_15:                               # %.omp.reduction.default
	jmp	.LBB3_16
.LBB3_16:                               # %omp.precond.end
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined, .Lfunc_end3-__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func
	.type	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func,@function
__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func: # @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func, .Lfunc_end4-__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func
	.type	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func,@function
__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func: # @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func, .Lfunc_end5-__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func
	.cfi_endproc
                                        # -- End function
	.type	.L__unnamed_5,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_5:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_5, 23

	.type	.L__unnamed_2,@object           # @1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.long	0                               # 0x0
	.long	2050                            # 0x802
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_5
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_4,@object           # @2
	.p2align	3, 0x0
.L__unnamed_4:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_5
	.size	.L__unnamed_4, 24

	.type	.gomp_critical_user_.reduction.var,@object # @.gomp_critical_user_.reduction.var
	.comm	.gomp_critical_user_.reduction.var,32,8
	.type	.L__unnamed_3,@object           # @3
	.p2align	3, 0x0
.L__unnamed_3:
	.long	0                               # 0x0
	.long	18                              # 0x12
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_5
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_1,@object           # @4
	.p2align	3, 0x0
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_5
	.size	.L__unnamed_1, 24

	.type	.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id,@object # @.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id
.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id, 1

	.type	.L.offload_sizes,@object        # @.offload_sizes
	.p2align	4, 0x0
.L.offload_sizes:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.size	.L.offload_sizes, 24

	.type	.L.offload_maptypes,@object     # @.offload_maptypes
	.p2align	4, 0x0
.L.offload_maptypes:
	.quad	800                             # 0x320
	.quad	547                             # 0x223
	.quad	33                              # 0x21
	.size	.L.offload_maptypes, 24

	.type	.offloading.entry_name,@object  # @.offloading.entry_name
	.section	.llvm.rodata.offloading,"aMS",@progbits,1,unique,1
.offloading.entry_name:
	.asciz	"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6"
	.size	.offloading.entry_name, 45

	.type	.offloading.entry.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6,@object # @.offloading.entry.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.section	llvm_offload_entries,"aw",@progbits
	.weak	.offloading.entry.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.p2align	3, 0x0
.offloading.entry.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6:
	.quad	0                               # 0x0
	.short	1                               # 0x1
	.short	1                               # 0x1
	.long	0                               # 0x0
	.quad	.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id
	.quad	.offloading.entry_name
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0
	.size	.offloading.entry.__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6, 56

	.type	.Lllvm.embedded.object,@object  # @llvm.embedded.object
	.section	.llvm.offloading,"e",@llvm_offloading
	.p2align	3, 0x0
.Lllvm.embedded.object:
	.asciz	"\020\377\020\255\001\000\000\000\020?\000\000\000\000\000\000 \000\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\001\000\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\220\000\000\000\000\000\000\000|>\000\000\000\000\000\000i\000\000\000\000\000\000\000\207\000\000\000\000\000\000\000n\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000arch\000triple\000amdgcn-amd-amdhsa\000gfx942\000\000\000BC\300\3365\024\000\000\005\000\000\000b\f0$MY\276\246]\373\264O\033\310$D\0012\005\000!\f\000\000\316\f\000\000\013\002!\000\002\000\000\000\031\000\000\000\007\201#\221A\310\004I\006\02029\222\001\204\f%\005\b\031\036\004\213b\200\030E\002B\222\013B\304\0202\0248\b\030K\n2b\210Hp\304!#D\022\207\214\020A\222\002d\310\b\261\024 CF\210 \311\0012b\204X\016\220\021#D\220\241\202\242\002\031\303\007\313\025\031b\214\214%\020\035:t\310\000\000\211 \000\000G\000\000\000\"f\004\020\262B\202\211\021RB\202\211\221q\302PH\n\t&F\306\005Bb&\b\316`\262 \230#\000\003\232#@\362b8G\232\"J\230|d \232\351\237P\021\004A \314\021@\267ISD\t\223\337a\r\300 \202\327TH\3444\f\321L-\206\002\343\302@\232\"J\230|\316i\n\304\240\"`B\234\306k*$r\032\206h\246\026C\3110\fA\020\004Ap\2324E\2240\371$\0215\304\3425\025\0229\rC4S\213\241\001\021\204\311\202!\201\202\021\2009\002P(\005#4\202P\206@\020\212\301\bB#\b%\b\212\302\bA \b\202\020\004\005a\004\241i\032A(\003#\004e`\004\241\024\214`\030F!\202\3000\212\020\b\305\b\204F\020\204\2420B\020\004\201 \bM\t\204B0B \024&\020\204\240\021\004A\020\004\241\004\314@\300dA1G\020L\001\314\000d\201\220\001\302q\322\024Q\302\344\377\306\342\004\300\202d\304\360/\216\000,\322?a(\030\001\000\000Q\030\000\000\271\002\000\000\033v*\370\377\377\377\377\001X\003\300\024\000\007\200\003@\002\312\200\b\207v \207s\200\207zh\003s`\207p\240\2076\270\207w\220\207uh\203s\220\207w\250\007xh\203yH\007}(\007 \016\330@\016\352\300\016\000\302\034\344!\034\332\241\034\332\000\036\336!\035\334\201\036\312A\036\200p`\007v\000\206u(\007yp\207r`\007\200p\207wh\003z\220\207p\200\007xH\007w8\2076h\207p\240\007t\000\350A\036\352\241\034\000\342\035\332\001\036~\201\036\302A\036\316\241\034\350\341\027\350\001\035\344\241\034\302\201\034~\201\035\322\241\035\322\201\036\0009\250\003;\000\210y\240\207p\030\207uh\003x\220\207w\240\207r\030\007zx\007yh\003q\250\007s0\207r\220\2076\230\207t\320\207r\000\360\000 \350!\034\344\341\034\312\201\036\332`\034\340\241\036\200s0\007|\310\003:\220\003\200\240\207p\220\207s(\007zh\003s(\207p\240\207z\220\207r\230\007`\r\342\300\016\332@\034\322\201\036\332 \035\334a\036\350a\036\330`\r\302\201\036\336\241\035\322a\034\332@\034\352\301\034\314\241\034\344\241\r\316\201\035\336A\034\302\201\035\332\000\036\326\241\r\302\201\034\310\241\r\314!\016\354\240\r\322\301\035\346\201\036\346\201\r\326 \034\350\341\035\332!\035\306\241\r\310a\036\332\000\036\326\241\r\302\201\034\310\241\r\342\300\016\332 \035\334a\036\350a\036\330`\r\302\201\036\336\241\035\322a\034\332\300\034\302\201\034\310\241\r\344\201\036\334\241\r\322\301\035\346\201\036\346\201\r\326 \034\350\341\035\332!\035\306\241\r\314\201\035\302\201\036\332\000\036\326\241\r\302\201\034\310\241\r\342\300\016\332 \035\334a\036\350a\036\330`\r\302\201\036\336\241\035\322a\034\332\340\034\330\341\035\304!\034\330\241\r\340a\035\332 \034\310\201\034\332@\034\314!\016\354\240\r\322\301\035\346\201\036\330`\r\306!\035\332 \035\334a\036\350a\036\330`\r\310\201\035\332 \035\334a\036\350a\036\330`\r\310\341\035\350!\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350!\016\340\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\344\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\346\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\350\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\352\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\354\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\356\240\r\322\301\035\346\201\036\346\201\r\326\200\034\340\001\036\330`\r\314\001\036\360\240\r\306\341\035\334\301\036\312A\036\346!\035\336\301\035\332 \035\334a\036\350a\036\330`\r\314\001\036\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\000\016\302\241\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\200\016\340\240\r\322\301\035\346\201\036\346\201\r\326\240\035\302!\035\332 \035\334a\036\350a\036\330`\r\346\241\r\332\241\034\332A\036\312!\034\330\201\036\322\241\035\312\201\r\326`\036\332\240\035\312\241\035\350!\035\332\241\034\332 \035\334a\036\350\201\r\326\340\036\302\301\036\312\301\034\344\341\035\334\201\036\346!\035\364\241\034\354\200\016\330`\r\360\301\034\346@\016\332 \035\334a\036\350a\036\000\242\036\334!\035\314\341\035\344\241\035\332\340\036\336A\036\326\241\r\316A\036\336\241\036\340\241\r\346!\035\364\241\034\000z\220\207z(\007`\203!\004@\002\220\302\006b\020\000R\330\300\020\003@\n\300\031\004\001\021\244\001\261\201(\b\200\0246\314\221\361\377\377\377\377\003\260\006\200\003\300\001 \001e@\230\203<\204C;\224C\033\300\303;\244\203;\320C9\310\003\020\016\354\300\016\000\341\016\357\320\006\364 \017\341\000\017\360\220\016\356p\016m\320\016\341@\017\350\000\320\203<\324C9\000\304<\320C8\214\303:\264\001<\310\303;\320C9\214\003=\274\203<\264\2018\324\2039\230C9\310C\033\314C:\350C9\000x\000\020\364\020\016\362p\016\345@\017m0\016\360P\017\3009\230\003>\344\001\035\310\001@\320C8\310\3039\224\003=\264\2019\224C8\320C=\310C9\314\003\260\006q`\007m \016\351@\017m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016m \016\365`\016\346P\016\362\320\006\347\300\016\357 \016\341\300\016m\000\017\353\320\006\341@\016\344\320\006\346\020\007v\320\006\351\340\016\363@\017\363\300\006k\020\016\364\360\016\355\220\016\343\320\006\3440\017m\000\017\353\320\006\341@\016\344\320\006q`\007m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016m`\016\341@\016\344\320\006\362@\017\356\320\006\351\340\016\363@\017\363\300\006k\020\016\364\360\016\355\220\016\343\320\006\346\300\016\341@\017m\000\017\353\320\006\341@\016\344\320\006q`\007m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016mp\016\354\360\016\342\020\016\354\320\006\360\260\016m\020\016\344@\016m \016\346\020\007v\320\006\351\340\016\363@\017l\260\006\343\220\016m\220\016\3560\017\3640\017l\260\006\344\300\016m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007p\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017r\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017s\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017t\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017u\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017v\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017w\320\006\351\340\016\363@\017\363\300\006k@\016\360\000\017l\260\006\346\000\017x\320\006\343\360\016\356`\017\345 \017\363\220\016\357\340\016m\220\016\3560\017\3640\017l\260\006\346\000\017x\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017x\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y\000\007\341\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y@\007p\320\006\351\340\016\363@\017\363\300\006k\320\016\341\220\016m\220\016\3560\017\3640\017l\260\006\363\320\006\355P\016\355 \017\345\020\016\354@\017\351\320\016\345\300\006k0\017m\320\016\345\320\016\364\220\016\355P\016m\220\016\3560\017\364\300\006kp\017\341`\017\345`\016\362\360\016\356@\017\363\220\016\372P\016v@\007l\260\006\370`\016s \007m\220\016\3560\017\3640\017\300\006\343\020\200\004 \205\r\0042\000\244\260\201I\b\200\024\2003\b\002\"H\003b\003\241\024\000)l \226\377\377\377\377\037\000i\003\303\030\000)\000g\020\004D\220\006\304\006\2429\000R\330\020G\316\377\377\377\377\017\300\032\000\016\000\007\200D\230\203<\204C;\224C\033\300\303;\244\203;\320C9\310\003\020\016\354\300\016\000\341\016\357\320\006\364 \017\341\000\017\360\220\016\356p\016m\320\016\341@\017\350\000\320\203<\324C9\000\304<\320C8\214\303:\264\001<\310\303;\320C9\214\003=\274\203<\264\2018\324\2039\230C9\310C\033\314C:\350C9\000x\000\020\364\020\016\362p\016\345@\017m0\016\360P\017\3009\230\003>\344\001\035\310\001@\320C8\310\3039\224\003=\264\2019\224C8\320C=\310C9\314\003\260\006q`\007m \016\351@\017m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016m \016\365`\016\346P\016\362\320\006\347\300\016\357 \016\341\300\016m\000\017\353\320\006\341@\016\344\320\006\346\020\007v\320\006\351\340\016\363@\017\363\300\006k\020\016\364\360\016\355\220\016\343\320\006\3440\017m\000\017\353\320\006\341@\016\344\320\006q`\007m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016m`\016\341@\016\344\320\006\362@\017\356\320\006\351\340\016\363@\017\363\300\006k\020\016\364\360\016\355\220\016\343\320\006\346\300\016\341@\017m\000\017\353\320\006\341@\016\344\320\006q`\007m\220\016\3560\017\3640\017l\260\006\341@\017\357\320\016\3510\016mp\016\354\360\016\342\020\016\354\320\006\360\260\016m\020\016\344@\016m \016\346\020\007v\320\006\351\340\016\363@\017l\260\006\343\220\016m\220\016\3560\017\3640\017l\260\006\344\300\016m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007p\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017r\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017s\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017t\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017u\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017v\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017w\320\006\351\340\016\363@\017\363\300\006k@\016\360\000\017l\260\006\346\000\017x\320\006\343\360\016\356`\017\345 \017\363\220\016\357\340\016m\220\016\3560\017\3640\017l\260\006\346\000\017x\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017x\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y\000\007\341\320\006\351\340\016\363@\017\363\300\006kp\016\346\200\017y@\007p\320\006\351\340\016\363@\017\363\300\006k\320\016\341\220\016m\220\016\3560\017\3640\017l\260\006\363\320\006\355P\016\355 \017\345\020\016\354@\017\351\320\016\345\300\006k0\017m\320\016\345\320\016\364\220\016\355P\016m\220\016\3560\017\364\300\006kp\017\341`\017\345`\016\362\360\016\356@\017\363\220\016\372P\016v@\007l\260\006\370`\016s \007m\220\016\3560\017\3640\017\300\006\342\t\000R\330`@\002@\n\000\266\301\210\006\200\024\000l\203!\021\000)\000\330\006c\372\377\377\377\377\001X\003@\332@P\377\377\377\377?\000\002\000\000\000I\030\000\000\013\000\000\000\023\212@\030\210b\202a\b\007\222(\023\202e\002b\b\007R(L3ap\236aB\341<P$M\b\246\t\0015\201p\236\001\001\000\023\242ph\007r8\207qp\2076\b\207v \2076\b\207v \007t\230\207p\330@\036\345\320\006\360\240\007v@\007z`\007t\320\006\360\020\007z`\007t\240\007v@\007m\000\017r\240\007s \007z0\007r\320\006\3600\007z0\007r\240\007s \007m\000\017t\240\007v@\007z`\007t\320\006\360P\007z0\007r\240\007s \007m\000\017v\240\007s \007z0\007r\320\006\360p\007z\020\007v\000\007z \007u`\007z \007u`\007z0\007r\320\006\360\200\007z\020\007r\200\007z\020\007r\200\007m\000\017y\240\007q\220\007r\240\007rP\007v\240\007rP\007v\240\007s \007m\220\016v@\007z`\007t\320\006\366\020\007v\240\007q`\007m`\017r@\007z0\007r\320\006\3660\007r\240\007s \007m`\017t\200\007z`\007t\320\006\366\220\007v\240\007q \007x\320\006\366\020\007y \007z \007u`\007m`\017rP\007v\240\007rP\007v\320\006\366P\007q \007zP\007q \007m`\017q\000\007r@\007z\020\007p \007t\320\006\366 \007p@\007x\240\007r\000\007t\200\007m\340\016s \007z`\007t\320\006\2630\007r\320\006\241P\007mp\nq\320\006\356\220\016zp\007z\200\007z\220\007J\017\b\021\022B\206\214\024\031\0014B\030vQ\210\250!\226\332\027\236g\007\005P\301\261\006\021\000\004\000\000\000\000\020P\000\000\354\240\2503\b\2165\210\000 \000\000\000\000\200\200\002\000`\007\265\007i\020\034k\020\001@\000\000\000\000\000\001\005\000\300\016\212\034\300 8\326 \002\200\000\000\000\000\000\002\n\000\200\035\024I\230Ap\254A\004\000\001\000\000\000\000\004\024\000\000;(\2658\003b\b\205$\000\000 \000\000\000\b(\000\000vP\261q\006\305!\n\t\001\000@\000\000\000\020P\000\000\354\240\360\003\024\016\303\024\"\000\020\000\000\000\000 \240\000\000\330A\341\311\037$\007*D\000 \000\000\000\000@@\001\000\260\203\272\2273(\216QH\b\000\000\002\000\000\200\200\002\000`\007\3453gP\034\244\220\020\000\000\004\000\000\000\001\005\000\000\213\007\\\326I\005\210\035\324\374\234Aq\224BB\000\000\020\000\000\000\004\024\000\000C*\035b\003g\027\200(\000\000\001\000\000\000\000\200\000\240\200!\225)I\017\020\000\000\000\000\000\000\000\000\000\000\000\005\f\251p)\017 \000\030\004\000\000\000\000\000\000\000\b\000\n\030R\305\024\032D@\000\000\000\000\000\000\000\000\000\000\000\0240\244\312\253O\002\002`\000\000\000\000\000\000\000\000\000\240\200!\025n\231\302\004\000\003\001\000\000\000\000\000\000\000\001@\001C*\037\303$ \000\006\000\000\000\000\000\000\000\000\000\n\030R\331\231E\001\0010\000\000\000\000\000\000\000\000\000P\300\220\212\325\306\241\002\200\241\000\000\000\000\000\000\000\200\000\240\200!\325\333\231\201\005\000\203\001\000\000\000\000\000\000\000\001@\001C\252\332\243\" \000\006\000\000\000\000\000\000\000\000\000\n\030R\245\037u\001\001\000\000\000\000\000\000\000\000\000\000P\300\220\252\377\306\200\002\200\241\000\000\000\000\000\000\000\200\000\240\200!\025\030\006f\020\001\0010\000\000\000\000\000\000\000\000\000P\300\220\312\024\003\f\003\002`\000\000\000\000\000\000\000\000\000\240\200!\225/\006\016\005\004\300\001\000\000\000\000\000\000\000\000@\001C*v\f\314 \003\002\000\000\000\000\000\000\000\000\000\000\240\200!\225L\006\222\006\004\000\002\000\000\000\000\000\000\000\000@\001C*\262\f:\n\b\200\001\000\000\000\000\000\000\000\000\200\002\206T\241\031\330B\005\000C\001\000\000\000\000\000\000\000\001@\001C\252\033\r\320\300\002\200\301\000\000\000\000\000\000\000\200\000\240\200!\325\237\006e@\001\300P\000\000\000\000\000\000\000@\000P\300\220\212\\\2030\330\200\000\030\000\000\000\000\000\000\000\000\000(`HU\262\301\031p\0000$\000\000\000\000\000\000\000\020\000\0240\244b\333 \r8\000\030\022\000\000\000\000\000\000\000\b\000\n\030R\325np\006\034\000\f\t\000\000\000\000\000\000\000\004\000\005\f\251\3707H\003\016\000\206\004\000\000\000\000\000\000\000\002\200\002\206Te\034\214A\007\004\000\000\000\000\000\000\000\000\000\000@\001C*T\016(\017\b\000\000\000\000\000\000\000\000\000\000\200\002$6\b\024\016f\000\000\310\002\001\"\000\000\0002\036\230\034\031\021L\220\214\t&G\306\004C\nF\000\212\245\bJ\240\020\n\220\240\000!\212\020\244\b\021\2120\240H\003JR\227\333\245\030\n6\241\034\312\254 h\030\001(\201\" \301\03000\006\016\210PkWw\257\335\357\273{Ww\257\335\357\273{\007\333\301v;*\260P\261T\253\002\026\252\230jU\300B%S\255\nX\250f\252U\201\216\021\000B0\331\361z\255\227J\345\202Q\202\203\321\367\243e\006\000\000\000\000\261\030\000\000\324\000\000\0003\b\200\034\304\341\034f\024\001=\210C8\204\303\214B\200\007yx\007s\230q\f\346\000\017\355\020\016\364\200\0163\fB\036\302\301\035\316\241\034f0\005=\210C8\204\203\033\314\003=\310C=\214\003=\314x\214tp\007{\b\007yH\207pp\007zp\003vx\207p \207\031\314\021\016\354\220\016\3410\017n0\017\343\360\016\360P\0163\020\304\035\336!\034\330!\035\302a\036f0\211;\274\203;\320C9\264\003<\274\203<\204\003;\314\360\024v`\007{h\0077h\207rh\0077\200\207p\220\207p`\007v(\007v\370\005vx\207w\200\207_\b\207q\030\207r\230\207y\230\201,\356\360\016\356\340\016\365\300\016\3540\003b\310\241\034\344\241\034\314\241\034\344\241\034\334a\034\312!\034\304\201\035\312a\006\326\220C9\310C9\230C9\310C9\270\3038\224C8\210\003;\224\303/\274\203<\374\202;\324\003;\260\303\f\307i\207pX\207rp\203th\007x`\207t\030\207t\240\207\031\316S\017\356\000\017\362P\016\344\220\016\343@\017\341 \016\354P\0163 (\035\334\301\036\302A\036\322!\034\334\201\036\334\340\034\344\341\035\352\001\036f\030Q8\260C:\234\203;\314P$v`\007{h\0077`\207wx\007x\230QL\364\220\017\360P\0163\036j\036\312a\034\350!\035\336\301\035~\001\036\344\241\034\314!\035\360a\006T\205\2038\314\303;\260C=\320C9\374\302<\344C;\210\303;\260\303\214\305\n\207y\230\207w\030\207t\b\007z(\007r\230\201\\\343\020\016\354\300\016\345P\016\3630#\301\322A\036\344\341\027\330\341\035\336\001\036fH\031;\260\203=\264\203\033\204\3038\214C9\314\303<\270\3019\310\303;\324\003<\314H\264q\b\007v`\007q\b\207qX\207\031\333\306\016\354`\017\355\340\006\360 \017\3450\017\345 \017\366P\016n\020\016\3430\016\3450\017\363\340\006\351\340\016\344P\016\3700#\342\354a\034\302\201\035\330\341\027\354!\035\346!\035\304!\035\330!\035\350!\037f \235;\274C=\270\0039\224\2039\314X\274pp\007wx\007z\b\007zH\207wp\207\031\313\347\016\3570\017\341\340\016\351@\017\351\240\017\3450\303\001\003s\250\007w\030\207_\230\207pp\207t\240\207t\320\207r\230\201\204A9\340\3038\260C=\220C9\314@\304\240\035\312\241\035\340A\036\336\301\034f$c0\016\341\300\016\3540\017\351@\017\3450C!\203u\030\007sH\207_\240\207|\200\207r\230\261\224\001<\214\303<\224\3038\320C:\274\203;\314\303\214\305\fH!\025Ba\036\346!\035\316\301\035R\201\024fLg0\016\357 \017\357\340\006\357P\017\3640\017\351@\016\345\340\006\346 \017\341\320\016\3450\243@\203vh\007y\b\207\031R\032\270\303;\204\003;\244C8\314\203\033\204\0039\220\203<\314\003<\204\3038\224\303\fD\r\310A\034\316\301\r\310\241\034\314a\206\263\006\350P\016\341\000\017\341\300\016\354\360\016\3430\017\351@\017\345\000\000\000\000y \000\000\227\000\000\000r\036H C\210\f\031\tr2H #\201\214\221\221\321D\240\020(d<12B\216\220!\243\2500\353\002\215\246\030M\322H\353\200\022\000\000\000_Z7kernel1Pfiamdhsa_code_object_versionwchar_sizeopenmpopenmp-devicePIC Levelframe-pointerEnableSplitLTOUnitclang version 21.0.0git (https://github.com/llvm/llvm-project.git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7)AMD clang version 18.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.3.1 24491 1e0fda770a2079fbd71e4b70974d74f62fd3af10)\000#\b\201\032\214 \004t0\202\020\324\301\bB`\007#\bA\033\214 \004w0\202\020\270\301\bB\200\007#\bA\036\214 \004z0\202\020\260\301\f\307\3024\201\263,3\f\217\000\3150<C4\303 \021\323\f\203TL3\f\224Q\3150HG5\303\360 \313\fA2C\240\314 T\213\214\004&(\241\2676\270\257733\266\26702\22747\263\267Q\202*#66\2736\227\2667\262:\2662\0273\266\260\263\271Q\016\353\3022m\343Rac\263ksI#+s\243\033%\352<\317\363<\317\363<\317\363<\317\363Rz\203+s\033csy\033cs\261+\223\233K{s\033\005\372\276\357\373\276\357\373\276\357\373\276\357\003\000\000\251\030\000\000-\000\000\000\013\nr(\207w\200\007zXp\230C=\270\3038\260C9\320\303\202\346\034\306\241\r\350A\036\302\301\035\346!\035\350!\035\336\301\035\0264\343`\016\347P\017\341 \017\344@\017\341 \017\347P\016\364\260\200\201\007y(\207p`\007vx\207q\b\007z(\007rXp\234\3038\264\001;\244\203=\224\303\002k\034\330!\034\334\341\034\334 \034\344a\034\334 \034\350\201\036\302a\034\320\241\034\310a\034\302\201\035\330a\301\001\017\364 \017\341P\017\364\200\016\013\210u\030\007sH\207\005\3178\274\203;\330C9\310\3039\224\203;\214C9\214\003=\310\003;\000\000\000\000\321\020\000\000\006\000\000\000\007\314<\244\203;\234\003;\224\003=\240\203<\224C8\220\303\001\000\000\000a \000\000k\000\000\000\023\004C,\020\000\000\000\002\000\000\000\024\324\000\t\306\000\002\0003\021B\320\006\2440\023\321\004m@\n3\021B\320\006\2440\023!\004m@\n3\021M\320\006\2440\023\021\004m0\n3\021A\320\006\243\220\207\300y\b\234\207\300y\b\234\207\300y\b\234\207\300\303\006\304A\021\300\260\001aL\0040l@\024\022\001\f\033\020DD\000T\bd\304\300\000@\020\f\036X\200\252\341\206@\002\203Y\206@\bF\f\n\000\004\301\000+\0051 %\030\303\006\004\022\f\000!\r!E \303\006D\242\007\0030l@ \304\000\214\030$\003\b\202\001T\013H\"\034\301\210\001\001\200 \030x{\260\033\016\004\000\000\0009\000\000\000\027\360P\022\021\375\2023\020>\321L\021fZO\343\013\2004\021\203\017H\002 M\306\024h6\2054\276\000H\0231\330U\323\370\3000D> \t\2004\231\3254`\315\377L\221\017\fC\344\003\222\000H\223)\005\215mE~FD\216\017\fC\344\003\222\000H\223U=\376tD\0040 \303?\021\314\343\333\322P\001\313\001\024D3E\230e5\232\017\fC\344\003\222\000H\223%\035\003\326\374\317\024\031\224\321\370\3000D\306e\371\323\021\021\300\200\f\377D0\217\357\003\222\000H\223}9\304E\b?%\021\321/8\003aQH\005,>0\f\221=1\003\326\374\317\024\371\3000D'\260XN\244\020\221O\\\310dR\206\346\003\303\020\031\225\342gD\344\370\3000D\206\365T\300\342\003\303\020\371\200$\000\322\004\000\000\000\000\000a \000\000\225\001\000\000\023\004P,\020\000\000\000\007\000\000\000\024\324@\331\006P3\002P\b%P\004eP\n$\030\003\t#\0004\216\000\000\000\0003\021B\320\006\2440\023!\004m@\n3\021M\320\006\2440\023!\004m@\n3\021B\320\006\2440\0231\006A\033\214\302LD\020\264\301(\314D\004A\033\214\302LD\020\264\301(\314D\004A\033\214\302LD\020\264\301(\314D\004A\033\214\302LD\020\264\301(\314D\004A\033\214\302LD\020\264\301(\314D\004A\033\214\302LD\023\264\001)\314D\220A\320\006\2440\023Q\006A\033\220B\006\002'%pR\002'%pR\002'%pR\002'%pR\002'%pR\002'%pR\002'%pR\002'%pR\002'%pR\002\017\033\020\222\035\020\300\260\001\021\325\001\001\f\033\020\020\035\020\300\260\001\361\314\001\001\f\033\020\216\034\020\000=\002\0316 \0344\030\000\212\2021l@0\301\000\020\023\f\fp!\004.\260\005\302\340\026B`\330\200x\202\001\0306 \234]\030\000\202\2021\334\300\013\001\032\3142\004M0l@<\2750\000\024\005c\330\200x\202\001\0306 \234]\030\200a\003\242\361\205\001\0301 \000\020\004\203\b\037\210\023\b\005\301\0301h\000\020\004\003I\037\352 \340\003h\222\"_\030H\n\006Y\301\030n\020\0023\230e\020\206\200\260`\314\022\020d\005c\226\200\030\250\b\bA\030\206\r\b,\030\000\312\2021l@|\301\000\314\022\024\364\005\203\272``p\016 0\3340\004h0\313`,\001y\301\310\240\t\372\202\221A\023\264\006\301\0306 \274`\000\310k\b\255\201@|\344\360\265B+\344!\350\260\001!\004\004\340#\2070x\205V\310C\320a\003B\b\b\300G\016c\020\013\256\220\207\240\303\006\204\020\020\200\217\034\312`\026^a\330\200\b\344\200\000|\344`\006\2640\013\303\006D\220\020\000\341\201@(\b\306\210A\003\200 \030h)\221\016\201>\344B.\324\004,\244\201,\314\022\034D\007\301 7\b\006\n\001\b\f\033\020w\020\f\000\311A0(\016\202\201B\000\002\303\006D\035\004\003@t\020\f\242\203`\240\020\200\300\260\001q\007\301\000\320\035\004\203\366 \030\303\rB`\006\263\fH\022P\037\004c\226@\241=\b\306,\2012P\021\020\210\220\f\033\020}\020\f\000\371A0\206\r\bR\b\006`\226\240\230%`H\025\004BA0F\f\f\000\004\301\200\322\211q\bf\t\032_9\264B:\244\303\260\001\021\240\002\001\214\030\020\000\b\202\301v\023#\006\017\000\202`\320\315D?\004+\241\016\257\240\0239q\0236Q\02341\334\020\274\004\030\31428O@~0\016b\205q\234\020\300\260\001\021\n\301\000\314\022<\033\016\004\000\325\000\000\000F\0310\000\303`g\214\3570\217\217H\377\002H\223eE\276\2618\001\260\374\0232\370>0\f\321)(\202\323\f>\321\f\365mM\201ft\312\304<> \t\2004\031\336\344;\314\343\013\016\023\370K\340\003\222\000H\223U\006\020\002\363\350\266\0244\227\300\bN3\370\005\260HDm\033\232\200\340\3064T\300bq\215\346\003\303\020\371\200$\000\322t\016\223\3570\217\037\021\003%L\210\323\370\323A4\2267\371\016\363\370\202\303\004>\025\370\200$\000\322t\001\220\303<\376\023\021\202\323\f\376t\020\215A\006\020\202\323\fF\306\370\016\363\370\202\303\004\376\022\334B\3440\217\2174\r\021\371\205\023\371D3X\033\346\033\213\023\000\313?!\203\357\003\303\020\371\200$\000\322dpO\005,>0\f\221\017H\002 M\0066L\314s\006\222\303<>\3224D\344\027N\344\007\316\200Y\337\323\370\002 M\304\340\003\222\000H\223\245\006\020\3000\354W 9\314\343#MCD~\341D\276\3404\203y\021\025\260\324\366\3264>0\f\221\017H\002 M\226\2064\276\000H\0231\030\233\347;\314\343G\304@\t\023\3424~D\f\377\202H\223\017H\002 M\246\264\370\201C5\303?!\203o\257\001\0040\f\275\021\006\020\022\025\334\346v\371\201C5\303?!\203\357\003\303\020\371\200$\000\322da\216/\000\317DE\304O\\O\344[\227\241\371\3000D&\267T\300R\373\200$\000\322t\004\210\3404\203O4\3035<\016\363\370OD\bN3\370D3\334A\3440\217\2174\r\021\371\205\023\371H#X\022\343\033\213\023\000\313?!\203o|\t\202\373\200$\000\322t\003\212\3404\203_\000\213DX\031\343;\314\343\013\016\023\370T`f\213\3570\217/M\0212\0206\0300\fHec\001bk\227\3570\217\037\021\003%L\210\323\370\0211\374\013\"M&\033P\b\314S\323\266e4>0\f\221\335!\210\017H\002 M\326\030@\b\314\223\233\235\345\013\3003Q\021\361\023\327\023\371\266\017H\002 M\207\260\bN3\370SD\021u]\272\001f\360}\303\313\3566\374K/\207\333\363\257\274L\256\217\351\351\267{\376\025\327\315\346\262\374K\372\222\340t\271iA~\340P\315\360O\310\340\373\3000D\2667\371\016\363\370\210\364/\2004\371\200$\000\322d\254\001\0040\f\274}\035\276\303<>R\231\237&\000\317DE\304\360W@$\375\3000D\222\017H\002 MV\033`\bN3\324\270!\006DM\365L\327\337P\314?\035\021\001\f\322\001\024D3E\33014\016\363\370\213\343<>q!\223\211=\276\000<\023\025\021?q=\221o\237@\"8\315\340O\021E\030\027R\001\213\017\fCd\202\001\203D\005\2466\t\3003Q\0211\374\025\020I?0\f\221d\277\001\0050\fun\206\001\203\300<6\347\370\016\363\370H\345\003\222\000H\223\351I\276\303<\2764E\310@\370\200$\000\322t\017\223\3570\217\037\021\003%L\210\323\370\203\323\020VW\371\002\360LTD\374\304\365D\276\017H\002 M\000\000\000\000\000a \000\000S\001\000\000\023\004K,\020\000\000\000\004\000\000\000\024\224\0205#\000\205@\2021\240@\343\b\000\0003\021B\320\006\2440\023!\004m@\n3\021M\320\006\2440\023\321\004m@\n3\021M\320\006\2440\023!\004m@\n3\021B\320\006\2440\023\021\004m0\n3\021A\320\006\2430\023\021\004m0\n3\021A\320\006\2430\023\021\004m0\n3\021A\320\006\2430\023\021\004m0\n3\021A\320\006\2430\023\021\004m0\n3\021c\020\264\301(\314D\004A\033\214\302LD\031\004m@\n\031\b\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t\234\224\300I\t<l@Hr@\000\303\006D\024\007\0040l@@p@\000\303\006\304\363\006\0040l@8n@\000\303\006D\323\006\0040l@0l@\000\324\b\204\236`\f\033\020K0\000\264\004\003\003Z\b\201\013d\2010\230\205\020\0306 \234`\000\206\r\210\346\026\006\200\236`\f7\340B\200\006\263\f\201\022\f\033\020N.\f\000A\301\0306 \234`\000(kH\006\001\220\326\220\f\002\0306 \246a\000\206\r\b)\030\200a\003\"\332\205\001\0306  _\030\200a\003\342\241\203\001\240O \024\004c\304\240\001@\020\f\244{\270\203@\017\244\212\232z\241\027\250\n\306\260\001\261\005\0030K \320\026\214\f\032\2410h\310p\203\020\224\301,\303`\004\364\005\003\203q\020\001<\207\000\004\206\r\b,\030\000\032\003\201P\026\214\f\032\361\215\302\020P0\016\362\306q\201\000\303\006\004\030\004\0030K@\314\022\024\224\006\301\2401\b\006\n\001\b\f\033\020l\020\f\300,\2010Kp\320\034\b\204\202`\214\030\030\000\b\202\001\245\022\253\020\370\312\301\016Z\241\025\206\r\210\300\f\b`\304 \001@\020\f2\221\b\207V\270\203\2240\211\341\206`\036\300`\226\001I\0022\203qP\032\214\343\204\000\206\r\2104\b\006`\226 \231%P6\034\b\000\000\000\305\000\000\000\026\0310\000\303`d\214\3570\217\217H\377\002H\223UE\276\2618\001\260\374\0232\370>0\f\221A\006\f\f\265\330S\240Y\23421\217\017H\002 M\326\0244\366\365\370\002\360LTD\374\304\365D~m\207\001\205\3404\325mNC\005,\2070\371\016\363\370\0211P\302\2048\215?\035Dco\215\346\003\303\020\371\200$\000\322d\216\001\204\300<\373\005@\016\363\370OD\bN3\370\323A4g\0209\314\343#MCD~\341D>\321\fVFT\300\202\333h@\001\fCM[\32701\217\245a\276\2618\001\260\374\0232\370>0\f\221\017H\002 MV\347\370\016\363\370K\340\003\222\000H\22315\376\023\021\025\342P\222O\005\376\rH\016\363\370H\323\020\221_8\221\0378\003v\002\222\303<>\3224D\344\027N\344\013N3\230\333S\001\213\017\fC\344\003\222\000H\223\2655\215\017\fC\344\003\222\000H\223\001\006\020\022\025\330\206\346\371\016\363\370\0211P\302\2048\215\037\021\303\277 \322\344\003\222\000H\223\255e\376\023\021\025\342P\222\277\004\276\017\fC\344\003\222\000H\223)-~\340P\315\360O\310\340\333f\000\001\fCo\224\001\0072\\O\3440\246v\371\201C5\303?!\203\357\003\303\020\371\200$\000\322d^\216/\000\317DE\304O\\O\344\333\226\241\371\3000D\226\267T\300\202\373\200$\000\322dX\222\377DD\2058\224\344S\201\357\003\303\020\235\302\3430\217\377D\204\3404\203O4\203\025\006\020\202\323TV\031\200\000Q\004`\310p]A\3440\217\2174\r\021\371\205\023\371H#X\022\343\033\213\023\000\313?!\203oc\213\3570\217/M\0212\020\3667\fHea\207\3570\217\277\004\006\026 \246\227 \271\017H\002 Mvv\371\016\363\370\0211P\302\2048\215\037\021\303\277 \322dYF\343\003\303\020\031\035\202\370\200$\000\322t\004\221\303<~\340\f\230/8\315\2044\024aK\215\377DD\2058\224\344/\201ol\231\377DD\2058\224\344S\201\357\003\303\020\371\200$\000\322dv\216\3570\217O\005> \t\2004\231\025\344\007\016\325\f\377\204\f\276\017\fCdx\223\3570\217\217H\377\002H\223\017H\002 M\206\031@\000\303\300\033\327\341;\314\343#\225\231\tHnb\207\3570\217O\005\306\030P\bNS\351v%\371ODT\210CI\376\022\370>0\f\321\001\024D3E\330\0354\016\363\370\213\343<>q!\223i!\025\260\370\3000D\3467HT`\202\001\203\300<\006\347\370\016\363\370H\345\003\222\000H\223\335I\276\303<\2764E\310@\370\200$\000\322t\t\223\3570\217\037\021\003%L\210\323\370\203\323\0206g\371\002\360LTD\374\304\365D~\355\003\222\000H\223\311U\276\000<\023\025\021?q=\221\357\003\222\000H\023\000\000\000\000\000\000\000a \000\000#\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023!\004m@\n)\b\234\202\300\303\006\204p\020\300\260\001\021\030\004@\202@H\020\210\257\034\202\343\240@ \276r \222\204\002\201P0\016\"\306qB\000\303\006\004\021\f\300\206\003\001\000\000\f\000\000\000\366\324\370\3000D\265\017H\002 M\2065\000\303`M\206\017\fCT\033S\341\003\303\020\035@A4S\204\231\023\343\003\303\020\371\200$\000\322\004\000\000\000\000\000a \000\000\204\000\000\000\023\004G,\020\000\000\000\003\000\000\000d\214\000\224@\021P3\002P\002\0003\021B\320\006\2440\023a\004m \n3\021F\320\006\2420\023a\004m \n3\021e\020\264\001)\314D\214A\320\006\243\220\201\300y\b\234\207\300y\b\234\207\300y\b<l@\024\025\001\f\033\020\004%\000\303\006\3040\t\300\260\001!H\002@\205@\2500\004\025\206\240\302\020\276r $\211\002\201\370\312\341\240(\307(\b\024\r\301\0301 \000\020\004\203\b\02620`\304\340\000@\020\f\256X\030\222`\330\200\220\202\001p\004\302\2219\002a\322\206\r\b\204\"\200\341\206\345\003\203\341\006\346\003\203\341\206\307!\203\023\002\035nx\302\000\fN\032\003\035n\b\312\000\fn\bt\270\201:\00338!\320S\216\275@\330Y\206@\bF\f\214\001\004\301\240\032\007m\233%\030f\t\206\341\206K\r\300`\270A\313\306\340\204@g\031\210\"\360\225\203\267\006k@\201@|\345\360\265A\033P \020\032\3061l@\b\301\000\314\022\030\263\004\306\206\003\001\000\000\0008\000\000\000Fe\370\3000D\266i5>0\fQ\355\003\222\000H\223M\031>0\fQmX\235\3570\217\037\021\003%L\210\323\370\304B0D3\371\200$\000\322d[\215\017\fCd\373\200$\000\322dU\206\017\fCt_AA,\022\221_\0001\035Dc\\\215\017\fCt\373\200$\000\322t\003\006R\bN3\035@A4S\204Y\026\343\003\303\020\371\200$\000\322t\002\004\261H\204]Y\276\303<~D\f\2240!N\343\023\013\301\020\315dVa\340;\314\343G\304@\t\023\3424~D0\316D\374\0211P\002\361/\2104\035A1\035D\203\233T\341\003\303\020\235\301\201\024\202\323L\272u\241\201\3570\217\037\021\003%L\210\323\370\021\3018\023\361G\304@\t\304\277 \322\344\003\222\000H\023\000\000\000\000\000\000\000\000a \000\000`\000\000\000\023\004G,\020\000\000\000\003\000\000\000\024\224\0375#\000$\030\003\f\000\0003\021B\320\006\2440\023\021\004m0\n)\b\234\202\300\303\006\204\220\020\300\260\001\021 \0030b@\000 \b\006\021\036\214\030\020\000\b\202A\224\007\027$:b@\000 \b\006\321\036\\\000\006I\207@F\f\n\000\004\301\000\353\003m\304\300\000@\020\f\250>`\202\341\206\342\r\300`\226!\020\002_9\f\216C\201@|\313\020\013\220AB0\206\r\b!\030\202Y\202a\226`\0301(\000\020\004\003l\024\300`\304\300\000@\020\f\250Q\220\002r\2021\334\340\004d0\313@\024\201o\031l\241z|\345\260X\026\005\002\241!\230\303\006\204\020\f\300,\2011K`l8\020\000\000*\000\000\000\026\325\370\3000D\265\017H\002 M\226\265X@\364\374\f MDdO\206\017\fCT\037A1\035Ds\233\227\3450\317o,N\000,\377tD\0040\374\r\305\330WP\020\213D\340\027@L\007\321\334\200\201\024\202\323LF\3254\3253]\377\0024\304\217\fgp \205\3404S~\000\005\321L\021fP\214\017\fC\344\003\222\000H\323\t\020\304\"\021f\3254\3253]\277\005D\317\217\f\346T\370\3000D\006\006!\322\017\b\023R\021\377tD\0040\030V\3450\317o,N\000,\377tD\0040\374\r\305\000\000\000\000\000\000\000\000a \000\000#\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023!\004m@\n)\b\234\202\300\303\006\204p\020\300\260\001\021\030\004@\202@H\020\210\257\034\202\343\240@ \276r \222\204\002\201P0\016\"\306qB\000\303\006\004\021\f\300\206\003\001\000\000\f\000\000\000\366\324\370\3000D\265\017H\002 M\2065\000\303`M\206\017\fCT\033S\341\003\303\020\035@A4S\204\231\023\343\003\303\020\371\200$\000\322\004\000\000\000\000\000a \000\000\204\000\000\000\023\004G,\020\000\000\000\003\000\000\000d\214\000\224@\021P3\002P\002\0003\021B\320\006\2440\023a\004m \n3\021F\320\006\2420\023a\004m \n3\021e\020\264\001)\314D\214A\320\006\243\220\201\300y\b\234\207\300y\b\234\207\300y\b<l@\024\025\001\f\033\020\004%\000\303\006\3040\t\300\260\001!H\002@\205@\2500\004\025\206\240\302\020\276r $\211\002\201\370\312\341\240(\307(\b\024\r\301\0301 \000\020\004\203\b\02620`\304\340\000@\020\f\256X\030\222`\330\200\220\202\001p\004\302\2219\002a\322\206\r\b\204\"\200\341\206\345\003\203\341\006\346\003\203\341\206\307!\203\023\002\035nx\302\000\fN\032\003\035n\b\312\000\fn\bt\270\201:\00338!\320S\216\275@\330Y\206@\bF\f\214\001\004\301\240\302\005m\233%\030f\t\206\341\206K\r\300`\270A\313\306\340\204@g\031\210\"\360\225\203\267\006k@\201@|\345\360\265A\033P \020\032\3061l@\b\301\000\314\022\030\263\004\306\206\003\001\000\000\0008\000\000\000Fe\370\3000D\266i5>0\fQ\355\003\222\000H\223M\031>0\fQmX\235\3570\217\037\021\003%L\210\323\370\304B0D3\371\200$\000\322d[\215\017\fCd\373\200$\000\322dU\206\017\fCt_AA,\022\221_\0001\035Dc\\\215\017\fCt\373\200$\000\322t\003\006R\bN3\035@A4S\204Y\026\343\003\303\020\371\200$\000\322t\002\004\261H\204]Y\276\303<~D\f\2240!N\343\023\013\301\020\315dVa\340;\314\343G\304@\t\023\3424~D0\316D\374\0211P\002\361/\2104\035A1\035D\203\233T\341\003\303\020\235\301\201\024\202\323L\272u\241\201\3570\217\037\021\003%L\210\323\370\021\3018\023\361G\304@\t\304\277 \322\344\003\222\000H\023\000\000\000\000\000\000\000\000a \000\000`\000\000\000\023\004G,\020\000\000\000\003\000\000\000\024\224\0375#\000$\030\003\f\000\0003\021B\320\006\2440\023\021\004m0\n)\b\234\202\300\303\006\204\220\020\300\260\001\021 \0030b@\000 \b\006\021\036\214\030\020\000\b\202A\224\007\027$:b@\000 \b\006\321\036\\\000\006I\207@F\f\n\000\004\301\000\353\003m\304\300\000@\020\f\250>`\202\341\206\342\r\300`\226!\020\002_9\f\216C\201@|\313\020\013\220AB0\206\r\b!\030\202Y\202a\226`\0301(\000\020\004\003l\024\300`\304\300\000@\020\f\250Q\220\002r\2021\334\340\004d0\313@\024\201o\031l\241z|\345\260X\026\005\002\241!\230\303\006\204\020\f\300,\2011K`l8\020\000\000*\000\000\000\026\325\370\3000D\265\017H\002 M\226\265X@\364\374\f MDdO\206\017\fCT\037A1\035Ds\233\227\3450\317o,N\000,\377tD\0040\374\r\305\330WP\020\213D\340\027@L\007\321\334\200\201\024\202\323LF\3254\3253]\377\0024\304\217\fgp \205\3404S~\000\005\321L\021fP\214\017\fC\344\003\222\000H\323\t\020\304\"\021f\3254\3253]\277\005D\317\217\f\346T\370\3000D\006\006!\322\017\b\023R\021\377tD\0040\030V\3450\317o,N\000,\377tD\0040\374\r\305\000\000\000\000\000\000\000\000a \000\000+\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023\021\004m0\n3\021B\320\006\244\220\203\3009\b\234\203\300\303\006\304\240\020\300\260\001!$\0030l@\004\b\001P \020\"\004BD0|\3450(\n\005\002\361\231\0021\370\314!x\2037\240a\034\303\006\204\020\f\300\206\003\001\000\000\000\020\000\000\000\366d\370\3000D\266E5>0\fQ\355\003\222\000H\2239\031>0\fQmR\215\017\fCd\373\200$\000\322dM\205\017\fCt\000\005\321L\021fP\214\017\fC\344\003\222\000H\023\000\000\000\000\000\000\000a \000\0009\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023\021\004m0\n3\021B\320\006\2440\023Q\006A\033\220B\022\002'!p\022\002'!\360\260\001A0\0040l@\f\313\000\f\033\020\202B\000D\b\204\210`\370\312aX\026\237)\f\202\317\034\2027x\203a\003b\b\b\200\016\201\214\030\030\003\b\202A\265\007G\260\341@\000\033\000\000\000\366d\370\3000D\266A]\276\303<~D\f\2240!N\343G\304\360/\2104\231\223\341\003\303\020\325&\325\370\3000D\265\017H\002 M6\325\370\3000D\266\017H\002 M\326T\370\3000DF\345\371\016\363\370\0211P\302\2048\215\037\021\303\277 \322\344\003\222\000H\323\001\024D3E\230E1>0\f\221\017H\002 M\000\000\000\000\000\000\000a \000\000+\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023\021\004m0\n3\021B\320\006\244\220\203\3009\b\234\203\300\303\006\304\240\020\300\260\001!$\0030l@\004\b\001P \020\"\004BD0|\3450(\n\005\002\361\231\0021\370\314!x\2037\240`\034\303\006\004\021\f\300\206\003\001\000\000\000\020\000\000\000\366d\370\3000D\266E5>0\fQ\355\003\222\000H\2239\031>0\fQmR\215\017\fCd\373\200$\000\322dM\205\017\fCt\000\005\321L\021fP\214\017\fC\344\003\222\000H\023\000\000\000\000\000\000\000a \000\0009\000\000\000\023\004A,\020\000\000\000\001\000\000\000\324\214\000\0003\021B\320\006\2440\023\021\004m0\n3\021B\320\006\2440\023Q\006A\033\220B\022\002'!p\022\002'!\360\260\001A0\0040l@\f\313\000\f\033\020\202B\000D\b\204\210`\370\312aX\026\237)\f\202\317\034\2027x\203a\003b\b\b\200\016\201\214\030\030\003\b\202A\265\007\301\261\341@\000\033\000\000\000\366d\370\3000D\266A]\276\303<~D\f\2240!N\343G\304\360/\2104\231\223\341\003\303\020\325&\325\370\3000D\265\017H\002 M6\325\370\3000D\266\017H\002 M\326T\370\3000DF\345\371\016\363\370\0211P\302\2048\215\037\021\303\277 \322\344\003\222\000H\323\001\024D3E\230E1>0\f\221\017H\002 M\000\000\000\000\000\000\000\241 \000\000P\000\000\000\243\004\314P\001 $\004\031\201B\240\220\361\303\004\nQ\005\b\021\"D\204\b\021\"FH\324\tBd\b\021!B\204\210\021\222r\200\020\031#$\346\005!2D\214\220\220\007\204\310\020\222\322\202\020!#$\244\006!#$\344\006\021#$#\210\021\262\206b\202\020\326\020\000\005\301\300\001`\003\340\001 \005\300\036\216,\003X#\003\240J\2200\b\021!)19\201\000\210\000\360\000\370\000\030\001@\0010\211\2439\326 \000E\301\"\303`\002\200\002\240\003\300*\216\"X\003\000\000\2638\352a\r\0000.\0000\000*\000,\343\210\2045\006 1`X\320\000\330\000\340\0000\220\243\b\326\000\000\300B\216zX\003\000\214\013\000\f\000\020\000\0239\"a\215\001H\f\030\0264\0006\0008\000\214\344h\2025\000\000\260\222#\n\326\000\000\001\004\300L\216&X\003\000\000;9\242`\r\000\020@\000\020\240T\202\002\f(\225\240\000\005J%(\300\201R\t\n\220\240T\202\002,@\205\240\000\rPA((\300\203R\n\006\020\241\224\206\002\203\003L@\005\241\240\000\025PA((\300\005\"\000@\006T\020\n\n\000\000q \000\000\r\000\000\0002\016\020\"\204\r\254\f\370\220\331\200\022\260\020XQ8\201\026\252\023\230\001K\201 \222\025\030r[\201\"\275\026H\362y\201%\314\027hr\210\201'\264\030\000\000\213\212\225\005C\025\fh6\307\357;0oS\216\327\340\247U\234\005\203{\267e\024\017\000\000\000\000e\f\000\000\025\001\000\000\022\003\224\250\030\000\000\000\003\000\000\000\\\006\000\0002\000\000\000L\000\000\000\001\000\000\000X\000\000\000\000\000\000\000X\000\000\000*\000\000\000H\004\000\000\000\000\000\000\216\006\000\000\021\000\000\000\237\006\000\000\013\000\000\000\024\000\000\000\000\000\000\000H\004\000\000\000\000\000\000\000\000\000\000*\000\000\000\000\000\000\000\032\002\000\000,\000\000\000\032\002\000\000,\000\000\000\377\377\377\377\022$\000\000F\002\000\000\022\000\000\000F\002\000\000\022\000\000\000\377\377\377\377\b$\000\000X\002\000\0009\000\000\000X\002\000\0009\000\000\000\377\377\377\377\000 \000\000\221\002\000\000(\000\000\000\221\002\000\000(\000\000\000\377\377\377\377\b$\000\000\271\002\000\000\037\000\000\000\271\002\000\000\037\000\000\000\377\377\377\377\b$\000\000\330\002\000\000F\000\000\000\330\002\000\000F\000\000\000\377\377\377\377\000 \000\000\036\003\000\000\030\000\000\000\036\003\000\000\030\000\000\000\377\377\377\377\b$\000\0006\003\000\000\026\000\000\0006\003\000\000\026\000\000\000\377\377\377\377\b$\000\000L\003\000\000c\000\000\000L\003\000\000c\000\000\000\377\377\377\377\000 \000\000\257\003\000\000&\000\000\000\257\003\000\000&\000\000\000\377\377\377\377\000 \000\000\325\003\000\000\024\000\000\000\325\003\000\000\024\000\000\000\377\377\377\377\b$\000\000\351\003\000\000\024\000\000\000\351\003\000\000\024\000\000\000\377\377\377\377\b$\000\000\375\003\000\000#\000\000\000\375\003\000\000#\000\000\000\377\377\377\377\000 \000\000 \004\000\000&\000\000\000 \004\000\000&\000\000\000\377\377\377\377\b$\000\000F\004\000\000\030\000\000\000F\004\000\000\030\000\000\000\377\377\377\377\b$\000\000^\004\000\000\016\000\000\000^\004\000\000\016\000\000\000\377\377\377\377\b$\000\000l\004\000\000&\000\000\000l\004\000\000&\000\000\000\377\377\377\377\b$\000\000\222\004\000\000\022\000\000\000\222\004\000\000\022\000\000\000\377\377\377\377\b$\000\000\244\004\000\000\035\000\000\000\244\004\000\000\035\000\000\000\377\377\377\377\b$\000\000\301\004\000\000V\000\000\000\301\004\000\000V\000\000\000\377\377\377\377\000 \000\000\027\005\000\000(\000\000\000\027\005\000\000(\000\000\000\377\377\377\377\000 \000\000?\005\000\000%\000\000\000?\005\000\000%\000\000\000\377\377\377\377\000 \000\000d\005\000\000!\000\000\000d\005\000\000!\000\000\000\377\377\377\377\b$\000\000\205\005\000\000'\000\000\000\205\005\000\000'\000\000\000\377\377\377\377\000 \000\000\254\005\000\000)\000\000\000\254\005\000\000)\000\000\000\377\377\377\377\000 \000\000\325\005\000\000'\000\000\000\325\005\000\000'\000\000\000\377\377\377\377\000 \000\000\374\005\000\000)\000\000\000\374\005\000\000)\000\000\000\377\377\377\377\000 \000\000%\006\000\000#\000\000\000%\006\000\000#\000\000\000\377\377\377\377\b$\000\000H\006\000\000\024\000\000\000H\006\000\000\024\000\000\000\377\377\377\377\b$\000\000\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\377\377\377\377\021\004\000\000\024\000\000\000'\000\000\000\024\000\000\000'\000\000\000\377\377\377\377\021\004\000\000;\000\000\000)\000\000\000;\000\000\000)\000\000\000\377\377\377\377\021\004\000\000d\000\000\000 \000\000\000d\000\000\000 \000\000\000\377\377\377\377\021\004\000\000\204\000\000\000&\000\000\000\204\000\000\000&\000\000\000\377\377\377\377\021\004\000\000\252\000\000\000'\000\000\000\252\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\321\000\000\000'\000\000\000\321\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\370\000\000\000@\000\000\000\370\000\000\000@\000\000\000\377\377\377\377\022\004\000\0008\001\000\000?\000\000\0008\001\000\000?\000\000\000\377\377\377\377\022\004\000\000w\001\000\000'\000\000\000w\001\000\000'\000\000\000\377\377\377\377\000\030\000\000\236\001\000\000'\000\000\000\236\001\000\000'\000\000\000\377\377\377\377\000\030\000\000\305\001\000\000.\000\000\000\305\001\000\000.\000\000\000\377\377\377\377\020\004\000\000\363\001\000\000'\000\000\000\363\001\000\000'\000\000\000\377\377\377\377\000\030\000\000\000\000\000\000]\f\000\000\256\001\000\000\022\003\224j\035\000\000\000__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelismanon.a9ed9815896cf6404667e416dfa6df1a.0anon.a9ed9815896cf6404667e416dfa6df1a.1__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_dynamic_environment__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_kernel_environmentanon.a9ed9815896cf6404667e416dfa6df1a.2anon.a9ed9815896cf6404667e416dfa6df1a.3__openmp_nvptx_data_transfer_temporary_storageanon.a9ed9815896cf6404667e416dfa6df1a.4__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6__kmpc_target_init__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined__kmpc_get_hardware_num_threads_in_block__kmpc_distribute_static_init_4__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined__kmpc_for_static_init_4__kmpc_for_static_fini__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func_omp_reduction_shuffle_and_reduce_func__kmpc_get_warp_size__kmpc_shuffle_int32_omp_reduction_inter_warp_copy_func__kmpc_get_hardware_thread_id_in_block__kmpc_global_thread_num__kmpc_barrier__kmpc_nvptx_parallel_reduce_nowait_v2__kmpc_parallel_51__kmpc_distribute_static_fini__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp$reduction$reduction_func_omp_reduction_shuffle_and_reduce_func.1_omp_reduction_inter_warp_copy_func.2__kmpc_reduction_get_fixed_buffer_omp_reduction_list_to_global_copy_func_omp_reduction_list_to_global_reduce_func_omp_reduction_global_to_list_copy_func_omp_reduction_global_to_list_reduce_func__kmpc_nvptx_teams_reduce_nowait_v2__kmpc_target_deinit21.0.0git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7amdgcn-amd-amdhsakernel1.cpp\000\000\000\000\000\000\000\000\000"
	.size	.Lllvm.embedded.object, 16144

	.ident	"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6
	.addrsig_sym __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined
	.addrsig_sym __kmpc_for_static_init_4
	.addrsig_sym __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined
	.addrsig_sym __kmpc_for_static_fini
	.addrsig_sym __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func
	.addrsig_sym __kmpc_reduce_nowait
	.addrsig_sym __kmpc_end_reduce_nowait
	.addrsig_sym __kmpc_fork_call
	.addrsig_sym __omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.omp_outlined.omp.reduction.reduction_func
	.addrsig_sym __kmpc_fork_teams
	.addrsig_sym __tgt_target_kernel
	.addrsig_sym .gomp_critical_user_.reduction.var
	.addrsig_sym .__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6.region_id
