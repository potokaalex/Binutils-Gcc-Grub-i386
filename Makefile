TargetArch := i386-elf
SourcesDir := $(HOME)/src
ResultDir := $(HOME)/opt

BinutilsVersion := binutils-2.37
BinutilsURL := https://ftp.gnu.org/gnu/binutils/$(BinutilsVersion).tar.gz 

GccVersion := gcc-12.2.0
GccURL := https://ftp.gnu.org/gnu/gcc/$(GccVersion)/$(GccVersion).tar.gz

GrubVersion := grub-2.06
GrubURL := https://ftp.gnu.org/gnu/grub/$(GrubVersion).tar.xz

BinutilsArgs :=  -f CommonMakefile TargetArch=$(TargetArch) Version=$(BinutilsVersion) SourcesDir=$(SourcesDir) ResultDir=$(ResultDir) URL=$(BinutilsURL) Target=Binutils CompressionFormat=gz
GccArgs := -f CommonMakefile TargetArch=$(TargetArch) Version=$(GccVersion) SourcesDir=$(SourcesDir) ResultDir=$(ResultDir) URL=$(GccURL) Target=Gcc CompressionFormat=gz
GrubArgs := -f CommonMakefile TargetArch=$(TargetArch) Version=$(GrubVersion) SourcesDir=$(SourcesDir) ResultDir=$(ResultDir) URL=$(GrubURL) Target=Grub CompressionFormat=xz

all: binutils gcc grub

binutils: 
	make all $(BinutilsArgs)

gcc: 
	make all $(GccArgs)

grub: 
	make all $(GrubArgs)

clear:
	make clear $(BinutilsArgs)
	make clear $(GccArgs)
	make clear $(GrubArgs)

copyAll: copyBinutils copyGcc copyGrub

copyBinutils: 
	make copy $(BinutilsArgs)

copyGcc: 
	make copy $(GccArgs)

copyGrub: 
	make copy $(GrubArgs)