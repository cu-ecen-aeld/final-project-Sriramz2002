##############################################################
#
# TEXT_DETECTION
#
##############################################################

# Reference your Assignment 3 repository
TEXT_DETECTION_VERSION =  ad1abbbee22fb3e52fb158eba7fcbb3a92956d16 

# Use SSH for git access
TEXT_DETECTION_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Sriramz2002.git
TEXT_DETECTION_SITE_METHOD = git
TEXT_DETECTION_GIT_SUBMODULES = YES


define TEXT_DETECTION_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all


	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server
endef



define TEXT_DETECTION_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/usr/bin


	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/


	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin


endef

$(eval $(generic-package))

