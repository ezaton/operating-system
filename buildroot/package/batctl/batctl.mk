################################################################################
#
# batctl
#
################################################################################

BATCTL_VERSION = 2017.0
BATCTL_SITE = http://downloads.open-mesh.org/batman/releases/batman-adv-$(BATCTL_VERSION)
BATCTL_LICENSE = GPL-2.0, MIT (batman_adv.h, list.h)
BATCTL_DEPENDENCIES = libnl host-pkgconf

define BATCTL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) all
endef

define BATCTL_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) \
		PREFIX=/usr DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
