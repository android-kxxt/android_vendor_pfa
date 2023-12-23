PFA_PATH := vendor/pfa

# PFA
PRODUCT_PACKAGES += \
    bsdtar \
	shell-selector

PRODUCT_COPY_FILES += \
	$(PFA_PATH)/installation-archive.tar.zst:$(TARGET_COPY_OUT_PRODUCT)/pfa-installation-archive.tar.zst

SELINUX_IGNORE_NEVERALLOWS := true

TARGET_SYSTEM_PROP += $(PFA_PATH)/pfa.prop
