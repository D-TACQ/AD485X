#KERN_SRC=../../linux-xlnx

# pgm derived from:
# meld AD485x/ ADI_LINUX_SSH/drivers/iio/adc

obj-m += ad485x.o

all:
	make -C $(KERN_SRC) ARCH=arm M=`pwd` modules

modules: $(obj-m)

zynq:
	./make.zynq

clean:
	rm -f *.ko *.o *.mod.* modules.order Module.symvers


