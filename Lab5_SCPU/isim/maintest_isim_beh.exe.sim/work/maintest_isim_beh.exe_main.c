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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003599455580_3383896982_init();
    xilinxcorelib_ver_m_00000000001433703432_2507563992_init();
    work_m_00000000001079445352_2138213552_init();
    work_m_00000000003290916286_2307715281_init();
    work_m_00000000003021394882_4291770531_init();
    work_m_00000000002069289540_1621107508_init();
    work_m_00000000001475258483_1863170060_init();
    work_m_00000000004278638759_0967961054_init();
    work_m_00000000001475258483_1989334135_init();
    work_m_00000000000277248021_2725559894_init();
    xilinxcorelib_ver_m_00000000001433703432_3413231452_init();
    work_m_00000000002748013710_2461264495_init();
    work_m_00000000001264646947_0286164271_init();
    work_m_00000000000088617038_1158209312_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000000088617038_1158209312");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
