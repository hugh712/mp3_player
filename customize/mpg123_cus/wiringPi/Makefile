


sudo="sudo"


default:
	cd wiringPi;make -j5;cd ../devLib; make -j5; cd ../gpio;	make -j5

xinstall:
	$(info  "install WiringPi Library")
	cd wiringPi; $(sudo) make install
	
	$(info  "install WiringPi Devices Library")
	cd ../devLib;	$(sudo) make install
	
	$(info "install GPIO Utility")
	cd ../gpio;	$(sudo) make install

xuninstall:
	cd wiringPi; $(sudo) make uninstall
	cd ../devLib; $(sudo) make uninstall
	cd ../gpio; $(sudo) make uninstall


xclean:
	cd wiringPi; make clean
	cd ../devLib; make clean
	cd ../gpio; make clean
	cd ../examples; make clean
	cd Gertboard; make clean
	cd ../PiFace; make clean
	cd ../q2w; make clean
	cd ../PiGlow; make clean
	cd ../scrollPhat; make clean

