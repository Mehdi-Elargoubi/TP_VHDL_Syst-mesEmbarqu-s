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
static const char *ng0 = "/home/ise/PartageVM/TP_Elargoubi/TP2/GENE.VHD";
extern char *WORK_P_0643025559;

char *work_p_0643025559_sub_9890118859131259684_3538385975(char *, char *, int );


static void work_a_1108884600_3275694987_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, 20000LL);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t6 = (t5 > 15);
    if (t6 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t2 = (t0 + 3472);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t5;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3472);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}

static void work_a_1108884600_3275694987_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = work_p_0643025559_sub_9890118859131259684_3538385975(WORK_P_0643025559, t1, t4);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t6 = (t6 * 1U);
    t7 = (4U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 3536);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3392);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t6, 0);
    goto LAB6;

}


extern void work_a_1108884600_3275694987_init()
{
	static char *pe[] = {(void *)work_a_1108884600_3275694987_p_0,(void *)work_a_1108884600_3275694987_p_1};
	xsi_register_didat("work_a_1108884600_3275694987", "isim/test4b_gene_isim_beh.exe.sim/work/a_1108884600_3275694987.didat");
	xsi_register_executes(pe);
}
