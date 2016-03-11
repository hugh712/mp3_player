default: configs clean
	cd buildroot && make

check-usb-bus-addr:
ifndef USB_BUS
	$(error USB_BUS is undefined)
endif
ifndef USB_ADDR
	$(error USB_ADDR is undefined)
endif
	lsusb -s $(USB_BUS):$(USB_ADDR)


configs: submodule clean-configs
	cp -v customize/post_build.sh buildroot/board/qemu/arm-versatile/
	chmod +x buildroot/board/qemu/arm-versatile/post_build.sh
	cp -v customize/permissions.mk buildroot/board/qemu/arm-versatile/
	cd buildroot && make raspberrypi2_defconfig

submodule:
	git submodule init && git submodule update


clean:
	rm -rf ./images

clean-configs:
	cd buildroot && git clean -f -d

clean-buildroot:
	cd buildroot && make clean

cleandist: clean clean-configs clean-buildroot
	echo "All gone"
