#!/bin/bash

#Your base directory here. eg : "/home/user_name/android/kernel
BASEDIR="/home/shaaan/kernel1/janice/"
OUTDIR="$BASEDIR/out"
INITRAMFSDIR="$BASEDIR/ramdisk"

#Path to your toolchain here
TOOLCHAIN="/home/shaaan/toolchain/bin/arm-none-linux-gnueabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-eabi-linaro-4.4.5/bin/arm-eabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-eabi-linaro-4.5.4/bin/arm-eabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-eabi-linaro-4.6.3/bin/arm-eabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-eabi-linaro-4.7.1/bin/arm-eabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-2009q3/bin/arm-none-eabi-"
#TOOLCHAIN="/home/cocafe/Android/toolchains/arm-2010q1/bin/arm-none-eabi-"

STARTTIME=$SECONDS

cd kernel

case "$1" in

	clean)
		echo -e "\n\n Cleaning Kernel Sources... \n\n"
		make mrproper ARCH=arm CROSS_COMPILE=$TOOLCHAIN
		rm -rf ${INITRAMFSDIR}/lib
		rm -rf ${OUTDIR}
		ENDTIME=$SECONDS
		echo -e "\n\n Finished in $((ENDTIME-STARTTIME)) Seconds\n\n"
		;;

	modules)

		echo -e "\n\n Copiling Kernel Modules... \n\n"
		make janice_s_defconfig ARCH=arm CROSS_COMPILE=$TOOLCHAIN
		make modules ARCH=arm CROSS_COMPILE=$TOOLCHAIN CONFIG_INITRAMFS_SOURCE=$INITRAMFSDIR
		;;

	*)
		echo -e "\n\n Configuring I9070 Kernel... \n\n"
		make janice_s_defconfig ARCH=arm CROSS_COMPILE=$TOOLCHAIN

		echo -e "\n\n Compiling I9070 Kernel and Modules... \n\n"
		make -j3 ARCH=arm CROSS_COMPILE=$TOOLCHAIN CONFIG_INITRAMFS_SOURCE=$INITRAMFSDIR

		echo -e "\n\n Copying Modules to InitRamFS Folder... \n\n"
		mkdir -p $INITRAMFSDIR/lib/modules

		#cp fs/cifs/cifs.ko $INITRAMFSDIR/lib/modules/cifs.ko
		cp drivers/bluetooth/bthid/bthid.ko $INITRAMFSDIR/lib/modules/bthid.ko
		cp drivers/net/wireless/bcmdhd/dhd.ko $INITRAMFSDIR/lib/modules/dhd.ko
		cp drivers/char/hw_random/rng-core.ko $INITRAMFSDIR/lib/modules/rng-core.ko
		cp drivers/samsung/param/param.ko $INITRAMFSDIR/lib/modules/param.ko
		cp drivers/scsi/scsi_wait_scan.ko $INITRAMFSDIR/lib/modules/scsi_wait_scan.ko
		cp drivers/samsung/j4fs/j4fs.ko $INITRAMFSDIR/lib/modules/j4fs.ko
		cp drivers/interceptor/vpnclient.ko $INITRAMFSDIR/lib/modules/vpnclient.ko
		cp drivers/char/hwreg/hwreg.ko $INITRAMFSDIR/lib/modules/hwreg.ko

		echo -e "\n\n Creating zImage... \n\n"
		make ARCH=arm CROSS_COMPILE=$TOOLCHAIN CONFIG_INITRAMFS_SOURCE=$INITRAMFSDIR zImage

		mkdir -p ${OUTDIR}
		cp arch/arm/boot/zImage ${OUTDIR}/kernel.bin

		#echo -e "\n\n Generating Odin Flasheable Kernel...\n\n"
		echo -e "\n\n Pushing Kernel to OUT folder... \n\n"
		pushd ${OUTDIR}
		md5sum -t kernel.bin >> kernel.bin
		mv kernel.bin kernel.bin.md5

		#cp $BASEDIR/kernel/fs/cifs/cifs.ko $OUTDIR/cifs.ko

		#tar cf GT-I9070-Kernel-CoCore.tar kernel.bin.md5
		#md5sum -t GT-I9070-Kernel-CoCore.tar >> GT-I9070-Kernel-CoCore.tar
		#mv GT-I9070-Kernel-CoCore.tar GT-I9070-Kernel-CoCore.tar.md5
		popd

                ENDTIME=$SECONDS
                echo -e "\n\n = Finished in $((ENDTIME-STARTTIME)) Seconds =\n\n"
		;;

esac
