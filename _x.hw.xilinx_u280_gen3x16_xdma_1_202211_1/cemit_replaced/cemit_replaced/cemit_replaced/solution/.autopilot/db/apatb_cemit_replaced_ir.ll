; ModuleID = '/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_cemit_replaced_ir([1 x [32 x [32 x float]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" %v17, [10 x float]* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" %v18, [10 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %v19) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %v17_copy = bitcast i8* %malloccall to [1 x [1 x [32 x [32 x float]]]]*
  %v18_copy = alloca [1 x [10 x float]], align 512
  %malloccall1 = tail call i8* @malloc(i64 40960)
  %v19_copy = bitcast i8* %malloccall1 to [1024 x [10 x float]]*
  %0 = bitcast [1 x [32 x [32 x float]]]* %v17 to [1 x [1 x [32 x [32 x float]]]]*
  %1 = bitcast [10 x float]* %v18 to [1 x [10 x float]]*
  %2 = bitcast [10 x float]* %v19 to [1024 x [10 x float]]*
  call fastcc void @copy_in([1 x [1 x [32 x [32 x float]]]]* nonnull %0, [1 x [1 x [32 x [32 x float]]]]* %v17_copy, [1 x [10 x float]]* nonnull %1, [1 x [10 x float]]* nonnull align 512 %v18_copy, [1024 x [10 x float]]* nonnull %2, [1024 x [10 x float]]* %v19_copy)
  %3 = getelementptr inbounds [1 x [1 x [32 x [32 x float]]]], [1 x [1 x [32 x [32 x float]]]]* %v17_copy, i32 0, i32 0
  %4 = getelementptr inbounds [1 x [10 x float]], [1 x [10 x float]]* %v18_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1024 x [10 x float]], [1024 x [10 x float]]* %v19_copy, i32 0, i32 0
  call void @apatb_cemit_replaced_hw([1 x [32 x [32 x float]]]* %3, [10 x float]* %4, [10 x float]* %5)
  call void @copy_back([1 x [1 x [32 x [32 x float]]]]* %0, [1 x [1 x [32 x [32 x float]]]]* %v17_copy, [1 x [10 x float]]* %1, [1 x [10 x float]]* %v18_copy, [1024 x [10 x float]]* %2, [1024 x [10 x float]]* %v19_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x [1 x [32 x [32 x float]]]]* noalias readonly, [1 x [1 x [32 x [32 x float]]]]* noalias, [1 x [10 x float]]* noalias readonly, [1 x [10 x float]]* noalias align 512, [1024 x [10 x float]]* noalias readonly, [1024 x [10 x float]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a1a32a32f32([1 x [1 x [32 x [32 x float]]]]* %1, [1 x [1 x [32 x [32 x float]]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a1a10f32([1 x [10 x float]]* align 512 %3, [1 x [10 x float]]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024a10f32([1024 x [10 x float]]* %5, [1024 x [10 x float]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1a1a32a32f32([1 x [1 x [32 x [32 x float]]]]* noalias, [1 x [1 x [32 x [32 x float]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [1 x [32 x [32 x float]]]]* %0, null
  %3 = icmp eq [1 x [1 x [32 x [32 x float]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop2

for.loop2:                                        ; preds = %entry
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx926 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1525 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %dst.addr1723 = getelementptr [1 x [1 x [32 x [32 x float]]]], [1 x [1 x [32 x [32 x float]]]]* %0, i64 0, i64 0, i64 0, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %src.addr1824 = getelementptr [1 x [1 x [32 x [32 x float]]]], [1 x [1 x [32 x [32 x float]]]]* %1, i64 0, i64 0, i64 0, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %5 = load float, float* %src.addr1824, align 4
  store float %5, float* %dst.addr1723, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1525, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 32
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx926, 1
  %exitcond29 = icmp ne i64 %for.loop.idx9.next, 32
  br i1 %exitcond29, label %for.loop8, label %ret

ret:                                              ; preds = %for.loop8.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1a10f32([1 x [10 x float]]* noalias align 512, [1 x [10 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [10 x float]]* %0, null
  %3 = icmp eq [1 x [10 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [1 x [10 x float]], [1 x [10 x float]]* %0, i64 0, i64 0, i64 %for.loop.idx39
  %src.addr68 = getelementptr [1 x [10 x float]], [1 x [10 x float]]* %1, i64 0, i64 0, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024a10f32([1024 x [10 x float]]* noalias, [1024 x [10 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x [10 x float]]* %0, null
  %3 = icmp eq [1024 x [10 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [1024 x [10 x float]], [1024 x [10 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [1024 x [10 x float]], [1024 x [10 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1 x [1 x [32 x [32 x float]]]]* noalias, [1 x [1 x [32 x [32 x float]]]]* noalias readonly, [1 x [10 x float]]* noalias, [1 x [10 x float]]* noalias readonly align 512, [1024 x [10 x float]]* noalias, [1024 x [10 x float]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a1a32a32f32([1 x [1 x [32 x [32 x float]]]]* %0, [1 x [1 x [32 x [32 x float]]]]* %1)
  call fastcc void @onebyonecpy_hls.p0a1a10f32([1 x [10 x float]]* %2, [1 x [10 x float]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1024a10f32([1024 x [10 x float]]* %4, [1024 x [10 x float]]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cemit_replaced_hw([1 x [32 x [32 x float]]]*, [10 x float]*, [10 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x [1 x [32 x [32 x float]]]]* noalias, [1 x [1 x [32 x [32 x float]]]]* noalias readonly, [1 x [10 x float]]* noalias, [1 x [10 x float]]* noalias readonly align 512, [1024 x [10 x float]]* noalias, [1024 x [10 x float]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a10f32([1 x [10 x float]]* %2, [1 x [10 x float]]* align 512 %3)
  ret void
}

define void @cemit_replaced_hw_stub_wrapper([1 x [32 x [32 x float]]]*, [10 x float]*, [10 x float]*) #4 {
entry:
  %3 = bitcast [1 x [32 x [32 x float]]]* %0 to [1 x [1 x [32 x [32 x float]]]]*
  %4 = bitcast [10 x float]* %1 to [1 x [10 x float]]*
  %5 = bitcast [10 x float]* %2 to [1024 x [10 x float]]*
  call void @copy_out([1 x [1 x [32 x [32 x float]]]]* null, [1 x [1 x [32 x [32 x float]]]]* %3, [1 x [10 x float]]* null, [1 x [10 x float]]* %4, [1024 x [10 x float]]* null, [1024 x [10 x float]]* %5)
  %6 = bitcast [1 x [1 x [32 x [32 x float]]]]* %3 to [1 x [32 x [32 x float]]]*
  %7 = bitcast [1 x [10 x float]]* %4 to [10 x float]*
  %8 = bitcast [1024 x [10 x float]]* %5 to [10 x float]*
  call void @cemit_replaced_hw_stub([1 x [32 x [32 x float]]]* %6, [10 x float]* %7, [10 x float]* %8)
  call void @copy_in([1 x [1 x [32 x [32 x float]]]]* null, [1 x [1 x [32 x [32 x float]]]]* %3, [1 x [10 x float]]* null, [1 x [10 x float]]* %4, [1024 x [10 x float]]* null, [1024 x [10 x float]]* %5)
  ret void
}

declare void @cemit_replaced_hw_stub([1 x [32 x [32 x float]]]*, [10 x float]*, [10 x float]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
