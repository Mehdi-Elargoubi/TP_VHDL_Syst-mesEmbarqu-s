/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;
static const char *ng2 = "rem 0 asked for.  Divide by zero error.";



char *work_p_0643025559_sub_9890118859131259684_3538385975(char *t1, char *t2, int t3)
{
    char t4[248];
    char t5[8];
    char t6[16];
    char t13[8];
    char t20[8];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;
    int t36;
    unsigned char t37;
    int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t8 + 88U);
    *((char **)t12) = t11;
    t14 = (t8 + 56U);
    *((char **)t14) = t13;
    xsi_type_set_default_value(t11, t13, t6);
    t15 = (t8 + 64U);
    *((char **)t15) = t6;
    t16 = (t8 + 80U);
    *((unsigned int *)t16) = 4U;
    t17 = (t4 + 124U);
    t18 = ((STD_STANDARD) + 384);
    t19 = (t17 + 88U);
    *((char **)t19) = t18;
    t21 = (t17 + 56U);
    *((char **)t21) = t20;
    *((int *)t20) = 0;
    t22 = (t17 + 80U);
    *((unsigned int *)t22) = 4U;
    t23 = (t5 + 4U);
    *((int *)t23) = t3;
    t24 = (t17 + 56U);
    t25 = *((char **)t24);
    t24 = (t25 + 0);
    *((int *)t24) = t3;
    t7 = (t6 + 8U);
    t9 = *((int *)t7);
    t26 = (t9 * -1);
    t11 = (t6 + 0U);
    t27 = *((int *)t11);
    t12 = (t6 + 4U);
    t28 = *((int *)t12);
    t29 = t28;
    t30 = t27;

LAB2:    t31 = (t30 * t26);
    t32 = (t29 * t26);
    if (t32 <= t31)
        goto LAB3;

LAB5:    t7 = (t8 + 56U);
    t11 = *((char **)t7);
    t7 = (t6 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t11, t10);
    t12 = (t6 + 0U);
    t9 = *((int *)t12);
    t14 = (t6 + 4U);
    t26 = *((int *)t14);
    t15 = (t6 + 8U);
    t27 = *((int *)t15);
    t16 = (t2 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = t9;
    t18 = (t16 + 4U);
    *((int *)t18) = t26;
    t18 = (t16 + 8U);
    *((int *)t18) = t27;
    t28 = (t26 - t9);
    t41 = (t28 * t27);
    t41 = (t41 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t41;

LAB1:    return t0;
LAB3:    t14 = (t17 + 56U);
    t15 = *((char **)t14);
    t33 = *((int *)t15);
    if (2 == 0)
        goto LAB9;

LAB10:    t34 = abs(t33);
    t35 = (t34 % 2);
    if (t33 < 0)
        goto LAB11;

LAB12:    t37 = (t35 == 0);
    if (t37 != 0)
        goto LAB6;

LAB8:    t7 = (t8 + 56U);
    t11 = *((char **)t7);
    t7 = (t6 + 0U);
    t9 = *((int *)t7);
    t12 = (t6 + 8U);
    t27 = *((int *)t12);
    t28 = (t29 - t9);
    t10 = (t28 * t27);
    t41 = (1U * t10);
    t42 = (0 + t41);
    t14 = (t11 + t42);
    *((unsigned char *)t14) = (unsigned char)3;

LAB7:    t7 = (t17 + 56U);
    t11 = *((char **)t7);
    t9 = *((int *)t11);
    t27 = (t9 / 2);
    t7 = (t17 + 56U);
    t12 = *((char **)t7);
    t7 = (t12 + 0);
    *((int *)t7) = t27;

LAB4:    if (t29 == t30)
        goto LAB5;

LAB13:    t9 = (t29 + t26);
    t29 = t9;
    goto LAB2;

LAB6:    t14 = (t8 + 56U);
    t16 = *((char **)t14);
    t14 = (t6 + 0U);
    t38 = *((int *)t14);
    t18 = (t6 + 8U);
    t39 = *((int *)t18);
    t40 = (t29 - t38);
    t10 = (t40 * t39);
    t41 = (1U * t10);
    t42 = (0 + t41);
    t19 = (t16 + t42);
    *((unsigned char *)t19) = (unsigned char)2;
    goto LAB7;

LAB9:    xsi_error(ng2);
    goto LAB10;

LAB11:    t36 = (-(t35));
    t35 = t36;
    goto LAB12;

LAB14:;
}

int work_p_0643025559_sub_5574992840539920018_3538385975(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[24];
    char t9[8];
    int t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 384);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((int *)t9) = 0;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 4U;
    t12 = (t5 + 4U);
    t13 = (t2 != 0);
    if (t13 == 1)
        goto LAB3;

LAB2:    t14 = (t5 + 12U);
    *((char **)t14) = t3;
    t15 = (t3 + 8U);
    t16 = *((int *)t15);
    t17 = (t3 + 4U);
    t18 = *((int *)t17);
    t19 = (t3 + 0U);
    t20 = *((int *)t19);
    t21 = t20;
    t22 = t18;

LAB4:    t23 = (t22 * t16);
    t24 = (t21 * t16);
    if (t24 <= t23)
        goto LAB5;

LAB7:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t16 = *((int *)t8);
    t0 = t16;

LAB1:    return t0;
LAB3:    *((char **)t12) = t2;
    goto LAB2;

LAB5:    t25 = (t6 + 56U);
    t26 = *((char **)t25);
    t27 = *((int *)t26);
    t28 = (t27 * 2);
    t25 = (t6 + 56U);
    t29 = *((char **)t25);
    t25 = (t29 + 0);
    *((int *)t25) = t28;
    t7 = (t3 + 0U);
    t18 = *((int *)t7);
    t8 = (t3 + 8U);
    t20 = *((int *)t8);
    t23 = (t21 - t18);
    t30 = (t23 * t20);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t10 = (t2 + t32);
    t13 = *((unsigned char *)t10);
    t33 = (t13 == (unsigned char)3);
    if (t33 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    if (t21 == t22)
        goto LAB7;

LAB11:    t18 = (t21 + t16);
    t21 = t18;
    goto LAB4;

LAB8:    t11 = (t6 + 56U);
    t15 = *((char **)t11);
    t24 = *((int *)t15);
    t27 = (t24 + 1);
    t11 = (t6 + 56U);
    t17 = *((char **)t11);
    t11 = (t17 + 0);
    *((int *)t11) = t27;
    goto LAB9;

LAB12:;
}


extern void work_p_0643025559_init()
{
	static char *se[] = {(void *)work_p_0643025559_sub_9890118859131259684_3538385975,(void *)work_p_0643025559_sub_5574992840539920018_3538385975};
	xsi_register_didat("work_p_0643025559", "isim/test4b_gene_isim_beh.exe.sim/work/p_0643025559.didat");
	xsi_register_subprogram_executes(se);
}
