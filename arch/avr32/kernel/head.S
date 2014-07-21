/*
 * Non-board-specific low-level startup code
 *
 * Copyright (C) 2004-2006 Atmel Corporation
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */
#include <linux/linkage.h>

#include <asm/page.h>
<<<<<<< HEAD
#include <asm/thread_info.h>
#include <asm/sysreg.h>
=======
>>>>>>> 21358d2... Linux 3.4.0-> 3.4.99

	.section .init.text,"ax"
	.global kernel_entry
kernel_entry:
<<<<<<< HEAD
	/* Initialize status register */
	lddpc   r0, init_sr
	mtsr	SYSREG_SR, r0

	/* Set initial stack pointer */
	lddpc   sp, stack_addr
	sub	sp, -THREAD_SIZE

#ifdef CONFIG_FRAME_POINTER
	/* Mark last stack frame */
	mov	lr, 0
	mov	r7, 0
#endif

=======
>>>>>>> 21358d2... Linux 3.4.0-> 3.4.99
	/* Start the show */
	lddpc   pc, kernel_start_addr

	.align  2
<<<<<<< HEAD
init_sr:
	.long   0x007f0000	/* Supervisor mode, everything masked */
stack_addr:
	.long   init_thread_union
=======
>>>>>>> 21358d2... Linux 3.4.0-> 3.4.99
kernel_start_addr:
	.long   start_kernel
