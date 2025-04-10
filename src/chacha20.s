	.file	"chacha20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zbb1p0_zbkb1p0_zvbb"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei_zbb_zbkb_zvbb -O3 -fno-stack-protector -fno-builtin
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-224	#,,
	.cfi_def_cfa_offset 224
	sd	s0,216(sp)	#,
	sd	s1,208(sp)	#,
	sd	s2,200(sp)	#,
	sd	s3,192(sp)	#,
	sd	s4,184(sp)	#,
	sd	s5,176(sp)	#,
	sd	s6,168(sp)	#,
	sd	s7,160(sp)	#,
	sd	s8,152(sp)	#,
	sd	s9,144(sp)	#,
	sd	s10,136(sp)	#,
	sd	s11,128(sp)	#,
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	.cfi_offset 22, -56
	.cfi_offset 23, -64
	.cfi_offset 24, -72
	.cfi_offset 25, -80
	.cfi_offset 26, -88
	.cfi_offset 27, -96
	andi	a5,a1,7	#, tmp291, input
# src/host/chacha20.c:40: {
	sd	a0,48(sp)	# tmp534, %sfp
	bne	a5,zero,.L2	#, tmp291,,
# src/host/chacha20.c:45:         x[i] = input[i];
	ld	t1,8(a1)		# vect_vect__4.25_539.33, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 8B]
	ld	a7,16(a1)		# vect_vect__4.25_539.34, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 16B]
# src/host/chacha20.c:45:         x[i] = input[i];
	ld	a6,0(a1)		# MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)], MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)]
# src/host/chacha20.c:45:         x[i] = input[i];
	ld	a0,24(a1)		# vect_vect__4.25_539.35, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 24B]
	ld	a2,32(a1)		# vect_vect__4.25_539.36, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 32B]
	ld	a3,40(a1)		# vect_vect__4.25_539.37, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 40B]
	ld	a4,48(a1)		# vect_vect__4.25_539.38, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 48B]
	ld	a5,56(a1)		# vect_vect__4.25_539.39, MEM <vector(1) long unsigned int> [(const u32 *)input_99(D) + 56B]
# src/host/chacha20.c:45:         x[i] = input[i];
	sd	t1,72(sp)	# vect_vect__4.25_539.33, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 8B]
	sd	a7,80(sp)	# vect_vect__4.25_539.34, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 16B]
	sd	a6,64(sp)	# MEM <vector(1) long unsigned int> [(const u32 *)input_99(D)], MEM <vector(1) long unsigned int> [(unsigned int *)&x]
.L7:
	sd	a3,104(sp)	# tmp312,
	sd	a4,112(sp)	# tmp316,
	sd	a2,96(sp)	# tmp308,
	sd	a5,120(sp)	# tmp320,
	lw	a2,104(sp)		# x_I_lsm.16, x[10]
	lw	a5,112(sp)		# x_I_lsm.7, x[12]
	lw	a4,72(sp)		# x_I_lsm.13, x[2]
	sd	a2,0(sp)	# x_I_lsm.16, %sfp
	sd	a5,40(sp)	# x_I_lsm.7, %sfp
	lw	a2,124(sp)		# x_I_lsm.19, x[15]
	lw	a5,68(sp)		# x_I_lsm.9, x[1]
	sd	a0,88(sp)	# tmp304,
	sd	a2,32(sp)	# x_I_lsm.19, %sfp
	sd	a5,8(sp)	# x_I_lsm.9, %sfp
	lw	a2,108(sp)		# x_I_lsm.20, x[11]
	lw	a5,116(sp)		# x_I_lsm.11, x[13]
	sd	a4,24(sp)	# x_I_lsm.13, %sfp
	lw	s6,64(sp)		# x_I_lsm.5, x[0]
	lw	t3,80(sp)		# x_I_lsm.6, x[4]
	lw	s4,96(sp)		# x_I_lsm.8, x[8]
	lw	a7,84(sp)		# x_I_lsm.10, x[5]
	lw	s2,100(sp)		# x_I_lsm.12, x[9]
	lw	a3,88(sp)		# x_I_lsm.14, x[6]
	lw	a4,120(sp)		# x_I_lsm.15, x[14]
	lw	s0,76(sp)		# x_I_lsm.17, x[3]
	lw	t0,92(sp)		# x_I_lsm.18, x[7]
# src/host/chacha20.c:40: {
	sd	a1,56(sp)	# input, %sfp
	sd	a2,16(sp)	# x_I_lsm.20, %sfp
	li	s11,10		# ivtmp_131,
	mv	a1,a5	# x_I_lsm.11, x_I_lsm.11
.L4:
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	ld	a5,8(sp)		# x_I_lsm.9, %sfp
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	addw	s5,t3,s6	# x_I_lsm.5, tmp325, x_I_lsm.6
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	addw	t2,t0,s0	# x_I_lsm.17, tmp385, x_I_lsm.18
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	addw	s10,a7,a5	# x_I_lsm.9, tmp345, x_I_lsm.10
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	ld	a5,24(sp)		# x_I_lsm.13, %sfp
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	xor	a0,a1,s10	# tmp345, tmp349, x_I_lsm.11
#APP
# 50 "src/host/chacha20.c" 1
	roriw a0, a0, 16	# ret, tmp349,
# 0 "" 2
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s9,a5,a3	# x_I_lsm.14, tmp365, x_I_lsm.13
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	ld	a5,40(sp)		# x_I_lsm.7, %sfp
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	addw	s1,s2,a0	# ret, tmp350, x_I_lsm.12
	xor	t1,a7,s1	# tmp350, tmp354, x_I_lsm.10
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	xor	t6,a5,s5	# tmp325, tmp329, x_I_lsm.7
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	xor	a5,a4,s9	# tmp365, tmp369, x_I_lsm.15
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	ld	a4,32(sp)		# x_I_lsm.19, %sfp
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#APP
# 51 "src/host/chacha20.c" 1
	roriw a5, a5, 16	# ret, tmp369,
# 0 "" 2
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
# 49 "src/host/chacha20.c" 1
	roriw t6, t6, 16	# ret, tmp329,
# 0 "" 2
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#NO_APP
	xor	t5,a4,t2	# tmp385, tmp389, x_I_lsm.19
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	ld	a4,0(sp)		# x_I_lsm.16, %sfp
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	addw	s3,t6,s4	# x_I_lsm.8, tmp330, ret
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
#APP
# 50 "src/host/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp354,
# 0 "" 2
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s8,a5,a4	# x_I_lsm.16, tmp370, ret
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	ld	a4,16(sp)		# x_I_lsm.20, %sfp
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	addw	s10,s10,t1	# ret, tmp355, tmp345
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	xor	t4,t3,s3	# tmp330, tmp334, x_I_lsm.6
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	xor	a2,a3,s8	# tmp370, tmp374, x_I_lsm.14
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	xor	a0,s10,a0	# ret, tmp359, tmp355
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#APP
# 52 "src/host/chacha20.c" 1
	roriw t5, t5, 16	# ret, tmp389,
# 0 "" 2
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
# 49 "src/host/chacha20.c" 1
	roriw t4, t4, 20	# ret, tmp334,
# 0 "" 2
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	s7,t5,a4	# x_I_lsm.20, tmp390, ret
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	addw	s5,s5,t4	# ret, tmp335, tmp325
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#APP
# 51 "src/host/chacha20.c" 1
	roriw a2, a2, 20	# ret, tmp374,
# 0 "" 2
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
# 50 "src/host/chacha20.c" 1
	roriw a0, a0, 24	# ret, tmp359,
# 0 "" 2
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s9,s9,a2	# ret, tmp375, tmp365
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,a0	# ret, tmp360, tmp350
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	xor	a6,t0,s7	# tmp390, tmp394, x_I_lsm.18
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	xor	t6,s5,t6	# ret, tmp339, tmp335
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	xor	a5,s9,a5	# ret, tmp379, tmp375
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
	xor	t1,s1,t1	# ret, tmp364, tmp360
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#APP
# 52 "src/host/chacha20.c" 1
	roriw a6, a6, 20	# ret, tmp394,
# 0 "" 2
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
# 51 "src/host/chacha20.c" 1
	roriw a5, a5, 24	# ret, tmp379,
# 0 "" 2
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#NO_APP
	addw	t2,t2,a6	# ret, tmp395, tmp385
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	addw	s8,s8,a5	# ret, tmp380, tmp370
# src/host/chacha20.c:50:         QUARTERROUND(1, 5, 9, 13);
#APP
# 50 "src/host/chacha20.c" 1
	roriw t1, t1, 25	# ret, tmp364,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s5,s5,t1	# ret, tmp405, tmp335
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	xor	t5,t2,t5	# ret, tmp399, tmp395
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
	xor	a2,s8,a2	# ret, tmp384, tmp380
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#APP
# 52 "src/host/chacha20.c" 1
	roriw t5, t5, 24	# ret, tmp399,
# 0 "" 2
#NO_APP
	addw	s7,s7,t5	# ret, tmp400, tmp390
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
	xor	t5,s5,t5	# ret, tmp409, tmp405
#APP
# 53 "src/host/chacha20.c" 1
	roriw t5, t5, 16	# ret, tmp409,
# 0 "" 2
#NO_APP
	addw	s8,s8,t5	# ret, tmp410, tmp380
	xor	t1,s8,t1	# ret, tmp414, tmp410
# src/host/chacha20.c:51:         QUARTERROUND(2, 6, 10, 14);
#APP
# 51 "src/host/chacha20.c" 1
	roriw a2, a2, 25	# ret, tmp384,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
# 53 "src/host/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp414,
# 0 "" 2
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s10,s10,a2	# ret, tmp425, tmp355
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
	addw	s5,s5,t1	# ret, tmp415, tmp405
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
	xor	a6,s7,a6	# ret, tmp404, tmp400
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
#APP
# 49 "src/host/chacha20.c" 1
	roriw t6, t6, 24	# ret, tmp339,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t5,s5,t5	# ret, tmp419, tmp415
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	addw	s3,s3,t6	# ret, tmp340, tmp330
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#APP
# 53 "src/host/chacha20.c" 1
	roriw t5, t5, 24	# ret, tmp419,
# 0 "" 2
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	xor	t6,s10,t6	# ret, tmp429, tmp425
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
	addw	s8,s8,t5	# ret, tmp420, tmp410
	sext.w	a4,t5	# x_I_lsm.19, ret
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
#APP
# 54 "src/host/chacha20.c" 1
	roriw t6, t6, 16	# ret, tmp429,
# 0 "" 2
#NO_APP
	addw	s7,s7,t6	# ret, tmp430, tmp400
	xor	a2,s7,a2	# ret, tmp434, tmp430
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
	sd	a4,32(sp)	# x_I_lsm.19, %sfp
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
#APP
# 54 "src/host/chacha20.c" 1
	roriw a2, a2, 20	# ret, tmp434,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	sext.w	a4,s8	# x_I_lsm.16, tmp420
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	addw	s10,s10,a2	# ret, tmp435, tmp425
# src/host/chacha20.c:52:         QUARTERROUND(3, 7, 11, 15);
#APP
# 52 "src/host/chacha20.c" 1
	roriw a6, a6, 25	# ret, tmp404,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	sd	a4,0(sp)	# x_I_lsm.16, %sfp
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	addw	s9,s9,a6	# ret, tmp445, tmp375
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	sext.w	a4,s10	# x_I_lsm.9, tmp435
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
	xor	t4,s3,t4	# ret, tmp344, tmp340
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	xor	a0,s9,a0	# ret, tmp449, tmp445
# src/host/chacha20.c:49:         QUARTERROUND(0, 4, 8, 12);
#APP
# 49 "src/host/chacha20.c" 1
	roriw t4, t4, 25	# ret, tmp344,
# 0 "" 2
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
# 55 "src/host/chacha20.c" 1
	roriw a0, a0, 16	# ret, tmp449,
# 0 "" 2
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t2,t2,t4	# ret, tmp465, tmp395
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	addw	s3,s3,a0	# ret, tmp450, tmp340
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	xor	t6,s10,t6	# ret, tmp439, tmp435
	sd	a4,8(sp)	# x_I_lsm.9, %sfp
#APP
# 54 "src/host/chacha20.c" 1
	roriw t6, t6, 24	# ret, tmp439,
# 0 "" 2
#NO_APP
	addw	s7,s7,t6	# ret, tmp440, tmp430
	sext.w	a4,t6	# x_I_lsm.7, ret
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	xor	a5,t2,a5	# ret, tmp469, tmp465
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	xor	a6,s3,a6	# ret, tmp454, tmp450
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
#APP
# 56 "src/host/chacha20.c" 1
	roriw a5, a5, 16	# ret, tmp469,
# 0 "" 2
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
# 55 "src/host/chacha20.c" 1
	roriw a6, a6, 20	# ret, tmp454,
# 0 "" 2
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s1,s1,a5	# ret, tmp470, tmp360
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	addw	s9,s9,a6	# ret, tmp455, tmp445
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	sd	a4,40(sp)	# x_I_lsm.7, %sfp
	sext.w	a4,s7	# x_I_lsm.20, tmp440
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	xor	t4,s1,t4	# ret, tmp474, tmp470
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	sd	a4,16(sp)	# x_I_lsm.20, %sfp
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
#APP
# 56 "src/host/chacha20.c" 1
	roriw t4, t4, 20	# ret, tmp474,
# 0 "" 2
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
#NO_APP
	sext.w	a4,s9	# x_I_lsm.13, tmp455
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	addw	t2,t2,t4	# ret, tmp475, tmp465
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	xor	a0,s9,a0	# ret, tmp459, tmp455
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	xor	a5,t2,a5	# ret, tmp479, tmp475
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
#APP
# 55 "src/host/chacha20.c" 1
	roriw a0, a0, 24	# ret, tmp459,
# 0 "" 2
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
# 56 "src/host/chacha20.c" 1
	roriw a5, a5, 24	# ret, tmp479,
# 0 "" 2
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s3,s3,a0	# ret, tmp460, tmp450
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a5	# ret, tmp480, tmp470
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	sd	a4,24(sp)	# x_I_lsm.13, %sfp
# src/host/chacha20.c:48:     for (i = 20; i > 0; i -= 2) {
	addiw	s11,s11,-1	#, ivtmp_131, ivtmp_131
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
	xor	t1,s8,t1	# ret, tmp424, tmp420
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,s7,a2	# ret, tmp444, tmp440
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	xor	a6,s3,a6	# ret, tmp464, tmp460
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	xor	t4,s1,t4	# ret, tmp484, tmp480
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#APP
# 53 "src/host/chacha20.c" 1
	roriw t1, t1, 25	# ret, tmp424,
# 0 "" 2
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
# 54 "src/host/chacha20.c" 1
	roriw a2, a2, 25	# ret, tmp444,
# 0 "" 2
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
# 55 "src/host/chacha20.c" 1
	roriw a6, a6, 25	# ret, tmp464,
# 0 "" 2
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
# 56 "src/host/chacha20.c" 1
	roriw t4, t4, 25	# ret, tmp484,
# 0 "" 2
# src/host/chacha20.c:53:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	sext.w	s6,s5	# x_I_lsm.5, tmp415
	sext.w	a7,t1	# x_I_lsm.10, ret
# src/host/chacha20.c:54:         QUARTERROUND(1, 6, 11, 12);
	sext.w	a3,a2	# x_I_lsm.14, ret
# src/host/chacha20.c:55:         QUARTERROUND(2, 7, 8, 13);
	sext.w	a1,a0	# x_I_lsm.11, ret
	sext.w	s4,s3	# x_I_lsm.8, tmp460
	sext.w	t0,a6	# x_I_lsm.18, ret
# src/host/chacha20.c:56:         QUARTERROUND(3, 4, 9, 14);
	sext.w	s0,t2	# x_I_lsm.17, tmp475
	sext.w	a4,a5	# x_I_lsm.15, ret
	sext.w	s2,s1	# x_I_lsm.12, tmp480
	sext.w	t3,t4	# x_I_lsm.6, ret
# src/host/chacha20.c:48:     for (i = 20; i > 0; i -= 2) {
	bne	s11,zero,.L4	#, ivtmp_131,,
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	ld	a1,56(sp)		# input, %sfp
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	ld	a3,48(sp)		# output, %sfp
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,0(a1)		# *input_99(D), *input_99(D)
	addw	s5,s5,a4	# *input_99(D), tmp486, tmp415
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s5,0(a3)	# tmp486, output_100(D)->u[0]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	addw	s10,s10,a4	# MEM[(const u32 *)input_99(D) + 4B], tmp489, tmp435
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s10,4(a3)	# tmp489, output_100(D)->u[1]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	addw	s9,s9,a4	# MEM[(const u32 *)input_99(D) + 8B], tmp492, tmp455
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s9,8(a3)	# tmp492, output_100(D)->u[2]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	addw	t2,t2,a4	# MEM[(const u32 *)input_99(D) + 12B], tmp495, tmp475
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	t2,12(a3)	# tmp495, output_100(D)->u[3]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	addw	t4,t4,a4	# MEM[(const u32 *)input_99(D) + 16B], tmp498, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	t4,16(a3)	# tmp498, output_100(D)->u[4]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	addw	t1,t1,a4	# MEM[(const u32 *)input_99(D) + 20B], tmp501, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	t1,20(a3)	# tmp501, output_100(D)->u[5]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	addw	a2,a2,a4	# MEM[(const u32 *)input_99(D) + 24B], tmp504, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	a2,24(a3)	# tmp504, output_100(D)->u[6]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	addw	a4,a6,a4	# MEM[(const u32 *)input_99(D) + 28B], tmp507, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	a4,28(a3)	# tmp507, output_100(D)->u[7]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	addw	s3,s3,a4	# MEM[(const u32 *)input_99(D) + 32B], tmp510, tmp460
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s3,32(a3)	# tmp510, output_100(D)->u[8]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	addw	s1,s1,a4	# MEM[(const u32 *)input_99(D) + 36B], tmp513, tmp480
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s1,36(a3)	# tmp513, output_100(D)->u[9]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	addw	s8,s8,a4	# MEM[(const u32 *)input_99(D) + 40B], tmp516, tmp420
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s8,40(a3)	# tmp516, output_100(D)->u[10]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	addw	s7,s7,a4	# MEM[(const u32 *)input_99(D) + 44B], tmp519, tmp440
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	s7,44(a3)	# tmp519, output_100(D)->u[11]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	addw	t6,t6,a4	# MEM[(const u32 *)input_99(D) + 48B], tmp522, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	t6,48(a3)	# tmp522, output_100(D)->u[12]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	addw	a0,a0,a4	# MEM[(const u32 *)input_99(D) + 52B], tmp525, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	a0,52(a3)	# tmp525, output_100(D)->u[13]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a4,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	addw	a5,a5,a4	# MEM[(const u32 *)input_99(D) + 56B], tmp528, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	a5,56(a3)	# tmp528, output_100(D)->u[14]
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	lw	a5,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
# src/host/chacha20.c:61: }
	ld	s0,216(sp)		#,
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,208(sp)		#,
	.cfi_restore 9
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	addw	t5,t5,a5	# MEM[(const u32 *)input_99(D) + 60B], tmp531, ret
# src/host/chacha20.c:60:         output->u[i] = x[i] + input[i];
	sw	t5,60(a3)	# tmp531, output_100(D)->u[15]
# src/host/chacha20.c:61: }
	ld	s2,200(sp)		#,
	.cfi_restore 18
	ld	s3,192(sp)		#,
	.cfi_restore 19
	ld	s4,184(sp)		#,
	.cfi_restore 20
	ld	s5,176(sp)		#,
	.cfi_restore 21
	ld	s6,168(sp)		#,
	.cfi_restore 22
	ld	s7,160(sp)		#,
	.cfi_restore 23
	ld	s8,152(sp)		#,
	.cfi_restore 24
	ld	s9,144(sp)		#,
	.cfi_restore 25
	ld	s10,136(sp)		#,
	.cfi_restore 26
	ld	s11,128(sp)		#,
	.cfi_restore 27
	addi	sp,sp,224	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
.L2:
	.cfi_restore_state
	lwu	a7,12(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	lwu	a6,20(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
# src/host/chacha20.c:45:         x[i] = input[i];
	lwu	t1,4(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D)], MEM <long unsigned int> [(const u32 *)input_99(D)]
	lwu	a0,28(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	lwu	a2,36(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	lwu	a3,44(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	lwu	a4,52(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	lwu	a5,60(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	lwu	s1,8(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	lwu	s0,16(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
	lwu	t3,0(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D)], MEM <long unsigned int> [(const u32 *)input_99(D)]
	lwu	t2,24(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	lwu	t0,32(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	lwu	t6,40(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	lwu	t5,48(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	lwu	t4,56(a1)	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	slli	a7,a7,32	#, tmp295, MEM <long unsigned int> [(const u32 *)input_99(D) + 8B]
	slli	a6,a6,32	#, tmp299, MEM <long unsigned int> [(const u32 *)input_99(D) + 16B]
	slli	t1,t1,32	#, tmp323, MEM <long unsigned int> [(const u32 *)input_99(D)]
	slli	a0,a0,32	#, tmp303, MEM <long unsigned int> [(const u32 *)input_99(D) + 24B]
	slli	a2,a2,32	#, tmp307, MEM <long unsigned int> [(const u32 *)input_99(D) + 32B]
	slli	a3,a3,32	#, tmp311, MEM <long unsigned int> [(const u32 *)input_99(D) + 40B]
	slli	a4,a4,32	#, tmp315, MEM <long unsigned int> [(const u32 *)input_99(D) + 48B]
	slli	a5,a5,32	#, tmp319, MEM <long unsigned int> [(const u32 *)input_99(D) + 56B]
	or	a7,a7,s1	# MEM <long unsigned int> [(const u32 *)input_99(D) + 8B], tmp296, tmp295
	or	a6,a6,s0	# MEM <long unsigned int> [(const u32 *)input_99(D) + 16B], tmp300, tmp299
	or	t1,t1,t3	# MEM <long unsigned int> [(const u32 *)input_99(D)], tmp324, tmp323
	or	a0,a0,t2	# MEM <long unsigned int> [(const u32 *)input_99(D) + 24B], tmp304, tmp303
	or	a2,a2,t0	# MEM <long unsigned int> [(const u32 *)input_99(D) + 32B], tmp308, tmp307
	or	a3,a3,t6	# MEM <long unsigned int> [(const u32 *)input_99(D) + 40B], tmp312, tmp311
	or	a4,a4,t5	# MEM <long unsigned int> [(const u32 *)input_99(D) + 48B], tmp316, tmp315
	or	a5,a5,t4	# MEM <long unsigned int> [(const u32 *)input_99(D) + 56B], tmp320, tmp319
	sd	t1,64(sp)	# tmp324, MEM <vector(2) unsigned int> [(unsigned int *)&x]
	sd	a7,72(sp)	# tmp296, MEM <vector(2) unsigned int> [(unsigned int *)&x + 8B]
	sd	a6,80(sp)	# tmp300, MEM <vector(2) unsigned int> [(unsigned int *)&x + 16B]
	j	.L7		#
	.cfi_endproc
.LFE0:
	.size	chacha20, .-chacha20
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
