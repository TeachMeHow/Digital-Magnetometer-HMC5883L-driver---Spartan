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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *STD_TEXTIO;
char *IEEE_P_1367372525;
char *IEEE_P_2717149903;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_0868425105_1864968857_init();
    unisim_a_2340387572_1864968857_init();
    unisim_a_1941169844_3118875749_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_3484885994_2523279426_init();
    unisim_a_2694770512_1428675764_init();
    unisim_a_1836616293_3089378898_init();
    unisim_a_0039681122_1945201939_init();
    unisim_a_1446710196_3752513572_init();
    unisim_a_3822252837_3752513572_init();
    unisim_a_1094721527_3752513572_init();
    unisim_a_1863101193_3752513572_init();
    unisim_a_3449702363_3752513572_init();
    unisim_a_0460033112_3752513572_init();
    unisim_a_0891762854_3752513572_init();
    unisim_a_0774281858_3731405331_init();
    unisim_a_2152598291_3731405331_init();
    unisim_a_3843083042_3731405331_init();
    unisim_a_3827501438_3731405331_init();
    unisim_a_0223072089_3731405331_init();
    unisim_a_3504150236_3731405331_init();
    unisim_a_3598171077_3731405331_init();
    unisim_a_3600803327_3731405331_init();
    unisim_a_4164620091_3731405331_init();
    unisim_a_3858273560_3731405331_init();
    unisim_a_0319714735_3676810390_init();
    unisim_a_0976797441_3676810390_init();
    unisim_a_3833799735_3676810390_init();
    unisim_a_1313706049_3676810390_init();
    unisim_a_3270560481_3676810390_init();
    unisim_a_4147975967_3676810390_init();
    unisim_a_3924003788_3676810390_init();
    unisim_a_1586750429_3676810390_init();
    unisim_a_3402522790_3676810390_init();
    unisim_a_2496854878_3676810390_init();
    unisim_a_0238683409_3676810390_init();
    unisim_a_2203725902_3676810390_init();
    unisim_a_4081244398_3676810390_init();
    unisim_a_1619687433_3676810390_init();
    unisim_a_0285766749_3676810390_init();
    unisim_a_0408312457_3676810390_init();
    unisim_a_2553742582_3676810390_init();
    unisim_a_1740915096_3676810390_init();
    unisim_a_2903934128_3676810390_init();
    unisim_a_1601173064_3676810390_init();
    unisim_a_2843812663_3676810390_init();
    unisim_a_2776762411_3676810390_init();
    unisim_a_0072822206_3676810390_init();
    unisim_a_3671995548_3676810390_init();
    unisim_a_0404248826_3676810390_init();
    unisim_a_3444408037_3676810390_init();
    unisim_a_1694169941_3676810390_init();
    unisim_a_0242858964_3676810390_init();
    unisim_a_3333324666_3676810390_init();
    unisim_a_3625259708_3676810390_init();
    unisim_a_3860820246_3676810390_init();
    unisim_a_0796500522_3676810390_init();
    unisim_a_1947044788_3676810390_init();
    unisim_a_2806142824_3676810390_init();
    unisim_a_1103586288_3676810390_init();
    unisim_a_3238433375_3676810390_init();
    unisim_a_3458092074_3676810390_init();
    unisim_a_0434910328_3676810390_init();
    unisim_a_0936227941_2005071195_init();
    unisim_a_2261302797_3723259517_init();
    unisim_a_3163574381_0086195937_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_0114820146_1981213126_init();
    unisim_a_0157659190_1981213126_init();
    unisim_a_1736621615_1981213126_init();
    unisim_a_0680833228_1981213126_init();
    unisim_a_0105563895_4148514270_init();
    unisim_a_4277385610_4148514270_init();
    unisim_a_1549882712_4148514270_init();
    unisim_a_0646636258_3391448174_init();
    unisim_a_0828682720_2013640830_init();
    unisim_a_1662209191_2013640830_init();
    unisim_a_4229977888_2013640830_init();
    unisim_a_0192408794_2013640830_init();
    unisim_a_2166959274_2013640830_init();
    unisim_a_4110407105_3291887062_init();
    unisim_a_3108441111_3291887062_init();
    unisim_a_3884957326_4183170150_init();
    work_a_4247475916_0632001823_init();
    work_a_0265868673_3212880686_init();
    work_a_3544834693_2372691052_init();


    xsi_register_tops("work_a_3544834693_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
