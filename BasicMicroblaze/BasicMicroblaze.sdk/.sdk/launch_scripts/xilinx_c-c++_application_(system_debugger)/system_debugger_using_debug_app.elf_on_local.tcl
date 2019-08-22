connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow D:/01_Xilinx_FPGA/00_BasicMicroblaze/BasicMicroblaze/BasicMicroblaze.sdk/APP/Debug/APP.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
con
