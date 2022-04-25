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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Phase 2/Major Task Part 1/ALU/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

char *ieee_p_0774719531_sub_674691591_2162500114(char *, char *, char *, char *, unsigned char );
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char t23[16];
    char t24[16];
    char t60[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    unsigned char t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned char t37;
    unsigned char t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    unsigned char t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned char t47;
    unsigned char t48;
    unsigned char t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    unsigned char t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4312);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 4376);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 6877);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 33U);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6910);
    t6 = xsi_mem_cmp(t1, t2, 4U);
    if (t6 == 1)
        goto LAB3;

LAB9:    t4 = (t0 + 6914);
    t7 = xsi_mem_cmp(t4, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 6918);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 6922);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 6926);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6930);
    t3 = (t0 + 2568U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);

LAB2:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 6962);
    *((int *)t1) = 0;
    t2 = (t0 + 6966);
    *((int *)t2) = 31;
    t6 = 0;
    t7 = 31;

LAB15:    if (t6 <= t7)
        goto LAB16;

LAB18:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 4440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t31 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t19);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = t31;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 4232);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(38, ng0);
    t17 = (t0 + 1512U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t17 = (t0 + 2928U);
    t20 = *((char **)t17);
    t17 = (t20 + 0);
    *((unsigned char *)t17) = t19;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 6636U);
    t1 = xsi_base_array_concat(t1, t23, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t9 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 6652U);
    t5 = xsi_base_array_concat(t5, t24, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t22, t1, t23, t5, t24);
    t14 = (t0 + 2928U);
    t15 = *((char **)t14);
    t19 = *((unsigned char *)t15);
    t14 = ieee_p_0774719531_sub_674691591_2162500114(IEEE_P_0774719531, t21, t12, t22, t19);
    t17 = (t0 + 2448U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t21 + 12U);
    t25 = *((unsigned int *)t20);
    t26 = (1U * t25);
    memcpy(t17, t14, t26);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t25 = (32 - 31);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2568U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (32 - 32);
    t25 = (t6 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t19 = *((unsigned char *)t1);
    t3 = (t0 + 2688U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = t19;
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = (31 - 31);
    t25 = (t6 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t19 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = (31 - 31);
    t28 = (t7 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t3 = (t4 + t30);
    t31 = *((unsigned char *)t3);
    t32 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t19, t31);
    t5 = (t0 + 2568U);
    t8 = *((char **)t5);
    t10 = (31 - 31);
    t33 = (t10 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t5 = (t8 + t35);
    t36 = *((unsigned char *)t5);
    t37 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t36);
    t38 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t32, t37);
    t9 = (t0 + 1032U);
    t11 = *((char **)t9);
    t13 = (31 - 31);
    t39 = (t13 * -1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t9 = (t11 + t41);
    t42 = *((unsigned char *)t9);
    t43 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t42);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t16 = (31 - 31);
    t44 = (t16 * -1);
    t45 = (1U * t44);
    t46 = (0 + t45);
    t12 = (t14 + t46);
    t47 = *((unsigned char *)t12);
    t48 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t47);
    t49 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t43, t48);
    t15 = (t0 + 2568U);
    t17 = *((char **)t15);
    t50 = (31 - 31);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t15 = (t17 + t53);
    t54 = *((unsigned char *)t15);
    t55 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t49, t54);
    t56 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t38, t55);
    t18 = (t0 + 4376);
    t20 = (t18 + 56U);
    t57 = *((char **)t20);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = t56;
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 6636U);
    t1 = xsi_base_array_concat(t1, t23, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 6652U);
    t9 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t24, t8, t5);
    t12 = ((IEEE_P_2592010699) + 4024);
    t11 = xsi_base_array_concat(t11, t60, t12, (char)99, (unsigned char)2, (char)97, t9, t24, (char)101);
    t14 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t22, t1, t23, t11, t60);
    t15 = (t0 + 2928U);
    t17 = *((char **)t15);
    t19 = *((unsigned char *)t17);
    t15 = ieee_p_0774719531_sub_674691591_2162500114(IEEE_P_0774719531, t21, t14, t22, t19);
    t18 = (t0 + 2448U);
    t20 = *((char **)t18);
    t18 = (t20 + 0);
    t57 = (t21 + 12U);
    t25 = *((unsigned int *)t57);
    t26 = (1U * t25);
    memcpy(t18, t15, t26);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t25 = (32 - 31);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2568U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 32U);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (32 - 32);
    t25 = (t6 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t19 = *((unsigned char *)t1);
    t31 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t19);
    t3 = (t0 + 2688U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = t31;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = (31 - 31);
    t25 = (t6 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t19 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = (31 - 31);
    t28 = (t7 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t3 = (t4 + t30);
    t31 = *((unsigned char *)t3);
    t32 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t31);
    t36 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t19, t32);
    t5 = (t0 + 2568U);
    t8 = *((char **)t5);
    t10 = (31 - 31);
    t33 = (t10 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t5 = (t8 + t35);
    t37 = *((unsigned char *)t5);
    t38 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t37);
    t42 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t36, t38);
    t9 = (t0 + 1032U);
    t11 = *((char **)t9);
    t13 = (31 - 31);
    t39 = (t13 * -1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t9 = (t11 + t41);
    t43 = *((unsigned char *)t9);
    t47 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t43);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t16 = (31 - 31);
    t44 = (t16 * -1);
    t45 = (1U * t44);
    t46 = (0 + t45);
    t12 = (t14 + t46);
    t48 = *((unsigned char *)t12);
    t49 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t47, t48);
    t15 = (t0 + 2568U);
    t17 = *((char **)t15);
    t50 = (31 - 31);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t15 = (t17 + t53);
    t54 = *((unsigned char *)t15);
    t55 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t49, t54);
    t56 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t42, t55);
    t18 = (t0 + 4376);
    t20 = (t18 + 56U);
    t57 = *((char **)t20);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = t56;
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6652U);
    t5 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t21, t2, t1, t4, t3);
    t8 = (t0 + 2568U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t21 + 12U);
    t25 = *((unsigned int *)t11);
    t26 = (1U * t25);
    memcpy(t8, t5, t26);
    goto LAB2;

LAB6:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6652U);
    t5 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t21, t2, t1, t4, t3);
    t8 = (t0 + 2568U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t21 + 12U);
    t25 = *((unsigned int *)t11);
    t26 = (1U * t25);
    memcpy(t8, t5, t26);
    goto LAB2;

LAB7:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6652U);
    t5 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t21, t2, t1, t4, t3);
    t8 = (t0 + 2568U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t21 + 12U);
    t25 = *((unsigned int *)t11);
    t26 = (1U * t25);
    memcpy(t8, t5, t26);
    goto LAB2;

LAB14:;
LAB16:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 2808U);
    t4 = *((char **)t3);
    t19 = *((unsigned char *)t4);
    t3 = (t0 + 2568U);
    t5 = *((char **)t3);
    t3 = (t0 + 6962);
    t10 = *((int *)t3);
    t13 = (t10 - 31);
    t25 = (t13 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t3));
    t26 = (1U * t25);
    t27 = (0 + t26);
    t8 = (t5 + t27);
    t31 = *((unsigned char *)t8);
    t32 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t19, t31);
    t9 = (t0 + 2808U);
    t11 = *((char **)t9);
    t9 = (t11 + 0);
    *((unsigned char *)t9) = t32;

LAB17:    t1 = (t0 + 6962);
    t6 = *((int *)t1);
    t2 = (t0 + 6966);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB18;

LAB19:    t10 = (t6 + 1);
    t6 = t10;
    t3 = (t0 + 6962);
    *((int *)t3) = t6;
    goto LAB15;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/ALUTest_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
