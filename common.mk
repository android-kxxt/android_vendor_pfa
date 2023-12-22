# PFA
PRODUCT_PACKAGES += \
    bsdtar \
	shell-selector

PRODUCT_COPY_FILES += \
	vendor/pfa/installation-archive.tar.zst:$(TARGET_COPY_OUT_ROOT)/pfa-installation-archive.tar.zst

# BOARD_VENDOR_SEPOLICY_DIRS += vendor/pfa/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true