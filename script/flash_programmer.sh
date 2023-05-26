#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting ELF File: C:\Users\Afshin\Desktop\vga\p1\software\test\test.elf to: "..\flash/test_onchip_flash_0_data.flash"
#
elf2flash --input="C:/Users/Afshin/Desktop/vga/p1/software/test/test.elf" --output="../flash/test_onchip_flash_0_data.flash" --boot="$SOPC_KIT_NIOS2/components/altera_nios2/boot_loader_cfi.srec" --base=0x400000 --end=0x560000 --reset=0x4000000 

#
# Programming File: "..\flash/test_onchip_flash_0_data.flash" To Device: onchip_flash_0_data
#
nios2-flash-programmer "../flash/test_onchip_flash_0_data.flash" --base=0x400000 --sidp=0x23168 --id=0x1 --timestamp=1671430086 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

