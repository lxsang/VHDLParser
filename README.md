# VHDLParser
A VHDL parser using PetitParser

## Install on Pharo 7.0
```smalltalk
Metacello new
   baseline: 'VHDLParser';
   repository: 'github://lxsang/VHDLParser';
   load:#default.
```

## Usnage
```smalltalk
VHDLAdapter  parseVHDL: '/home/mrsang/com_fpga_fx2.vhd'.
```
