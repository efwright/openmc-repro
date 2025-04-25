; ModuleID = 'kernel2-amdgcn-amd-amdhsa-gfx942.o.2.internalize.bc'
source_filename = "kernel2.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.DynamicEnvironmentTy = type { i16 }
%struct.KernelEnvironmentTy = type { %struct.ConfigurationEnvironmentTy, ptr, ptr }
%struct.ConfigurationEnvironmentTy = type { i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct._globalized_locals_ty = type { float }

@__omp_rtl_debug_kind = available_externally hidden addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = available_externally hidden addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = available_externally hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_thread_state = available_externally hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_nested_parallelism = available_externally hidden addrspace(1) constant i32 0
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8
@__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_kernel_environment = weak_odr protected addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 0, i32 0, i32 4, i32 1024 }, ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_dynamic_environment to ptr) }
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.2 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.3 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8
@__openmp_nvptx_data_transfer_temporary_storage = external addrspace(3) global [64 x i32]
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.4 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr protected amdgpu_kernel void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6(ptr noalias noundef %dyn_ptr, i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #0 {
entry:
  %dyn_ptr.addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %val.addr = alloca ptr, align 8, addrspace(5)
  %A.addr = alloca ptr, align 8, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %.zero.addr = alloca i32, align 4, addrspace(5)
  %.threadid_temp. = alloca i32, align 4, addrspace(5)
  %dyn_ptr.addr.ascast = addrspacecast ptr addrspace(5) %dyn_ptr.addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %val.addr.ascast = addrspacecast ptr addrspace(5) %val.addr to ptr
  %A.addr.ascast = addrspacecast ptr addrspace(5) %A.addr to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %.zero.addr.ascast = addrspacecast ptr addrspace(5) %.zero.addr to ptr
  %.threadid_temp..ascast = addrspacecast ptr addrspace(5) %.threadid_temp. to ptr
  store ptr %dyn_ptr, ptr %dyn_ptr.addr.ascast, align 8
  store i64 %n, ptr %n.addr.ascast, align 8
  store ptr %val, ptr %val.addr.ascast, align 8
  store ptr %A, ptr %A.addr.ascast, align 8
  %0 = load ptr, ptr %val.addr.ascast, align 8
  %1 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_kernel_environment to ptr), ptr %dyn_ptr)
  %exec_user_code = icmp eq i32 %1, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr))
  %3 = load i32, ptr %n.addr.ascast, align 4
  store i32 %3, ptr %n.casted.ascast, align 4
  %4 = load i64, ptr %n.casted.ascast, align 8
  %5 = load ptr, ptr %A.addr.ascast, align 8
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %2, ptr %.threadid_temp..ascast, align 4
  call void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %4, ptr %0, ptr %5) #2
  call void @__kmpc_target_deinit()
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

declare i32 @__kmpc_target_init(ptr, ptr)

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %val.addr = alloca ptr, align 8, addrspace(5)
  %A.addr = alloca ptr, align 8, addrspace(5)
  %val1 = alloca float, align 4, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.2 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.comb.lb = alloca i32, align 4, addrspace(5)
  %.omp.comb.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %i4 = alloca i32, align 4, addrspace(5)
  %n.casted = alloca i64, align 8, addrspace(5)
  %captured_vars_addrs = alloca [5 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %val.addr.ascast = addrspacecast ptr addrspace(5) %val.addr to ptr
  %A.addr.ascast = addrspacecast ptr addrspace(5) %A.addr to ptr
  %val1.ascast = addrspacecast ptr addrspace(5) %val1 to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.2.ascast = addrspacecast ptr addrspace(5) %.capture_expr.2 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.comb.lb.ascast = addrspacecast ptr addrspace(5) %.omp.comb.lb to ptr
  %.omp.comb.ub.ascast = addrspacecast ptr addrspace(5) %.omp.comb.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %i4.ascast = addrspacecast ptr addrspace(5) %i4 to ptr
  %n.casted.ascast = addrspacecast ptr addrspace(5) %n.casted to ptr
  %captured_vars_addrs.ascast = addrspacecast ptr addrspace(5) %captured_vars_addrs to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8
  store i64 %n, ptr %n.addr.ascast, align 8
  store ptr %val, ptr %val.addr.ascast, align 8
  store ptr %A, ptr %A.addr.ascast, align 8
  %0 = load ptr, ptr %val.addr.ascast, align 8
  store float 0.000000e+00, ptr %val1.ascast, align 4
  %1 = load i32, ptr %n.addr.ascast, align 4
  store i32 %1, ptr %.capture_expr..ascast, align 4
  %2 = load i32, ptr %.capture_expr..ascast, align 4
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2.ascast, align 4
  store i32 0, ptr %i.ascast, align 4
  %3 = load i32, ptr %.capture_expr..ascast, align 4
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.comb.lb.ascast, align 4
  %4 = load i32, ptr %.capture_expr.2.ascast, align 4
  store i32 %4, ptr %.omp.comb.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  %nvptx_num_threads = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %5 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %6 = load i32, ptr %5, align 4
  call void @__kmpc_distribute_static_init_4(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.2 to ptr), i32 %6, i32 91, ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 %nvptx_num_threads)
  %7 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %8 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %9 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %10 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4
  %11 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %11, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end13, %cond.end
  %12 = load i32, ptr %.omp.iv.ascast, align 4
  %13 = load i32, ptr %.capture_expr.2.ascast, align 4
  %add = add nsw i32 %13, 1
  %cmp6 = icmp slt i32 %12, %add
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %n.addr.ascast, align 4
  store i32 %18, ptr %n.casted.ascast, align 4
  %19 = load i64, ptr %n.casted.ascast, align 8
  %20 = load ptr, ptr %A.addr.ascast, align 8
  %21 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %22 = inttoptr i64 %15 to ptr
  store ptr %22, ptr %21, align 8
  %23 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %24 = inttoptr i64 %17 to ptr
  store ptr %24, ptr %23, align 8
  %25 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %26 = inttoptr i64 %19 to ptr
  store ptr %26, ptr %25, align 8
  %27 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %val1.ascast, ptr %27, align 8
  %28 = getelementptr inbounds [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %20, ptr %28, align 8
  %29 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %30 = load i32, ptr %29, align 4
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr), i32 %30, i32 1, i32 -1, i32 -1, ptr @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined, ptr null, ptr %captured_vars_addrs.ascast, i64 5)
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %31 = load i32, ptr %.omp.iv.ascast, align 4
  %32 = load i32, ptr %.omp.stride.ascast, align 4
  %add7 = add nsw i32 %31, %32
  store i32 %add7, ptr %.omp.iv.ascast, align 4
  %33 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %34 = load i32, ptr %.omp.stride.ascast, align 4
  %add8 = add nsw i32 %33, %34
  store i32 %add8, ptr %.omp.comb.lb.ascast, align 4
  %35 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %36 = load i32, ptr %.omp.stride.ascast, align 4
  %add9 = add nsw i32 %35, %36
  store i32 %add9, ptr %.omp.comb.ub.ascast, align 4
  %37 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %38 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp10 = icmp sgt i32 %37, %38
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %omp.inner.for.inc
  %39 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end13

cond.false12:                                     ; preds = %omp.inner.for.inc
  %40 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %39, %cond.true11 ], [ %40, %cond.false12 ]
  store i32 %cond14, ptr %.omp.comb.ub.ascast, align 4
  %41 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %41, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %42 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %43 = load i32, ptr %42, align 4
  call void @__kmpc_distribute_static_fini(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.2 to ptr), i32 %43)
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val1.ascast, ptr %44, align 8
  %"_openmp_teams_reductions_buffer_$_$ptr" = call ptr @__kmpc_reduction_get_fixed_buffer()
  %45 = call i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr), ptr %"_openmp_teams_reductions_buffer_$_$ptr", i32 1024, i64 4, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.1, ptr @_omp_reduction_inter_warp_copy_func.2, ptr @_omp_reduction_list_to_global_copy_func, ptr @_omp_reduction_list_to_global_reduce_func, ptr @_omp_reduction_global_to_list_copy_func, ptr @_omp_reduction_global_to_list_reduce_func)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.precond.end
  %47 = load float, ptr %0, align 4
  %48 = load float, ptr %val1.ascast, align 4
  %add15 = fadd float %47, %48
  store float %add15, ptr %0, align 4
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.precond.end
  ret void
}

declare i32 @__kmpc_get_hardware_num_threads_in_block()

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #2

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8, addrspace(5)
  %.bound_tid..addr = alloca ptr, align 8, addrspace(5)
  %.previous.lb..addr = alloca i64, align 8, addrspace(5)
  %.previous.ub..addr = alloca i64, align 8, addrspace(5)
  %n.addr = alloca i64, align 8, addrspace(5)
  %val.addr = alloca ptr, align 8, addrspace(5)
  %A.addr = alloca ptr, align 8, addrspace(5)
  %.omp.iv = alloca i32, align 4, addrspace(5)
  %tmp = alloca i32, align 4, addrspace(5)
  %.capture_expr. = alloca i32, align 4, addrspace(5)
  %.capture_expr.1 = alloca i32, align 4, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %.omp.lb = alloca i32, align 4, addrspace(5)
  %.omp.ub = alloca i32, align 4, addrspace(5)
  %.omp.stride = alloca i32, align 4, addrspace(5)
  %.omp.is_last = alloca i32, align 4, addrspace(5)
  %val4 = alloca float, align 4, addrspace(5)
  %i5 = alloca i32, align 4, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  %.global_tid..addr.ascast = addrspacecast ptr addrspace(5) %.global_tid..addr to ptr
  %.bound_tid..addr.ascast = addrspacecast ptr addrspace(5) %.bound_tid..addr to ptr
  %.previous.lb..addr.ascast = addrspacecast ptr addrspace(5) %.previous.lb..addr to ptr
  %.previous.ub..addr.ascast = addrspacecast ptr addrspace(5) %.previous.ub..addr to ptr
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  %val.addr.ascast = addrspacecast ptr addrspace(5) %val.addr to ptr
  %A.addr.ascast = addrspacecast ptr addrspace(5) %A.addr to ptr
  %.omp.iv.ascast = addrspacecast ptr addrspace(5) %.omp.iv to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %.capture_expr..ascast = addrspacecast ptr addrspace(5) %.capture_expr. to ptr
  %.capture_expr.1.ascast = addrspacecast ptr addrspace(5) %.capture_expr.1 to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %.omp.lb.ascast = addrspacecast ptr addrspace(5) %.omp.lb to ptr
  %.omp.ub.ascast = addrspacecast ptr addrspace(5) %.omp.ub to ptr
  %.omp.stride.ascast = addrspacecast ptr addrspace(5) %.omp.stride to ptr
  %.omp.is_last.ascast = addrspacecast ptr addrspace(5) %.omp.is_last to ptr
  %val4.ascast = addrspacecast ptr addrspace(5) %val4 to ptr
  %i5.ascast = addrspacecast ptr addrspace(5) %i5 to ptr
  store ptr %.global_tid., ptr %.global_tid..addr.ascast, align 8
  store ptr %.bound_tid., ptr %.bound_tid..addr.ascast, align 8
  store i64 %.previous.lb., ptr %.previous.lb..addr.ascast, align 8
  store i64 %.previous.ub., ptr %.previous.ub..addr.ascast, align 8
  store i64 %n, ptr %n.addr.ascast, align 8
  store ptr %val, ptr %val.addr.ascast, align 8
  store ptr %A, ptr %A.addr.ascast, align 8
  %0 = load ptr, ptr %val.addr.ascast, align 8
  %1 = load i32, ptr %n.addr.ascast, align 4
  store i32 %1, ptr %.capture_expr..ascast, align 4
  %2 = load i32, ptr %.capture_expr..ascast, align 4
  %sub = sub nsw i32 %2, 0
  %div = sdiv i32 %sub, 1
  %sub2 = sub nsw i32 %div, 1
  store i32 %sub2, ptr %.capture_expr.1.ascast, align 4
  store i32 0, ptr %i.ascast, align 4
  %3 = load i32, ptr %.capture_expr..ascast, align 4
  %cmp = icmp slt i32 0, %3
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.lb.ascast, align 4
  %4 = load i32, ptr %.capture_expr.1.ascast, align 4
  store i32 %4, ptr %.omp.ub.ascast, align 4
  %5 = load i64, ptr %.previous.lb..addr.ascast, align 8
  %conv = trunc i64 %5 to i32
  %6 = load i64, ptr %.previous.ub..addr.ascast, align 8
  %conv3 = trunc i64 %6 to i32
  store i32 %conv, ptr %.omp.lb.ascast, align 4
  store i32 %conv3, ptr %.omp.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  store float 0.000000e+00, ptr %val4.ascast, align 4
  %7 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %8 = load i32, ptr %7, align 4
  call void @__kmpc_for_static_init_4(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.3 to ptr), i32 %8, i32 33, ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast, i32 1, i32 1)
  %9 = load i32, ptr %.omp.lb.ascast, align 4
  store i32 %9, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.precond.then
  %10 = load i32, ptr %.omp.iv.ascast, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load i64, ptr %.previous.ub..addr.ascast, align 8
  %cmp7 = icmp ule i64 %conv6, %11
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, ptr %.omp.iv.ascast, align 4
  %mul = mul nsw i32 %12, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i5.ascast, align 4
  %13 = load ptr, ptr %A.addr.ascast, align 8
  %14 = load i32, ptr %i5.ascast, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds float, ptr %13, i64 %idxprom
  %15 = load float, ptr %arrayidx, align 4
  %16 = load float, ptr %val4.ascast, align 4
  %add8 = fadd float %16, %15
  store float %add8, ptr %val4.ascast, align 4
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, ptr %.omp.iv.ascast, align 4
  %18 = load i32, ptr %.omp.stride.ascast, align 4
  %add9 = add nsw i32 %17, %18
  store i32 %add9, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %20 = load i32, ptr %19, align 4
  call void @__kmpc_for_static_fini(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.3 to ptr), i32 %20)
  %21 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val4.ascast, ptr %21, align 8
  %22 = call i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr), i64 4, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func, ptr @_omp_reduction_inter_warp_copy_func)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.loop.exit
  %24 = load float, ptr %0, align 4
  %25 = load float, ptr %val4.ascast, align 4
  %add10 = fadd float %24, %25
  store float %add10, ptr %0, align 4
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.loop.exit
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %.omp.reduction.done, %entry
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #2

; Function Attrs: convergent noinline norecurse nounwind
define internal void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr noundef %0, ptr noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store ptr %1, ptr %.addr1.ascast, align 8
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
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

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca float, align 4, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i16 %1, ptr %.addr1.ascast, align 2
  store i16 %2, ptr %.addr2.ascast, align 2
  store i16 %3, ptr %.addr3.ascast, align 2
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i16, ptr %.addr1.ascast, align 2
  %6 = load i16, ptr %.addr2.ascast, align 2
  %7 = load i16, ptr %.addr3.ascast, align 2
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr float, ptr %9, i64 1
  %12 = load i32, ptr %9, align 4
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i32 @__kmpc_shuffle_int32(i32 %12, i16 %6, i16 %14)
  store i32 %15, ptr %.omp.reduction.element.ascast, align 4
  %16 = getelementptr i32, ptr %9, i64 1
  %17 = getelementptr i32, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #2
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load float, ptr %34, align 4
  store float %37, ptr %36, align 4
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_get_warp_size() #2

declare i32 @__kmpc_shuffle_int32(i32, i16, i16)

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func(ptr noundef %0, i32 noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  %2 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %3, 63
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %4, 6
  %5 = load ptr, ptr %.addr.ascast, align 8
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.4 to ptr), i32 %omp_global_thread_num)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %entry
  %6 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %9 = load i32, ptr %7, align 4
  store volatile i32 %9, ptr addrspace(3) %8, align 4
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %omp_global_thread_num2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.4 to ptr), i32 %omp_global_thread_num2)
  %10 = load i32, ptr %.addr1.ascast, align 4
  %is_active_thread = icmp ult i32 %2, %10
  br i1 %is_active_thread, label %then3, label %else4

then3:                                            ; preds = %ifcont
  %11 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %2
  %12 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %13 = load ptr, ptr %12, align 8
  %14 = load volatile i32, ptr addrspace(3) %11, align 4
  store i32 %14, ptr %13, align 4
  br label %ifcont5

else4:                                            ; preds = %ifcont
  br label %ifcont5

ifcont5:                                          ; preds = %else4, %then3
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_get_hardware_thread_id_in_block() #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #4

declare i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr, i64, ptr, ptr, ptr)

; Function Attrs: alwaysinline
declare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) #5

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_fini(ptr, i32) #2

; Function Attrs: convergent noinline norecurse nounwind
define internal void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr noundef %0, ptr noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store ptr %1, ptr %.addr1.ascast, align 8
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
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

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca float, align 4, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i16 %1, ptr %.addr1.ascast, align 2
  store i16 %2, ptr %.addr2.ascast, align 2
  store i16 %3, ptr %.addr3.ascast, align 2
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i16, ptr %.addr1.ascast, align 2
  %6 = load i16, ptr %.addr2.ascast, align 2
  %7 = load i16, ptr %.addr3.ascast, align 2
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr float, ptr %9, i64 1
  %12 = load i32, ptr %9, align 4
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i32 @__kmpc_shuffle_int32(i32 %12, i16 %6, i16 %14)
  store i32 %15, ptr %.omp.reduction.element.ascast, align 4
  %16 = getelementptr i32, ptr %9, i64 1
  %17 = getelementptr i32, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #2
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load float, ptr %34, align 4
  store float %37, ptr %36, align 4
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.2(ptr noundef %0, i32 noundef %1) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  %2 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %3, 63
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %4, 6
  %5 = load ptr, ptr %.addr.ascast, align 8
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.4 to ptr), i32 %omp_global_thread_num)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %entry
  %6 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %9 = load i32, ptr %7, align 4
  store volatile i32 %9, ptr addrspace(3) %8, align 4
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %omp_global_thread_num2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.4 to ptr), i32 %omp_global_thread_num2)
  %10 = load i32, ptr %.addr1.ascast, align 4
  %is_active_thread = icmp ult i32 %2, %10
  br i1 %is_active_thread, label %then3, label %else4

then3:                                            ; preds = %ifcont
  %11 = getelementptr inbounds [64 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %2
  %12 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %13 = load ptr, ptr %12, align 8
  %14 = load volatile i32, ptr addrspace(3) %11, align 4
  store i32 %14, ptr %13, align 4
  br label %ifcont5

else4:                                            ; preds = %ifcont
  br label %ifcont5

ifcont5:                                          ; preds = %else4, %then3
  ret void
}

; Function Attrs: nounwind
declare ptr @__kmpc_reduction_get_fixed_buffer() #2

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_list_to_global_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr2.ascast, align 8
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i32, ptr %.addr1.ascast, align 4
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 %5
  %9 = getelementptr inbounds %struct._globalized_locals_ty, ptr %8, i32 0, i32 0
  %10 = load float, ptr %7, align 4
  store float %10, ptr %9, align 4
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_list_to_global_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr.ascast, align 8
  %4 = load i32, ptr %.addr1.ascast, align 4
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %6 = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 %4
  %7 = getelementptr inbounds %struct._globalized_locals_ty, ptr %6, i32 0, i32 0
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %.addr2.ascast, align 8
  call void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %.omp.reduction.red_list.ascast, ptr %8) #2
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_global_to_list_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr2.ascast, align 8
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i32, ptr %.addr1.ascast, align 4
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 %5
  %9 = getelementptr inbounds %struct._globalized_locals_ty, ptr %8, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  store float %10, ptr %7, align 4
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind
define internal void @_omp_reduction_global_to_list_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr.ascast, align 8
  %4 = load i32, ptr %.addr1.ascast, align 4
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %6 = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 %4
  %7 = getelementptr inbounds %struct._globalized_locals_ty, ptr %6, i32 0, i32 0
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %.addr2.ascast, align 8
  call void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %8, ptr %.omp.reduction.red_list.ascast) #2
  ret void
}

declare i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr)

declare void @__kmpc_target_deinit()

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="all" "kernel" "no-trapping-math"="true" "omp_target_thread_limit"="256" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="true" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" }
attributes #2 = { nounwind }
attributes #3 = { convergent noinline norecurse nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" }
attributes #4 = { convergent nounwind }
attributes #5 = { alwaysinline }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!opencl.ocl.version = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}

!0 = !{i32 0, i32 82, i32 48992454, !"_Z7kernel2Pfi", i32 6, i32 0, i32 0}
!1 = !{i32 1, !"amdhsa_code_object_version", i32 600}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 7, !"openmp-device", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 0}
!8 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7)"}
!9 = !{!"AMD clang version 18.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.3.1 24491 1e0fda770a2079fbd71e4b70974d74f62fd3af10)"}
!10 = !{i32 2, i32 0}
