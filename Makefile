default: configs clean
	cd buildroot && make

configs: submodule clean-configs
	cp -v customize/post_build.sh buildroot/board/raspberrypi2
	chmod +x buildroot/board/raspberrypi2/post_build.sh
	cp -v customize/permissions.mk buildroot/board/raspberrypi2/
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
