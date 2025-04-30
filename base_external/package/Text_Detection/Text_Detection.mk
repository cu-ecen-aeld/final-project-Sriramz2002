##############################################################
#
# TEXT_DETECTION
#
##############################################################

# Reference your Final Repo
TEXT_DETECTION_VERSION =  04f72f458b280ee242e221043a02e82a963a095c

# Use SSH for git access
TEXT_DETECTION_SITE = git@github.com:cu-ecen-aeld/final-project-Sriramz2002.git
TEXT_DETECTION_SITE_METHOD = git
TEXT_DETECTION_GIT_SUBMODULES = YES


define TEXT_DETECTION_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/v4l2_dev_driver
endef



define TEXT_DETECTION_INSTALL_TARGET_CMDS

	# Install C binary
	$(INSTALL) -m 0755 $(@D)/v4l2_dev_driver/simple_capture $(TARGET_DIR)/usr/bin

	# Install Python script
	$(INSTALL) -m 0755 $(@D)/v4l2_dev_driver/sender.py $(TARGET_DIR)/usr/bin


endef

$(eval $(generic-package))

