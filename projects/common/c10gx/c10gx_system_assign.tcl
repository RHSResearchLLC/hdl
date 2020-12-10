# a10gx carrier defaults
# clocks and resets

set_location_assignment PIN_J23 -to sys_clk ; ## Note- not actually differential on dev kit
set_location_assignment PIN_H23 -to "sys_clk(n)"
set_location_assignment PIN_AC12 -to sys_resetn
set_instance_assignment -name IO_STANDARD LVDS -to sys_clk
set_instance_assignment -name IO_STANDARD "1.8 V" -to sys_resetn
set_global_assignment -name PROGRAMMABLE_POWER_TECHNOLOGY_SETTING "FORCE ALL USED TILES TO HIGH SPEED"

# ddr3

set_location_assignment PIN_AA18 -to ddr3_ref_clk
set_location_assignment PIN_AA19 -to "ddr3_ref_clk(n)"

set_instance_assignment -name IO_STANDARD LVDS -to ddr3_ref_clk
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to ddr3_ref_clk -disable

set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[14]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[13]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[12]

set_location_assignment PIN_AE23 -to ddr3_clk_p      ; ## 1.5 V   V1  MEM_CLK_P
set_location_assignment PIN_AD23 -to ddr3_clk_n      ; ## 1.5 V   V2  MEM_CLK_N

set_location_assignment PIN_AG19 -to ddr3_a[0]
set_location_assignment PIN_AG20 -to ddr3_a[1]
set_location_assignment PIN_AH22 -to ddr3_a[2]
set_location_assignment PIN_AG21 -to ddr3_a[3]
set_location_assignment PIN_AF21 -to ddr3_a[4]
set_location_assignment PIN_AE21 -to ddr3_a[5]
set_location_assignment PIN_AC21 -to ddr3_a[6]
set_location_assignment PIN_AB21 -to ddr3_a[7]
set_location_assignment PIN_AH21 -to ddr3_a[8]
set_location_assignment PIN_AH20 -to ddr3_a[9]
set_location_assignment PIN_AC20 -to ddr3_a[10]
set_location_assignment PIN_AB20 -to ddr3_a[11]
set_location_assignment PIN_Y19  -to ddr3_a[12]
set_location_assignment PIN_AA17 -to ddr3_a[13]
set_location_assignment PIN_Y17  -to ddr3_a[14]

set_location_assignment PIN_AA23  -to ddr3_cke        ; ## 1.5 V   P5  MEM_ADDR_CMD20
set_location_assignment PIN_AF22  -to ddr3_cs_n       ; ## 1.5 V   P1  MEM_ADDR_CMD22
set_location_assignment PIN_AC23  -to ddr3_odt        ; ## 1.5 V   M4  MEM_ADDR_CMD24

set_location_assignment PIN_AC22 -to ddr3_reset_n    ; ## 1.5 V   K1  MEM_ADDR_CMD27
set_location_assignment PIN_AD22 -to ddr3_we_n       ; ## 1.5 V   P2  MEM_ADDR_CMD28

set_location_assignment PIN_W21  -to ddr3_ba[0]      ; ## 1.5 V   M1  MEM_ADDR_CMD16
set_location_assignment PIN_AA21 -to ddr3_ba[1]      ; ## 1.5 V   M2  MEM_ADDR_CMD17
set_location_assignment PIN_Y21  -to ddr3_ba[2]      ; ## 1.5 V   N2  MEM_ADDR_CMD18
set_location_assignment PIN_AB19 -to ddr3_ras_n      ; ## 1.5 V   L2  MEM_ADDR_CMD26
set_location_assignment PIN_W20  -to ddr3_cas_n      ; ## 1.5 V   L4  MEM_ADDR_CMD19

set_location_assignment PIN_A9   -to ddr3_dqs_p[0]
set_location_assignment PIN_A8   -to ddr3_dqs_n[0]
set_location_assignment PIN_A14  -to ddr3_dqs_p[1]
set_location_assignment PIN_B13  -to ddr3_dqs_n[1]
set_location_assignment PIN_A27  -to ddr3_dqs_p[2]
set_location_assignment PIN_A26  -to ddr3_dqs_n[2]
set_location_assignment PIN_B19  -to ddr3_dqs_p[3]
set_location_assignment PIN_B18  -to ddr3_dqs_n[3]

set_location_assignment PIN_C10 -to ddr3_dq[0]
set_location_assignment PIN_B10 -to ddr3_dq[1]
set_location_assignment PIN_D10 -to ddr3_dq[2]
set_location_assignment PIN_B9  -to ddr3_dq[3]
set_location_assignment PIN_D8  -to ddr3_dq[4]
set_location_assignment PIN_D9  -to ddr3_dq[5]
set_location_assignment PIN_C11 -to ddr3_dq[6]
set_location_assignment PIN_C8  -to ddr3_dq[7]
set_location_assignment PIN_A11 -to ddr3_dq[8]
set_location_assignment PIN_B15 -to ddr3_dq[9]
set_location_assignment PIN_B11 -to ddr3_dq[10]
set_location_assignment PIN_D13 -to ddr3_dq[11]
set_location_assignment PIN_A13 -to ddr3_dq[12]
set_location_assignment PIN_D14 -to ddr3_dq[13]
set_location_assignment PIN_A12 -to ddr3_dq[14]
set_location_assignment PIN_C13 -to ddr3_dq[15]
set_location_assignment PIN_B26 -to ddr3_dq[16]
set_location_assignment PIN_B23 -to ddr3_dq[17]
set_location_assignment PIN_B25 -to ddr3_dq[18]
set_location_assignment PIN_A22 -to ddr3_dq[19]
set_location_assignment PIN_B21 -to ddr3_dq[20]
set_location_assignment PIN_C21 -to ddr3_dq[21]
set_location_assignment PIN_A24 -to ddr3_dq[22]
set_location_assignment PIN_A21 -to ddr3_dq[23]
set_location_assignment PIN_D15 -to ddr3_dq[24]
set_location_assignment PIN_A19 -to ddr3_dq[25]
set_location_assignment PIN_C15 -to ddr3_dq[26]
set_location_assignment PIN_B20 -to ddr3_dq[27]
set_location_assignment PIN_A18 -to ddr3_dq[28]
set_location_assignment PIN_C20 -to ddr3_dq[29]
set_location_assignment PIN_A17 -to ddr3_dq[30]
set_location_assignment PIN_E15 -to ddr3_dq[31]

set_location_assignment PIN_C12  -to ddr3_dm[0]
set_location_assignment PIN_B14  -to ddr3_dm[1]
set_location_assignment PIN_B24  -to ddr3_dm[2]
set_location_assignment PIN_B16  -to ddr3_dm[3]

set_location_assignment PIN_Y20 -to ddr3_rzq


# ethernet interface

set_location_assignment PIN_AB16 -to eth_ref_clk
set_location_assignment PIN_AA16 -to "eth_ref_clk(n)"
set_location_assignment PIN_AD20 -to eth_rxd
set_location_assignment PIN_AD19 -to "eth_rxd(n)"
set_location_assignment PIN_AC18 -to eth_txd
set_location_assignment PIN_AC16 -to "eth_txd(n)"

set_instance_assignment -name IO_STANDARD LVDS -to eth_ref_clk
set_instance_assignment -name IO_STANDARD LVDS -to eth_rxd
set_instance_assignment -name IO_STANDARD LVDS -to eth_txd

set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to eth_ref_clk -disable
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to eth_rxd -disable

set_location_assignment PIN_D19 -to eth_resetn
set_location_assignment PIN_E19 -to eth_mdc
set_location_assignment PIN_E16 -to eth_mdio
set_location_assignment PIN_E17 -to eth_intn

set_instance_assignment -name IO_STANDARD "1.8 V" -to eth_resetn
set_instance_assignment -name IO_STANDARD "1.8 V" -to eth_mdc
set_instance_assignment -name IO_STANDARD "1.8 V" -to eth_mdio
set_instance_assignment -name IO_STANDARD "1.8 V" -to eth_intn

# flash NOTE THIS ISN'T REAL JUST TEMPORARY FOR NOW 

set_location_assignment PIN_P4   -to flash_addr[0]
set_location_assignment PIN_P3   -to flash_addr[1]
set_location_assignment PIN_T9   -to flash_addr[2]
set_location_assignment PIN_T8   -to flash_addr[3]
set_location_assignment PIN_T7   -to flash_addr[4]
set_location_assignment PIN_T6   -to flash_addr[5]
set_location_assignment PIN_R5   -to flash_addr[6]
set_location_assignment PIN_R4   -to flash_addr[7]
set_location_assignment PIN_U5   -to flash_addr[8]
set_location_assignment PIN_T4   -to flash_addr[9]
set_location_assignment PIN_V8   -to flash_addr[10]
set_location_assignment PIN_U8   -to flash_addr[11]
set_location_assignment PIN_M4   -to flash_addr[12]
set_location_assignment PIN_M3   -to flash_addr[13]
set_location_assignment PIN_L4   -to flash_addr[14]
set_location_assignment PIN_K4   -to flash_addr[15]
set_location_assignment PIN_N3   -to flash_addr[16]
set_location_assignment PIN_N2   -to flash_addr[17]
set_location_assignment PIN_J3   -to flash_addr[18]
set_location_assignment PIN_H2   -to flash_addr[19]
set_location_assignment PIN_J2   -to flash_addr[20]
set_location_assignment PIN_K2   -to flash_addr[21]
set_location_assignment PIN_L3   -to flash_addr[22]
set_location_assignment PIN_L2   -to flash_addr[23]
set_location_assignment PIN_M1   -to flash_addr[24]
set_location_assignment PIN_N1   -to flash_addr[25]
set_location_assignment PIN_G1   -to flash_addr[26]
set_location_assignment PIN_H1   -to flash_addr[27]
set_location_assignment PIN_P2   -to flash_data[0]
set_location_assignment PIN_R2   -to flash_data[1]
set_location_assignment PIN_T3   -to flash_data[2]
set_location_assignment PIN_T2   -to flash_data[3]
set_location_assignment PIN_K1   -to flash_data[4]
set_location_assignment PIN_L1   -to flash_data[5]
set_location_assignment PIN_R1   -to flash_data[6]
set_location_assignment PIN_T1   -to flash_data[7]
set_location_assignment PIN_U4   -to flash_data[8]
set_location_assignment PIN_U3   -to flash_data[9]
set_location_assignment PIN_U1   -to flash_data[10]
set_location_assignment PIN_V1   -to flash_data[11]
set_location_assignment PIN_V7   -to flash_data[12]
set_location_assignment PIN_U6   -to flash_data[13]
set_location_assignment PIN_V6   -to flash_data[14]
set_location_assignment PIN_V5   -to flash_data[15]
set_location_assignment PIN_V2   -to flash_data[16]
set_location_assignment PIN_W2   -to flash_data[17]
set_location_assignment PIN_V3   -to flash_data[18]
set_location_assignment PIN_W3   -to flash_data[19]
set_location_assignment PIN_Y4   -to flash_data[20]
set_location_assignment PIN_W4   -to flash_data[21]
set_location_assignment PIN_W7   -to flash_data[22]
set_location_assignment PIN_W8   -to flash_data[23]
set_location_assignment PIN_Y6   -to flash_data[24]
set_location_assignment PIN_Y7   -to flash_data[25]
set_location_assignment PIN_Y5   -to flash_data[26]
set_location_assignment PIN_W5   -to flash_data[27]
set_location_assignment PIN_Y2   -to flash_data[28]
set_location_assignment PIN_Y1   -to flash_data[29]
set_location_assignment PIN_AA8  -to flash_data[30]
set_location_assignment PIN_AA9  -to flash_data[31]
set_location_assignment PIN_AB4  -to flash_advn
set_location_assignment PIN_AC5  -to flash_cen[0]
set_location_assignment PIN_AA1  -to flash_cen[1]
set_location_assignment PIN_AB1  -to flash_clk
set_location_assignment PIN_AB5  -to flash_oen
set_location_assignment PIN_AB6  -to flash_resetn
set_location_assignment PIN_AB3  -to flash_wen

set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_clk
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_oen
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_resetn
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_wen
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_advn
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_cen
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[27]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[26]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[25]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[24]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[23]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[22]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[21]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[20]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[19]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[18]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_addr[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[31]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[30]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[29]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[28]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[27]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[26]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[25]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[24]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[23]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[22]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[21]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[20]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[19]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[18]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to flash_data[0]

# leds ALL THESE ARE DUMMY AS WELL

set_location_assignment PIN_AA2   -to gpio_bd_o[0]  ; ## led-g0-d10
set_location_assignment PIN_AA4   -to gpio_bd_o[1]  ; ## led-g1-d9
set_location_assignment PIN_AA3   -to gpio_bd_o[2]  ; ## led-g2-d8
set_location_assignment PIN_AA7   -to gpio_bd_o[3]  ; ## led-g3-d7
set_location_assignment PIN_AA6   -to gpio_bd_o[4]  ; ## led-g4-d6
set_location_assignment PIN_AC3   -to gpio_bd_o[5]  ; ## led-g5-d5
set_location_assignment PIN_AD3   -to gpio_bd_o[6]  ; ## led-g6-d4
set_location_assignment PIN_AF2   -to gpio_bd_o[7]  ; ## led-g7-d3
set_location_assignment PIN_AE1   -to gpio_bd_o[8]  ; ## led-r0-d10
set_location_assignment PIN_AC2   -to gpio_bd_o[9]  ; ## led-r1-d9
set_location_assignment PIN_AC1   -to gpio_bd_o[10] ; ## led-r2-d8
set_location_assignment PIN_AD2   -to gpio_bd_o[11] ; ## led-r3-d7
set_location_assignment PIN_AE2   -to gpio_bd_o[12] ; ## led-r4-d6
set_location_assignment PIN_AF1   -to gpio_bd_o[13] ; ## led-r5-d5
set_location_assignment PIN_AG1   -to gpio_bd_o[14] ; ## led-r6-d4
set_location_assignment PIN_AF3   -to gpio_bd_o[15] ; ## led-r7-d3
set_location_assignment PIN_AG3   -to gpio_bd_i[0]  ; ## dipsw0
set_location_assignment PIN_AH3   -to gpio_bd_i[1]  ; ## dipsw1
set_location_assignment PIN_AH2   -to gpio_bd_i[2]  ; ## dipsw2
set_location_assignment PIN_AD4   -to gpio_bd_i[3]  ; ## dipsw3
set_location_assignment PIN_AE4   -to gpio_bd_i[4]  ; ## dipsw4
set_location_assignment PIN_AC7   -to gpio_bd_i[5]  ; ## dipsw5
set_location_assignment PIN_AC6   -to gpio_bd_i[6]  ; ## dipsw6
set_location_assignment PIN_AE6   -to gpio_bd_i[7]  ; ## dipsw7
set_location_assignment PIN_AF6   -to gpio_bd_i[8]  ; ## pb0-s3
set_location_assignment PIN_AE10  -to gpio_bd_i[9]  ; ## pb1-s2
set_location_assignment PIN_AE11  -to gpio_bd_i[10] ; ## pb2-s1

set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_o[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to gpio_bd_i[10]
