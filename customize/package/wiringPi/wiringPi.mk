################################################################################
#
# wiringPi
#
################################################################################

WIRINGPI_VERSION = b0a60c3302973ca1878d149d61f2f612c8f27fac
#WIRINGPI_VERSION ="" 
WIRINGPI_SITE = git://git.drogon.net/wiringPi
WIRINGPI_SITE_METHOD = git
WIRINGPI_LICENSE = LGPLv2.1
WIRINGPI_LICENSE_FILES = COPYING
WIRINGPI_AUTORECONF = YES
WIRINGPI_INSTALL_STAGING = YES
WIRINGPI_CONF_OPTS = --disable-unittests


define WIRINGPI_BUILD_CMDS
	sh $(@D)/build
endef

#define WIRINGPI_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 -D $(@D)/eeprog $(TARGET_DIR)/usr/bin/eeprog
#endef

#$(eval $(autotools-package))
$(eval $(generic-package))
