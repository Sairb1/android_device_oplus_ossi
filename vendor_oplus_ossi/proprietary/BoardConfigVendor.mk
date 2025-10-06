#
# BoardConfigVendor.mk - Prebuilt modules & proprietary files for TWRP
#

DEVICE_PATH := device/oplus/ossi

# Prebuilt kernel modules
BOARD_PREBUILT_MODULES := true
TARGET_PREBUILT_MODULES := $(DEVICE_PATH)/prebuilts/modules

# Proprietary files from dumpyara (system, vendor, odm)
BOARD_VENDOR_PROPRIETARY_FILES := true
TARGET_PREBUILT_VENDOR := $(DEVICE_PATH)/proprietary/vendor
TARGET_PREBUILT_SYSTEM := $(DEVICE_PATH)/proprietary/system
TARGET_PREBUILT_ODM := $(DEVICE_PATH)/proprietary/odm

# Vendor dlkm & system dlkm if exists
TARGET_PREBUILT_VENDOR_DLKM := $(DEVICE_PATH)/proprietary/vendor_dlkm
TARGET_PREBUILT_SYSTEM_DLKM := $(DEVICE_PATH)/proprietary/system_dlkm
TARGET_PREBUILT_ODM_DLKM := $(DEVICE_PATH)/proprietary/odm_dlkm

# DTB / DTBO / Kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
TARGET_PREBUILT_DTBO := $(DEVICE_PATH)/prebuilts/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel

# Make sure extract-files.sh has the correct proprietary list
# Example line in proprietary-files.txt:
# system/lib64/libsomething.so:system/lib64/libsomething.so
# vendor/lib64/hw/hwmodule.so:vendor/lib64/hw/hwmodule.so
# odm/lib64/libodm.so:odm/lib64/libodm.so

# Additional device-specific tweaks (optional)
# e.g., board-specific config, SELinux policies, fstab overrides

