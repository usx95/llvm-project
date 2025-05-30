; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: sed 's/iXLen/i32/g' %s | llc -mtriple=riscv32 -mattr=+v,+zvfh \
; RUN:   -verify-machineinstrs -target-abi=ilp32d | FileCheck %s
; RUN: sed 's/iXLen/i64/g' %s | llc -mtriple=riscv64 -mattr=+v,+zvfh \
; RUN:   -verify-machineinstrs -target-abi=lp64d | FileCheck %s

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f16(
  <vscale x 1 x half>,
  <vscale x 1 x half>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vv_nxv1f16_nxv1f16(<vscale x 1 x half> %0, <vscale x 1 x half> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv1f16_nxv1f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf4, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f16(
    <vscale x 1 x half> %0,
    <vscale x 1 x half> %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f16(
  <vscale x 1 x i1>,
  <vscale x 1 x half>,
  <vscale x 1 x half>,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vv_nxv1f16_nxv1f16(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, <vscale x 1 x half> %2, <vscale x 1 x half> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv1f16_nxv1f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf4, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f16(
    <vscale x 1 x half> %1,
    <vscale x 1 x half> %2,
    iXLen %4)
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f16(
    <vscale x 1 x i1> %0,
    <vscale x 1 x half> %2,
    <vscale x 1 x half> %3,
    <vscale x 1 x i1> %mask,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f16(
  <vscale x 2 x half>,
  <vscale x 2 x half>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vv_nxv2f16_nxv2f16(<vscale x 2 x half> %0, <vscale x 2 x half> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv2f16_nxv2f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f16(
    <vscale x 2 x half> %0,
    <vscale x 2 x half> %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f16(
  <vscale x 2 x i1>,
  <vscale x 2 x half>,
  <vscale x 2 x half>,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vv_nxv2f16_nxv2f16(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, <vscale x 2 x half> %2, <vscale x 2 x half> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv2f16_nxv2f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f16(
    <vscale x 2 x half> %1,
    <vscale x 2 x half> %2,
    iXLen %4)
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f16(
    <vscale x 2 x i1> %0,
    <vscale x 2 x half> %2,
    <vscale x 2 x half> %3,
    <vscale x 2 x i1> %mask,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f16(
  <vscale x 4 x half>,
  <vscale x 4 x half>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vv_nxv4f16_nxv4f16(<vscale x 4 x half> %0, <vscale x 4 x half> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv4f16_nxv4f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m1, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f16(
    <vscale x 4 x half> %0,
    <vscale x 4 x half> %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f16(
  <vscale x 4 x i1>,
  <vscale x 4 x half>,
  <vscale x 4 x half>,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vv_nxv4f16_nxv4f16(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, <vscale x 4 x half> %2, <vscale x 4 x half> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv4f16_nxv4f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv.v.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f16(
    <vscale x 4 x half> %1,
    <vscale x 4 x half> %2,
    iXLen %4)
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f16(
    <vscale x 4 x i1> %0,
    <vscale x 4 x half> %2,
    <vscale x 4 x half> %3,
    <vscale x 4 x i1> %mask,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f16(
  <vscale x 8 x half>,
  <vscale x 8 x half>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_vv_nxv8f16_nxv8f16(<vscale x 8 x half> %0, <vscale x 8 x half> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv8f16_nxv8f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m2, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f16(
    <vscale x 8 x half> %0,
    <vscale x 8 x half> %1,
    iXLen %2)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f16(
  <vscale x 8 x i1>,
  <vscale x 8 x half>,
  <vscale x 8 x half>,
  <vscale x 8 x i1>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_mask_vv_nxv8f16_nxv8f16(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, <vscale x 8 x half> %2, <vscale x 8 x half> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv8f16_nxv8f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v14, v0
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    vmfle.vv v14, v12, v10, v0.t
; CHECK-NEXT:    vmv1r.v v0, v14
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f16(
    <vscale x 8 x half> %1,
    <vscale x 8 x half> %2,
    iXLen %4)
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f16(
    <vscale x 8 x i1> %0,
    <vscale x 8 x half> %2,
    <vscale x 8 x half> %3,
    <vscale x 8 x i1> %mask,
    iXLen %4)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmfge.nxv16f16(
  <vscale x 16 x half>,
  <vscale x 16 x half>,
  iXLen);

define <vscale x 16 x i1> @intrinsic_vmfge_vv_nxv16f16_nxv16f16(<vscale x 16 x half> %0, <vscale x 16 x half> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv16f16_nxv16f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m4, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 16 x i1> @llvm.riscv.vmfge.nxv16f16(
    <vscale x 16 x half> %0,
    <vscale x 16 x half> %1,
    iXLen %2)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmfge.mask.nxv16f16(
  <vscale x 16 x i1>,
  <vscale x 16 x half>,
  <vscale x 16 x half>,
  <vscale x 16 x i1>,
  iXLen);

define <vscale x 16 x i1> @intrinsic_vmfge_mask_vv_nxv16f16_nxv16f16(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, <vscale x 16 x half> %2, <vscale x 16 x half> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv16f16_nxv16f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v20, v0
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    vmfle.vv v20, v16, v12, v0.t
; CHECK-NEXT:    vmv1r.v v0, v20
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 16 x i1> @llvm.riscv.vmfge.nxv16f16(
    <vscale x 16 x half> %1,
    <vscale x 16 x half> %2,
    iXLen %4)
  %a = call <vscale x 16 x i1> @llvm.riscv.vmfge.mask.nxv16f16(
    <vscale x 16 x i1> %0,
    <vscale x 16 x half> %2,
    <vscale x 16 x half> %3,
    <vscale x 16 x i1> %mask,
    iXLen %4)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f32(
  <vscale x 1 x float>,
  <vscale x 1 x float>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vv_nxv1f32_nxv1f32(<vscale x 1 x float> %0, <vscale x 1 x float> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv1f32_nxv1f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, mf2, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f32(
    <vscale x 1 x float> %0,
    <vscale x 1 x float> %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f32(
  <vscale x 1 x i1>,
  <vscale x 1 x float>,
  <vscale x 1 x float>,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vv_nxv1f32_nxv1f32(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, <vscale x 1 x float> %2, <vscale x 1 x float> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv1f32_nxv1f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, mf2, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f32(
    <vscale x 1 x float> %1,
    <vscale x 1 x float> %2,
    iXLen %4)
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f32(
    <vscale x 1 x i1> %0,
    <vscale x 1 x float> %2,
    <vscale x 1 x float> %3,
    <vscale x 1 x i1> %mask,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f32(
  <vscale x 2 x float>,
  <vscale x 2 x float>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vv_nxv2f32_nxv2f32(<vscale x 2 x float> %0, <vscale x 2 x float> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv2f32_nxv2f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f32(
    <vscale x 2 x float> %0,
    <vscale x 2 x float> %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f32(
  <vscale x 2 x i1>,
  <vscale x 2 x float>,
  <vscale x 2 x float>,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vv_nxv2f32_nxv2f32(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, <vscale x 2 x float> %2, <vscale x 2 x float> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv2f32_nxv2f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv.v.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f32(
    <vscale x 2 x float> %1,
    <vscale x 2 x float> %2,
    iXLen %4)
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f32(
    <vscale x 2 x i1> %0,
    <vscale x 2 x float> %2,
    <vscale x 2 x float> %3,
    <vscale x 2 x i1> %mask,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f32(
  <vscale x 4 x float>,
  <vscale x 4 x float>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vv_nxv4f32_nxv4f32(<vscale x 4 x float> %0, <vscale x 4 x float> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv4f32_nxv4f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m2, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f32(
    <vscale x 4 x float> %0,
    <vscale x 4 x float> %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f32(
  <vscale x 4 x i1>,
  <vscale x 4 x float>,
  <vscale x 4 x float>,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vv_nxv4f32_nxv4f32(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, <vscale x 4 x float> %2, <vscale x 4 x float> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv4f32_nxv4f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v14, v0
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    vmfle.vv v14, v12, v10, v0.t
; CHECK-NEXT:    vmv1r.v v0, v14
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f32(
    <vscale x 4 x float> %1,
    <vscale x 4 x float> %2,
    iXLen %4)
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f32(
    <vscale x 4 x i1> %0,
    <vscale x 4 x float> %2,
    <vscale x 4 x float> %3,
    <vscale x 4 x i1> %mask,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f32(
  <vscale x 8 x float>,
  <vscale x 8 x float>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_vv_nxv8f32_nxv8f32(<vscale x 8 x float> %0, <vscale x 8 x float> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv8f32_nxv8f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m4, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f32(
    <vscale x 8 x float> %0,
    <vscale x 8 x float> %1,
    iXLen %2)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f32(
  <vscale x 8 x i1>,
  <vscale x 8 x float>,
  <vscale x 8 x float>,
  <vscale x 8 x i1>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_mask_vv_nxv8f32_nxv8f32(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, <vscale x 8 x float> %2, <vscale x 8 x float> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv8f32_nxv8f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v20, v0
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    vmfle.vv v20, v16, v12, v0.t
; CHECK-NEXT:    vmv1r.v v0, v20
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f32(
    <vscale x 8 x float> %1,
    <vscale x 8 x float> %2,
    iXLen %4)
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f32(
    <vscale x 8 x i1> %0,
    <vscale x 8 x float> %2,
    <vscale x 8 x float> %3,
    <vscale x 8 x i1> %mask,
    iXLen %4)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f64(
  <vscale x 1 x double>,
  <vscale x 1 x double>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vv_nxv1f64_nxv1f64(<vscale x 1 x double> %0, <vscale x 1 x double> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv1f64_nxv1f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m1, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f64(
    <vscale x 1 x double> %0,
    <vscale x 1 x double> %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f64(
  <vscale x 1 x i1>,
  <vscale x 1 x double>,
  <vscale x 1 x double>,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vv_nxv1f64_nxv1f64(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, <vscale x 1 x double> %2, <vscale x 1 x double> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv1f64_nxv1f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmfle.vv v0, v9, v8
; CHECK-NEXT:    vmfle.vv v11, v10, v9, v0.t
; CHECK-NEXT:    vmv.v.v v0, v11
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f64(
    <vscale x 1 x double> %1,
    <vscale x 1 x double> %2,
    iXLen %4)
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f64(
    <vscale x 1 x i1> %0,
    <vscale x 1 x double> %2,
    <vscale x 1 x double> %3,
    <vscale x 1 x i1> %mask,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f64(
  <vscale x 2 x double>,
  <vscale x 2 x double>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vv_nxv2f64_nxv2f64(<vscale x 2 x double> %0, <vscale x 2 x double> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv2f64_nxv2f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f64(
    <vscale x 2 x double> %0,
    <vscale x 2 x double> %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f64(
  <vscale x 2 x i1>,
  <vscale x 2 x double>,
  <vscale x 2 x double>,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vv_nxv2f64_nxv2f64(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, <vscale x 2 x double> %2, <vscale x 2 x double> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv2f64_nxv2f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v14, v0
; CHECK-NEXT:    vmfle.vv v0, v10, v8
; CHECK-NEXT:    vmfle.vv v14, v12, v10, v0.t
; CHECK-NEXT:    vmv1r.v v0, v14
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f64(
    <vscale x 2 x double> %1,
    <vscale x 2 x double> %2,
    iXLen %4)
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f64(
    <vscale x 2 x i1> %0,
    <vscale x 2 x double> %2,
    <vscale x 2 x double> %3,
    <vscale x 2 x i1> %mask,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f64(
  <vscale x 4 x double>,
  <vscale x 4 x double>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vv_nxv4f64_nxv4f64(<vscale x 4 x double> %0, <vscale x 4 x double> %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vv_nxv4f64_nxv4f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m4, ta, ma
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f64(
    <vscale x 4 x double> %0,
    <vscale x 4 x double> %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f64(
  <vscale x 4 x i1>,
  <vscale x 4 x double>,
  <vscale x 4 x double>,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vv_nxv4f64_nxv4f64(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, <vscale x 4 x double> %2, <vscale x 4 x double> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vv_nxv4f64_nxv4f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v20, v0
; CHECK-NEXT:    vmfle.vv v0, v12, v8
; CHECK-NEXT:    vmfle.vv v20, v16, v12, v0.t
; CHECK-NEXT:    vmv1r.v v0, v20
; CHECK-NEXT:    ret
entry:
  %mask = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f64(
    <vscale x 4 x double> %1,
    <vscale x 4 x double> %2,
    iXLen %4)
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f64(
    <vscale x 4 x i1> %0,
    <vscale x 4 x double> %2,
    <vscale x 4 x double> %3,
    <vscale x 4 x i1> %mask,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f16.f16(
  <vscale x 1 x half>,
  half,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vf_nxv1f16_f16(<vscale x 1 x half> %0, half %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv1f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf4, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f16.f16(
    <vscale x 1 x half> %0,
    half %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f16.f16(
  <vscale x 1 x i1>,
  <vscale x 1 x half>,
  half,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vf_nxv1f16_f16(<vscale x 1 x i1> %0, <vscale x 1 x half> %1, half %2, <vscale x 1 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv1f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf4, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f16.f16(
    <vscale x 1 x i1> %0,
    <vscale x 1 x half> %1,
    half %2,
    <vscale x 1 x i1> %3,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f16.f16(
  <vscale x 2 x half>,
  half,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vf_nxv2f16_f16(<vscale x 2 x half> %0, half %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv2f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f16.f16(
    <vscale x 2 x half> %0,
    half %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f16.f16(
  <vscale x 2 x i1>,
  <vscale x 2 x half>,
  half,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vf_nxv2f16_f16(<vscale x 2 x i1> %0, <vscale x 2 x half> %1, half %2, <vscale x 2 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv2f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, mf2, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f16.f16(
    <vscale x 2 x i1> %0,
    <vscale x 2 x half> %1,
    half %2,
    <vscale x 2 x i1> %3,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f16.f16(
  <vscale x 4 x half>,
  half,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vf_nxv4f16_f16(<vscale x 4 x half> %0, half %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv4f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m1, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f16.f16(
    <vscale x 4 x half> %0,
    half %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f16.f16(
  <vscale x 4 x i1>,
  <vscale x 4 x half>,
  half,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vf_nxv4f16_f16(<vscale x 4 x i1> %0, <vscale x 4 x half> %1, half %2, <vscale x 4 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv4f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv.v.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f16.f16(
    <vscale x 4 x i1> %0,
    <vscale x 4 x half> %1,
    half %2,
    <vscale x 4 x i1> %3,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f16.f16(
  <vscale x 8 x half>,
  half,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_vf_nxv8f16_f16(<vscale x 8 x half> %0, half %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv8f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m2, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f16.f16(
    <vscale x 8 x half> %0,
    half %1,
    iXLen %2)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f16.f16(
  <vscale x 8 x i1>,
  <vscale x 8 x half>,
  half,
  <vscale x 8 x i1>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_mask_vf_nxv8f16_f16(<vscale x 8 x i1> %0, <vscale x 8 x half> %1, half %2, <vscale x 8 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv8f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    vmfge.vf v11, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f16.f16(
    <vscale x 8 x i1> %0,
    <vscale x 8 x half> %1,
    half %2,
    <vscale x 8 x i1> %3,
    iXLen %4)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmfge.nxv16f16.f16(
  <vscale x 16 x half>,
  half,
  iXLen);

define <vscale x 16 x i1> @intrinsic_vmfge_vf_nxv16f16_f16(<vscale x 16 x half> %0, half %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv16f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m4, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 16 x i1> @llvm.riscv.vmfge.nxv16f16.f16(
    <vscale x 16 x half> %0,
    half %1,
    iXLen %2)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 16 x i1> @llvm.riscv.vmfge.mask.nxv16f16.f16(
  <vscale x 16 x i1>,
  <vscale x 16 x half>,
  half,
  <vscale x 16 x i1>,
  iXLen);

define <vscale x 16 x i1> @intrinsic_vmfge_mask_vf_nxv16f16_f16(<vscale x 16 x i1> %0, <vscale x 16 x half> %1, half %2, <vscale x 16 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv16f16_f16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e16, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v13, v0
; CHECK-NEXT:    vmv1r.v v0, v12
; CHECK-NEXT:    vmfge.vf v13, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v13
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 16 x i1> @llvm.riscv.vmfge.mask.nxv16f16.f16(
    <vscale x 16 x i1> %0,
    <vscale x 16 x half> %1,
    half %2,
    <vscale x 16 x i1> %3,
    iXLen %4)

  ret <vscale x 16 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f32.f32(
  <vscale x 1 x float>,
  float,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vf_nxv1f32_f32(<vscale x 1 x float> %0, float %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv1f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, mf2, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f32.f32(
    <vscale x 1 x float> %0,
    float %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f32.f32(
  <vscale x 1 x i1>,
  <vscale x 1 x float>,
  float,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vf_nxv1f32_f32(<vscale x 1 x i1> %0, <vscale x 1 x float> %1, float %2, <vscale x 1 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv1f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, mf2, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f32.f32(
    <vscale x 1 x i1> %0,
    <vscale x 1 x float> %1,
    float %2,
    <vscale x 1 x i1> %3,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f32.f32(
  <vscale x 2 x float>,
  float,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vf_nxv2f32_f32(<vscale x 2 x float> %0, float %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv2f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f32.f32(
    <vscale x 2 x float> %0,
    float %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f32.f32(
  <vscale x 2 x i1>,
  <vscale x 2 x float>,
  float,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vf_nxv2f32_f32(<vscale x 2 x i1> %0, <vscale x 2 x float> %1, float %2, <vscale x 2 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv2f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv.v.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f32.f32(
    <vscale x 2 x i1> %0,
    <vscale x 2 x float> %1,
    float %2,
    <vscale x 2 x i1> %3,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f32.f32(
  <vscale x 4 x float>,
  float,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vf_nxv4f32_f32(<vscale x 4 x float> %0, float %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv4f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m2, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f32.f32(
    <vscale x 4 x float> %0,
    float %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f32.f32(
  <vscale x 4 x i1>,
  <vscale x 4 x float>,
  float,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vf_nxv4f32_f32(<vscale x 4 x i1> %0, <vscale x 4 x float> %1, float %2, <vscale x 4 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv4f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    vmfge.vf v11, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f32.f32(
    <vscale x 4 x i1> %0,
    <vscale x 4 x float> %1,
    float %2,
    <vscale x 4 x i1> %3,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f32.f32(
  <vscale x 8 x float>,
  float,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_vf_nxv8f32_f32(<vscale x 8 x float> %0, float %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv8f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m4, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.nxv8f32.f32(
    <vscale x 8 x float> %0,
    float %1,
    iXLen %2)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f32.f32(
  <vscale x 8 x i1>,
  <vscale x 8 x float>,
  float,
  <vscale x 8 x i1>,
  iXLen);

define <vscale x 8 x i1> @intrinsic_vmfge_mask_vf_nxv8f32_f32(<vscale x 8 x i1> %0, <vscale x 8 x float> %1, float %2, <vscale x 8 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv8f32_f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e32, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v13, v0
; CHECK-NEXT:    vmv1r.v v0, v12
; CHECK-NEXT:    vmfge.vf v13, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v13
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 8 x i1> @llvm.riscv.vmfge.mask.nxv8f32.f32(
    <vscale x 8 x i1> %0,
    <vscale x 8 x float> %1,
    float %2,
    <vscale x 8 x i1> %3,
    iXLen %4)

  ret <vscale x 8 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f64.f64(
  <vscale x 1 x double>,
  double,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_vf_nxv1f64_f64(<vscale x 1 x double> %0, double %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv1f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m1, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.nxv1f64.f64(
    <vscale x 1 x double> %0,
    double %1,
    iXLen %2)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f64.f64(
  <vscale x 1 x i1>,
  <vscale x 1 x double>,
  double,
  <vscale x 1 x i1>,
  iXLen);

define <vscale x 1 x i1> @intrinsic_vmfge_mask_vf_nxv1f64_f64(<vscale x 1 x i1> %0, <vscale x 1 x double> %1, double %2, <vscale x 1 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv1f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m1, ta, mu
; CHECK-NEXT:    vmv1r.v v10, v0
; CHECK-NEXT:    vmv1r.v v0, v9
; CHECK-NEXT:    vmfge.vf v10, v8, fa0, v0.t
; CHECK-NEXT:    vmv.v.v v0, v10
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 1 x i1> @llvm.riscv.vmfge.mask.nxv1f64.f64(
    <vscale x 1 x i1> %0,
    <vscale x 1 x double> %1,
    double %2,
    <vscale x 1 x i1> %3,
    iXLen %4)

  ret <vscale x 1 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f64.f64(
  <vscale x 2 x double>,
  double,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_vf_nxv2f64_f64(<vscale x 2 x double> %0, double %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv2f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.nxv2f64.f64(
    <vscale x 2 x double> %0,
    double %1,
    iXLen %2)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f64.f64(
  <vscale x 2 x i1>,
  <vscale x 2 x double>,
  double,
  <vscale x 2 x i1>,
  iXLen);

define <vscale x 2 x i1> @intrinsic_vmfge_mask_vf_nxv2f64_f64(<vscale x 2 x i1> %0, <vscale x 2 x double> %1, double %2, <vscale x 2 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv2f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m2, ta, mu
; CHECK-NEXT:    vmv1r.v v11, v0
; CHECK-NEXT:    vmv1r.v v0, v10
; CHECK-NEXT:    vmfge.vf v11, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v11
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 2 x i1> @llvm.riscv.vmfge.mask.nxv2f64.f64(
    <vscale x 2 x i1> %0,
    <vscale x 2 x double> %1,
    double %2,
    <vscale x 2 x i1> %3,
    iXLen %4)

  ret <vscale x 2 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f64.f64(
  <vscale x 4 x double>,
  double,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_vf_nxv4f64_f64(<vscale x 4 x double> %0, double %1, iXLen %2) nounwind {
; CHECK-LABEL: intrinsic_vmfge_vf_nxv4f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m4, ta, ma
; CHECK-NEXT:    vmfge.vf v0, v8, fa0
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.nxv4f64.f64(
    <vscale x 4 x double> %0,
    double %1,
    iXLen %2)

  ret <vscale x 4 x i1> %a
}

declare <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f64.f64(
  <vscale x 4 x i1>,
  <vscale x 4 x double>,
  double,
  <vscale x 4 x i1>,
  iXLen);

define <vscale x 4 x i1> @intrinsic_vmfge_mask_vf_nxv4f64_f64(<vscale x 4 x i1> %0, <vscale x 4 x double> %1, double %2, <vscale x 4 x i1> %3, iXLen %4) nounwind {
; CHECK-LABEL: intrinsic_vmfge_mask_vf_nxv4f64_f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli zero, a0, e64, m4, ta, mu
; CHECK-NEXT:    vmv1r.v v13, v0
; CHECK-NEXT:    vmv1r.v v0, v12
; CHECK-NEXT:    vmfge.vf v13, v8, fa0, v0.t
; CHECK-NEXT:    vmv1r.v v0, v13
; CHECK-NEXT:    ret
entry:
  %a = call <vscale x 4 x i1> @llvm.riscv.vmfge.mask.nxv4f64.f64(
    <vscale x 4 x i1> %0,
    <vscale x 4 x double> %1,
    double %2,
    <vscale x 4 x i1> %3,
    iXLen %4)

  ret <vscale x 4 x i1> %a
}
