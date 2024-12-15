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
static const char *ng0 = "/home/ise/PartageVM/TP_Elargoubi/TP2/HORLOGE.VHD";



static void work_a_0688983505_1843890802_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t3 = (60000LL * 2);
    t2 = (t0 + 1448U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int64 *)t2) = t3;
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 2808);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t8 = (t0 + 2808);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, 60000LL);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2232);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_0688983505_1843890802_init()
{
	static char *pe[] = {(void *)work_a_0688983505_1843890802_p_0};
	xsi_register_didat("work_a_0688983505_1843890802", "isim/test4b_gene_isim_beh.exe.sim/work/a_0688983505_1843890802.didat");
	xsi_register_executes(pe);
}
