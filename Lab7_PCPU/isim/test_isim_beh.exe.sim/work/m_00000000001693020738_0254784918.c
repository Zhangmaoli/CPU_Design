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

/* This file is designed for use with ISim build 0x36e8438f */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Verilog HDL/Lab7_PCPU/RegFile.v";
static int ng1[] = {0, 0};
static int ng2[] = {31, 0};
static int ng3[] = {1, 0};



static void Cont_27_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1564);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1564);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 784U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2724);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 2664);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_28_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1564);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1564);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 876U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2760);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 2672);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_30_2(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    char *t41;
    int t42;
    int t43;
    int t44;
    int t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 2468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    t3 = (t0 + 2496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(39, ng0);

LAB21:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1564);
    t12 = (t6 + 44U);
    t13 = *((char **)t12);
    t14 = (t0 + 1564);
    t23 = (t14 + 40U);
    t29 = *((char **)t23);
    t30 = (t0 + 968U);
    t33 = *((char **)t30);
    xsi_vlog_generic_get_array_select_value(t4, 32, t5, t13, t29, 2, 1, t33, 5, 2);
    t30 = (t0 + 1564);
    t34 = (t0 + 1564);
    t35 = (t34 + 44U);
    t36 = *((char **)t35);
    t37 = (t0 + 1564);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    t41 = (t0 + 968U);
    t46 = *((char **)t41);
    xsi_vlog_generic_convert_array_indices(t31, t32, t36, t39, 2, 1, t46, 5, 2);
    t41 = (t31 + 4);
    t7 = *((unsigned int *)t41);
    t40 = (!(t7));
    t47 = (t32 + 4);
    t8 = *((unsigned int *)t47);
    t42 = (!(t8));
    t43 = (t40 && t42);
    if (t43 == 1)
        goto LAB27;

LAB28:
LAB24:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);

LAB15:    xsi_set_current_line(34, ng0);
    xsi_set_current_line(34, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 1656);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 32);

LAB16:    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB17;

LAB18:    goto LAB14;

LAB17:    xsi_set_current_line(35, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 1564);
    t23 = (t0 + 1564);
    t29 = (t23 + 44U);
    t30 = *((char **)t29);
    t33 = (t0 + 1564);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    t36 = (t0 + 1656);
    t37 = (t36 + 36U);
    t38 = *((char **)t37);
    xsi_vlog_generic_convert_array_indices(t31, t32, t30, t35, 2, 1, t38, 32, 1);
    t39 = (t31 + 4);
    t15 = *((unsigned int *)t39);
    t40 = (!(t15));
    t41 = (t32 + 4);
    t16 = *((unsigned int *)t41);
    t42 = (!(t16));
    t43 = (t40 && t42);
    if (t43 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 1656);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB16;

LAB19:    t17 = *((unsigned int *)t31);
    t18 = *((unsigned int *)t32);
    t44 = (t17 - t18);
    t45 = (t44 + 1);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t32), t45, 0LL);
    goto LAB20;

LAB22:    xsi_set_current_line(41, ng0);
    t5 = (t0 + 1060U);
    t6 = *((char **)t5);
    t5 = (t0 + 1564);
    t12 = (t0 + 1564);
    t13 = (t12 + 44U);
    t14 = *((char **)t13);
    t23 = (t0 + 1564);
    t29 = (t23 + 40U);
    t30 = *((char **)t29);
    t33 = (t0 + 968U);
    t34 = *((char **)t33);
    xsi_vlog_generic_convert_array_indices(t4, t31, t14, t30, 2, 1, t34, 5, 2);
    t33 = (t4 + 4);
    t15 = *((unsigned int *)t33);
    t40 = (!(t15));
    t35 = (t31 + 4);
    t16 = *((unsigned int *)t35);
    t42 = (!(t16));
    t43 = (t40 && t42);
    if (t43 == 1)
        goto LAB25;

LAB26:    goto LAB24;

LAB25:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t31);
    t44 = (t17 - t18);
    t45 = (t44 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t31), t45, 0LL);
    goto LAB26;

LAB27:    t9 = *((unsigned int *)t31);
    t10 = *((unsigned int *)t32);
    t44 = (t9 - t10);
    t45 = (t44 + 1);
    xsi_vlogvar_wait_assign_value(t30, t4, 0, *((unsigned int *)t32), t45, 0LL);
    goto LAB28;

}


extern void work_m_00000000001693020738_0254784918_init()
{
	static char *pe[] = {(void *)Cont_27_0,(void *)Cont_28_1,(void *)Always_30_2};
	xsi_register_didat("work_m_00000000001693020738_0254784918", "isim/test_isim_beh.exe.sim/work/m_00000000001693020738_0254784918.didat");
	xsi_register_executes(pe);
}
