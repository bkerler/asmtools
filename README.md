Shellcode disasm / asm tools using Capstone/Keystone (c) B.Kerler 2018

Why
===
- Because pwntools doesn't work as expected with python 3.x
- Because I needed tools to quick test stuff where Keypatch fails (negative offsets)
- Because other stuff doesn't support arm64 that well
  
Installation
=============
1. Get python 3.6 64-Bit
2. pip install keystone-engine capstone
3. Copy needed .dll and/or .so to the keystone/capstone plugin path

Example usage
=============
- "python asmtools.py -h -asm"
  Print all supported cpu/modes
  
- "asmtools.py -in shellcode.asm -asm arm64,arm"
  Generates shellcode to stdout as hex-string, arm64=cpu,arm=mode

- "asmtools.py -in shellcode.asm -asm arm,arm -cstyle"
  Generates shellcode to stdout as c-style-hex-string, arm64=cpu,arm=mode
  
- "asmtools.py -in shellcode.bin -disasm x86,64 -out disasm.txt"
  Outputs x86_64-Bit disassembly to file disasm.txt
  
- "asmtools.py -in shellcode.asm -asm mips,32r6 -bigendian -out shellcode.bin"
  Generates bigendian order mips 32r6 shellcode, writes binary to shellcode.bin

                                      
Supported cpus/modes 
=====================
CPU [Mode]

- Disasm: 
arm[arm,thumb,mclass,v8]
arm64[arm]
mips[micro,32,64,32R6,32R6-Micro]
x86[16,32,64]
ppc[64]
sparc[None,v9]
systemz[None]
xcore[None]

- Asm:
arm[arm,thumb,mclass,v8]
arm64[arm]
mips[micro,3,32,64,32R6]
x86[16,32,64]
ppc[32,64,qpx]
sparc[32,64,v9]
systemz[None]
hexagon[None]
       
        
Published under MIT license
Additional license limitations: No use in commercial products without prior permit.

Enjoy !
