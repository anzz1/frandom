# Makefile for 2.6 kernels

ifneq ($(KERNELRELEASE),)
obj-m	:= frandom.o

else
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
endif

