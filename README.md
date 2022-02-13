# Prime-validation-in-ARM-assembly

This program checks if the input number is a prime.

The ARM source code is embedded in a short C framework.

The code was only texted on Linux, and you will need the following technologies to make the code work.

– gcc (gcc-multilib, libc6-i386)
– gdb.

You can run the code with the following lines after you have navigated to the proper directery in the command line:

"$ arm - linux - gnueabihf - gcc - static -g - marm - mcpu = cortex - a7←-
primszam . c primszam . S -o prog"

"$ qemu - arm - static ./ prog"





