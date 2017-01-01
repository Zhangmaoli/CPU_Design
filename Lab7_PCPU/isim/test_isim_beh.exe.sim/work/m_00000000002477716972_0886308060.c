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
static const char *ng0 = "D:/Verilog HDL/Lab7_PCPU/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {7U, 0U};
static unsigned int ng8[] = {8U, 0U};
static unsigned int ng9[] = {9U, 0U};
static unsigned int ng10[] = {10U, 0U};
static unsigned int ng11[] = {11U, 0U};
static unsigned int ng12[] = {12U, 0U};
static unsigned int ng13[] = {0U, 0U};
static unsigned int ng14[] = {13U, 0U};
static unsigned int ng15[] = {14U, 0U};
static int ng16[] = {16, 0};



static void Cont_46_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t0 + 3464);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 3404);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Cont_47_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1892U);
    t3 = *((char **)t2);
    t2 = (t0 + 3500);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 3412);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Always_49_2(char *t0)
{
    char t10[8];
    char t40[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t48;

LAB0:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3420);
    *((int *)t2) = 1;
    t3 = (t0 + 3236);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1984U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB37:    goto LAB2;

LAB7:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 2076U);
    t8 = *((char **)t7);
    t7 = (t0 + 2168U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_signed_add(t10, 32, t8, 32, t9, 32);
    t7 = (t0 + 2396);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB37;

LAB9:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2076U);
    t4 = *((char **)t3);
    t3 = (t0 + 2168U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_signed_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB11:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB38;

LAB39:
LAB40:    t39 = (t0 + 2396);
    xsi_vlogvar_assign_value(t39, t10, 0, 0, 32);
    goto LAB37;

LAB13:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB41;

LAB42:
LAB43:    t39 = (t0 + 2396);
    xsi_vlogvar_assign_value(t39, t10, 0, 0, 32);
    goto LAB37;

LAB15:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB44;

LAB45:
LAB46:    t21 = (t0 + 2396);
    xsi_vlogvar_assign_value(t21, t10, 0, 0, 32);
    goto LAB37;

LAB17:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t40) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t40 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB47;

LAB48:
LAB49:    memset(t10, 0, 8);
    t39 = (t10 + 4);
    t41 = (t40 + 4);
    t35 = *((unsigned int *)t40);
    t36 = (~(t35));
    *((unsigned int *)t10) = t36;
    *((unsigned int *)t39) = 0;
    if (*((unsigned int *)t41) != 0)
        goto LAB51;

LAB50:    t44 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t44 & 4294967295U);
    t45 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t45 & 4294967295U);
    t46 = (t0 + 2396);
    xsi_vlogvar_assign_value(t46, t10, 0, 0, 32);
    goto LAB37;

LAB19:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB21:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB23:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1892U);
    t4 = *((char **)t3);
    t3 = (t0 + 1800U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB25:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1892U);
    t4 = *((char **)t3);
    t3 = (t0 + 1800U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB27:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1892U);
    t4 = *((char **)t3);
    t3 = (t0 + 1800U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_rshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2396);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB37;

LAB29:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2076U);
    t4 = *((char **)t3);
    t3 = (t0 + 2168U);
    t7 = *((char **)t3);
    memset(t47, 0, 8);
    xsi_vlog_signed_less(t47, 32, t4, 32, t7, 32);
    memset(t40, 0, 8);
    t3 = (t47 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t47);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t3) != 0)
        goto LAB54;

LAB55:    t9 = (t40 + 4);
    t16 = *((unsigned int *)t40);
    t17 = *((unsigned int *)t9);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB56;

LAB57:    t19 = *((unsigned int *)t40);
    t20 = (~(t19));
    t23 = *((unsigned int *)t9);
    t24 = (t20 || t23);
    if (t24 > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t9) > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t40) > 0)
        goto LAB62;

LAB63:    memcpy(t10, t22, 8);

LAB64:    t39 = (t0 + 2396);
    xsi_vlogvar_assign_value(t39, t10, 0, 0, 32);
    goto LAB37;

LAB31:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1800U);
    t4 = *((char **)t3);
    t3 = (t0 + 1892U);
    t7 = *((char **)t3);
    memset(t47, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB66;

LAB65:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB66;

LAB69:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB67;

LAB68:    memset(t40, 0, 8);
    t21 = (t47 + 4);
    t11 = *((unsigned int *)t21);
    t12 = (~(t11));
    t13 = *((unsigned int *)t47);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t21) != 0)
        goto LAB72;

LAB73:    t39 = (t40 + 4);
    t16 = *((unsigned int *)t40);
    t17 = *((unsigned int *)t39);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB74;

LAB75:    t19 = *((unsigned int *)t40);
    t20 = (~(t19));
    t23 = *((unsigned int *)t39);
    t24 = (t20 || t23);
    if (t24 > 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t39) > 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t40) > 0)
        goto LAB80;

LAB81:    memcpy(t10, t46, 8);

LAB82:    t48 = (t0 + 2396);
    xsi_vlogvar_assign_value(t48, t10, 0, 0, 32);
    goto LAB37;

LAB33:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1892U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng16)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 32, t4, 32, t3, 32);
    t7 = (t0 + 2396);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB37;

LAB38:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t33);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t34);
    t37 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t37 & t33);
    t38 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t38 & t34);
    goto LAB40;

LAB41:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & t29);
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t30);
    goto LAB43;

LAB44:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    goto LAB46;

LAB47:    t19 = *((unsigned int *)t40);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t40) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & t29);
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t30);
    goto LAB49;

LAB51:    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t41);
    *((unsigned int *)t10) = (t37 | t38);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t39) = (t42 | t43);
    goto LAB50;

LAB52:    *((unsigned int *)t40) = 1;
    goto LAB55;

LAB54:    t8 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB55;

LAB56:    t21 = ((char*)((ng1)));
    goto LAB57;

LAB58:    t22 = ((char*)((ng13)));
    goto LAB59;

LAB60:    xsi_vlog_unsigned_bit_combine(t10, 32, t21, 32, t22, 32);
    goto LAB64;

LAB62:    memcpy(t10, t21, 8);
    goto LAB64;

LAB66:    t9 = (t47 + 4);
    *((unsigned int *)t47) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB68;

LAB67:    *((unsigned int *)t47) = 1;
    goto LAB68;

LAB70:    *((unsigned int *)t40) = 1;
    goto LAB73;

LAB72:    t22 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB73;

LAB74:    t41 = ((char*)((ng1)));
    goto LAB75;

LAB76:    t46 = ((char*)((ng13)));
    goto LAB77;

LAB78:    xsi_vlog_unsigned_bit_combine(t10, 32, t41, 32, t46, 32);
    goto LAB82;

LAB80:    memcpy(t10, t41, 8);
    goto LAB82;

}


extern void work_m_00000000002477716972_0886308060_init()
{
	static char *pe[] = {(void *)Cont_46_0,(void *)Cont_47_1,(void *)Always_49_2};
	xsi_register_didat("work_m_00000000002477716972_0886308060", "isim/test_isim_beh.exe.sim/work/m_00000000002477716972_0886308060.didat");
	xsi_register_executes(pe);
}
