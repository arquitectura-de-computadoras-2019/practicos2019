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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vboxsrv/win7VM/workspace/TP1a/ALU.v";
static unsigned int ng1[] = {32U, 0U};
static unsigned int ng2[] = {33U, 0U};
static unsigned int ng3[] = {34U, 0U};
static unsigned int ng4[] = {35U, 0U};
static unsigned int ng5[] = {36U, 0U};
static unsigned int ng6[] = {37U, 0U};
static unsigned int ng7[] = {38U, 0U};
static unsigned int ng8[] = {39U, 0U};



static void Cont_38_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2756);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 2704);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_40_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2712);
    *((int *)t2) = 1;
    t3 = (t0 + 2536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t4, 8);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1840);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 968U);
    t8 = *((char **)t7);
    t7 = (t0 + 1840);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 8);
    goto LAB25;

LAB9:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1520U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB11:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB13:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1428U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB15:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1152U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB17:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1244U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB19:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1336U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

LAB21:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1612U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB25;

}


extern void work_m_00000000000511043909_0886308060_init()
{
	static char *pe[] = {(void *)Cont_38_0,(void *)Always_40_1};
	xsi_register_didat("work_m_00000000000511043909_0886308060", "isim/TestPrograma10_isim_beh.exe.sim/work/m_00000000000511043909_0886308060.didat");
	xsi_register_executes(pe);
}
