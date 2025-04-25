; ModuleID = 'a.out.amdgcn.gfx942.img.0.4.opt.bc'
source_filename = "ld-temp.o"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.DeviceMemoryPoolTy = type { ptr, i64 }
%struct.DeviceMemoryPoolTrackingTy = type { i64, i64, i64, i64 }
%struct.DeviceEnvironmentTy = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.DynamicEnvironmentTy = type { i16 }
%struct.KernelEnvironmentTy = type { %struct.ConfigurationEnvironmentTy, ptr, ptr }
%struct.ConfigurationEnvironmentTy = type { i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%llvm.amdgcn.module.lds.t = type { [64 x ptr], [64 x i32], %"struct.ompx::state::TeamStateTy", ptr, ptr, ptr, i32, i32, i32, i32 }
%"struct.ompx::state::TeamStateTy" = type { %"struct.ompx::state::ICVStateTy", i32, i32, ptr }
%"struct.ompx::state::ICVStateTy" = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._globalized_locals_ty = type { float }

@__omp_rtl_device_memory_pool = weak protected addrspace(1) global %struct.DeviceMemoryPoolTy zeroinitializer, align 8
@__omp_rtl_device_memory_pool_tracker = weak protected addrspace(1) global %struct.DeviceMemoryPoolTrackingTy zeroinitializer, align 8
@__omp_rtl_device_environment = weak protected addrspace(4) global %struct.DeviceEnvironmentTy zeroinitializer, align 8
@anon.a9ed9815896cf6404667e416dfa6df1a.1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8
@__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_kernel_environment = weak_odr protected addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 0, i32 0, i32 4, i32 1024 }, ptr addrspacecast (ptr addrspace(1) @anon.a9ed9815896cf6404667e416dfa6df1a.1 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_dynamic_environment to ptr) }
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.0 }, align 8
@__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_kernel_environment = weak_odr protected addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 0, i32 0, i32 4, i32 1024 }, ptr addrspacecast (ptr addrspace(1) @anon.9a83ea14dcc72ffeb0fe81c62ec782b0.1 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_dynamic_environment to ptr) }
@llvm.used = appending addrspace(1) global [3 x ptr] [ptr addrspacecast (ptr addrspace(4) @__omp_rtl_device_environment to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool_tracker to ptr)], section "llvm.metadata"
@llvm.amdgcn.module.lds = internal addrspace(3) global %llvm.amdgcn.module.lds.t poison, align 16, !absolute_symbol !0
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(3) @llvm.amdgcn.module.lds to ptr)], section "llvm.metadata"

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn
define internal fastcc noundef range(i32 -1, 1024) i32 @__kmpc_target_init(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %4 = addrspacecast ptr %3 to ptr addrspace(1)
  %5 = load i8, ptr addrspace(1) %4, align 2, !tbaa !14
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = addrspacecast ptr %0 to ptr addrspace(1)
  %9 = load i8, ptr addrspace(1) %8, align 8, !tbaa !20
  %10 = icmp ne i8 %9, 0
  br i1 %7, label %19, label %11

11:                                               ; preds = %2
  %12 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %11
  store i32 1, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  store <2 x i32> zeroinitializer, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), align 16, !tbaa !21, !alias.scope !26, !noalias !25
  %15 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store <2 x i32> zeroinitializer, ptr addrspace(3) %15, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %16 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 16
  store <2 x i32> splat (i32 1), ptr addrspace(3) %16, align 16, !tbaa !21, !alias.scope !26, !noalias !25
  %17 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 24
  store <2 x i32> splat (i32 1), ptr addrspace(3) %17, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %18 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 0, ptr addrspace(3) %18, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  store ptr null, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  store ptr %0, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  store ptr %1, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 4), align 8, !tbaa !41, !alias.scope !43, !noalias !25
  br label %.critedge

.critedge:                                        ; preds = %14, %11
  tail call void @llvm.amdgcn.s.barrier()
  br label %.critedge5

19:                                               ; preds = %2
  store atomic i32 0, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") release, align 4, !alias.scope !45, !noalias !25
  %20 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %21 = getelementptr inbounds nuw i8, ptr addrspace(4) %20, i64 12
  %22 = load i16, ptr addrspace(4) %21, align 4, !range !47
  %23 = zext nneg i16 %22 to i32
  %24 = add nsw i32 %23, -1
  %25 = and i32 %24, -64
  %26 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %27 = icmp eq i32 %26, %25
  br i1 %27, label %28, label %.critedge5

28:                                               ; preds = %19
  store i32 0, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  store <2 x i32> zeroinitializer, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), align 16, !tbaa !21, !alias.scope !26, !noalias !25
  %29 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store <2 x i32> zeroinitializer, ptr addrspace(3) %29, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %30 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 16
  store <2 x i32> splat (i32 1), ptr addrspace(3) %30, align 16, !tbaa !21, !alias.scope !26, !noalias !25
  %31 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 24
  store <2 x i32> splat (i32 1), ptr addrspace(3) %31, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %32 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 0, ptr addrspace(3) %32, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  store ptr null, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  store ptr %0, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  store ptr %1, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 4), align 8, !tbaa !41, !alias.scope !43, !noalias !25
  br label %.critedge5

.critedge5:                                       ; preds = %28, %19, %.critedge
  br i1 %7, label %48, label %33

33:                                               ; preds = %.critedge5
  %34 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %35 = load i32, ptr addrspace(3) %34, align 4, !tbaa !48, !alias.scope !26, !noalias !25
  %36 = icmp eq i32 %35, 0
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %38 = load i32, ptr addrspace(3) %37, align 8, !tbaa !49, !alias.scope !26, !noalias !25
  %39 = icmp eq i32 %38, 0
  tail call void @llvm.assume(i1 %39)
  %40 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %41 = load i32, ptr addrspace(3) %40, align 4, !tbaa !50, !alias.scope !26, !noalias !25
  %42 = icmp eq i32 %41, 1
  tail call void @llvm.assume(i1 %42)
  %43 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %44 = load i32, ptr addrspace(3) %43, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  %45 = icmp eq i32 %44, 0
  tail call void @llvm.assume(i1 %45)
  %46 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %47 = icmp ne i32 %46, 0
  tail call void @llvm.assume(i1 %47)
  tail call void @llvm.amdgcn.s.barrier()
  br label %62

48:                                               ; preds = %.critedge5
  %49 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %50 = getelementptr inbounds nuw i8, ptr addrspace(4) %49, i64 12
  %51 = load i16, ptr addrspace(4) %50, align 4, !range !47, !invariant.load !25, !noundef !25
  %52 = zext nneg i16 %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = and i32 %53, -64
  %55 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x(), !range !51
  %56 = icmp eq i32 %55, %54
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = add nsw i32 %52, -64
  %59 = icmp ult i32 %55, %58
  %60 = and i1 %10, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %62

62:                                               ; preds = %61, %57, %48, %33
  %63 = phi i32 [ -1, %33 ], [ -1, %48 ], [ %55, %61 ], [ %55, %57 ]
  ret i32 %63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef align 4 ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) captures(none)) #4

; Function Attrs: convergent nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal fastcc void @__kmpc_target_deinit() unnamed_addr #6 {
  ret void
}

; Function Attrs: convergent nocallback nofree nounwind willreturn memory(none)
declare i64 @llvm.amdgcn.ballot.i64(i1) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.mbcnt.lo(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.mbcnt.hi(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull align 4 ptr addrspace(4) @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc range(i32 1, 1025) i32 @__kmpc_get_hardware_num_threads_in_block() unnamed_addr #9 {
  %1 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %2 = getelementptr inbounds nuw i8, ptr addrspace(4) %1, i64 12
  %3 = load i16, ptr addrspace(4) %2, align 4, !range !47, !invariant.load !25, !noundef !25
  %4 = zext nneg i16 %3 to i32
  ret i32 %4
}

; Function Attrs: convergent nocallback nofree nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.ds.bpermute(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p3.i64(ptr noalias writeonly captures(none), ptr addrspace(3) noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write)
define internal fastcc range(i32 -1, 1024) i32 @__kmpc_global_thread_num() unnamed_addr #13 {
  %1 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %2 = addrspacecast ptr addrspace(3) %1 to ptr
  %3 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %4 = load i32, ptr addrspace(3) %3, align 16, !alias.scope !26, !noalias !25
  %.not = icmp eq i32 %4, 0
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #29
  br i1 %.not, label %._crit_edge, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %7 = addrspacecast ptr addrspace(3) %6 to ptr
  %8 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %9 = zext nneg i32 %.pre to i64
  %10 = getelementptr inbounds nuw ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %._crit_edge, label %13, !prof !54

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %5, %0
  %15 = phi ptr [ %14, %13 ], [ %7, %5 ], [ %2, %0 ]
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = icmp sgt i32 %16, -1
  tail call void @llvm.assume(i1 %17) #30
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %._crit_edge
  %20 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %21 = addrspacecast ptr addrspace(3) %20 to ptr
  br i1 %.not, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %24 = addrspacecast ptr addrspace(3) %23 to ptr
  %25 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %26 = zext nneg i32 %.pre to i64
  %27 = getelementptr inbounds nuw ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !54

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 4
  br label %32

32:                                               ; preds = %30, %22, %19
  %33 = phi ptr [ %31, %30 ], [ %21, %19 ], [ %24, %22 ]
  %34 = load i32, ptr %33, align 4, !tbaa !21
  %35 = icmp sgt i32 %34, -1
  tail call void @llvm.assume(i1 %35)
  %36 = icmp samesign ugt i32 %16, %34
  br i1 %36, label %55, label %37, !prof !55

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %39 = addrspacecast ptr addrspace(3) %38 to ptr
  br i1 %.not, label %50, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %42 = addrspacecast ptr addrspace(3) %41 to ptr
  %43 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %44 = zext nneg i32 %.pre to i64
  %45 = getelementptr inbounds nuw ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !54

48:                                               ; preds = %40
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 8
  br label %50

50:                                               ; preds = %48, %40, %37
  %51 = phi ptr [ %49, %48 ], [ %39, %37 ], [ %42, %40 ]
  %52 = load i32, ptr %51, align 4, !tbaa !21
  %53 = icmp eq i32 %16, %52
  %54 = select i1 %53, i32 %.pre, i32 0, !prof !54
  br label %55

55:                                               ; preds = %50, %32, %._crit_edge
  %56 = phi i32 [ 0, %._crit_edge ], [ %54, %50 ], [ -1, %32 ]
  ret i32 %56
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind
define internal fastcc range(i32 0, 2) i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #14 {
  %4 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %5 = addrspacecast ptr addrspace(3) %4 to ptr
  %6 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #29, !range !51
  %7 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %8 = load i32, ptr addrspace(3) %7, align 16, !alias.scope !26, !noalias !25
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %11 = addrspacecast ptr addrspace(3) %10 to ptr
  %12 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds nuw ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !54

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 4
  br label %19

19:                                               ; preds = %17, %9, %3
  %20 = phi ptr [ %18, %17 ], [ %5, %3 ], [ %11, %9 ]
  %21 = load i32, ptr %20, align 4, !tbaa !21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #29
  %25 = getelementptr inbounds nuw i8, ptr addrspace(4) %24, i64 12
  %26 = load i16, ptr addrspace(4) %25, align 4, !range !47, !invariant.load !25, !noundef !25
  %27 = zext nneg i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = and i32 %28, -64
  %30 = icmp eq i32 %6, %29
  %31 = select i1 %30, i32 0, i32 %6
  br label %32

32:                                               ; preds = %23, %19
  %33 = phi i32 [ %31, %23 ], [ %6, %19 ]
  %34 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %35 = addrspacecast ptr addrspace(3) %34 to ptr
  br i1 %.not, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %38 = addrspacecast ptr addrspace(3) %37 to ptr
  %39 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %40 = zext nneg i32 %6 to i64
  %41 = getelementptr inbounds nuw ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !54

44:                                               ; preds = %36
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 4
  br label %46

46:                                               ; preds = %44, %36, %32
  %47 = phi ptr [ %45, %44 ], [ %35, %32 ], [ %38, %36 ]
  %48 = load i32, ptr %47, align 4, !tbaa !21
  %49 = icmp sgt i32 %48, -1
  tail call void @llvm.assume(i1 %49)
  %50 = icmp eq i32 %48, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %53 = load i32, ptr addrspace(3) %52, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %57 = icmp eq i32 %56, 0
  %58 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #29
  %59 = getelementptr inbounds nuw i8, ptr addrspace(4) %58, i64 12
  %60 = load i16, ptr addrspace(4) %59, align 4, !range !47, !invariant.load !25, !noundef !25
  %61 = zext nneg i16 %60 to i32
  %.neg = select i1 %57, i32 -64, i32 0
  %62 = add nsw i32 %.neg, %61
  br label %63

63:                                               ; preds = %55, %51, %46
  %64 = phi i32 [ 1, %46 ], [ %62, %55 ], [ %53, %51 ]
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %190, label %66

66:                                               ; preds = %63
  %67 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = icmp eq ptr %1, @_omp_reduction_shuffle_and_reduce_func.17
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 32, i16 noundef signext 0) #31
  br label %73

72:                                               ; preds = %69
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 32, i16 noundef signext 0) #31
  br label %73

73:                                               ; preds = %72, %71
  br i1 %70, label %75, label %74

74:                                               ; preds = %73
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0) #31
  br label %76

75:                                               ; preds = %73
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0) #31
  br label %76

76:                                               ; preds = %75, %74
  br i1 %70, label %78, label %77

77:                                               ; preds = %76
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #31
  br label %79

78:                                               ; preds = %76
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #31
  br label %79

79:                                               ; preds = %78, %77
  br i1 %70, label %81, label %80

80:                                               ; preds = %79
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #31
  br label %82

81:                                               ; preds = %79
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #31
  br label %82

82:                                               ; preds = %81, %80
  br i1 %70, label %84, label %83

83:                                               ; preds = %82
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #31
  br label %85

84:                                               ; preds = %82
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #31
  br label %85

85:                                               ; preds = %84, %83
  br i1 %70, label %87, label %86

86:                                               ; preds = %85
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0) #31
  br label %.loopexit1

87:                                               ; preds = %85
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0) #31
  br label %.loopexit1

88:                                               ; preds = %66
  %89 = add nuw i64 %67, 1
  %90 = and i64 %89, %67
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %67), !range !56
  %94 = icmp samesign ult i64 %93, 2
  br i1 %94, label %.loopexit1, label %95

95:                                               ; preds = %92
  %96 = trunc nuw nsw i64 %93 to i32
  %97 = lshr i32 %96, 1
  %98 = trunc nuw nsw i32 %6 to i16
  %99 = and i16 %98, 63
  %100 = icmp eq ptr %1, @_omp_reduction_shuffle_and_reduce_func.17
  br label %101

101:                                              ; preds = %107, %95
  %102 = phi i32 [ %97, %95 ], [ %110, %107 ]
  %103 = phi i32 [ %96, %95 ], [ %109, %107 ]
  %104 = trunc nuw nsw i32 %102 to i16
  br i1 %100, label %105, label %106

105:                                              ; preds = %101
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext %99, i16 noundef signext %104, i16 noundef signext 1) #31
  br label %107

106:                                              ; preds = %101
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %99, i16 noundef signext %104, i16 noundef signext 1) #31
  br label %107

107:                                              ; preds = %106, %105
  %108 = add nuw nsw i32 %103, 1
  %109 = lshr i32 %108, 1
  %110 = lshr i32 %108, 2
  %111 = icmp samesign ult i32 %103, 3
  br i1 %111, label %.loopexit1, label %101, !llvm.loop !57

112:                                              ; preds = %88
  %113 = and i32 %6, 63
  %114 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %115 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %114)
  %116 = icmp ult i32 %115, 64
  tail call void @llvm.assume(i1 %116)
  %117 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %118 = zext nneg i32 %115 to i64
  %119 = shl nsw i64 -1, %118
  %120 = xor i64 %119, -1
  %121 = and i64 %117, %120
  %122 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %123 = and i64 %122, %121
  %124 = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %123), !range !56
  %125 = trunc nuw nsw i64 %124 to i32
  %126 = shl nuw nsw i32 %125, 1
  %127 = icmp eq i32 %115, 63
  br i1 %127, label %134, label %128

128:                                              ; preds = %112
  %129 = add nuw nsw i32 %115, 1
  %130 = zext nneg i32 %129 to i64
  %131 = shl nsw i64 -1, %130
  %132 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %133 = and i64 %132, %131
  br label %134

134:                                              ; preds = %128, %112
  %135 = phi i64 [ %133, %128 ], [ 0, %112 ]
  %136 = xor i32 %113, -1
  %137 = icmp eq ptr %1, @_omp_reduction_shuffle_and_reduce_func.17
  br label %138

138:                                              ; preds = %154, %134
  %139 = phi i32 [ %126, %134 ], [ %148, %154 ]
  %140 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %141 = and i64 %140, %135
  %142 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %141, i1 true), !range !56
  %143 = icmp eq i64 %141, 0
  %144 = trunc nuw nsw i64 %142 to i32
  %145 = add nuw nsw i32 %144, 1
  %146 = select i1 %143, i32 0, i32 %145
  %147 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %140)
  %148 = lshr i32 %139, 1
  %149 = trunc nuw nsw i32 %148 to i16
  %150 = add nsw i32 %146, %136
  %151 = trunc nsw i32 %150 to i16
  br i1 %137, label %152, label %153

152:                                              ; preds = %138
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext %149, i16 noundef signext %151, i16 noundef signext 2) #31
  br label %154

153:                                              ; preds = %138
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %149, i16 noundef signext %151, i16 noundef signext 2) #31
  br label %154

154:                                              ; preds = %153, %152
  %155 = and i32 %139, 2
  %156 = icmp eq i32 %155, 0
  %157 = icmp samesign ugt i64 %147, 1
  %158 = and i1 %156, %157
  br i1 %158, label %138, label %159, !llvm.loop !59

159:                                              ; preds = %154
  %.lcssa = phi i32 [ %139, %154 ]
  %160 = icmp samesign ult i32 %.lcssa, 2
  br label %190

.loopexit1:                                       ; preds = %107, %92, %87, %86
  %161 = icmp ugt i32 %64, 64
  br i1 %161, label %162, label %188

162:                                              ; preds = %.loopexit1
  %163 = add i32 %64, 63
  %164 = lshr i32 %163, 6
  %165 = icmp eq ptr %2, @_omp_reduction_inter_warp_copy_func.18
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  tail call void @_omp_reduction_inter_warp_copy_func.18(ptr noundef %0, i32 noundef %164) #31
  br label %168

167:                                              ; preds = %162
  tail call void @_omp_reduction_inter_warp_copy_func(ptr noundef %0, i32 noundef %164) #31
  br label %168

168:                                              ; preds = %167, %166
  %169 = icmp ugt i32 %33, 63
  %170 = icmp ult i32 %163, 128
  %171 = or i1 %170, %169
  br i1 %171, label %.loopexit, label %172

172:                                              ; preds = %168
  %173 = lshr i32 %163, 7
  %174 = trunc nuw nsw i32 %33 to i16
  %175 = icmp eq ptr %1, @_omp_reduction_shuffle_and_reduce_func.17
  br label %176

176:                                              ; preds = %182, %172
  %177 = phi i32 [ %173, %172 ], [ %185, %182 ]
  %178 = phi i32 [ %164, %172 ], [ %184, %182 ]
  %179 = trunc i32 %177 to i16
  br i1 %175, label %180, label %181

180:                                              ; preds = %176
  tail call void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef %0, i16 noundef signext %174, i16 noundef signext %179, i16 noundef signext 1) #31
  br label %182

181:                                              ; preds = %176
  tail call void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %174, i16 noundef signext %179, i16 noundef signext 1) #31
  br label %182

182:                                              ; preds = %181, %180
  %183 = add nuw nsw i32 %178, 1
  %184 = lshr i32 %183, 1
  %185 = lshr i32 %183, 2
  %186 = icmp samesign ult i32 %178, 3
  br i1 %186, label %.loopexit, label %176, !llvm.loop !57

.loopexit:                                        ; preds = %182, %168
  %187 = icmp eq i32 %33, 0
  br label %190

188:                                              ; preds = %.loopexit1
  %189 = icmp eq i32 %33, 0
  br label %190

190:                                              ; preds = %188, %.loopexit, %159, %63
  %191 = phi i1 [ true, %63 ], [ %187, %.loopexit ], [ %189, %188 ], [ %160, %159 ]
  %192 = zext i1 %191 to i32
  ret i32 %192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: convergent mustprogress nofree norecurse nounwind
define internal fastcc range(i32 0, 2) i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7) unnamed_addr #15 {
  %9 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #29, !range !51
  %10 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %.pre = load i32, ptr addrspace(3) %12, align 16, !alias.scope !26, !noalias !25
  br i1 %11, label %13, label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %15 = addrspacecast ptr addrspace(3) %14 to ptr
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %18 = addrspacecast ptr addrspace(3) %17 to ptr
  %19 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %20 = zext nneg i32 %9 to i64
  %21 = getelementptr inbounds nuw ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !54

24:                                               ; preds = %16
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 4
  br label %26

26:                                               ; preds = %24, %16, %13
  %27 = phi ptr [ %25, %24 ], [ %15, %13 ], [ %18, %16 ]
  %28 = load i32, ptr %27, align 4, !tbaa !21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %184

30:                                               ; preds = %26
  %31 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %32 = getelementptr inbounds nuw i8, ptr addrspace(4) %31, i64 12
  %33 = load i16, ptr addrspace(4) %32, align 4, !range !47, !invariant.load !25, !noundef !25
  %34 = zext nneg i16 %33 to i32
  %35 = add nsw i32 %34, -1
  %36 = and i32 %35, -64
  %37 = icmp eq i32 %9, %36
  br i1 %37, label %38, label %184

38:                                               ; preds = %30, %8
  %39 = phi i32 [ %9, %8 ], [ 0, %30 ]
  %40 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %41 = addrspacecast ptr addrspace(3) %40 to ptr
  %42 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 4), align 8, !tbaa !41, !alias.scope !43, !noalias !25
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %.not1 = icmp eq i32 %.pre, 0
  br i1 %.not1, label %54, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %9 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 4
  br label %54

54:                                               ; preds = %52, %44, %38
  %55 = phi ptr [ %53, %52 ], [ %41, %38 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp sgt i32 %56, -1
  tail call void @llvm.assume(i1 %57)
  %58 = icmp eq i32 %56, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %61 = load i32, ptr addrspace(3) %60, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %65 = getelementptr inbounds nuw i8, ptr addrspace(4) %64, i64 12
  %66 = load i16, ptr addrspace(4) %65, align 4, !range !47, !invariant.load !25, !noundef !25
  %67 = zext nneg i16 %66 to i32
  %.neg = select i1 %11, i32 -64, i32 0
  %68 = add nsw i32 %.neg, %67
  br label %69

69:                                               ; preds = %63, %59, %54
  %70 = phi i32 [ 1, %54 ], [ %68, %63 ], [ %61, %59 ]
  %71 = tail call noundef i32 @llvm.amdgcn.workgroup.id.x()
  %72 = tail call align 4 dereferenceable(64) ptr addrspace(4) @llvm.amdgcn.dispatch.ptr()
  %73 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %74 = getelementptr inbounds nuw i8, ptr addrspace(4) %72, i64 12
  %75 = load i32, ptr addrspace(4) %74, align 4, !range !60, !invariant.load !25
  %76 = getelementptr inbounds nuw i8, ptr addrspace(4) %73, i64 12
  %77 = load i16, ptr addrspace(4) %76, align 4, !range !47, !invariant.load !25, !noundef !25
  %78 = zext nneg i16 %77 to i32
  %79 = udiv i32 %75, %78
  %80 = icmp ult i32 %71, %79
  tail call void @llvm.assume(i1 %80)
  %81 = icmp eq i32 %39, 0
  br i1 %81, label %.preheader3, label %99

.preheader3:                                      ; preds = %.preheader3, %69
  %82 = load atomic i32, ptr %43 syncscope("agent") acquire, align 4
  store i32 %82, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 9), align 4, !tbaa !21, !alias.scope !61, !noalias !25
  %83 = add i32 %82, 1024
  %84 = icmp ult i32 %71, %83
  br i1 %84, label %85, label %.preheader3, !llvm.loop !63

85:                                               ; preds = %.preheader3
  %86 = and i32 %71, 1023
  %87 = icmp ult i32 %71, 1024
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = icmp eq ptr %4, @_omp_reduction_list_to_global_copy_func.13
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  tail call void @_omp_reduction_list_to_global_copy_func.13(ptr noundef %0, i32 noundef %86, ptr noundef %1) #32
  br label %96

91:                                               ; preds = %88
  tail call void @_omp_reduction_list_to_global_copy_func(ptr noundef %0, i32 noundef %86, ptr noundef %1) #32
  br label %96

92:                                               ; preds = %85
  %93 = icmp eq ptr %5, @_omp_reduction_list_to_global_reduce_func.14
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @_omp_reduction_list_to_global_reduce_func.14(ptr noundef %0, i32 noundef %86, ptr noundef %1) #32
  br label %96

95:                                               ; preds = %92
  tail call void @_omp_reduction_list_to_global_reduce_func(ptr noundef %0, i32 noundef %86, ptr noundef %1) #32
  br label %96

96:                                               ; preds = %95, %94, %91, %90
  fence syncscope("agent") release
  %97 = atomicrmw uinc_wrap ptr %42, i32 1023 syncscope("agent") seq_cst, align 4, !amdgpu.no.fine.grained.memory !25
  store i32 %97, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 8), align 16, !tbaa !21, !alias.scope !64, !noalias !25
  %98 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  br label %99

99:                                               ; preds = %96, %69
  %100 = phi i32 [ %98, %96 ], [ %10, %69 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %103

103:                                              ; preds = %102, %99
  %104 = tail call noundef i32 @llvm.umin.i32(i32 %79, i32 1024)
  %105 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 8), align 16, !tbaa !21, !alias.scope !64, !noalias !25
  %106 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 9), align 4, !tbaa !21, !alias.scope !61, !noalias !25
  %107 = xor i32 %106, -1
  %108 = add i32 %79, %107
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %179

110:                                              ; preds = %103
  fence syncscope("agent") acquire
  %111 = icmp ugt i32 %79, %39
  br i1 %111, label %112, label %184

112:                                              ; preds = %110
  %113 = tail call noundef i32 @llvm.umin.i32(i32 %70, i32 %104), !range !66
  %114 = icmp samesign ult i32 %113, 64
  %115 = and i32 %113, 1984
  %116 = select i1 %114, i32 1, i32 %115
  %117 = icmp samesign ult i32 %39, %116
  br i1 %117, label %118, label %184

118:                                              ; preds = %112
  %119 = icmp eq ptr %6, @_omp_reduction_global_to_list_copy_func.15
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  tail call void @_omp_reduction_global_to_list_copy_func.15(ptr noundef %0, i32 noundef %39, ptr noundef %1) #32
  br label %122

121:                                              ; preds = %118
  tail call void @_omp_reduction_global_to_list_copy_func(ptr noundef %0, i32 noundef %39, ptr noundef %1) #32
  br label %122

122:                                              ; preds = %121, %120
  %123 = add nuw nsw i32 %116, %39
  %124 = icmp samesign ult i32 %123, %104
  br i1 %124, label %.preheader, label %.loopexit2

.preheader:                                       ; preds = %122
  %125 = icmp eq ptr %7, @_omp_reduction_global_to_list_reduce_func.16
  br label %127

.loopexit2:                                       ; preds = %131, %122
  %126 = icmp samesign ugt i32 %116, 1
  br i1 %126, label %134, label %.loopexit

127:                                              ; preds = %131, %.preheader
  %128 = phi i32 [ %132, %131 ], [ %123, %.preheader ]
  br i1 %125, label %129, label %130

129:                                              ; preds = %127
  tail call void @_omp_reduction_global_to_list_reduce_func.16(ptr noundef %0, i32 noundef %128, ptr noundef %1) #32
  br label %131

130:                                              ; preds = %127
  tail call void @_omp_reduction_global_to_list_reduce_func(ptr noundef %0, i32 noundef %128, ptr noundef %1) #32
  br label %131

131:                                              ; preds = %130, %129
  %132 = add nuw nsw i32 %128, %116
  %133 = icmp samesign ult i32 %132, %104
  br i1 %133, label %127, label %.loopexit2, !llvm.loop !67

134:                                              ; preds = %.loopexit2
  %135 = icmp eq ptr %2, @_omp_reduction_shuffle_and_reduce_func.1.11
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 32, i16 noundef signext 0) #31
  br label %138

137:                                              ; preds = %134
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 32, i16 noundef signext 0) #31
  br label %138

138:                                              ; preds = %137, %136
  br i1 %135, label %140, label %139

139:                                              ; preds = %138
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0) #31
  br label %141

140:                                              ; preds = %138
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 16, i16 noundef signext 0) #31
  br label %141

141:                                              ; preds = %140, %139
  br i1 %135, label %143, label %142

142:                                              ; preds = %141
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #31
  br label %144

143:                                              ; preds = %141
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #31
  br label %144

144:                                              ; preds = %143, %142
  br i1 %135, label %146, label %145

145:                                              ; preds = %144
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #31
  br label %147

146:                                              ; preds = %144
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #31
  br label %147

147:                                              ; preds = %146, %145
  br i1 %135, label %149, label %148

148:                                              ; preds = %147
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #31
  br label %150

149:                                              ; preds = %147
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #31
  br label %150

150:                                              ; preds = %149, %148
  br i1 %135, label %152, label %151

151:                                              ; preds = %150
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0) #31
  br label %153

152:                                              ; preds = %150
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0) #31
  br label %153

153:                                              ; preds = %152, %151
  %154 = tail call noundef i32 @llvm.umin.i32(i32 %104, i32 %116), !range !68
  %155 = icmp samesign ugt i32 %154, 64
  br i1 %155, label %156, label %.loopexit

156:                                              ; preds = %153
  %157 = add nuw nsw i32 %154, 63
  %158 = lshr i32 %157, 6
  %159 = icmp eq ptr %3, @_omp_reduction_inter_warp_copy_func.2.12
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  tail call void @_omp_reduction_inter_warp_copy_func.2.12(ptr noundef %1, i32 noundef %158) #31
  br label %162

161:                                              ; preds = %156
  tail call void @_omp_reduction_inter_warp_copy_func.2(ptr noundef %1, i32 noundef %158) #31
  br label %162

162:                                              ; preds = %161, %160
  %163 = icmp samesign ugt i32 %39, 63
  br i1 %163, label %.loopexit, label %164

164:                                              ; preds = %162
  %165 = lshr i32 %157, 7
  %166 = trunc nuw nsw i32 %39 to i16
  br label %167

167:                                              ; preds = %173, %164
  %168 = phi i32 [ %165, %164 ], [ %176, %173 ]
  %169 = phi i32 [ %158, %164 ], [ %175, %173 ]
  %170 = trunc nuw nsw i32 %168 to i16
  br i1 %135, label %171, label %172

171:                                              ; preds = %167
  tail call void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef %1, i16 noundef signext %166, i16 noundef signext %170, i16 noundef signext 1) #31
  br label %173

172:                                              ; preds = %167
  tail call void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef %1, i16 noundef signext %166, i16 noundef signext %170, i16 noundef signext 1) #31
  br label %173

173:                                              ; preds = %172, %171
  %174 = add nuw nsw i32 %169, 1
  %175 = lshr i32 %174, 1
  %176 = lshr i32 %174, 2
  %177 = icmp samesign ult i32 %169, 3
  br i1 %177, label %.loopexit, label %167, !llvm.loop !57

.loopexit:                                        ; preds = %173, %162, %153, %.loopexit2
  br i1 %81, label %178, label %184

178:                                              ; preds = %.loopexit
  store <2 x i32> zeroinitializer, ptr %42, align 8, !tbaa !21
  br label %184

179:                                              ; preds = %103
  %180 = icmp eq i32 %105, 1023
  %181 = and i1 %81, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = atomicrmw add ptr %43, i32 1024 syncscope("agent") seq_cst, align 4, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  br label %184

184:                                              ; preds = %182, %179, %178, %.loopexit, %112, %110, %30, %26
  %185 = phi i32 [ 0, %30 ], [ 1, %178 ], [ 0, %110 ], [ 0, %112 ], [ 0, %.loopexit ], [ 0, %182 ], [ 0, %179 ], [ 0, %26 ]
  ret i32 %185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define internal fastcc ptr @__kmpc_reduction_get_fixed_buffer() unnamed_addr #16 {
  %1 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 4), align 8, !tbaa !41, !alias.scope !43, !noalias !25
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write)
define internal fastcc void @__kmpc_for_static_init_4(ptr noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #17 {
  %5 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %6 = addrspacecast ptr addrspace(3) %5 to ptr
  %7 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %8 = load i32, ptr addrspace(3) %7, align 16, !alias.scope !26, !noalias !25
  %.not = icmp eq i32 %8, 0
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #29
  br i1 %.not, label %._crit_edge, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %11 = addrspacecast ptr addrspace(3) %10 to ptr
  %12 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %13 = zext nneg i32 %.pre to i64
  %14 = getelementptr inbounds nuw ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %._crit_edge, label %17, !prof !54

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %17, %9, %4
  %19 = phi ptr [ %18, %17 ], [ %11, %9 ], [ %6, %4 ]
  %20 = load i32, ptr %19, align 4, !tbaa !21
  %21 = icmp sgt i32 %20, -1
  tail call void @llvm.assume(i1 %21)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %._crit_edge
  %24 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %25 = addrspacecast ptr addrspace(3) %24 to ptr
  br i1 %.not, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %28 = addrspacecast ptr addrspace(3) %27 to ptr
  %29 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %30 = zext nneg i32 %.pre to i64
  %31 = getelementptr inbounds nuw ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !54

34:                                               ; preds = %26
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 4
  br label %36

36:                                               ; preds = %34, %26, %23
  %37 = phi ptr [ %35, %34 ], [ %25, %23 ], [ %28, %26 ]
  %38 = load i32, ptr %37, align 4, !tbaa !21
  %39 = icmp sgt i32 %38, -1
  tail call void @llvm.assume(i1 %39)
  %40 = icmp samesign ugt i32 %20, %38
  br i1 %40, label %59, label %41, !prof !55

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %43 = addrspacecast ptr addrspace(3) %42 to ptr
  br i1 %.not, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %.pre to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 8
  br label %54

54:                                               ; preds = %52, %44, %41
  %55 = phi ptr [ %53, %52 ], [ %43, %41 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp eq i32 %20, %56
  %58 = select i1 %57, i32 %.pre, i32 0, !prof !54
  br label %59

59:                                               ; preds = %54, %36, %._crit_edge
  %60 = phi i32 [ 0, %._crit_edge ], [ %58, %54 ], [ -1, %36 ]
  %61 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %62 = addrspacecast ptr addrspace(3) %61 to ptr
  br i1 %.not, label %73, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %65 = addrspacecast ptr addrspace(3) %64 to ptr
  %66 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %67 = zext nneg i32 %.pre to i64
  %68 = getelementptr inbounds nuw ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71, !prof !54

71:                                               ; preds = %63
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 4
  br label %73

73:                                               ; preds = %71, %63, %59
  %74 = phi ptr [ %72, %71 ], [ %62, %59 ], [ %65, %63 ]
  %75 = load i32, ptr %74, align 4, !tbaa !21
  %76 = icmp sgt i32 %75, -1
  tail call void @llvm.assume(i1 %76)
  %77 = icmp eq i32 %75, 1
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %80 = load i32, ptr addrspace(3) %79, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %84 = icmp eq i32 %83, 0
  %85 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #29
  %86 = getelementptr inbounds nuw i8, ptr addrspace(4) %85, i64 12
  %87 = load i16, ptr addrspace(4) %86, align 4, !range !47, !invariant.load !25, !noundef !25
  %88 = zext nneg i16 %87 to i32
  %.neg = select i1 %84, i32 -64, i32 0
  %89 = add nsw i32 %.neg, %88
  br label %90

90:                                               ; preds = %82, %78, %73
  %91 = phi i32 [ 1, %73 ], [ %89, %82 ], [ %80, %78 ]
  %92 = load i32, ptr %1, align 4, !tbaa !21
  %93 = load i32, ptr %2, align 4, !tbaa !21
  %94 = add nsw i32 %92, %60
  %95 = sub i32 %93, %94
  %96 = srem i32 %95, %91
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, ptr %0, align 4, !tbaa !21
  store i32 %94, ptr %1, align 4, !tbaa !21
  store i32 %94, ptr %2, align 4, !tbaa !21
  store i32 %91, ptr %3, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write)
define internal fastcc void @__kmpc_distribute_static_init_4(ptr noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3, i32 noundef range(i32 1, 1025) %4) unnamed_addr #18 {
  %6 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %7 = addrspacecast ptr addrspace(3) %6 to ptr
  %8 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %9 = load i32, ptr addrspace(3) %8, align 16, !alias.scope !26, !noalias !25
  %.not = icmp eq i32 %9, 0
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x() #29
  br i1 %.not, label %._crit_edge, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %12 = addrspacecast ptr addrspace(3) %11 to ptr
  %13 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %14 = zext nneg i32 %.pre to i64
  %15 = getelementptr inbounds nuw ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %._crit_edge, label %18, !prof !54

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %18, %10, %5
  %20 = phi ptr [ %19, %18 ], [ %12, %10 ], [ %7, %5 ]
  %21 = load i32, ptr %20, align 4, !tbaa !21
  %22 = icmp sgt i32 %21, -1
  tail call void @llvm.assume(i1 %22)
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %._crit_edge
  %25 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %26 = addrspacecast ptr addrspace(3) %25 to ptr
  br i1 %.not, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %29 = addrspacecast ptr addrspace(3) %28 to ptr
  %30 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %31 = zext nneg i32 %.pre to i64
  %32 = getelementptr inbounds nuw ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !54

35:                                               ; preds = %27
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 4
  br label %37

37:                                               ; preds = %35, %27, %24
  %38 = phi ptr [ %36, %35 ], [ %26, %24 ], [ %29, %27 ]
  %39 = load i32, ptr %38, align 4, !tbaa !21
  %40 = icmp sgt i32 %39, -1
  tail call void @llvm.assume(i1 %40)
  %41 = icmp samesign ugt i32 %21, %39
  br i1 %41, label %45, label %42, !prof !55

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %44 = addrspacecast ptr addrspace(3) %43 to ptr
  br i1 %.not, label %.critedge, label %.critedge3

45:                                               ; preds = %37, %._crit_edge
  %46 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %47 = addrspacecast ptr addrspace(3) %46 to ptr
  br i1 %.not, label %.critedge, label %.critedge3

.critedge3:                                       ; preds = %45, %42
  %48 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %49 = addrspacecast ptr addrspace(3) %48 to ptr
  %50 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %51 = zext nneg i32 %.pre to i64
  %52 = getelementptr inbounds nuw ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %.critedge, label %55, !prof !54

55:                                               ; preds = %.critedge3
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 4
  br label %.critedge

.critedge:                                        ; preds = %55, %.critedge3, %45, %42
  %57 = phi ptr [ %56, %55 ], [ %47, %45 ], [ %49, %.critedge3 ], [ %44, %42 ]
  %58 = load i32, ptr %57, align 4, !tbaa !21
  %59 = icmp sgt i32 %58, -1
  tail call void @llvm.assume(i1 %59)
  %60 = load i32, ptr %1, align 4, !tbaa !21
  %61 = load i32, ptr %2, align 4, !tbaa !21
  %62 = tail call align 4 dereferenceable(64) ptr addrspace(4) @llvm.amdgcn.dispatch.ptr() #29
  %63 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #29
  %64 = tail call noundef i32 @llvm.amdgcn.workgroup.id.x() #29
  %65 = getelementptr inbounds nuw i8, ptr addrspace(4) %62, i64 12
  %66 = load i32, ptr addrspace(4) %65, align 4, !range !60, !invariant.load !25
  %67 = getelementptr inbounds nuw i8, ptr addrspace(4) %63, i64 12
  %68 = load i16, ptr addrspace(4) %67, align 4, !range !47, !invariant.load !25, !noundef !25
  %69 = zext nneg i16 %68 to i32
  %70 = udiv i32 %66, %69
  %71 = icmp ult i32 %64, %70
  tail call void @llvm.assume(i1 %71)
  %72 = srem i32 %61, %4
  %73 = mul nsw i32 %64, %4
  %74 = add nsw i32 %73, %60
  %75 = add i32 %72, %74
  %76 = sub i32 %61, %75
  %77 = mul nsw i32 %70, %4
  %78 = srem i32 %76, %77
  %79 = icmp eq i32 %78, 0
  %80 = add nsw i32 %4, -1
  %81 = add i32 %80, %74
  %82 = zext i1 %79 to i32
  store i32 %82, ptr %0, align 4, !tbaa !21
  store i32 %74, ptr %1, align 4, !tbaa !21
  store i32 %81, ptr %2, align 4, !tbaa !21
  store i32 %77, ptr %3, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc void @__kmpc_for_static_fini() unnamed_addr #19 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc void @__kmpc_distribute_static_fini() unnamed_addr #19 {
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr protected amdgpu_kernel void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6(ptr noalias noundef %dyn_ptr, i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) local_unnamed_addr #20 {
entry:
  call void @llvm.donothing() [ "ExplicitUse"(ptr addrspace(3) @llvm.amdgcn.module.lds) ], !alias.scope !71, !noalias !73
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
  %1 = call fastcc i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_kernel_environment to ptr), ptr %dyn_ptr)
  %exec_user_code = icmp eq i32 %1, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %2 = call fastcc i32 @__kmpc_global_thread_num()
  %3 = load i32, ptr %n.addr.ascast, align 4
  store i32 %3, ptr %n.casted.ascast, align 4
  %4 = load i64, ptr %n.casted.ascast, align 8
  %5 = load ptr, ptr %A.addr.ascast, align 8
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %2, ptr %.threadid_temp..ascast, align 4
  call fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %4, ptr %0, ptr %5) #32
  call fastcc void @__kmpc_target_deinit()
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) unnamed_addr #21 {
entry:
  %0 = alloca i32, align 4, addrspace(5)
  %1 = alloca i32, align 4, addrspace(5)
  %2 = alloca i32, align 4, addrspace(5)
  %3 = alloca i32, align 4, addrspace(5)
  %4 = alloca i32, align 4, addrspace(5)
  %5 = alloca i32, align 4, addrspace(5)
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
  %6 = load ptr, ptr %val.addr.ascast, align 8
  store float 0.000000e+00, ptr %val1.ascast, align 4
  %7 = load i32, ptr %n.addr.ascast, align 4
  store i32 %7, ptr %.capture_expr..ascast, align 4
  %8 = load i32, ptr %.capture_expr..ascast, align 4
  %sub = sub nuw nsw i32 %8, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2.ascast, align 4
  store i32 0, ptr %i.ascast, align 4
  %9 = load i32, ptr %.capture_expr..ascast, align 4
  %cmp = icmp slt i32 0, %9
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.comb.lb.ascast, align 4
  %10 = load i32, ptr %.capture_expr.2.ascast, align 4
  store i32 %10, ptr %.omp.comb.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  %nvptx_num_threads = call fastcc i32 @__kmpc_get_hardware_num_threads_in_block()
  %11 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %12 = load i32, ptr %11, align 4
  call fastcc void @__kmpc_distribute_static_init_4(ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 %nvptx_num_threads)
  %13 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %14 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp5 = icmp sgt i32 %13, %14
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4
  %17 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %17, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end13, %cond.end
  %18 = load i32, ptr %.omp.iv.ascast, align 4
  %19 = load i32, ptr %.capture_expr.2.ascast, align 4
  %add = add nsw i32 %19, 1
  %cmp6 = icmp slt i32 %18, %add
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %n.addr.ascast, align 4
  store i32 %24, ptr %n.casted.ascast, align 4
  %25 = load i64, ptr %n.casted.ascast, align 8
  %26 = load ptr, ptr %A.addr.ascast, align 8
  %27 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %28 = inttoptr i64 %21 to ptr
  store ptr %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %30 = inttoptr i64 %23 to ptr
  store ptr %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %32 = inttoptr i64 %25 to ptr
  store ptr %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %val1.ascast, ptr %33, align 8
  %34 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %26, ptr %34, align 8
  %35 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %36 = load i32, ptr %35, align 4
  %37 = call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %38 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !75
  %.not.i = icmp eq i8 %40, 0
  %41 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %42 = load i32, ptr addrspace(3) %41, align 16, !alias.scope !26, !noalias !25
  br i1 %.not.i, label %43, label %60

43:                                               ; preds = %omp.inner.for.body
  %44 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %45 = addrspacecast ptr addrspace(3) %44 to ptr
  %.not1.i = icmp eq i32 %42, 0
  br i1 %.not1.i, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %48 = addrspacecast ptr addrspace(3) %47 to ptr
  %49 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %50 = zext nneg i32 %37 to i64
  %51 = getelementptr inbounds nuw ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %56

56:                                               ; preds = %54, %46, %43
  %57 = phi ptr [ %55, %54 ], [ %45, %43 ], [ %48, %46 ]
  %58 = load i32, ptr %57, align 4, !tbaa !21
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %56, %omp.inner.for.body
  %61 = phi i1 [ true, %omp.inner.for.body ], [ %59, %56 ]
  call void @llvm.assume(i1 %61)
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %72, !prof !79

63:                                               ; preds = %60
  %64 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !75
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %69 = load i32, ptr addrspace(3) %68, align 4, !alias.scope !26, !noalias !25
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %67, i1 true, i1 %70
  br i1 %71, label %172, label %72, !prof !80

72:                                               ; preds = %63, %60
  %73 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %74 = add i64 %73, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %75 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %76 = add i64 %75, 48
  %77 = icmp ugt i64 %76, %74
  br i1 %77, label %78, label %malloc.exit.i.i

78:                                               ; preds = %72
  call void @llvm.trap() #33
  unreachable

malloc.exit.i.i:                                  ; preds = %72
  %79 = inttoptr i64 %75 to ptr
  %80 = load atomic i64, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5) syncscope("agent") seq_cst, align 16, !alias.scope !35, !noalias !25
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i

82:                                               ; preds = %malloc.exit.i.i
  %83 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %84 = getelementptr inbounds nuw i8, ptr addrspace(4) %83, i64 12
  %85 = load i16, ptr addrspace(4) %84, align 4, !range !47, !invariant.load !25, !noundef !25
  %86 = shl nuw nsw i16 %85, 3
  %87 = zext nneg i16 %86 to i64
  %88 = add nuw nsw i64 %87, 15
  %89 = and i64 %88, 32752
  %90 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %91 = add i64 %90, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %92 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 %89 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %93 = add i64 %92, %89
  %94 = icmp ugt i64 %93, %91
  br i1 %94, label %95, label %malloc.exit1.i.i

95:                                               ; preds = %82
  call void @llvm.trap() #33
  unreachable

malloc.exit1.i.i:                                 ; preds = %82
  %96 = inttoptr i64 %92 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 1 dereferenceable(1) %96, i8 0, i64 %87, i1 false) #30
  %97 = cmpxchg ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), i64 0, i64 %92 syncscope("agent") seq_cst seq_cst, align 16, !alias.scope !35, !noalias !25
  %98 = extractvalue { i64, i1 } %97, 1
  br i1 %98, label %100, label %99

99:                                               ; preds = %malloc.exit1.i.i
  br label %100

100:                                              ; preds = %99, %malloc.exit1.i.i
  %101 = load atomic i64, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5) syncscope("agent") seq_cst, align 16, !range !84, !alias.scope !35, !noalias !25
  br label %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i

_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i: ; preds = %100, %malloc.exit.i.i
  %102 = phi i64 [ %101, %100 ], [ %80, %malloc.exit.i.i ]
  %103 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %104 = addrspacecast ptr addrspace(3) %103 to ptr
  %105 = call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %106 = inttoptr i64 %102 to ptr
  %107 = zext nneg i32 %105 to i64
  %108 = getelementptr inbounds nuw ptr, ptr %106, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = icmp eq ptr %109, null
  %111 = addrspacecast ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2) to ptr
  %112 = select i1 %110, ptr %111, ptr %109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull align 8 dereferenceable(28) %112, i64 28, i1 false), !tbaa.struct !85
  %113 = getelementptr inbounds nuw i8, ptr %79, i64 32
  store ptr %109, ptr %113, align 8, !tbaa !86
  %114 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 1, ptr addrspace(3) %114, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  store ptr %79, ptr %108, align 8, !tbaa !52
  %115 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %116 = load i32, ptr addrspace(3) %115, align 16, !alias.scope !26, !noalias !25
  %.not2.i = icmp eq i32 %116, 0
  br i1 %.not2.i, label %140, label %117, !prof !80

117:                                              ; preds = %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i
  %118 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %119 = zext nneg i32 %37 to i64
  %120 = getelementptr inbounds nuw ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %137, !prof !55

123:                                              ; preds = %117
  %124 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %125 = add i64 %124, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %126 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %127 = add i64 %126, 48
  %128 = icmp ugt i64 %127, %125
  br i1 %128, label %129, label %malloc.exit.i

129:                                              ; preds = %123
  call void @llvm.trap() #33
  unreachable

malloc.exit.i:                                    ; preds = %123
  %130 = inttoptr i64 %126 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = getelementptr inbounds nuw ptr, ptr %131, i64 %119
  store ptr %130, ptr %132, align 8, !tbaa !52
  %133 = icmp ne ptr %130, null
  call void @llvm.assume(i1 %133)
  %134 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 1, ptr addrspace(3) %134, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  call void @llvm.memcpy.p0.p3.i64(ptr noundef nonnull align 8 dereferenceable(28) %130, ptr addrspace(3) noundef align 16 dereferenceable(28) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i64 28, i1 false), !tbaa.struct !85, !alias.scope !26, !noalias !25
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 32
  store ptr null, ptr %135, align 8, !tbaa !86
  %136 = load ptr, ptr %132, align 8, !tbaa !52
  br label %137

137:                                              ; preds = %malloc.exit.i, %117
  %138 = phi ptr [ %136, %malloc.exit.i ], [ %121, %117 ]
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 4
  br label %140

140:                                              ; preds = %137, %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i
  %141 = phi ptr [ %139, %137 ], [ %104, %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i ]
  %142 = load i32, ptr %141, align 4, !tbaa !21
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !21
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %0)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %1)
  %144 = addrspacecast ptr addrspace(5) %0 to ptr
  %145 = addrspacecast ptr addrspace(5) %1 to ptr
  store i32 %37, ptr addrspace(5) %0, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %1, align 4, !tbaa !21
  %146 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %147 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %148 = load ptr, ptr %147, align 8, !tbaa !88
  %149 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !88
  %151 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %154 = load ptr, ptr %153, align 8, !tbaa !88
  %155 = ptrtoint ptr %146 to i64
  %156 = ptrtoint ptr %148 to i64
  %157 = ptrtoint ptr %150 to i64
  call fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined(ptr noundef %144, ptr noundef %145, i64 noundef %155, i64 noundef %156, i64 noundef %157, ptr noundef %152, ptr noundef %154) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %0)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %1)
  %158 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %159 = load i32, ptr addrspace(3) %158, align 16, !alias.scope !26, !noalias !25
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %__kmpc_parallel_51.exit, label %161

161:                                              ; preds = %140
  %162 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %163 = zext nneg i32 %37 to i64
  %164 = getelementptr inbounds nuw ptr, ptr %162, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !52
  %166 = icmp eq ptr %165, null
  br i1 %166, label %__kmpc_parallel_51.exit, label %167, !prof !54

167:                                              ; preds = %161
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %169 = load ptr, ptr %168, align 8, !tbaa !86
  %170 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %171 = getelementptr inbounds nuw ptr, ptr %170, i64 %163
  store ptr %169, ptr %171, align 8, !tbaa !52
  br label %__kmpc_parallel_51.exit

172:                                              ; preds = %63
  %173 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %228, label %175

175:                                              ; preds = %172
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  %176 = icmp eq i32 %37, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %175
  %178 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %179 = load i32, ptr addrspace(3) %178, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %180 = icmp eq i32 %179, 1
  call void @llvm.assume(i1 %180)
  %181 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 0, ptr addrspace(3) %181, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %182 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %183 = load i32, ptr addrspace(3) %182, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %184 = icmp eq i32 %183, 0
  call void @llvm.assume(i1 %184)
  %185 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 1, ptr addrspace(3) %185, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %186 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %187 = load i32, ptr addrspace(3) %186, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %188 = icmp eq i32 %187, 0
  call void @llvm.assume(i1 %188)
  %189 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %189, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %190

190:                                              ; preds = %177, %175
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %191 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %192 = load i32, ptr addrspace(3) %191, align 4, !alias.scope !26, !noalias !25
  %193 = icmp eq i32 %192, 0
  call void @llvm.assume(i1 %193)
  %194 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %195 = load i32, ptr addrspace(3) %194, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %196 = icmp eq i32 %195, 1
  call void @llvm.assume(i1 %196)
  %197 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %198 = load i32, ptr addrspace(3) %197, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %199 = icmp eq i32 %198, 1
  call void @llvm.assume(i1 %199)
  call void @llvm.amdgcn.s.barrier()
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %4)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %5)
  %200 = addrspacecast ptr addrspace(5) %4 to ptr
  %201 = addrspacecast ptr addrspace(5) %5 to ptr
  store i32 %37, ptr addrspace(5) %4, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %5, align 4, !tbaa !21
  %202 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %203 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %204 = load ptr, ptr %203, align 8, !tbaa !88
  %205 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %206 = load ptr, ptr %205, align 8, !tbaa !88
  %207 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %208 = load ptr, ptr %207, align 8, !tbaa !88
  %209 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %210 = load ptr, ptr %209, align 8, !tbaa !88
  %211 = ptrtoint ptr %202 to i64
  %212 = ptrtoint ptr %204 to i64
  %213 = ptrtoint ptr %206 to i64
  call fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined(ptr noundef %200, ptr noundef %201, i64 noundef %211, i64 noundef %212, i64 noundef %213, ptr noundef %208, ptr noundef %210) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %4)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %5)
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br i1 %176, label %214, label %218

214:                                              ; preds = %190
  %215 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %215, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %216 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 0, ptr addrspace(3) %216, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %217 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 1, ptr addrspace(3) %217, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %218

218:                                              ; preds = %214, %190
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %219 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %220 = load i32, ptr addrspace(3) %219, align 4, !alias.scope !26, !noalias !25
  %221 = icmp eq i32 %220, 1
  call void @llvm.assume(i1 %221)
  %222 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %223 = load i32, ptr addrspace(3) %222, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %224 = icmp eq i32 %223, 0
  call void @llvm.assume(i1 %224)
  %225 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %226 = load i32, ptr addrspace(3) %225, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %227 = icmp eq i32 %226, 0
  call void @llvm.assume(i1 %227)
  call void @llvm.amdgcn.s.barrier()
  br label %__kmpc_parallel_51.exit

228:                                              ; preds = %172
  %229 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %230 = getelementptr inbounds nuw i8, ptr addrspace(4) %229, i64 12
  %231 = load i16, ptr addrspace(4) %230, align 4, !range !47, !invariant.load !25, !noundef !25
  %232 = zext nneg i16 %231 to i32
  %233 = add nsw i32 %232, -64
  %234 = icmp ult i32 %233, 64
  %235 = and i32 %233, -64
  %236 = select i1 %234, i32 1, i32 %235
  %237 = icmp eq i32 %236, %233
  %238 = select i1 %237, i32 0, i32 %236
  %239 = icmp ugt i32 %236, 1
  br i1 %239, label %260, label %240

240:                                              ; preds = %228
  %241 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %242 = load i32, ptr addrspace(3) %241, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %243 = icmp eq i32 %242, 0
  call void @llvm.assume(i1 %243)
  %244 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %244, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %2)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %3)
  %245 = addrspacecast ptr addrspace(5) %2 to ptr
  %246 = addrspacecast ptr addrspace(5) %3 to ptr
  store i32 %37, ptr addrspace(5) %2, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %3, align 4, !tbaa !21
  %247 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %248 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %249 = load ptr, ptr %248, align 8, !tbaa !88
  %250 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %251 = load ptr, ptr %250, align 8, !tbaa !88
  %252 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %253 = load ptr, ptr %252, align 8, !tbaa !88
  %254 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %255 = load ptr, ptr %254, align 8, !tbaa !88
  %256 = ptrtoint ptr %247 to i64
  %257 = ptrtoint ptr %249 to i64
  %258 = ptrtoint ptr %251 to i64
  call fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined(ptr noundef %245, ptr noundef %246, i64 noundef %256, i64 noundef %257, i64 noundef %258, ptr noundef %253, ptr noundef %255) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %2)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %3)
  %259 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %259, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %__kmpc_parallel_51.exit

260:                                              ; preds = %228
  %261 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %262 = load ptr, ptr %261, align 8, !tbaa !88
  %263 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %265 = addrspacecast ptr %264 to ptr addrspace(3)
  store ptr %262, ptr addrspace(3) %265, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %266 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %267 = load ptr, ptr %266, align 8, !tbaa !88
  %268 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %270 = addrspacecast ptr %269 to ptr addrspace(3)
  store ptr %267, ptr addrspace(3) %270, align 8, !tbaa !88, !alias.scope !71, !noalias !25
  %271 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %272 = load ptr, ptr %271, align 8, !tbaa !88
  %273 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 16
  %275 = addrspacecast ptr %274 to ptr addrspace(3)
  store ptr %272, ptr addrspace(3) %275, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %276 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %277 = load ptr, ptr %276, align 8, !tbaa !88
  %278 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %280 = addrspacecast ptr %279 to ptr addrspace(3)
  store ptr %277, ptr addrspace(3) %280, align 8, !tbaa !88, !alias.scope !71, !noalias !25
  %281 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  store ptr %281, ptr addrspace(3) @llvm.amdgcn.module.lds, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %282 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %283 = load i32, ptr addrspace(3) %282, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %284 = icmp eq i32 %283, 1
  call void @llvm.assume(i1 %284)
  %285 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 %238, ptr addrspace(3) %285, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %286 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %287 = load i32, ptr addrspace(3) %286, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %288 = icmp eq i32 %287, 0
  call void @llvm.assume(i1 %288)
  %289 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 1, ptr addrspace(3) %289, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %290 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %291 = load i32, ptr addrspace(3) %290, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %292 = icmp eq i32 %291, 0
  call void @llvm.assume(i1 %292)
  %293 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %293, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  %294 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %294, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %295 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 0, ptr addrspace(3) %295, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %296 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 1, ptr addrspace(3) %296, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %__kmpc_parallel_51.exit

__kmpc_parallel_51.exit:                          ; preds = %260, %240, %218, %167, %161, %140
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %__kmpc_parallel_51.exit
  %297 = load i32, ptr %.omp.iv.ascast, align 4
  %298 = load i32, ptr %.omp.stride.ascast, align 4
  %add7 = add nsw i32 %297, %298
  store i32 %add7, ptr %.omp.iv.ascast, align 4
  %299 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %300 = load i32, ptr %.omp.stride.ascast, align 4
  %add8 = add nsw i32 %299, %300
  store i32 %add8, ptr %.omp.comb.lb.ascast, align 4
  %301 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %302 = load i32, ptr %.omp.stride.ascast, align 4
  %add9 = add nsw i32 %301, %302
  store i32 %add9, ptr %.omp.comb.ub.ascast, align 4
  %303 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %304 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp10 = icmp sgt i32 %303, %304
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %omp.inner.for.inc
  %305 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end13

cond.false12:                                     ; preds = %omp.inner.for.inc
  %306 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %305, %cond.true11 ], [ %306, %cond.false12 ]
  store i32 %cond14, ptr %.omp.comb.ub.ascast, align 4
  %307 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %307, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %308 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %309 = load i32, ptr %308, align 4
  call fastcc void @__kmpc_distribute_static_fini()
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %310 = getelementptr inbounds nuw [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val1.ascast, ptr %310, align 8
  %"_openmp_teams_reductions_buffer_$_$ptr" = call fastcc ptr @__kmpc_reduction_get_fixed_buffer()
  %311 = call fastcc i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr %"_openmp_teams_reductions_buffer_$_$ptr", ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.1, ptr @_omp_reduction_inter_warp_copy_func.2, ptr @_omp_reduction_list_to_global_copy_func, ptr @_omp_reduction_list_to_global_reduce_func, ptr @_omp_reduction_global_to_list_copy_func, ptr @_omp_reduction_global_to_list_reduce_func)
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.precond.end
  %313 = load float, ptr %6, align 4
  %314 = load float, ptr %val1.ascast, align 4
  %add15 = fadd float %313, %314
  store float %add15, ptr %6, align 4
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.precond.end
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) unnamed_addr #21 {
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
  %sub = sub nuw nsw i32 %2, 0
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
  call fastcc void @__kmpc_for_static_init_4(ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast)
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
  %mul = mul nuw nsw i32 %12, 1
  %add = add nuw nsw i32 0, %mul
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
  call fastcc void @__kmpc_for_static_fini()
  %21 = getelementptr inbounds nuw [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val4.ascast, ptr %21, align 8
  %22 = call fastcc i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func, ptr @_omp_reduction_inter_warp_copy_func)
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

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write)
define internal void @_omp_reduction_shuffle_and_reduce_func.1(ptr noundef readonly captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #22 {
entry:
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #29
  %7 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %6) #29
  %8 = sext i16 %2 to i32
  %9 = icmp ult i32 %7, 64
  tail call void @llvm.assume(i1 %9) #30
  %10 = add nsw i32 %7, %8
  %11 = icmp ult i32 %10, 64
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add nsw i32 %7, %12
  %14 = shl nsw i32 %13, 2
  %15 = tail call noundef i32 @llvm.amdgcn.ds.bpermute(i32 %14, i32 %5)
  %16 = icmp eq i16 %3, 0
  %17 = icmp eq i16 %3, 1
  %18 = icmp ult i16 %1, %2
  %19 = and i1 %17, %18
  %20 = icmp eq i16 %3, 2
  %21 = and i16 %1, 1
  %22 = icmp eq i16 %21, 0
  %23 = and i1 %20, %22
  %24 = icmp sgt i16 %2, 0
  %25 = and i1 %23, %24
  %26 = or i1 %16, %19
  %27 = or i1 %26, %25
  br i1 %27, label %then, label %ifcont

then:                                             ; preds = %entry
  %28 = bitcast i32 %15 to float
  tail call fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr nonnull %4, float %28) #34
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %29 = icmp uge i16 %1, %2
  %30 = and i1 %17, %29
  br i1 %30, label %then4, label %ifcont6

then4:                                            ; preds = %ifcont
  %31 = load ptr, ptr %0, align 8
  store i32 %15, ptr %31, align 4
  br label %ifcont6

ifcont6:                                          ; preds = %then4, %ifcont
  ret void
}

; Function Attrs: convergent nofree noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.2(ptr noundef readonly captures(none) %0, i32 noundef %1) #23 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %3 = addrspacecast ptr addrspace(3) %2 to ptr
  %4 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %nvptx_lane_id = and i32 %4, 63
  %5 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %6 = load i32, ptr addrspace(3) %5, align 16, !alias.scope !26, !noalias !25
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %17, label %7

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %9 = addrspacecast ptr addrspace(3) %8 to ptr
  %10 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !54

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  br label %17

17:                                               ; preds = %15, %7, %entry
  %18 = phi ptr [ %16, %15 ], [ %3, %entry ], [ %9, %7 ]
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = icmp sgt i32 %19, -1
  tail call void @llvm.assume(i1 %20) #30
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %__kmpc_global_thread_num.exit, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %24 = addrspacecast ptr addrspace(3) %23 to ptr
  br i1 %.not.i, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %27 = addrspacecast ptr addrspace(3) %26 to ptr
  %28 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %29 = zext nneg i32 %4 to i64
  %30 = getelementptr inbounds nuw ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !54

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %35

35:                                               ; preds = %33, %25, %22
  %36 = phi ptr [ %34, %33 ], [ %24, %22 ], [ %27, %25 ]
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp sgt i32 %37, -1
  tail call void @llvm.assume(i1 %38)
  br label %__kmpc_global_thread_num.exit

__kmpc_global_thread_num.exit:                    ; preds = %35, %17
  %39 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %__kmpc_global_thread_num.exit
  %42 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %43 = addrspacecast ptr addrspace(3) %42 to ptr
  br i1 %.not.i, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %4 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 4
  br label %54

54:                                               ; preds = %52, %44, %41
  %55 = phi ptr [ %53, %52 ], [ %43, %41 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %60 = getelementptr inbounds nuw i8, ptr addrspace(4) %59, i64 12
  %61 = load i16, ptr addrspace(4) %60, align 4, !range !47, !invariant.load !25, !noundef !25
  %62 = zext nneg i16 %61 to i32
  %63 = add nsw i32 %62, -1
  %64 = and i32 %63, -64
  %65 = icmp eq i32 %4, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit

67:                                               ; preds = %__kmpc_global_thread_num.exit
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit

68:                                               ; preds = %58, %54
  %69 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %70 = addrspacecast ptr addrspace(3) %69 to ptr
  br i1 %.not.i, label %81, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %73 = addrspacecast ptr addrspace(3) %72 to ptr
  %74 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %75 = zext nneg i32 %4 to i64
  %76 = getelementptr inbounds nuw ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !54

79:                                               ; preds = %71
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  br label %81

81:                                               ; preds = %79, %71, %68
  %82 = phi ptr [ %80, %79 ], [ %70, %68 ], [ %73, %71 ]
  %83 = load i32, ptr %82, align 4, !tbaa !21
  %84 = icmp sgt i32 %83, -1
  tail call void @llvm.assume(i1 %84)
  %85 = icmp eq i32 %83, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %88 = load i32, ptr addrspace(3) %87, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %92 = getelementptr inbounds nuw i8, ptr addrspace(4) %91, i64 12
  %93 = load i16, ptr addrspace(4) %92, align 4, !range !47, !invariant.load !25, !noundef !25
  %94 = zext nneg i16 %93 to i32
  %95 = add nsw i32 %94, -64
  br label %96

96:                                               ; preds = %90, %86, %81
  %97 = phi i32 [ 1, %81 ], [ %95, %90 ], [ %88, %86 ]
  fence syncscope("workgroup") acquire
  %98 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %99 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %100 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %99)
  %101 = icmp ult i32 %100, 64
  tail call void @llvm.assume(i1 %101)
  %102 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %103 = zext nneg i32 %100 to i64
  %104 = shl nsw i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %98, %105
  %107 = and i64 %106, %102
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %.loopexit8

109:                                              ; preds = %96
  %110 = lshr i32 %97, 6
  %111 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %110, -1
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %.preheader7

115:                                              ; preds = %109
  %116 = and i32 %111, -65536
  %117 = add i32 %116, 65536
  store atomic i32 %117, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit8

.preheader7:                                      ; preds = %.preheader7, %109
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %118 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %119 = xor i32 %118, %111
  %120 = icmp ult i32 %119, 65536
  br i1 %120, label %.preheader7, label %.loopexit8, !llvm.loop !89

.loopexit8:                                       ; preds = %.preheader7, %115, %96
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit

__kmpc_barrier.exit:                              ; preds = %.loopexit8, %67, %66
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %ifcont

then:                                             ; preds = %__kmpc_barrier.exit
  %nvptx_warp_id = lshr exact i32 %4, 6
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %nvptx_warp_id
  %123 = load i32, ptr %121, align 4
  store volatile i32 %123, ptr addrspace(3) %122, align 4, !alias.scope !90, !noalias !25
  br label %ifcont

ifcont:                                           ; preds = %then, %__kmpc_barrier.exit
  %124 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %125 = addrspacecast ptr addrspace(3) %124 to ptr
  %126 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %127 = load i32, ptr addrspace(3) %126, align 16, !alias.scope !26, !noalias !25
  %.not.i2 = icmp eq i32 %127, 0
  br i1 %.not.i2, label %138, label %128

128:                                              ; preds = %ifcont
  %129 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %130 = addrspacecast ptr addrspace(3) %129 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = zext nneg i32 %4 to i64
  %133 = getelementptr inbounds nuw ptr, ptr %131, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !54

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 4
  br label %138

138:                                              ; preds = %136, %128, %ifcont
  %139 = phi ptr [ %137, %136 ], [ %125, %ifcont ], [ %130, %128 ]
  %140 = load i32, ptr %139, align 4, !tbaa !21
  %141 = icmp sgt i32 %140, -1
  tail call void @llvm.assume(i1 %141) #30
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %__kmpc_global_thread_num.exit3, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %145 = addrspacecast ptr addrspace(3) %144 to ptr
  br i1 %.not.i2, label %156, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %148 = addrspacecast ptr addrspace(3) %147 to ptr
  %149 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %150 = zext nneg i32 %4 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !54

154:                                              ; preds = %146
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %156

156:                                              ; preds = %154, %146, %143
  %157 = phi ptr [ %155, %154 ], [ %145, %143 ], [ %148, %146 ]
  %158 = load i32, ptr %157, align 4, !tbaa !21
  %159 = icmp sgt i32 %158, -1
  tail call void @llvm.assume(i1 %159)
  br label %__kmpc_global_thread_num.exit3

__kmpc_global_thread_num.exit3:                   ; preds = %156, %138
  %160 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %__kmpc_global_thread_num.exit3
  %163 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %164 = addrspacecast ptr addrspace(3) %163 to ptr
  br i1 %.not.i2, label %175, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %167 = addrspacecast ptr addrspace(3) %166 to ptr
  %168 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %169 = zext nneg i32 %4 to i64
  %170 = getelementptr inbounds nuw ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !52
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !54

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 4
  br label %175

175:                                              ; preds = %173, %165, %162
  %176 = phi ptr [ %174, %173 ], [ %164, %162 ], [ %167, %165 ]
  %177 = load i32, ptr %176, align 4, !tbaa !21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %181 = getelementptr inbounds nuw i8, ptr addrspace(4) %180, i64 12
  %182 = load i16, ptr addrspace(4) %181, align 4, !range !47, !invariant.load !25, !noundef !25
  %183 = zext nneg i16 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = and i32 %184, -64
  %186 = icmp eq i32 %4, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit6

188:                                              ; preds = %__kmpc_global_thread_num.exit3
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit6

189:                                              ; preds = %179, %175
  %190 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %191 = addrspacecast ptr addrspace(3) %190 to ptr
  br i1 %.not.i2, label %202, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %194 = addrspacecast ptr addrspace(3) %193 to ptr
  %195 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %196 = zext nneg i32 %4 to i64
  %197 = getelementptr inbounds nuw ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !54

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 4
  br label %202

202:                                              ; preds = %200, %192, %189
  %203 = phi ptr [ %201, %200 ], [ %191, %189 ], [ %194, %192 ]
  %204 = load i32, ptr %203, align 4, !tbaa !21
  %205 = icmp sgt i32 %204, -1
  tail call void @llvm.assume(i1 %205)
  %206 = icmp eq i32 %204, 1
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %209 = load i32, ptr addrspace(3) %208, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %213 = getelementptr inbounds nuw i8, ptr addrspace(4) %212, i64 12
  %214 = load i16, ptr addrspace(4) %213, align 4, !range !47, !invariant.load !25, !noundef !25
  %215 = zext nneg i16 %214 to i32
  %216 = add nsw i32 %215, -64
  br label %217

217:                                              ; preds = %211, %207, %202
  %218 = phi i32 [ 1, %202 ], [ %216, %211 ], [ %209, %207 ]
  fence syncscope("workgroup") acquire
  %219 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %220 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %221 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %220)
  %222 = icmp ult i32 %221, 64
  tail call void @llvm.assume(i1 %222)
  %223 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %224 = zext nneg i32 %221 to i64
  %225 = shl nsw i64 -1, %224
  %226 = xor i64 %225, -1
  %227 = and i64 %219, %226
  %228 = and i64 %227, %223
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %.loopexit

230:                                              ; preds = %217
  %231 = lshr i32 %218, 6
  %232 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %231, -1
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %.preheader

236:                                              ; preds = %230
  %237 = and i32 %232, -65536
  %238 = add i32 %237, 65536
  store atomic i32 %238, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit

.preheader:                                       ; preds = %.preheader, %230
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %239 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %240 = xor i32 %239, %232
  %241 = icmp ult i32 %240, 65536
  br i1 %241, label %.preheader, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.preheader, %236, %217
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit6

__kmpc_barrier.exit6:                             ; preds = %.loopexit, %188, %187
  %is_active_thread = icmp ult i32 %4, %1
  br i1 %is_active_thread, label %then3, label %ifcont5

then3:                                            ; preds = %__kmpc_barrier.exit6
  %242 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %4
  %243 = load ptr, ptr %0, align 8
  %244 = load volatile i32, ptr addrspace(3) %242, align 4, !alias.scope !90, !noalias !25
  store i32 %244, ptr %243, align 4
  br label %ifcont5

ifcont5:                                          ; preds = %then3, %__kmpc_barrier.exit6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_list_to_global_copy_func(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #24 {
entry:
  %3 = load ptr, ptr %2, align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %4
  %6 = load float, ptr %3, align 4
  store float %6, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_list_to_global_reduce_func(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #24 {
entry:
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %3
  %.val = load ptr, ptr %2, align 8
  %.val.val = load float, ptr %.val, align 4
  tail call fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %4, float %.val.val) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_global_to_list_copy_func(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #25 {
entry:
  %3 = load ptr, ptr %2, align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %4
  %6 = load float, ptr %5, align 4
  store float %6, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_global_to_list_reduce_func(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #26 {
entry:
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %3
  %.val = load ptr, ptr %2, align 8
  %.omp.reduction.red_list.ascast.val.val = load float, ptr %4, align 4
  tail call fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %.val, float %.omp.reduction.red_list.ascast.val.val) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr captures(none) %.0.val, float %.0.val1.0.val) unnamed_addr #27 {
entry:
  %0 = load float, ptr %.0.val, align 4
  %add = fadd float %0, %.0.val1.0.val
  store float %add, ptr %.0.val, align 4
  ret void
}

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write)
define internal void @_omp_reduction_shuffle_and_reduce_func(ptr noundef readonly captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #28 {
entry:
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca float, align 4, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #29
  %7 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %6) #29
  %8 = sext i16 %2 to i32
  %9 = icmp ult i32 %7, 64
  tail call void @llvm.assume(i1 %9) #30
  %10 = add nsw i32 %7, %8
  %11 = icmp ult i32 %10, 64
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add nsw i32 %7, %12
  %14 = shl nsw i32 %13, 2
  %15 = tail call noundef i32 @llvm.amdgcn.ds.bpermute(i32 %14, i32 %5)
  store i32 %15, ptr addrspace(5) %.omp.reduction.element, align 4
  store ptr %.omp.reduction.element.ascast, ptr addrspace(5) %.omp.reduction.remote_reduce_list, align 8
  %16 = icmp eq i16 %3, 0
  %17 = icmp eq i16 %3, 1
  %18 = icmp ult i16 %1, %2
  %19 = and i1 %17, %18
  %20 = icmp eq i16 %3, 2
  %21 = and i16 %1, 1
  %22 = icmp eq i16 %21, 0
  %23 = and i1 %20, %22
  %24 = icmp sgt i16 %2, 0
  %25 = and i1 %23, %24
  %26 = or i1 %16, %19
  %27 = or i1 %26, %25
  br i1 %27, label %then, label %ifcont

then:                                             ; preds = %entry
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  call fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr nonnull %4, ptr %.omp.reduction.remote_reduce_list.ascast) #35
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %28 = icmp uge i16 %1, %2
  %29 = and i1 %17, %28
  br i1 %29, label %then4, label %ifcont6

then4:                                            ; preds = %ifcont
  %30 = load ptr, ptr %0, align 8
  store i32 %15, ptr %30, align 4
  br label %ifcont6

ifcont6:                                          ; preds = %then4, %ifcont
  ret void
}

; Function Attrs: convergent nofree noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func(ptr noundef readonly captures(none) %0, i32 noundef %1) #23 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %3 = addrspacecast ptr addrspace(3) %2 to ptr
  %4 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %nvptx_lane_id = and i32 %4, 63
  %5 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %6 = load i32, ptr addrspace(3) %5, align 16, !alias.scope !26, !noalias !25
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %17, label %7

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %9 = addrspacecast ptr addrspace(3) %8 to ptr
  %10 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !54

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  br label %17

17:                                               ; preds = %15, %7, %entry
  %18 = phi ptr [ %16, %15 ], [ %3, %entry ], [ %9, %7 ]
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = icmp sgt i32 %19, -1
  tail call void @llvm.assume(i1 %20) #30
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %__kmpc_global_thread_num.exit, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %24 = addrspacecast ptr addrspace(3) %23 to ptr
  br i1 %.not.i, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %27 = addrspacecast ptr addrspace(3) %26 to ptr
  %28 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %29 = zext nneg i32 %4 to i64
  %30 = getelementptr inbounds nuw ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !54

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %35

35:                                               ; preds = %33, %25, %22
  %36 = phi ptr [ %34, %33 ], [ %24, %22 ], [ %27, %25 ]
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp sgt i32 %37, -1
  tail call void @llvm.assume(i1 %38)
  br label %__kmpc_global_thread_num.exit

__kmpc_global_thread_num.exit:                    ; preds = %35, %17
  %39 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %__kmpc_global_thread_num.exit
  %42 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %43 = addrspacecast ptr addrspace(3) %42 to ptr
  br i1 %.not.i, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %4 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 4
  br label %54

54:                                               ; preds = %52, %44, %41
  %55 = phi ptr [ %53, %52 ], [ %43, %41 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %60 = getelementptr inbounds nuw i8, ptr addrspace(4) %59, i64 12
  %61 = load i16, ptr addrspace(4) %60, align 4, !range !47, !invariant.load !25, !noundef !25
  %62 = zext nneg i16 %61 to i32
  %63 = add nsw i32 %62, -1
  %64 = and i32 %63, -64
  %65 = icmp eq i32 %4, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit

67:                                               ; preds = %__kmpc_global_thread_num.exit
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit

68:                                               ; preds = %58, %54
  %69 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %70 = addrspacecast ptr addrspace(3) %69 to ptr
  br i1 %.not.i, label %81, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %73 = addrspacecast ptr addrspace(3) %72 to ptr
  %74 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %75 = zext nneg i32 %4 to i64
  %76 = getelementptr inbounds nuw ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !54

79:                                               ; preds = %71
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  br label %81

81:                                               ; preds = %79, %71, %68
  %82 = phi ptr [ %80, %79 ], [ %70, %68 ], [ %73, %71 ]
  %83 = load i32, ptr %82, align 4, !tbaa !21
  %84 = icmp sgt i32 %83, -1
  tail call void @llvm.assume(i1 %84)
  %85 = icmp eq i32 %83, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %88 = load i32, ptr addrspace(3) %87, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %92 = getelementptr inbounds nuw i8, ptr addrspace(4) %91, i64 12
  %93 = load i16, ptr addrspace(4) %92, align 4, !range !47, !invariant.load !25, !noundef !25
  %94 = zext nneg i16 %93 to i32
  %95 = add nsw i32 %94, -64
  br label %96

96:                                               ; preds = %90, %86, %81
  %97 = phi i32 [ 1, %81 ], [ %95, %90 ], [ %88, %86 ]
  fence syncscope("workgroup") acquire
  %98 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %99 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %100 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %99)
  %101 = icmp ult i32 %100, 64
  tail call void @llvm.assume(i1 %101)
  %102 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %103 = zext nneg i32 %100 to i64
  %104 = shl nsw i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %98, %105
  %107 = and i64 %106, %102
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %.loopexit8

109:                                              ; preds = %96
  %110 = lshr i32 %97, 6
  %111 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %110, -1
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %.preheader7

115:                                              ; preds = %109
  %116 = and i32 %111, -65536
  %117 = add i32 %116, 65536
  store atomic i32 %117, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit8

.preheader7:                                      ; preds = %.preheader7, %109
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %118 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %119 = xor i32 %118, %111
  %120 = icmp ult i32 %119, 65536
  br i1 %120, label %.preheader7, label %.loopexit8, !llvm.loop !89

.loopexit8:                                       ; preds = %.preheader7, %115, %96
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit

__kmpc_barrier.exit:                              ; preds = %.loopexit8, %67, %66
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %ifcont

then:                                             ; preds = %__kmpc_barrier.exit
  %nvptx_warp_id = lshr exact i32 %4, 6
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %nvptx_warp_id
  %123 = load i32, ptr %121, align 4
  store volatile i32 %123, ptr addrspace(3) %122, align 4, !alias.scope !90, !noalias !25
  br label %ifcont

ifcont:                                           ; preds = %then, %__kmpc_barrier.exit
  %124 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %125 = addrspacecast ptr addrspace(3) %124 to ptr
  %126 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %127 = load i32, ptr addrspace(3) %126, align 16, !alias.scope !26, !noalias !25
  %.not.i2 = icmp eq i32 %127, 0
  br i1 %.not.i2, label %138, label %128

128:                                              ; preds = %ifcont
  %129 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %130 = addrspacecast ptr addrspace(3) %129 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = zext nneg i32 %4 to i64
  %133 = getelementptr inbounds nuw ptr, ptr %131, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !54

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 4
  br label %138

138:                                              ; preds = %136, %128, %ifcont
  %139 = phi ptr [ %137, %136 ], [ %125, %ifcont ], [ %130, %128 ]
  %140 = load i32, ptr %139, align 4, !tbaa !21
  %141 = icmp sgt i32 %140, -1
  tail call void @llvm.assume(i1 %141) #30
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %__kmpc_global_thread_num.exit3, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %145 = addrspacecast ptr addrspace(3) %144 to ptr
  br i1 %.not.i2, label %156, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %148 = addrspacecast ptr addrspace(3) %147 to ptr
  %149 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %150 = zext nneg i32 %4 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !54

154:                                              ; preds = %146
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %156

156:                                              ; preds = %154, %146, %143
  %157 = phi ptr [ %155, %154 ], [ %145, %143 ], [ %148, %146 ]
  %158 = load i32, ptr %157, align 4, !tbaa !21
  %159 = icmp sgt i32 %158, -1
  tail call void @llvm.assume(i1 %159)
  br label %__kmpc_global_thread_num.exit3

__kmpc_global_thread_num.exit3:                   ; preds = %156, %138
  %160 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %__kmpc_global_thread_num.exit3
  %163 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %164 = addrspacecast ptr addrspace(3) %163 to ptr
  br i1 %.not.i2, label %175, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %167 = addrspacecast ptr addrspace(3) %166 to ptr
  %168 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %169 = zext nneg i32 %4 to i64
  %170 = getelementptr inbounds nuw ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !52
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !54

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 4
  br label %175

175:                                              ; preds = %173, %165, %162
  %176 = phi ptr [ %174, %173 ], [ %164, %162 ], [ %167, %165 ]
  %177 = load i32, ptr %176, align 4, !tbaa !21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %181 = getelementptr inbounds nuw i8, ptr addrspace(4) %180, i64 12
  %182 = load i16, ptr addrspace(4) %181, align 4, !range !47, !invariant.load !25, !noundef !25
  %183 = zext nneg i16 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = and i32 %184, -64
  %186 = icmp eq i32 %4, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit6

188:                                              ; preds = %__kmpc_global_thread_num.exit3
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit6

189:                                              ; preds = %179, %175
  %190 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %191 = addrspacecast ptr addrspace(3) %190 to ptr
  br i1 %.not.i2, label %202, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %194 = addrspacecast ptr addrspace(3) %193 to ptr
  %195 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %196 = zext nneg i32 %4 to i64
  %197 = getelementptr inbounds nuw ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !54

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 4
  br label %202

202:                                              ; preds = %200, %192, %189
  %203 = phi ptr [ %201, %200 ], [ %191, %189 ], [ %194, %192 ]
  %204 = load i32, ptr %203, align 4, !tbaa !21
  %205 = icmp sgt i32 %204, -1
  tail call void @llvm.assume(i1 %205)
  %206 = icmp eq i32 %204, 1
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %209 = load i32, ptr addrspace(3) %208, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %213 = getelementptr inbounds nuw i8, ptr addrspace(4) %212, i64 12
  %214 = load i16, ptr addrspace(4) %213, align 4, !range !47, !invariant.load !25, !noundef !25
  %215 = zext nneg i16 %214 to i32
  %216 = add nsw i32 %215, -64
  br label %217

217:                                              ; preds = %211, %207, %202
  %218 = phi i32 [ 1, %202 ], [ %216, %211 ], [ %209, %207 ]
  fence syncscope("workgroup") acquire
  %219 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %220 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %221 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %220)
  %222 = icmp ult i32 %221, 64
  tail call void @llvm.assume(i1 %222)
  %223 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %224 = zext nneg i32 %221 to i64
  %225 = shl nsw i64 -1, %224
  %226 = xor i64 %225, -1
  %227 = and i64 %219, %226
  %228 = and i64 %227, %223
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %.loopexit

230:                                              ; preds = %217
  %231 = lshr i32 %218, 6
  %232 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %231, -1
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %.preheader

236:                                              ; preds = %230
  %237 = and i32 %232, -65536
  %238 = add i32 %237, 65536
  store atomic i32 %238, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit

.preheader:                                       ; preds = %.preheader, %230
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %239 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %240 = xor i32 %239, %232
  %241 = icmp ult i32 %240, 65536
  br i1 %241, label %.preheader, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.preheader, %236, %217
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit6

__kmpc_barrier.exit6:                             ; preds = %.loopexit, %188, %187
  %is_active_thread = icmp ult i32 %4, %1
  br i1 %is_active_thread, label %then3, label %ifcont5

then3:                                            ; preds = %__kmpc_barrier.exit6
  %242 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %4
  %243 = load ptr, ptr %0, align 8
  %244 = load volatile i32, ptr addrspace(3) %242, align 4, !alias.scope !90, !noalias !25
  store i32 %244, ptr %243, align 4
  br label %ifcont5

ifcont5:                                          ; preds = %then3, %__kmpc_barrier.exit6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @"__omp_offloading_52_2eb8e89__Z7kernel1Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr captures(none) %.0.val, ptr noundef readonly captures(none) %0) unnamed_addr #24 {
entry:
  %1 = addrspacecast ptr %0 to ptr addrspace(5)
  %2 = load ptr, ptr addrspace(5) %1, align 8
  %3 = load float, ptr %.0.val, align 4
  %4 = addrspacecast ptr %2 to ptr addrspace(5)
  %5 = load float, ptr addrspace(5) %4, align 4
  %add = fadd float %3, %5
  store float %add, ptr %.0.val, align 4
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr protected amdgpu_kernel void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6(ptr noalias noundef %dyn_ptr, i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) local_unnamed_addr #20 {
entry:
  call void @llvm.donothing() [ "ExplicitUse"(ptr addrspace(3) @llvm.amdgcn.module.lds) ]
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
  %1 = call fastcc i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_kernel_environment to ptr), ptr %dyn_ptr)
  %exec_user_code = icmp eq i32 %1, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %2 = call fastcc i32 @__kmpc_global_thread_num()
  %3 = load i32, ptr %n.addr.ascast, align 4
  store i32 %3, ptr %n.casted.ascast, align 4
  %4 = load i64, ptr %n.casted.ascast, align 8
  %5 = load ptr, ptr %A.addr.ascast, align 8
  store i32 0, ptr %.zero.addr.ascast, align 4
  store i32 %2, ptr %.threadid_temp..ascast, align 4
  call fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined(ptr %.threadid_temp..ascast, ptr %.zero.addr.ascast, i64 %4, ptr %0, ptr %5) #32
  call fastcc void @__kmpc_target_deinit()
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) unnamed_addr #21 {
entry:
  %0 = alloca i32, align 4, addrspace(5)
  %1 = alloca i32, align 4, addrspace(5)
  %2 = alloca i32, align 4, addrspace(5)
  %3 = alloca i32, align 4, addrspace(5)
  %4 = alloca i32, align 4, addrspace(5)
  %5 = alloca i32, align 4, addrspace(5)
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
  %6 = load ptr, ptr %val.addr.ascast, align 8
  store float 0.000000e+00, ptr %val1.ascast, align 4
  %7 = load i32, ptr %n.addr.ascast, align 4
  store i32 %7, ptr %.capture_expr..ascast, align 4
  %8 = load i32, ptr %.capture_expr..ascast, align 4
  %sub = sub nuw nsw i32 %8, 0
  %div = sdiv i32 %sub, 1
  %sub3 = sub nsw i32 %div, 1
  store i32 %sub3, ptr %.capture_expr.2.ascast, align 4
  store i32 0, ptr %i.ascast, align 4
  %9 = load i32, ptr %.capture_expr..ascast, align 4
  %cmp = icmp slt i32 0, %9
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  store i32 0, ptr %.omp.comb.lb.ascast, align 4
  %10 = load i32, ptr %.capture_expr.2.ascast, align 4
  store i32 %10, ptr %.omp.comb.ub.ascast, align 4
  store i32 1, ptr %.omp.stride.ascast, align 4
  store i32 0, ptr %.omp.is_last.ascast, align 4
  %nvptx_num_threads = call fastcc i32 @__kmpc_get_hardware_num_threads_in_block()
  %11 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %12 = load i32, ptr %11, align 4
  call fastcc void @__kmpc_distribute_static_init_4(ptr %.omp.is_last.ascast, ptr %.omp.comb.lb.ascast, ptr %.omp.comb.ub.ascast, ptr %.omp.stride.ascast, i32 %nvptx_num_threads)
  %13 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %14 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp5 = icmp sgt i32 %13, %14
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %.omp.comb.ub.ascast, align 4
  %17 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %17, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %cond.end13, %cond.end
  %18 = load i32, ptr %.omp.iv.ascast, align 4
  %19 = load i32, ptr %.capture_expr.2.ascast, align 4
  %add = add nsw i32 %19, 1
  %cmp6 = icmp slt i32 %18, %add
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %n.addr.ascast, align 4
  store i32 %24, ptr %n.casted.ascast, align 4
  %25 = load i64, ptr %n.casted.ascast, align 8
  %26 = load ptr, ptr %A.addr.ascast, align 8
  %27 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 0
  %28 = inttoptr i64 %21 to ptr
  store ptr %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 1
  %30 = inttoptr i64 %23 to ptr
  store ptr %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 2
  %32 = inttoptr i64 %25 to ptr
  store ptr %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 3
  store ptr %val1.ascast, ptr %33, align 8
  %34 = getelementptr inbounds nuw [5 x ptr], ptr %captured_vars_addrs.ascast, i64 0, i64 4
  store ptr %26, ptr %34, align 8
  %35 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %36 = load i32, ptr %35, align 4
  %37 = call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %38 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !75
  %.not.i = icmp eq i8 %40, 0
  %41 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %42 = load i32, ptr addrspace(3) %41, align 16, !alias.scope !26, !noalias !25
  br i1 %.not.i, label %43, label %60

43:                                               ; preds = %omp.inner.for.body
  %44 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %45 = addrspacecast ptr addrspace(3) %44 to ptr
  %.not1.i = icmp eq i32 %42, 0
  br i1 %.not1.i, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %48 = addrspacecast ptr addrspace(3) %47 to ptr
  %49 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %50 = zext nneg i32 %37 to i64
  %51 = getelementptr inbounds nuw ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %56

56:                                               ; preds = %54, %46, %43
  %57 = phi ptr [ %55, %54 ], [ %45, %43 ], [ %48, %46 ]
  %58 = load i32, ptr %57, align 4, !tbaa !21
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %56, %omp.inner.for.body
  %61 = phi i1 [ true, %omp.inner.for.body ], [ %59, %56 ]
  call void @llvm.assume(i1 %61)
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %72, !prof !79

63:                                               ; preds = %60
  %64 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 3), align 16, !tbaa !37, !alias.scope !39, !noalias !25
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !75
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %69 = load i32, ptr addrspace(3) %68, align 4, !alias.scope !26, !noalias !25
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %67, i1 true, i1 %70
  br i1 %71, label %172, label %72, !prof !80

72:                                               ; preds = %63, %60
  %73 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %74 = add i64 %73, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %75 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %76 = add i64 %75, 48
  %77 = icmp ugt i64 %76, %74
  br i1 %77, label %78, label %malloc.exit.i.i

78:                                               ; preds = %72
  call void @llvm.trap() #33
  unreachable

malloc.exit.i.i:                                  ; preds = %72
  %79 = inttoptr i64 %75 to ptr
  %80 = load atomic i64, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5) syncscope("agent") seq_cst, align 16, !alias.scope !35, !noalias !25
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i

82:                                               ; preds = %malloc.exit.i.i
  %83 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %84 = getelementptr inbounds nuw i8, ptr addrspace(4) %83, i64 12
  %85 = load i16, ptr addrspace(4) %84, align 4, !range !47, !invariant.load !25, !noundef !25
  %86 = shl nuw nsw i16 %85, 3
  %87 = zext nneg i16 %86 to i64
  %88 = add nuw nsw i64 %87, 15
  %89 = and i64 %88, 32752
  %90 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %91 = add i64 %90, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %92 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 %89 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %93 = add i64 %92, %89
  %94 = icmp ugt i64 %93, %91
  br i1 %94, label %95, label %malloc.exit1.i.i

95:                                               ; preds = %82
  call void @llvm.trap() #33
  unreachable

malloc.exit1.i.i:                                 ; preds = %82
  %96 = inttoptr i64 %92 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 1 dereferenceable(1) %96, i8 0, i64 %87, i1 false) #30
  %97 = cmpxchg ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), i64 0, i64 %92 syncscope("agent") seq_cst seq_cst, align 16, !alias.scope !35, !noalias !25
  %98 = extractvalue { i64, i1 } %97, 1
  br i1 %98, label %100, label %99

99:                                               ; preds = %malloc.exit1.i.i
  br label %100

100:                                              ; preds = %99, %malloc.exit1.i.i
  %101 = load atomic i64, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5) syncscope("agent") seq_cst, align 16, !range !84, !alias.scope !35, !noalias !25
  br label %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i

_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i: ; preds = %100, %malloc.exit.i.i
  %102 = phi i64 [ %101, %100 ], [ %80, %malloc.exit.i.i ]
  %103 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %104 = addrspacecast ptr addrspace(3) %103 to ptr
  %105 = call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %106 = inttoptr i64 %102 to ptr
  %107 = zext nneg i32 %105 to i64
  %108 = getelementptr inbounds nuw ptr, ptr %106, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = icmp eq ptr %109, null
  %111 = addrspacecast ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2) to ptr
  %112 = select i1 %110, ptr %111, ptr %109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull align 8 dereferenceable(28) %112, i64 28, i1 false), !tbaa.struct !85
  %113 = getelementptr inbounds nuw i8, ptr %79, i64 32
  store ptr %109, ptr %113, align 8, !tbaa !86
  %114 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 1, ptr addrspace(3) %114, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  store ptr %79, ptr %108, align 8, !tbaa !52
  %115 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %116 = load i32, ptr addrspace(3) %115, align 16, !alias.scope !26, !noalias !25
  %.not2.i = icmp eq i32 %116, 0
  br i1 %.not2.i, label %140, label %117, !prof !80

117:                                              ; preds = %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i
  %118 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %119 = zext nneg i32 %37 to i64
  %120 = getelementptr inbounds nuw ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %137, !prof !55

123:                                              ; preds = %117
  %124 = load i64, ptr addrspace(1) getelementptr inbounds nuw (i8, ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 8), align 8, !tbaa !81
  %125 = add i64 %124, ptrtoint (ptr addrspacecast (ptr addrspace(1) @__omp_rtl_device_memory_pool to ptr) to i64)
  %126 = atomicrmw add ptr addrspace(1) @__omp_rtl_device_memory_pool, i64 48 syncscope("agent") seq_cst, align 8, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %127 = add i64 %126, 48
  %128 = icmp ugt i64 %127, %125
  br i1 %128, label %129, label %malloc.exit.i

129:                                              ; preds = %123
  call void @llvm.trap() #33
  unreachable

malloc.exit.i:                                    ; preds = %123
  %130 = inttoptr i64 %126 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = getelementptr inbounds nuw ptr, ptr %131, i64 %119
  store ptr %130, ptr %132, align 8, !tbaa !52
  %133 = icmp ne ptr %130, null
  call void @llvm.assume(i1 %133)
  %134 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  store i32 1, ptr addrspace(3) %134, align 16, !tbaa !28, !alias.scope !26, !noalias !25
  call void @llvm.memcpy.p0.p3.i64(ptr noundef nonnull align 8 dereferenceable(28) %130, ptr addrspace(3) noundef align 16 dereferenceable(28) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i64 28, i1 false), !tbaa.struct !85, !alias.scope !26, !noalias !25
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 32
  store ptr null, ptr %135, align 8, !tbaa !86
  %136 = load ptr, ptr %132, align 8, !tbaa !52
  br label %137

137:                                              ; preds = %malloc.exit.i, %117
  %138 = phi ptr [ %136, %malloc.exit.i ], [ %121, %117 ]
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 4
  br label %140

140:                                              ; preds = %137, %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i
  %141 = phi ptr [ %139, %137 ], [ %104, %_ZN4ompx5state20enterDataEnvironmentEP7IdentTy.exit.i ]
  %142 = load i32, ptr %141, align 4, !tbaa !21
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !21
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %0)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %1)
  %144 = addrspacecast ptr addrspace(5) %0 to ptr
  %145 = addrspacecast ptr addrspace(5) %1 to ptr
  store i32 %37, ptr addrspace(5) %0, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %1, align 4, !tbaa !21
  %146 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %147 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %148 = load ptr, ptr %147, align 8, !tbaa !88
  %149 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !88
  %151 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %154 = load ptr, ptr %153, align 8, !tbaa !88
  %155 = ptrtoint ptr %146 to i64
  %156 = ptrtoint ptr %148 to i64
  %157 = ptrtoint ptr %150 to i64
  call fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined(ptr noundef %144, ptr noundef %145, i64 noundef %155, i64 noundef %156, i64 noundef %157, ptr noundef %152, ptr noundef %154) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %0)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %1)
  %158 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %159 = load i32, ptr addrspace(3) %158, align 16, !alias.scope !26, !noalias !25
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %__kmpc_parallel_51.exit, label %161

161:                                              ; preds = %140
  %162 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %163 = zext nneg i32 %37 to i64
  %164 = getelementptr inbounds nuw ptr, ptr %162, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !52
  %166 = icmp eq ptr %165, null
  br i1 %166, label %__kmpc_parallel_51.exit, label %167, !prof !54

167:                                              ; preds = %161
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %169 = load ptr, ptr %168, align 8, !tbaa !86
  %170 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %171 = getelementptr inbounds nuw ptr, ptr %170, i64 %163
  store ptr %169, ptr %171, align 8, !tbaa !52
  br label %__kmpc_parallel_51.exit

172:                                              ; preds = %63
  %173 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %228, label %175

175:                                              ; preds = %172
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  %176 = icmp eq i32 %37, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %175
  %178 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %179 = load i32, ptr addrspace(3) %178, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %180 = icmp eq i32 %179, 1
  call void @llvm.assume(i1 %180)
  %181 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 0, ptr addrspace(3) %181, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %182 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %183 = load i32, ptr addrspace(3) %182, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %184 = icmp eq i32 %183, 0
  call void @llvm.assume(i1 %184)
  %185 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 1, ptr addrspace(3) %185, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %186 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %187 = load i32, ptr addrspace(3) %186, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %188 = icmp eq i32 %187, 0
  call void @llvm.assume(i1 %188)
  %189 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %189, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %190

190:                                              ; preds = %177, %175
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %191 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %192 = load i32, ptr addrspace(3) %191, align 4, !alias.scope !26, !noalias !25
  %193 = icmp eq i32 %192, 0
  call void @llvm.assume(i1 %193)
  %194 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %195 = load i32, ptr addrspace(3) %194, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %196 = icmp eq i32 %195, 1
  call void @llvm.assume(i1 %196)
  %197 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %198 = load i32, ptr addrspace(3) %197, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %199 = icmp eq i32 %198, 1
  call void @llvm.assume(i1 %199)
  call void @llvm.amdgcn.s.barrier()
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %4)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %5)
  %200 = addrspacecast ptr addrspace(5) %4 to ptr
  %201 = addrspacecast ptr addrspace(5) %5 to ptr
  store i32 %37, ptr addrspace(5) %4, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %5, align 4, !tbaa !21
  %202 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %203 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %204 = load ptr, ptr %203, align 8, !tbaa !88
  %205 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %206 = load ptr, ptr %205, align 8, !tbaa !88
  %207 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %208 = load ptr, ptr %207, align 8, !tbaa !88
  %209 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %210 = load ptr, ptr %209, align 8, !tbaa !88
  %211 = ptrtoint ptr %202 to i64
  %212 = ptrtoint ptr %204 to i64
  %213 = ptrtoint ptr %206 to i64
  call fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined(ptr noundef %200, ptr noundef %201, i64 noundef %211, i64 noundef %212, i64 noundef %213, ptr noundef %208, ptr noundef %210) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %4)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %5)
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br i1 %176, label %214, label %218

214:                                              ; preds = %190
  %215 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %215, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %216 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 0, ptr addrspace(3) %216, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %217 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 1, ptr addrspace(3) %217, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %218

218:                                              ; preds = %214, %190
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %219 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %220 = load i32, ptr addrspace(3) %219, align 4, !alias.scope !26, !noalias !25
  %221 = icmp eq i32 %220, 1
  call void @llvm.assume(i1 %221)
  %222 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %223 = load i32, ptr addrspace(3) %222, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %224 = icmp eq i32 %223, 0
  call void @llvm.assume(i1 %224)
  %225 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %226 = load i32, ptr addrspace(3) %225, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %227 = icmp eq i32 %226, 0
  call void @llvm.assume(i1 %227)
  call void @llvm.amdgcn.s.barrier()
  br label %__kmpc_parallel_51.exit

228:                                              ; preds = %172
  %229 = call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %230 = getelementptr inbounds nuw i8, ptr addrspace(4) %229, i64 12
  %231 = load i16, ptr addrspace(4) %230, align 4, !range !47, !invariant.load !25, !noundef !25
  %232 = zext nneg i16 %231 to i32
  %233 = add nsw i32 %232, -64
  %234 = icmp ult i32 %233, 64
  %235 = and i32 %233, -64
  %236 = select i1 %234, i32 1, i32 %235
  %237 = icmp eq i32 %236, %233
  %238 = select i1 %237, i32 0, i32 %236
  %239 = icmp ugt i32 %236, 1
  br i1 %239, label %260, label %240

240:                                              ; preds = %228
  %241 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %242 = load i32, ptr addrspace(3) %241, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %243 = icmp eq i32 %242, 0
  call void @llvm.assume(i1 %243)
  %244 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %244, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %2)
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %3)
  %245 = addrspacecast ptr addrspace(5) %2 to ptr
  %246 = addrspacecast ptr addrspace(5) %3 to ptr
  store i32 %37, ptr addrspace(5) %2, align 4, !tbaa !21
  store i32 0, ptr addrspace(5) %3, align 4, !tbaa !21
  %247 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  %248 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %249 = load ptr, ptr %248, align 8, !tbaa !88
  %250 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %251 = load ptr, ptr %250, align 8, !tbaa !88
  %252 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %253 = load ptr, ptr %252, align 8, !tbaa !88
  %254 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %255 = load ptr, ptr %254, align 8, !tbaa !88
  %256 = ptrtoint ptr %247 to i64
  %257 = ptrtoint ptr %249 to i64
  %258 = ptrtoint ptr %251 to i64
  call fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined(ptr noundef %245, ptr noundef %246, i64 noundef %256, i64 noundef %257, i64 noundef %258, ptr noundef %253, ptr noundef %255) #31
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %2)
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %3)
  %259 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %259, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %__kmpc_parallel_51.exit

260:                                              ; preds = %228
  %261 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 32
  %262 = load ptr, ptr %261, align 8, !tbaa !88
  %263 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %265 = addrspacecast ptr %264 to ptr addrspace(3)
  store ptr %262, ptr addrspace(3) %265, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %266 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 24
  %267 = load ptr, ptr %266, align 8, !tbaa !88
  %268 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %270 = addrspacecast ptr %269 to ptr addrspace(3)
  store ptr %267, ptr addrspace(3) %270, align 8, !tbaa !88, !alias.scope !71, !noalias !25
  %271 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 16
  %272 = load ptr, ptr %271, align 8, !tbaa !88
  %273 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 16
  %275 = addrspacecast ptr %274 to ptr addrspace(3)
  store ptr %272, ptr addrspace(3) %275, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %276 = getelementptr inbounds nuw i8, ptr %captured_vars_addrs.ascast, i64 8
  %277 = load ptr, ptr %276, align 8, !tbaa !88
  %278 = addrspacecast ptr addrspace(3) @llvm.amdgcn.module.lds to ptr
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %280 = addrspacecast ptr %279 to ptr addrspace(3)
  store ptr %277, ptr addrspace(3) %280, align 8, !tbaa !88, !alias.scope !71, !noalias !25
  %281 = load ptr, ptr %captured_vars_addrs.ascast, align 8, !tbaa !88
  store ptr %281, ptr addrspace(3) @llvm.amdgcn.module.lds, align 16, !tbaa !88, !alias.scope !71, !noalias !25
  %282 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %283 = load i32, ptr addrspace(3) %282, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %284 = icmp eq i32 %283, 1
  call void @llvm.assume(i1 %284)
  %285 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 %238, ptr addrspace(3) %285, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %286 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  %287 = load i32, ptr addrspace(3) %286, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %288 = icmp eq i32 %287, 0
  call void @llvm.assume(i1 %288)
  %289 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 1, ptr addrspace(3) %289, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %290 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %291 = load i32, ptr addrspace(3) %290, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %292 = icmp eq i32 %291, 0
  call void @llvm.assume(i1 %292)
  %293 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 1, ptr addrspace(3) %293, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  %294 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  store i32 0, ptr addrspace(3) %294, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %295 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 8
  store i32 0, ptr addrspace(3) %295, align 8, !tbaa !21, !alias.scope !26, !noalias !25
  %296 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  store i32 1, ptr addrspace(3) %296, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  br label %__kmpc_parallel_51.exit

__kmpc_parallel_51.exit:                          ; preds = %260, %240, %218, %167, %161, %140
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %__kmpc_parallel_51.exit
  %297 = load i32, ptr %.omp.iv.ascast, align 4
  %298 = load i32, ptr %.omp.stride.ascast, align 4
  %add7 = add nsw i32 %297, %298
  store i32 %add7, ptr %.omp.iv.ascast, align 4
  %299 = load i32, ptr %.omp.comb.lb.ascast, align 4
  %300 = load i32, ptr %.omp.stride.ascast, align 4
  %add8 = add nsw i32 %299, %300
  store i32 %add8, ptr %.omp.comb.lb.ascast, align 4
  %301 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %302 = load i32, ptr %.omp.stride.ascast, align 4
  %add9 = add nsw i32 %301, %302
  store i32 %add9, ptr %.omp.comb.ub.ascast, align 4
  %303 = load i32, ptr %.omp.comb.ub.ascast, align 4
  %304 = load i32, ptr %.capture_expr.2.ascast, align 4
  %cmp10 = icmp sgt i32 %303, %304
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %omp.inner.for.inc
  %305 = load i32, ptr %.capture_expr.2.ascast, align 4
  br label %cond.end13

cond.false12:                                     ; preds = %omp.inner.for.inc
  %306 = load i32, ptr %.omp.comb.ub.ascast, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %305, %cond.true11 ], [ %306, %cond.false12 ]
  store i32 %cond14, ptr %.omp.comb.ub.ascast, align 4
  %307 = load i32, ptr %.omp.comb.lb.ascast, align 4
  store i32 %307, ptr %.omp.iv.ascast, align 4
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %308 = load ptr, ptr %.global_tid..addr.ascast, align 8
  %309 = load i32, ptr %308, align 4
  call fastcc void @__kmpc_distribute_static_fini()
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %310 = getelementptr inbounds nuw [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val1.ascast, ptr %310, align 8
  %"_openmp_teams_reductions_buffer_$_$ptr" = call fastcc ptr @__kmpc_reduction_get_fixed_buffer()
  %311 = call fastcc i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr %"_openmp_teams_reductions_buffer_$_$ptr", ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.1.11, ptr @_omp_reduction_inter_warp_copy_func.2.12, ptr @_omp_reduction_list_to_global_copy_func.13, ptr @_omp_reduction_list_to_global_reduce_func.14, ptr @_omp_reduction_global_to_list_copy_func.15, ptr @_omp_reduction_global_to_list_reduce_func.16)
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.then:                              ; preds = %omp.precond.end
  %313 = load float, ptr %6, align 4
  %314 = load float, ptr %val1.ascast, align 4
  %add15 = fadd float %313, %314
  store float %add15, ptr %6, align 4
  br label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.precond.end
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc void @__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., i64 noundef %n, ptr noundef nonnull align 4 dereferenceable(4) %val, ptr noundef %A) unnamed_addr #21 {
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
  %sub = sub nuw nsw i32 %2, 0
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
  call fastcc void @__kmpc_for_static_init_4(ptr %.omp.is_last.ascast, ptr %.omp.lb.ascast, ptr %.omp.ub.ascast, ptr %.omp.stride.ascast)
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
  %mul = mul nuw nsw i32 %12, 1
  %add = add nuw nsw i32 0, %mul
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
  call fastcc void @__kmpc_for_static_fini()
  %21 = getelementptr inbounds nuw [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %val4.ascast, ptr %21, align 8
  %22 = call fastcc i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.17, ptr @_omp_reduction_inter_warp_copy_func.18)
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

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write)
define internal void @_omp_reduction_shuffle_and_reduce_func.1.11(ptr noundef readonly captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #22 {
entry:
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #29
  %7 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %6) #29
  %8 = sext i16 %2 to i32
  %9 = icmp ult i32 %7, 64
  tail call void @llvm.assume(i1 %9) #30
  %10 = add nsw i32 %7, %8
  %11 = icmp ult i32 %10, 64
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add nsw i32 %7, %12
  %14 = shl nsw i32 %13, 2
  %15 = tail call noundef i32 @llvm.amdgcn.ds.bpermute(i32 %14, i32 %5)
  %16 = icmp eq i16 %3, 0
  %17 = icmp eq i16 %3, 1
  %18 = icmp ult i16 %1, %2
  %19 = and i1 %17, %18
  %20 = icmp eq i16 %3, 2
  %21 = and i16 %1, 1
  %22 = icmp eq i16 %21, 0
  %23 = and i1 %20, %22
  %24 = icmp sgt i16 %2, 0
  %25 = and i1 %23, %24
  %26 = or i1 %16, %19
  %27 = or i1 %26, %25
  br i1 %27, label %then, label %ifcont

then:                                             ; preds = %entry
  %28 = bitcast i32 %15 to float
  tail call fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr nonnull %4, float %28) #34
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %29 = icmp uge i16 %1, %2
  %30 = and i1 %17, %29
  br i1 %30, label %then4, label %ifcont6

then4:                                            ; preds = %ifcont
  %31 = load ptr, ptr %0, align 8
  store i32 %15, ptr %31, align 4
  br label %ifcont6

ifcont6:                                          ; preds = %then4, %ifcont
  ret void
}

; Function Attrs: convergent nofree noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.2.12(ptr noundef readonly captures(none) %0, i32 noundef %1) #23 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %3 = addrspacecast ptr addrspace(3) %2 to ptr
  %4 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %nvptx_lane_id = and i32 %4, 63
  %5 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %6 = load i32, ptr addrspace(3) %5, align 16, !alias.scope !26, !noalias !25
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %17, label %7

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %9 = addrspacecast ptr addrspace(3) %8 to ptr
  %10 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !54

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  br label %17

17:                                               ; preds = %15, %7, %entry
  %18 = phi ptr [ %16, %15 ], [ %3, %entry ], [ %9, %7 ]
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = icmp sgt i32 %19, -1
  tail call void @llvm.assume(i1 %20) #30
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %__kmpc_global_thread_num.exit, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %24 = addrspacecast ptr addrspace(3) %23 to ptr
  br i1 %.not.i, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %27 = addrspacecast ptr addrspace(3) %26 to ptr
  %28 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %29 = zext nneg i32 %4 to i64
  %30 = getelementptr inbounds nuw ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !54

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %35

35:                                               ; preds = %33, %25, %22
  %36 = phi ptr [ %34, %33 ], [ %24, %22 ], [ %27, %25 ]
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp sgt i32 %37, -1
  tail call void @llvm.assume(i1 %38)
  br label %__kmpc_global_thread_num.exit

__kmpc_global_thread_num.exit:                    ; preds = %35, %17
  %39 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %__kmpc_global_thread_num.exit
  %42 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %43 = addrspacecast ptr addrspace(3) %42 to ptr
  br i1 %.not.i, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %4 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 4
  br label %54

54:                                               ; preds = %52, %44, %41
  %55 = phi ptr [ %53, %52 ], [ %43, %41 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %60 = getelementptr inbounds nuw i8, ptr addrspace(4) %59, i64 12
  %61 = load i16, ptr addrspace(4) %60, align 4, !range !47, !invariant.load !25, !noundef !25
  %62 = zext nneg i16 %61 to i32
  %63 = add nsw i32 %62, -1
  %64 = and i32 %63, -64
  %65 = icmp eq i32 %4, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit

67:                                               ; preds = %__kmpc_global_thread_num.exit
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit

68:                                               ; preds = %58, %54
  %69 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %70 = addrspacecast ptr addrspace(3) %69 to ptr
  br i1 %.not.i, label %81, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %73 = addrspacecast ptr addrspace(3) %72 to ptr
  %74 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %75 = zext nneg i32 %4 to i64
  %76 = getelementptr inbounds nuw ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !54

79:                                               ; preds = %71
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  br label %81

81:                                               ; preds = %79, %71, %68
  %82 = phi ptr [ %80, %79 ], [ %70, %68 ], [ %73, %71 ]
  %83 = load i32, ptr %82, align 4, !tbaa !21
  %84 = icmp sgt i32 %83, -1
  tail call void @llvm.assume(i1 %84)
  %85 = icmp eq i32 %83, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %88 = load i32, ptr addrspace(3) %87, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %92 = getelementptr inbounds nuw i8, ptr addrspace(4) %91, i64 12
  %93 = load i16, ptr addrspace(4) %92, align 4, !range !47, !invariant.load !25, !noundef !25
  %94 = zext nneg i16 %93 to i32
  %95 = add nsw i32 %94, -64
  br label %96

96:                                               ; preds = %90, %86, %81
  %97 = phi i32 [ 1, %81 ], [ %95, %90 ], [ %88, %86 ]
  fence syncscope("workgroup") acquire
  %98 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %99 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %100 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %99)
  %101 = icmp ult i32 %100, 64
  tail call void @llvm.assume(i1 %101)
  %102 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %103 = zext nneg i32 %100 to i64
  %104 = shl nsw i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %98, %105
  %107 = and i64 %106, %102
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %.loopexit8

109:                                              ; preds = %96
  %110 = lshr i32 %97, 6
  %111 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %110, -1
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %.preheader7

115:                                              ; preds = %109
  %116 = and i32 %111, -65536
  %117 = add i32 %116, 65536
  store atomic i32 %117, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit8

.preheader7:                                      ; preds = %.preheader7, %109
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %118 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %119 = xor i32 %118, %111
  %120 = icmp ult i32 %119, 65536
  br i1 %120, label %.preheader7, label %.loopexit8, !llvm.loop !89

.loopexit8:                                       ; preds = %.preheader7, %115, %96
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit

__kmpc_barrier.exit:                              ; preds = %.loopexit8, %67, %66
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %ifcont

then:                                             ; preds = %__kmpc_barrier.exit
  %nvptx_warp_id = lshr exact i32 %4, 6
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %nvptx_warp_id
  %123 = load i32, ptr %121, align 4
  store volatile i32 %123, ptr addrspace(3) %122, align 4, !alias.scope !90, !noalias !25
  br label %ifcont

ifcont:                                           ; preds = %then, %__kmpc_barrier.exit
  %124 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %125 = addrspacecast ptr addrspace(3) %124 to ptr
  %126 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %127 = load i32, ptr addrspace(3) %126, align 16, !alias.scope !26, !noalias !25
  %.not.i2 = icmp eq i32 %127, 0
  br i1 %.not.i2, label %138, label %128

128:                                              ; preds = %ifcont
  %129 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %130 = addrspacecast ptr addrspace(3) %129 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = zext nneg i32 %4 to i64
  %133 = getelementptr inbounds nuw ptr, ptr %131, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !54

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 4
  br label %138

138:                                              ; preds = %136, %128, %ifcont
  %139 = phi ptr [ %137, %136 ], [ %125, %ifcont ], [ %130, %128 ]
  %140 = load i32, ptr %139, align 4, !tbaa !21
  %141 = icmp sgt i32 %140, -1
  tail call void @llvm.assume(i1 %141) #30
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %__kmpc_global_thread_num.exit3, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %145 = addrspacecast ptr addrspace(3) %144 to ptr
  br i1 %.not.i2, label %156, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %148 = addrspacecast ptr addrspace(3) %147 to ptr
  %149 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %150 = zext nneg i32 %4 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !54

154:                                              ; preds = %146
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %156

156:                                              ; preds = %154, %146, %143
  %157 = phi ptr [ %155, %154 ], [ %145, %143 ], [ %148, %146 ]
  %158 = load i32, ptr %157, align 4, !tbaa !21
  %159 = icmp sgt i32 %158, -1
  tail call void @llvm.assume(i1 %159)
  br label %__kmpc_global_thread_num.exit3

__kmpc_global_thread_num.exit3:                   ; preds = %156, %138
  %160 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %__kmpc_global_thread_num.exit3
  %163 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %164 = addrspacecast ptr addrspace(3) %163 to ptr
  br i1 %.not.i2, label %175, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %167 = addrspacecast ptr addrspace(3) %166 to ptr
  %168 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %169 = zext nneg i32 %4 to i64
  %170 = getelementptr inbounds nuw ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !52
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !54

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 4
  br label %175

175:                                              ; preds = %173, %165, %162
  %176 = phi ptr [ %174, %173 ], [ %164, %162 ], [ %167, %165 ]
  %177 = load i32, ptr %176, align 4, !tbaa !21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %181 = getelementptr inbounds nuw i8, ptr addrspace(4) %180, i64 12
  %182 = load i16, ptr addrspace(4) %181, align 4, !range !47, !invariant.load !25, !noundef !25
  %183 = zext nneg i16 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = and i32 %184, -64
  %186 = icmp eq i32 %4, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit6

188:                                              ; preds = %__kmpc_global_thread_num.exit3
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit6

189:                                              ; preds = %179, %175
  %190 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %191 = addrspacecast ptr addrspace(3) %190 to ptr
  br i1 %.not.i2, label %202, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %194 = addrspacecast ptr addrspace(3) %193 to ptr
  %195 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %196 = zext nneg i32 %4 to i64
  %197 = getelementptr inbounds nuw ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !54

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 4
  br label %202

202:                                              ; preds = %200, %192, %189
  %203 = phi ptr [ %201, %200 ], [ %191, %189 ], [ %194, %192 ]
  %204 = load i32, ptr %203, align 4, !tbaa !21
  %205 = icmp sgt i32 %204, -1
  tail call void @llvm.assume(i1 %205)
  %206 = icmp eq i32 %204, 1
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %209 = load i32, ptr addrspace(3) %208, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %213 = getelementptr inbounds nuw i8, ptr addrspace(4) %212, i64 12
  %214 = load i16, ptr addrspace(4) %213, align 4, !range !47, !invariant.load !25, !noundef !25
  %215 = zext nneg i16 %214 to i32
  %216 = add nsw i32 %215, -64
  br label %217

217:                                              ; preds = %211, %207, %202
  %218 = phi i32 [ 1, %202 ], [ %216, %211 ], [ %209, %207 ]
  fence syncscope("workgroup") acquire
  %219 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %220 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %221 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %220)
  %222 = icmp ult i32 %221, 64
  tail call void @llvm.assume(i1 %222)
  %223 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %224 = zext nneg i32 %221 to i64
  %225 = shl nsw i64 -1, %224
  %226 = xor i64 %225, -1
  %227 = and i64 %219, %226
  %228 = and i64 %227, %223
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %.loopexit

230:                                              ; preds = %217
  %231 = lshr i32 %218, 6
  %232 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %231, -1
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %.preheader

236:                                              ; preds = %230
  %237 = and i32 %232, -65536
  %238 = add i32 %237, 65536
  store atomic i32 %238, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit

.preheader:                                       ; preds = %.preheader, %230
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %239 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %240 = xor i32 %239, %232
  %241 = icmp ult i32 %240, 65536
  br i1 %241, label %.preheader, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.preheader, %236, %217
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit6

__kmpc_barrier.exit6:                             ; preds = %.loopexit, %188, %187
  %is_active_thread = icmp ult i32 %4, %1
  br i1 %is_active_thread, label %then3, label %ifcont5

then3:                                            ; preds = %__kmpc_barrier.exit6
  %242 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %4
  %243 = load ptr, ptr %0, align 8
  %244 = load volatile i32, ptr addrspace(3) %242, align 4, !alias.scope !90, !noalias !25
  store i32 %244, ptr %243, align 4
  br label %ifcont5

ifcont5:                                          ; preds = %then3, %__kmpc_barrier.exit6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_list_to_global_copy_func.13(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #24 {
entry:
  %3 = load ptr, ptr %2, align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %4
  %6 = load float, ptr %3, align 4
  store float %6, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_list_to_global_reduce_func.14(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #24 {
entry:
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %3
  %.val = load ptr, ptr %2, align 8
  %.val.val = load float, ptr %.val, align 4
  tail call fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %4, float %.val.val) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_global_to_list_copy_func.15(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #25 {
entry:
  %3 = load ptr, ptr %2, align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %4
  %6 = load float, ptr %5, align 4
  store float %6, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @_omp_reduction_global_to_list_reduce_func.16(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #26 {
entry:
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._globalized_locals_ty, ptr %0, i64 %3
  %.val = load ptr, ptr %2, align 8
  %.omp.reduction.red_list.ascast.val.val = load float, ptr %4, align 4
  tail call fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr %.val, float %.omp.reduction.red_list.ascast.val.val) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp$reduction$reduction_func"(ptr captures(none) %.0.val, float %.0.val1.0.val) unnamed_addr #27 {
entry:
  %0 = load float, ptr %.0.val, align 4
  %add = fadd float %0, %.0.val1.0.val
  store float %add, ptr %.0.val, align 4
  ret void
}

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write)
define internal void @_omp_reduction_shuffle_and_reduce_func.17(ptr noundef readonly captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #28 {
entry:
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca float, align 4, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #29
  %7 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %6) #29
  %8 = sext i16 %2 to i32
  %9 = icmp ult i32 %7, 64
  tail call void @llvm.assume(i1 %9) #30
  %10 = add nsw i32 %7, %8
  %11 = icmp ult i32 %10, 64
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add nsw i32 %7, %12
  %14 = shl nsw i32 %13, 2
  %15 = tail call noundef i32 @llvm.amdgcn.ds.bpermute(i32 %14, i32 %5)
  store i32 %15, ptr addrspace(5) %.omp.reduction.element, align 4
  store ptr %.omp.reduction.element.ascast, ptr addrspace(5) %.omp.reduction.remote_reduce_list, align 8
  %16 = icmp eq i16 %3, 0
  %17 = icmp eq i16 %3, 1
  %18 = icmp ult i16 %1, %2
  %19 = and i1 %17, %18
  %20 = icmp eq i16 %3, 2
  %21 = and i16 %1, 1
  %22 = icmp eq i16 %21, 0
  %23 = and i1 %20, %22
  %24 = icmp sgt i16 %2, 0
  %25 = and i1 %23, %24
  %26 = or i1 %16, %19
  %27 = or i1 %26, %25
  br i1 %27, label %then, label %ifcont

then:                                             ; preds = %entry
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  call fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr nonnull %4, ptr %.omp.reduction.remote_reduce_list.ascast) #35
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %28 = icmp uge i16 %1, %2
  %29 = and i1 %17, %28
  br i1 %29, label %then4, label %ifcont6

then4:                                            ; preds = %ifcont
  %30 = load ptr, ptr %0, align 8
  store i32 %15, ptr %30, align 4
  br label %ifcont6

ifcont6:                                          ; preds = %then4, %ifcont
  ret void
}

; Function Attrs: convergent nofree noinline norecurse nounwind
define internal void @_omp_reduction_inter_warp_copy_func.18(ptr noundef readonly captures(none) %0, i32 noundef %1) #23 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %3 = addrspacecast ptr addrspace(3) %2 to ptr
  %4 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x()
  %nvptx_lane_id = and i32 %4, 63
  %5 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %6 = load i32, ptr addrspace(3) %5, align 16, !alias.scope !26, !noalias !25
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %17, label %7

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %9 = addrspacecast ptr addrspace(3) %8 to ptr
  %10 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !54

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  br label %17

17:                                               ; preds = %15, %7, %entry
  %18 = phi ptr [ %16, %15 ], [ %3, %entry ], [ %9, %7 ]
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = icmp sgt i32 %19, -1
  tail call void @llvm.assume(i1 %20) #30
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %__kmpc_global_thread_num.exit, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %24 = addrspacecast ptr addrspace(3) %23 to ptr
  br i1 %.not.i, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %27 = addrspacecast ptr addrspace(3) %26 to ptr
  %28 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %29 = zext nneg i32 %4 to i64
  %30 = getelementptr inbounds nuw ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !54

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 4
  br label %35

35:                                               ; preds = %33, %25, %22
  %36 = phi ptr [ %34, %33 ], [ %24, %22 ], [ %27, %25 ]
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp sgt i32 %37, -1
  tail call void @llvm.assume(i1 %38)
  br label %__kmpc_global_thread_num.exit

__kmpc_global_thread_num.exit:                    ; preds = %35, %17
  %39 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %__kmpc_global_thread_num.exit
  %42 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %43 = addrspacecast ptr addrspace(3) %42 to ptr
  br i1 %.not.i, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %46 = addrspacecast ptr addrspace(3) %45 to ptr
  %47 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %48 = zext nneg i32 %4 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !54

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 4
  br label %54

54:                                               ; preds = %52, %44, %41
  %55 = phi ptr [ %53, %52 ], [ %43, %41 ], [ %46, %44 ]
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %60 = getelementptr inbounds nuw i8, ptr addrspace(4) %59, i64 12
  %61 = load i16, ptr addrspace(4) %60, align 4, !range !47, !invariant.load !25, !noundef !25
  %62 = zext nneg i16 %61 to i32
  %63 = add nsw i32 %62, -1
  %64 = and i32 %63, -64
  %65 = icmp eq i32 %4, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit

67:                                               ; preds = %__kmpc_global_thread_num.exit
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit

68:                                               ; preds = %58, %54
  %69 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %70 = addrspacecast ptr addrspace(3) %69 to ptr
  br i1 %.not.i, label %81, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %73 = addrspacecast ptr addrspace(3) %72 to ptr
  %74 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %75 = zext nneg i32 %4 to i64
  %76 = getelementptr inbounds nuw ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !54

79:                                               ; preds = %71
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  br label %81

81:                                               ; preds = %79, %71, %68
  %82 = phi ptr [ %80, %79 ], [ %70, %68 ], [ %73, %71 ]
  %83 = load i32, ptr %82, align 4, !tbaa !21
  %84 = icmp sgt i32 %83, -1
  tail call void @llvm.assume(i1 %84)
  %85 = icmp eq i32 %83, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %88 = load i32, ptr addrspace(3) %87, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %92 = getelementptr inbounds nuw i8, ptr addrspace(4) %91, i64 12
  %93 = load i16, ptr addrspace(4) %92, align 4, !range !47, !invariant.load !25, !noundef !25
  %94 = zext nneg i16 %93 to i32
  %95 = add nsw i32 %94, -64
  br label %96

96:                                               ; preds = %90, %86, %81
  %97 = phi i32 [ 1, %81 ], [ %95, %90 ], [ %88, %86 ]
  fence syncscope("workgroup") acquire
  %98 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %99 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %100 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %99)
  %101 = icmp ult i32 %100, 64
  tail call void @llvm.assume(i1 %101)
  %102 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %103 = zext nneg i32 %100 to i64
  %104 = shl nsw i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %98, %105
  %107 = and i64 %106, %102
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %.loopexit8

109:                                              ; preds = %96
  %110 = lshr i32 %97, 6
  %111 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %110, -1
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %.preheader7

115:                                              ; preds = %109
  %116 = and i32 %111, -65536
  %117 = add i32 %116, 65536
  store atomic i32 %117, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit8

.preheader7:                                      ; preds = %.preheader7, %109
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %118 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %119 = xor i32 %118, %111
  %120 = icmp ult i32 %119, 65536
  br i1 %120, label %.preheader7, label %.loopexit8, !llvm.loop !89

.loopexit8:                                       ; preds = %.preheader7, %115, %96
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit

__kmpc_barrier.exit:                              ; preds = %.loopexit8, %67, %66
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %ifcont

then:                                             ; preds = %__kmpc_barrier.exit
  %nvptx_warp_id = lshr exact i32 %4, 6
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %nvptx_warp_id
  %123 = load i32, ptr %121, align 4
  store volatile i32 %123, ptr addrspace(3) %122, align 4, !alias.scope !90, !noalias !25
  br label %ifcont

ifcont:                                           ; preds = %then, %__kmpc_barrier.exit
  %124 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %125 = addrspacecast ptr addrspace(3) %124 to ptr
  %126 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 32
  %127 = load i32, ptr addrspace(3) %126, align 16, !alias.scope !26, !noalias !25
  %.not.i2 = icmp eq i32 %127, 0
  br i1 %.not.i2, label %138, label %128

128:                                              ; preds = %ifcont
  %129 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %130 = addrspacecast ptr addrspace(3) %129 to ptr
  %131 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %132 = zext nneg i32 %4 to i64
  %133 = getelementptr inbounds nuw ptr, ptr %131, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !54

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 4
  br label %138

138:                                              ; preds = %136, %128, %ifcont
  %139 = phi ptr [ %137, %136 ], [ %125, %ifcont ], [ %130, %128 ]
  %140 = load i32, ptr %139, align 4, !tbaa !21
  %141 = icmp sgt i32 %140, -1
  tail call void @llvm.assume(i1 %141) #30
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %__kmpc_global_thread_num.exit3, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %145 = addrspacecast ptr addrspace(3) %144 to ptr
  br i1 %.not.i2, label %156, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %148 = addrspacecast ptr addrspace(3) %147 to ptr
  %149 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %150 = zext nneg i32 %4 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !54

154:                                              ; preds = %146
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %156

156:                                              ; preds = %154, %146, %143
  %157 = phi ptr [ %155, %154 ], [ %145, %143 ], [ %148, %146 ]
  %158 = load i32, ptr %157, align 4, !tbaa !21
  %159 = icmp sgt i32 %158, -1
  tail call void @llvm.assume(i1 %159)
  br label %__kmpc_global_thread_num.exit3

__kmpc_global_thread_num.exit3:                   ; preds = %156, %138
  %160 = load i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 6), align 8, !tbaa !21, !alias.scope !22, !noalias !25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %__kmpc_global_thread_num.exit3
  %163 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %164 = addrspacecast ptr addrspace(3) %163 to ptr
  br i1 %.not.i2, label %175, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %167 = addrspacecast ptr addrspace(3) %166 to ptr
  %168 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %169 = zext nneg i32 %4 to i64
  %170 = getelementptr inbounds nuw ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !52
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !54

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 4
  br label %175

175:                                              ; preds = %173, %165, %162
  %176 = phi ptr [ %174, %173 ], [ %164, %162 ], [ %167, %165 ]
  %177 = load i32, ptr %176, align 4, !tbaa !21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %181 = getelementptr inbounds nuw i8, ptr addrspace(4) %180, i64 12
  %182 = load i16, ptr addrspace(4) %181, align 4, !range !47, !invariant.load !25, !noundef !25
  %183 = zext nneg i16 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = and i32 %184, -64
  %186 = icmp eq i32 %4, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  fence syncscope("agent") seq_cst
  br label %__kmpc_barrier.exit6

188:                                              ; preds = %__kmpc_global_thread_num.exit3
  fence syncscope("workgroup") seq_cst
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") seq_cst
  br label %__kmpc_barrier.exit6

189:                                              ; preds = %179, %175
  %190 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %191 = addrspacecast ptr addrspace(3) %190 to ptr
  br i1 %.not.i2, label %202, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 4
  %194 = addrspacecast ptr addrspace(3) %193 to ptr
  %195 = load ptr, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 5), align 16, !tbaa !32, !alias.scope !35, !noalias !25
  %196 = zext nneg i32 %4 to i64
  %197 = getelementptr inbounds nuw ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !54

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 4
  br label %202

202:                                              ; preds = %200, %192, %189
  %203 = phi ptr [ %201, %200 ], [ %191, %189 ], [ %194, %192 ]
  %204 = load i32, ptr %203, align 4, !tbaa !21
  %205 = icmp sgt i32 %204, -1
  tail call void @llvm.assume(i1 %205)
  %206 = icmp eq i32 %204, 1
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = getelementptr inbounds nuw i8, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 2), i32 28
  %209 = load i32, ptr addrspace(3) %208, align 4, !tbaa !21, !alias.scope !26, !noalias !25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = tail call align 8 dereferenceable(256) ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %213 = getelementptr inbounds nuw i8, ptr addrspace(4) %212, i64 12
  %214 = load i16, ptr addrspace(4) %213, align 4, !range !47, !invariant.load !25, !noundef !25
  %215 = zext nneg i16 %214 to i32
  %216 = add nsw i32 %215, -64
  br label %217

217:                                              ; preds = %211, %207, %202
  %218 = phi i32 [ 1, %202 ], [ %216, %211 ], [ %209, %207 ]
  fence syncscope("workgroup") acquire
  %219 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %220 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %221 = tail call noundef i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %220)
  %222 = icmp ult i32 %221, 64
  tail call void @llvm.assume(i1 %222)
  %223 = tail call noundef i64 @llvm.amdgcn.ballot.i64(i1 true)
  %224 = zext nneg i32 %221 to i64
  %225 = shl nsw i64 -1, %224
  %226 = xor i64 %225, -1
  %227 = and i64 %219, %226
  %228 = and i64 %227, %223
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %.loopexit

230:                                              ; preds = %217
  %231 = lshr i32 %218, 6
  %232 = atomicrmw add ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7), i32 1 syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25, !amdgpu.no.fine.grained.memory !25, !amdgpu.no.remote.memory !25
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %231, -1
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %.preheader

236:                                              ; preds = %230
  %237 = and i32 %232, -65536
  %238 = add i32 %237, 65536
  store atomic i32 %238, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  br label %.loopexit

.preheader:                                       ; preds = %.preheader, %230
  tail call void @llvm.amdgcn.s.sleep(i32 0)
  %239 = load atomic i32, ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 7) syncscope("agent") monotonic, align 4, !alias.scope !45, !noalias !25
  %240 = xor i32 %239, %232
  %241 = icmp ult i32 %240, 65536
  br i1 %241, label %.preheader, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.preheader, %236, %217
  fence syncscope("workgroup") release
  br label %__kmpc_barrier.exit6

__kmpc_barrier.exit6:                             ; preds = %.loopexit, %188, %187
  %is_active_thread = icmp ult i32 %4, %1
  br i1 %is_active_thread, label %then3, label %ifcont5

then3:                                            ; preds = %__kmpc_barrier.exit6
  %242 = getelementptr inbounds nuw [64 x i32], ptr addrspace(3) getelementptr inbounds (%llvm.amdgcn.module.lds.t, ptr addrspace(3) @llvm.amdgcn.module.lds, i32 0, i32 1), i32 0, i32 %4
  %243 = load ptr, ptr %0, align 8
  %244 = load volatile i32, ptr addrspace(3) %242, align 4, !alias.scope !90, !noalias !25
  store i32 %244, ptr %243, align 4
  br label %ifcont5

ifcont5:                                          ; preds = %then3, %__kmpc_barrier.exit6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define internal fastcc void @"__omp_offloading_52_2eb90c6__Z7kernel2Pfi_l6_omp_outlined_omp_outlined_omp$reduction$reduction_func"(ptr captures(none) %.0.val, ptr noundef readonly captures(none) %0) unnamed_addr #24 {
entry:
  %1 = addrspacecast ptr %0 to ptr addrspace(5)
  %2 = load ptr, ptr addrspace(5) %1, align 8
  %3 = load float, ptr %.0.val, align 4
  %4 = addrspacecast ptr %2 to ptr addrspace(5)
  %5 = load float, ptr addrspace(5) %4, align 4
  %add = fadd float %3, %5
  store float %add, ptr %.0.val, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare void @llvm.donothing() #8

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { convergent mustprogress nofree norecurse nounwind willreturn "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { convergent nocallback nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #7 = { convergent nocallback nofree nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #14 = { convergent mustprogress nofree norecurse nounwind "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #15 = { convergent mustprogress nofree norecurse nounwind "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "uniform-work-group-size"="false" }
attributes #20 = { convergent mustprogress noinline norecurse nounwind optnone "amdgpu-flat-work-group-size"="1,256" "amdgpu-lds-size"="856" "frame-pointer"="all" "kernel" "no-trapping-math"="true" "omp_target_thread_limit"="256" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="true" }
attributes #21 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" }
attributes #22 = { convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #23 = { convergent nofree noinline norecurse nounwind "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #24 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #25 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #26 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #27 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #28 = { convergent mustprogress nofree noinline norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write) "amdgpu-agpr-alloc"="0" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="false" }
attributes #29 = { nosync }
attributes #30 = { memory(write) }
attributes #31 = { convergent nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { nosync nounwind memory(readwrite) }
attributes #35 = { nosync nounwind }

!llvm.ident = !{!1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !1, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !1, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!omp_offload.info = !{!11, !12}
!opencl.ocl.version = !{!13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}

!0 = !{i32 0, i32 1}
!1 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 7c51e426159a7751b062e9860e1ec71cd8fc7bb7)"}
!2 = !{!"AMD clang version 18.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.3.1 24491 1e0fda770a2079fbd71e4b70974d74f62fd3af10)"}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{i32 1, !"amdhsa_code_object_version", i32 600}
!8 = !{i32 7, !"openmp", i32 51}
!9 = !{i32 7, !"openmp-device", i32 51}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i32 0, i32 82, i32 48991881, !"_Z7kernel1Pfi", i32 6, i32 0, i32 0}
!12 = !{i32 0, i32 82, i32 48992454, !"_Z7kernel2Pfi", i32 6, i32 0, i32 0}
!13 = !{i32 2, i32 0}
!14 = !{!15, !18, i64 2}
!15 = !{!"_ZTS26ConfigurationEnvironmentTy", !16, i64 0, !16, i64 1, !18, i64 2, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"_ZTSN4llvm3omp19OMPTgtExecModeFlagsE", !16, i64 0}
!19 = !{!"int", !16, i64 0}
!20 = !{!15, !16, i64 0}
!21 = !{!19, !19, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24}
!25 = !{}
!26 = !{!27}
!27 = distinct !{!27, !24}
!28 = !{!29, !19, i64 32}
!29 = !{!"_ZTSN4ompx5state11TeamStateTyE", !30, i64 0, !19, i64 28, !19, i64 32, !31, i64 40}
!30 = !{!"_ZTSN4ompx5state10ICVStateTyE", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24}
!31 = !{!"any pointer", !16, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p2 _ZTSN4ompx5state13ThreadStateTyE", !34, i64 0}
!34 = !{!"any p2 pointer", !31, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !24}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS19KernelEnvironmentTy", !31, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !24}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS25KernelLaunchEnvironmentTy", !31, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !24}
!45 = !{!46}
!46 = distinct !{!46, !24}
!47 = !{i16 1, i16 1025}
!48 = !{!30, !19, i64 4}
!49 = !{!30, !19, i64 8}
!50 = !{!29, !19, i64 28}
!51 = !{i32 0, i32 1024}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSN4ompx5state13ThreadStateTyE", !31, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{i64 0, i64 64}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = !{i32 1, i32 0}
!61 = !{!62}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !58}
!64 = !{!65}
!65 = distinct !{!65, !24}
!66 = !{i32 0, i32 1025}
!67 = distinct !{!67, !58}
!68 = !{i32 1, i32 1025}
!69 = !{!70, !31, i64 8}
!70 = !{!"_ZTS25KernelLaunchEnvironmentTy", !19, i64 0, !19, i64 4, !31, i64 8}
!71 = !{!72}
!72 = distinct !{!72, !24}
!73 = !{!23, !40, !44, !46, !36, !27, !65, !62, !74}
!74 = distinct !{!74, !24}
!75 = !{!76, !16, i64 1}
!76 = !{!"_ZTS19KernelEnvironmentTy", !15, i64 0, !77, i64 32, !78, i64 40}
!77 = !{!"p1 _ZTS7IdentTy", !31, i64 0}
!78 = !{!"p1 _ZTS20DynamicEnvironmentTy", !31, i64 0}
!79 = !{!"branch_weights", i32 4000000, i32 4001}
!80 = !{!"branch_weights", i32 4001, i32 1}
!81 = !{!82, !83, i64 8}
!82 = !{!"_ZTS18DeviceMemoryPoolTy", !31, i64 0, !83, i64 8}
!83 = !{!"long long", !16, i64 0}
!84 = !{i64 1, i64 0}
!85 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 4, !21}
!86 = !{!87, !53, i64 32}
!87 = !{!"_ZTSN4ompx5state13ThreadStateTyE", !30, i64 0, !53, i64 32}
!88 = !{!31, !31, i64 0}
!89 = distinct !{!89, !58}
!90 = !{!74}
