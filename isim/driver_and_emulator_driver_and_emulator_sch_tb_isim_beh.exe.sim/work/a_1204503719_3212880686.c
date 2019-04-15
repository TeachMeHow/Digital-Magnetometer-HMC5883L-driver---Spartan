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
static const char *ng0 = "/home/imarobot/compas-test/magnetometer_emulator.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1204503719_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)7);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)6);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1152U);
    t4 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t4 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t5 == 1)
        goto LAB25;

LAB26:    t4 = (unsigned char)0;

LAB27:    if (t4 == 1)
        goto LAB22;

LAB23:    t1 = (unsigned char)0;

LAB24:    if (t1 != 0)
        goto LAB19;

LAB21:
LAB20:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1152U);
    t4 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t4 == 1)
        goto LAB31;

LAB32:    t1 = (unsigned char)0;

LAB33:    if (t1 != 0)
        goto LAB28;

LAB30:
LAB29:    t2 = (t0 + 4280);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t9 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 992U);
    t1 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t1 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(55, ng0);
    t10 = (t0 + 4392);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = 0;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 4456);
    t6 = (t3 + 56U);
    t10 = *((char **)t6);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2152U);
    t10 = *((char **)t3);
    t15 = *((int *)t10);
    t16 = (t15 + 1);
    t3 = (t0 + 4392);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t16;
    xsi_driver_first_trans_fast(t3);
    goto LAB14;

LAB16:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)1);
    t1 = t7;
    goto LAB18;

LAB19:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 4456);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    t6 = (t2 + 56U);
    t10 = *((char **)t6);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB20;

LAB22:    t3 = (t0 + 2152U);
    t10 = *((char **)t3);
    t15 = *((int *)t10);
    t9 = (t15 == 8);
    t1 = t9;
    goto LAB24;

LAB25:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)1);
    t4 = t8;
    goto LAB27;

LAB28:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 4456);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t3);
    goto LAB29;

LAB31:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)2);
    t1 = t7;
    goto LAB33;

}

static void work_a_1204503719_3212880686_p_1(char *t0)
{
    char t15[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(82, ng0);
    t6 = (t0 + 4584);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

LAB8:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4584);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t4 = *((unsigned char *)t6);
    t5 = (t3 == t4);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t11 = (7 - 6);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t7 + t13);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t14 = *((unsigned char *)t9);
    t10 = ((IEEE_P_2592010699) + 4000);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 6;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 6);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t8 = xsi_base_array_concat(t8, t15, t10, (char)97, t1, t16, (char)99, t14, (char)101);
    t20 = (7U + 1U);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB13;

LAB14:    t18 = (t0 + 4648);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t8, 8U);
    xsi_driver_first_trans_fast(t18);
    goto LAB11;

LAB13:    xsi_size_not_matching(8U, t20, 0);
    goto LAB14;

}

static void work_a_1204503719_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB11;

LAB12:
LAB3:    t1 = (t0 + 4312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t1 = (t0 + 1032U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)7);
    t5 = t11;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4712);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4712);
    t12 = (t1 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t5 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB16;

LAB17:    t1 = (t0 + 1032U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)7);
    t5 = t11;

LAB18:    if (t5 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4776);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB3;

LAB13:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 4776);
    t12 = (t1 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    t5 = (unsigned char)1;
    goto LAB18;

}


extern void work_a_1204503719_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1204503719_3212880686_p_0,(void *)work_a_1204503719_3212880686_p_1,(void *)work_a_1204503719_3212880686_p_2};
	xsi_register_didat("work_a_1204503719_3212880686", "isim/driver_and_emulator_driver_and_emulator_sch_tb_isim_beh.exe.sim/work/a_1204503719_3212880686.didat");
	xsi_register_executes(pe);
}
