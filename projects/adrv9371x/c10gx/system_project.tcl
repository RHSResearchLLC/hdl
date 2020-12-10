
source ../../scripts/adi_env.tcl
source ../../scripts/adi_project_intel.tcl

adi_project adrv9371x_c10gx

source $ad_hdl_dir/projects/common/c10gx/c10gx_system_assign.tcl

# lane interface

set_location_assignment PIN_W24   -to ref_clk0               ; ## D04  FMCA_GBTCLK0_M2C_P
set_location_assignment PIN_W23   -to "ref_clk0(n)"          ; ## D05  FMCA_GBTCLK0_M2C_N
set_location_assignment PIN_U24   -to ref_clk1               ; ## B20  FMCA_GBTCLK1_M2C_P
set_location_assignment PIN_U23   -to "ref_clk1(n)"          ; ## B21  FMCA_GBTCLK1_M2C_N
set_location_assignment PIN_AF26   -to rx_serial_data[0]      ; ## A02  FMCA_DP1_M2C_P
set_location_assignment PIN_AF25   -to "rx_serial_data[0](n)" ; ## A03  FMCA_DP1_M2C_N
set_location_assignment PIN_AG28   -to tx_serial_data[0]      ; ## A22  FMCA_DP1_C2M_P (tx_serial_data_p[0])
set_location_assignment PIN_AG27   -to "tx_serial_data[0](n)" ; ## A23  FMCA_DP1_C2M_N (tx_serial_data_n[0])

set_location_assignment PIN_AD26   -to rx_serial_data[1]      ; ## A06  FMCA_DP2_M2C_P
set_location_assignment PIN_AD25   -to "rx_serial_data[1](n)" ; ## A07  FMCA_DP2_M2C_N
set_location_assignment PIN_AE28   -to tx_serial_data[1]      ; ## A26  FMCA_DP2_C2M_P (tx_serial_data_p[1])
set_location_assignment PIN_AE27   -to "tx_serial_data[1](n)" ; ## A27  FMCA_DP2_C2M_N (tx_serial_data_n[1])

set_location_assignment PIN_AB26   -to rx_serial_data[2]      ; ## C06  FMCA_DP0_M2C_P
set_location_assignment PIN_AB25   -to "rx_serial_data[2](n)" ; ## C07  FMCA_DP0_M2C_N
set_location_assignment PIN_AC28   -to tx_serial_data[2]      ; ## C02  FMCA_DP0_C2M_P (tx_serial_data_p[2])
set_location_assignment PIN_AC27   -to "tx_serial_data[2](n)" ; ## C03  FMCA_DP0_C2M_N (tx_serial_data_n[2])

set_location_assignment PIN_Y26   -to rx_serial_data[3]      ; ## A10  FMCA_DP3_M2C_P
set_location_assignment PIN_Y25   -to "rx_serial_data[3](n)" ; ## A11  FMCA_DP3_M2C_N
set_location_assignment PIN_AA28   -to tx_serial_data[3]      ; ## A30  FMCA_DP3_C2M_P (tx_serial_data_p[3])
set_location_assignment PIN_AA27   -to "tx_serial_data[3](n)" ; ## A31  FMCA_DP3_C2M_N (tx_serial_data_n[3])

set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 1_0V -to rx_serial_data
set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 1_0V -to tx_serial_data

set_instance_assignment -name IO_STANDARD LVDS -to ref_clk0
set_instance_assignment -name IO_STANDARD LVDS -to ref_clk1
set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O" -to rx_serial_data
set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O" -to tx_serial_data

# Merge RX and TX into single transceiver
for {set i 0} {$i < 4} {incr i} {
  set_instance_assignment -name XCVR_RECONFIG_GROUP xcvr_${i} -to rx_serial_data[${i}]
  set_instance_assignment -name XCVR_RECONFIG_GROUP xcvr_${i} -to tx_serial_data[${i}]
}

set_location_assignment PIN_AE15 -to rx_sync               ; ## G09  FMCA_HPC_LA03_P
set_location_assignment PIN_AE14 -to rx_sync(n)            ; ## G10  FMCA_HPC_LA03_N
set_location_assignment PIN_AE16 -to rx_os_sync            ; ## G27  FMCA_HPC_LA25_P (Sniffer)
set_location_assignment PIN_AD15 -to rx_os_sync(n)         ; ## G28  FMCA_HPC_LA25_N (Sniffer)
set_location_assignment PIN_AE12 -to tx_sync               ; ## H07  FMCA_HPC_LA02_P
set_location_assignment PIN_AD12 -to tx_sync(n)            ; ## H08  FMCA_HPC_LA02_N
set_location_assignment PIN_AA16 -to sysref                ; ## G36  FMCA_HPC_LA33_P
set_location_assignment PIN_AB16 -to sysref(n)             ; ## G37  FMCA_HPC_LA33_N

set_instance_assignment -name IO_STANDARD LVDS -to rx_sync
set_instance_assignment -name IO_STANDARD LVDS -to rx_os_sync
set_instance_assignment -name IO_STANDARD LVDS -to tx_sync
set_instance_assignment -name IO_STANDARD LVDS -to sysref
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to tx_sync
set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to sysref

set_location_assignment PIN_AF11   -to spi_csn_ad9371        ; ## D14  FMCA_HPC_LA09_P
set_location_assignment PIN_AF12   -to spi_csn_ad9528        ; ## D15  FMCA_HPC_LA09_N
set_location_assignment PIN_AD14   -to spi_clk               ; ## H13  FMCA_HPC_LA07_P
set_location_assignment PIN_AD13   -to spi_mosi              ; ## H14  FMCA_HPC_LA07_N
set_location_assignment PIN_AF19   -to spi_miso              ; ## G12  FMCA_HPC_LA08_P

set_instance_assignment -name IO_STANDARD "1.8 V" -to spi_csn_ad9528
set_instance_assignment -name IO_STANDARD "1.8 V" -to spi_csn_ad9371
set_instance_assignment -name IO_STANDARD "1.8 V" -to spi_clk
set_instance_assignment -name IO_STANDARD "1.8 V" -to spi_mosi
set_instance_assignment -name IO_STANDARD "1.8 V" -to spi_miso

set_location_assignment PIN_AG18   -to ad9528_reset_b        ; ## D26  FMCA_HPC_LA26_P
set_location_assignment PIN_AF18   -to ad9528_sysref_req     ; ## D27  FMCA_HPC_LA26_N
set_location_assignment PIN_AF17   -to ad9371_tx1_enable     ; ## D17  FMCA_HPC_LA13_P
set_location_assignment PIN_AF14   -to ad9371_tx2_enable     ; ## C18  FMCA_HPC_LA14_P
set_location_assignment PIN_AF13   -to ad9371_rx1_enable     ; ## D18  FMCA_HPC_LA13_N
set_location_assignment PIN_AE20   -to ad9371_rx2_enable     ; ## C19  FMCA_HPC_LA14_N
set_location_assignment PIN_AE19   -to ad9371_test           ; ## D11  FMCA_HPC_LA05_P (DNI/NC)
set_location_assignment PIN_AF16   -to ad9371_reset_b        ; ## H10  FMCA_HPC_LA04_P
set_location_assignment PIN_AG16   -to ad9371_gpint          ; ## H11  FMCA_HPC_LA04_N

set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9528_reset_b
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9528_sysref_req
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_tx1_enable
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_tx2_enable
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_rx1_enable
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_rx2_enable
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_test
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_reset_b
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpint

# single ended default

set_location_assignment PIN_AG15   -to ad9371_gpio[0]        ; ## H19  FMCA_HPC_LA15_P
set_location_assignment PIN_AG14   -to ad9371_gpio[1]        ; ## H20  FMCA_HPC_LA15_N
set_location_assignment PIN_AD19   -to ad9371_gpio[2]        ; ## G18  FMCA_HPC_LA16_P
set_location_assignment PIN_AD20   -to ad9371_gpio[3]        ; ## G19  FMCA_HPC_LA16_N
set_location_assignment PIN_AC17   -to ad9371_gpio[4]        ; ## H25  FMCA_HPC_LA21_P
set_location_assignment PIN_AC16   -to ad9371_gpio[5]        ; ## H26  FMCA_HPC_LA21_N
set_location_assignment PIN_AC18   -to ad9371_gpio[6]        ; ## C22  FMCA_HPC_LA18_CC_P
set_location_assignment PIN_AD18   -to ad9371_gpio[7]        ; ## C23  FMCA_HPC_LA18_CC_N
set_location_assignment PIN_AD17   -to ad9371_gpio[8]        ; ## G25  FMCA_HPC_LA22_N     (LVDS_1N)
set_location_assignment PIN_AE17   -to ad9371_gpio[9]        ; ## H22  FMCA_HPC_LA19_P     (LVDS_2P)
set_location_assignment PIN_Y15    -to ad9371_gpio[10]       ; ## H23  FMCA_HPC_LA19_N     (LVDS_2N)
set_location_assignment PIN_Y16    -to ad9371_gpio[11]       ; ## G21  FMCA_HPC_LA20_P     (LVDS_3P)
set_location_assignment PIN_AA11   -to ad9371_gpio[12]       ; ## G22  FMCA_HPC_LA20_N     (LVDS_3N)
set_location_assignment PIN_AB11   -to ad9371_gpio[13]       ; ## G31  FMCA_HPC_LA29_N     (LVDS_4N)
set_location_assignment PIN_AA14   -to ad9371_gpio[14]       ; ## G30  FMCA_HPC_LA29_P     (LVDS_4P)
set_location_assignment PIN_AB14   -to ad9371_gpio[15]       ; ## G24  FMCA_HPC_LA22_P     (LVDS_1P)
set_location_assignment PIN_AB15   -to ad9371_gpio[16]       ; ## G16  FMCA_HPC_LA12_N     (LVDS_5N)
set_location_assignment PIN_AC15   -to ad9371_gpio[17]       ; ## G15  FMCA_HPC_LA12_P     (LVDS_5P)
set_location_assignment PIN_AB13   -to ad9371_gpio[18]       ; ## D12  FMCA_HPC_LA05_N

set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to ad9371_gpio[18]

## improve timing - there are occasional timing failure with a small negative slack
#  at no-MMU configuration
set_global_assignment -name OPTIMIZATION_MODE "AGGRESSIVE PERFORMANCE"

execute_flow -compile

#PIN_AC13
#PIN_AA13
#PIN_AA12
#PIN_AC11
#PIN_AC12
