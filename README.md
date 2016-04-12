

Problem:

1. how to add -lpthread -lwiringPi for LIBS in configure of mpg123
2. /home/hugh/mymy/pi2/mp3\_player/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabihf/sysroot/lib/libwiringPi.so: file not recognized: File format not recognized
collect2: error: ld returned 1 exit status

  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN (Shared object file)
  Machine:                           Advanced Micro Devices X86-64

it meant : compiled with host machine not cross-compiler!! 

3. worked on buildroot/output/build/wiringPi_versiion/wiringPi/Makefile to make it the right version gcc
