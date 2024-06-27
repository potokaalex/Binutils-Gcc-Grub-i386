## Requirements
 - Bash.
 - Gnu make.

## User manual
You can clone the repository and run the command `make all` to get binutils, gcc, and grub.<br>
Check the Makefile for some settings. Run `make binutils/gcc/grub` to get a specific package.<br> 
Building from source may take some time, so you can use the pre-built solution available at [this link](https://github.com/potokaalex/Binutils-Gcc-Grub-i386/releases).<br> 
After downloading this solution, just run `make copyAll/copyBinutils/copyGcc/copyGrub`.<br> 
In this case, the files are copied to the necessary directories and registered in the path.<br> 
The files were compiled on an x86-x64 machine and checked in ubuntu. <br> 
