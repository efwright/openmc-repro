; ModuleID = 'kernel2-host-x86_64-unknown-linux-gnu.bc'
source_filename = "kernel2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { i64, i16, i16, i32, ptr, ptr, i64, i64, ptr }
%struct.__tgt_kernel_arguments = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, [3 x i32], [3 x i32], i32 }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [3 x i64] [i64 4, i64 4, i64 0]
@.offload_maptypes = private unnamed_addr constant [3 x i64] [i64 800, i64 547, i64 33]
@.offloading.entry_name = internal unnamed_addr constant [45 x i8] c"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6\00", section ".llvm.rodata.offloading", align 1
@.offloading.entry.__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6 = weak constant %struct.__tgt_offload_entry { i64 0, i16 1, i16 1, i32 0, ptr @.__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.region_id, ptr @.offloading.entry_name, i64 0, i64 0, ptr null }, section "llvm_offload_entries", align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float @_Z7kernel2Pfi(ptr noundef %A, i32 noundef %n) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %val = alloca float, align 4
  %n.casted = alloca i64, align 8
  %.offload_baseptrs = alloca [3 x ptr], align 8
  %.offload_ptrs = alloca [3 x ptr], align 8
  %.offload_mappers = alloca [3 x ptr], align 8
  %.offload_sizes = alloca [3 x i64], align 8
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %kernel_args = alloca %struct.__tgt_kernel_arguments, align 8
  store ptr %A, ptr %A.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store float 0.000000e+00, ptr %val, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %n.casted, align 4
  %1 = load i64, ptr %n.casted, align 8
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load ptr, ptr %A.addr, align 8
  %4 = load ptr, ptr %A.addr, align 8
  %arrayidx = getelementptr inbounds nuw float, ptr %4, i64 0
  %5 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = mul nuw i64 %conv, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.offload_sizes, ptr align 8 @.offload_sizes, i64 24, i1 false)
  %7 = getelementptr inbounds [3 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds [3 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds [3 x ptr], ptr %.offload_mappers, i64 0, i64 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds [3 x ptr], ptr %.offload_baseptrs, i32 0, i32 1
  store ptr %val, ptr %10, align 8
  %11 = getelementptr inbounds [3 x ptr], ptr %.offload_ptrs, i32 0, i32 1
  store ptr %val, ptr %11, align 8
  %12 = getelementptr inbounds [3 x ptr], ptr %.offload_mappers, i64 0, i64 1
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds [3 x ptr], ptr %.offload_baseptrs, i32 0, i32 2
  store ptr %3, ptr %13, align 8
  %14 = getelementptr inbounds [3 x ptr], ptr %.offload_ptrs, i32 0, i32 2
  store ptr %arrayidx, ptr %14, align 8
  %15 = getelementptr inbounds [3 x i64], ptr %.offload_sizes, i32 0, i32 2
  store i64 %6, ptr %15, align 8
  %16 = getelementptr inbounds [3 x ptr], ptr %.offload_mappers, i64 0, i64 2
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds [3 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  %18 = getelementptr inbounds [3 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i64], ptr %.offload_sizes, i32 0, i32 0
  %20 = load i32, ptr %n.addr, align 4
  store i32 %20, ptr %.capture_expr., align 4
  %21 = load i32, ptr %.capture_expr., align 4
  %sub = sub nsw i32 %21, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1, align 4
  %22 = load i32, ptr %.capture_expr.1, align 4
  %add = add nsw i32 %22, 1
  %23 = zext i32 %add to i64
  %24 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 0
  store i32 3, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 1
  store i32 3, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 2
  store ptr %17, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 3
  store ptr %18, ptr %27, align 8
  %28 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 4
  store ptr %19, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 5
  store ptr @.offload_maptypes, ptr %29, align 8
  %30 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 6
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 7
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 8
  store i64 %23, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 9
  store i64 0, ptr %33, align 8
  %34 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 10
  store [3 x i32] zeroinitializer, ptr %34, align 4
  %35 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 11
  store [3 x i32] zeroinitializer, ptr %35, align 4
  %36 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 12
  store i32 0, ptr %36, align 4
  %37 = call i32 @__tgt_target_kernel(ptr @4, i64 -1, i32 0, i32 0, ptr @.__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.region_id, ptr %kernel_args)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %omp_offload.failed, label %omp_offload.cont

omp_offload.failed:                               ; preds = %entry
  call void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6(i64 %1, ptr %val, ptr %2) #2
  br label %omp_offload.cont

omp_offload.cont:                                 ; preds = %omp_offload.failed, %entry
  %39 = load float, ptr %val, align 4
  ret float %39
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6(i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #1 {
entry:
  %n.addr = alloca i64, align 8
  %val.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %n.casted = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %val, ptr %val.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  %0 = load ptr, ptr %val.addr, align 8
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %n.casted, align 4
  %2 = load i64, ptr %n.casted, align 8
  %3 = load ptr, ptr %A.addr, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr @4, i32 3, ptr @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined, i64 %2, ptr %0, ptr %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %val.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %val1 = alloca float, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %n.casted = alloca i64, align 8
  %.omp.reduction.red_list = alloca [1 x ptr], align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %val, ptr %val.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  %0 = load ptr, ptr %val.addr, align 8
  store float 0.000000e+00, ptr %val1, align 4
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %.capture_expr., align 4
  %2 = load i32, ptr %.capture_expr., align 4
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2, align 4
  store i32 0, ptr %i, align 4
  %3 = load i32, ptr %.capture_expr., align 4
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.comb.lb, align 4
  %4 = load i32, ptr %.capture_expr.2, align 4
  store i32 %4, ptr %.omp.comb.ub, align 4
  store i32 1, ptr %.omp.stride, align 4
  store i32 0, ptr %.omp.is_last, align 4
  %5 = load ptr, ptr %.global_tid..addr, align 8
  %6 = load i32, ptr %5, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %6, i32 92, ptr %.omp.is_last, ptr %.omp.comb.lb, ptr %.omp.comb.ub, ptr %.omp.stride, i32 1, i32 1)
  %7 = load i32, ptr %.omp.comb.ub, align 4
  %8 = load i32, ptr %.capture_expr.2, align 4
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %9 = load i32, ptr %.capture_expr.2, align 4
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %10 = load i32, ptr %.omp.comb.ub, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub, align 4
  %11 = load i32, ptr %.omp.comb.lb, align 4
  store i32 %11, ptr %.omp.iv, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, ptr %.omp.iv, align 4
  %13 = load i32, ptr %.omp.comb.ub, align 4
  %cmp6 = icmp sle i32 %12, %13
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, ptr %.omp.comb.lb, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %.omp.comb.ub, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %n.addr, align 4
  store i32 %18, ptr %n.casted, align 4
  %19 = load i64, ptr %n.casted, align 8
  %20 = load ptr, ptr %A.addr, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 5, ptr @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp_outlined, i64 %15, i64 %17, i64 %19, ptr %val1, ptr %20)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %21 = load i32, ptr %.omp.iv, align 4
  %22 = load i32, ptr %.omp.stride, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, ptr %.omp.iv, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = load ptr, ptr %.global_tid..addr, align 8
  %24 = load i32, ptr %23, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %24)
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %25 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list, i64 0, i64 0
  store ptr %val1, ptr %25, align 8
  %26 = load ptr, ptr %.global_tid..addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @__kmpc_reduce_nowait(ptr @3, i32 %27, i32 1, i64 8, ptr %.omp.reduction.red_list, ptr @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp.reduction.reduction_func, ptr @.gomp_critical_user_.reduction.var)
  switch i32 %28, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ]

.omp.reduction.case1:                             ; preds = %omp.precond.end
  %29 = load float, ptr %0, align 4
  %30 = load float, ptr %val1, align 4
  %add7 = fadd float %29, %30
  store float %add7, ptr %0, align 4
  call void @__kmpc_end_reduce_nowait(ptr @3, i32 %27, ptr @.gomp_critical_user_.reduction.var)
  br label %.omp.reduction.default

.omp.reduction.case2:                             ; preds = %omp.precond.end
  %31 = load float, ptr %val1, align 4
  %32 = atomicrmw fadd ptr %0, float %31 monotonic, align 4
  br label %.omp.reduction.default

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.precond.end
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %val.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %val4 = alloca float, align 4
  %i5 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x ptr], align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8
  store i64 %.previous.lb., ptr %.previous.lb..addr, align 8
  store i64 %.previous.ub., ptr %.previous.ub..addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %val, ptr %val.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  %0 = load ptr, ptr %val.addr, align 8
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %.capture_expr., align 4
  %2 = load i32, ptr %.capture_expr., align 4
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1, align 4
  store i32 0, ptr %i, align 4
  %3 = load i32, ptr %.capture_expr., align 4
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.lb, align 4
  %4 = load i32, ptr %.capture_expr.1, align 4
  store i32 %4, ptr %.omp.ub, align 4
  %5 = load i64, ptr %.previous.lb..addr, align 8
  %conv = trunc i64 %5 to i32
  %6 = load i64, ptr %.previous.ub..addr, align 8
  %conv3 = trunc i64 %6 to i32
  store i32 %conv, ptr %.omp.lb, align 4
  store i32 %conv3, ptr %.omp.ub, align 4
  store i32 1, ptr %.omp.stride, align 4
  store i32 0, ptr %.omp.is_last, align 4
  store float 0.000000e+00, ptr %val4, align 4
  %7 = load ptr, ptr %.global_tid..addr, align 8
  %8 = load i32, ptr %7, align 4
  call void @__kmpc_for_static_init_4(ptr @2, i32 %8, i32 34, ptr %.omp.is_last, ptr %.omp.lb, ptr %.omp.ub, ptr %.omp.stride, i32 1, i32 1)
  %9 = load i32, ptr %.omp.ub, align 4
  %10 = load i32, ptr %.capture_expr.1, align 4
  %cmp6 = icmp sgt i32 %9, %10
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %11 = load i32, ptr %.capture_expr.1, align 4
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %12 = load i32, ptr %.omp.ub, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, ptr %.omp.ub, align 4
  %13 = load i32, ptr %.omp.lb, align 4
  store i32 %13, ptr %.omp.iv, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, ptr %.omp.iv, align 4
  %15 = load i32, ptr %.omp.ub, align 4
  %cmp7 = icmp sle i32 %14, %15
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, ptr %.omp.iv, align 4
  %mul = mul nsw i32 %16, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i5, align 4
  %17 = load ptr, ptr %A.addr, align 8
  %18 = load i32, ptr %i5, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds float, ptr %17, i64 %idxprom
  %19 = load float, ptr %arrayidx, align 4
  %20 = load float, ptr %val4, align 4
  %add8 = fadd float %20, %19
  store float %add8, ptr %val4, align 4
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, ptr %.omp.iv, align 4
  %add9 = add nsw i32 %21, 1
  store i32 %add9, ptr %.omp.iv, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = load ptr, ptr %.global_tid..addr, align 8
  %23 = load i32, ptr %22, align 4
  call void @__kmpc_for_static_fini(ptr @2, i32 %23)
  %24 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list, i64 0, i64 0
  store ptr %val4, ptr %24, align 8
  %25 = load ptr, ptr %.global_tid..addr, align 8
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @__kmpc_reduce_nowait(ptr @3, i32 %26, i32 1, i64 8, ptr %.omp.reduction.red_list, ptr @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func, ptr @.gomp_critical_user_.reduction.var)
  switch i32 %27, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ]

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %28 = load float, ptr %0, align 4
  %29 = load float, ptr %val4, align 4
  %add10 = fadd float %28, %29
  store float %add10, ptr %0, align 4
  call void @__kmpc_end_reduce_nowait(ptr @3, i32 %26, ptr @.gomp_critical_user_.reduction.var)
  br label %.omp.reduction.default

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %30 = load float, ptr %val4, align 4
  %31 = atomicrmw fadd ptr %0, float %30 monotonic, align 4
  br label %.omp.reduction.default

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.reduction.default, %entry
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #2

; Function Attrs: noinline norecurse uwtable
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp_outlined.omp.reduction.reduction_func(ptr noundef %0, ptr noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  %2 = load ptr, ptr %.addr, align 8
  %3 = load ptr, ptr %.addr1, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load float, ptr %7, align 4
  %9 = load float, ptr %5, align 4
  %add = fadd float %8, %9
  store float %add, ptr %7, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) #4

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(ptr, i32, ptr, ...) #2

; Function Attrs: noinline norecurse uwtable
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6.omp_outlined.omp.reduction.reduction_func(ptr noundef %0, ptr noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  %2 = load ptr, ptr %.addr, align 8
  %3 = load ptr, ptr %.addr1, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load float, ptr %7, align 4
  %9 = load float, ptr %5, align 4
  %add = fadd float %8, %9
  store float %add, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_teams(ptr, i32, ptr, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @__tgt_target_kernel(ptr, i64, i32, i32, ptr, ptr) #2

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!omp_offload.info = !{!0}
!llvm.offloading.symbols = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 0, i32 82, i32 48992454, !"_Z7kernel2Pfi", i32 6, i32 0, i32 0}
!1 = !{ptr @.offloading.entry_name}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7)"}
!9 = !{!10}
!10 = !{i64 2, i64 -1, i64 -1, i1 true}
