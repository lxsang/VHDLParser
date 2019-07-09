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
VHDLAdapter  parseVHDL: '/path/to/your/vhdl_file.vhd'.
```
