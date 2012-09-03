/* Floating point library in optimized assembly for 8051
 * Copyright (c) 2004, Paul Stoffregen, paul@pjrc.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


#define SDCC_FLOAT_LIB
#include <float.h>


#ifdef FLOAT_ASM_MCS51

// float long __uchar2fs (float x)
static void dummy(void) _naked
{
	_asm
	.globl	___uchar2fs
___uchar2fs:
	clr	a
	mov	r4, dpl
	mov	r3, a
	mov	r2, a
	mov	r1, a
	mov	a, #134
	ljmp	ulong2fs_doit
	_endasm;
}

#else



/* convert unsigned char to float */
float __uchar2fs (unsigned char uc) {
  return __ulong2fs(uc);
}

#endif