# FPGA

This folder contains everything needed to synthesize and run PULPino on a ZedBoard or ZYBO.

To select board for the ZYBO board instead of the ZedBoard, set the environment
variable `BOARD`. In the tcsh this means

    setenv BOARD "zybo"

or

    setenv BOARD "zedboard"

Note that if `BOARD` is not set, it defaults to zedboard.


This environment variable has to be set during compilation of all FPGA related
components. If you accidentally forget to set the environment variable during
part of the compilation process, you may end up with a mixed zedboard/zybo
build which will not work correctly.

The components that are affected by the BOARD variable are:
* pulpemu
* u-boot
* devicetree
* spiloader


## Requirements

It's highly recommended to use a virtual machine running ubuntu 18.04.

This synthesis flow has been tested with `Vivado 2015.1`, there is no guarantee
that it is going to work with any other version without modifications to the
scripts.

For convenience reasons it is best to connect the ZedBoard to your local
network. This way you can easily transfer files from your host computer to the
Linux running on the ARM cores of the ZYNQ.




## Get Started

0- Dependencies: 
	
	a- sudo apt install cmake gawk gcc git gperf g++ libc6:i386 libgmp-dev libmpc-dev libmpfr-dev make perl python python-pip texinfo 
	b- pip install pyyaml
	c- sudo ln -s /usr/bin/make /usr/bin/gmake
	e- Install Vivado 2015.1  along with SDK 

1- Setting-up the toolchain: 
	
	a- git clone https://github.com/pulp-platform/ri5cy_gnu_toolchain.git 
	b- cd ri5cy_gnu_toolchain
	c- run make. It will download some files, encounter an error and stop
	d- cd build/src/newlib-gcc/gcc/cp
	e- Open cfns.gperf in your favorite text editor and remove lines below the first comment (starting at line 19, inclusive) up until the line containing "%}" without the quotation marks. After that's done, the next line should be "%}" without quotation marks
	f- gperf -o -C -E -k '1-6,$' -j1 -D -N libc_name_p -L C++ --output-file cfns.h cfns.gperf
	g- Open except.c and on line 1043 add "Perfect_Hash::" without quotation marks exactly in front of "libc_name_p" without quotation marks
	h- cd back to ri5cy_gnu_toolchain and run make. It should not encounter any errors and should finish successfully

2- Source the binary files: 
	
	a- at the end of ~/.bashrc add: 
	export XILINXD_LICENSE_FILE=your_path_to_the_downloaded_license_file
	export PATH=$PATH:/opt/Xilinx/Vivado/2015.1/bin
	export PATH=$PATH:/opt/Xilinx/SDK/2015.1/gnu/arm/lin/bin
	export PATH=$PATH:/opt/Xilinx/SDK/2015.1/bin
	export PATH=$PATH:<path to where the binaries of the ri5cy toolchain reside, for example /opt/ri5cy_gnu_toolchain/install/bin>
	
	b- source ~/.bashrc 
	
3- Build the FPGA bitstream and the linux files: 
	
	a- git clone https://github.com/pulp-platform/pulpino.git
	b- cd pulpino
	c- ./update-ips.py
	d- Set the enviroment variable to select which core you want to synthesize. `setenv USE_ZERO_RISCY 1`  and `setenv ZERO_RV32M 1`for zero-riscy. If `USE_ZERO_RISCY` is set, `setenv ZERO_RV32E 1` for zero-riscy with 16 registers and no RVM extensions. If you want to use the riscy core, do not set `USE_ZERO_RISCY` and set `RISCY_RV32F` for riscy with floating point extensions.
	e- cd fpga 
	f- make all  : This builds the FPGA bitstream for the ZedBoard, downloads and compiles linux and u-boot, prepares the fsbl and devicetree, downloads and compiles buildroot and builds the boot.bin image for booting the ZYNQ.
   	g- Prepare the SD card and the ZedBoard for booting via SD card.To prepare the card, follow the Xilinx guide [1].
	h- Copy the BOOT.BIN, uImage and devicetree.dtb files to the first partition of the SD card. Those files can be found inside the `fpga/sw/sd_image` folder.
	i- Extract the content of the rootfs.tar archive and put it on the second partition of the SD card.
	j- Put the SD card into the ZedBoard and boot the system.You can use minicom or any other terminal emulator tool to communicate with the UART of the ZedBoard.
	k- In order to login use the following credentials: 
	 username: root
	 password: pulp
4- Running applications on PULPINO: 
	
	a- cd sw/apps/spiload 
	b- make : this is supposed to generate a binary file "spiload" 
	c- cd ../../../../sw/
	d- mkdir build
	e- cd build
	f- cp ../cmake_configure.riscv.gcc.sh .
	g- ./cmake_configure.riscv.gcc.sh : this won't work if the toolchain wasn't installed properly as explained previously 
	h- make helloworld 
	i- send the previously generated spiload file, and the spi_stim.txt file under pulpino/sw/build/apps/helloworld/slm_files to the root partition of the sdcard. One option would be to use scp or to just plug the sdcard to usb port. 
	j- run the Helloword program using : ./spiload --timeout=2 ./spi_stim.txt 
	 
5- Make voltage measurements:
	
	a- cd sw/build (the previously created folder)
	b- make gpio_demo
	c- send the spi_stim.txt file under pulpino/sw/build/apps/fpga/gpio_demo/slm_files to the root partition of the sdcard. 
	d- run the gpio_demo program using : ./spiload --timeout=200000000 ./spi_stim.txt 
	e- connect the ground pin and the  R18 pin of the zedboard to the sensor or to a frequency generator, that outputs a frequency around 33 KHz
	f- use the left button (pin N15) of the FPGA to display the voltage in mv


[1] http://www.wiki.xilinx.com/Prepare+Boot+Medium
