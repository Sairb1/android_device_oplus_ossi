# Device Tree for Realme Narzo 60X (ossi)

This repository contains the device and vendor configuration files for building custom recoveries (like TWRP) for the **Realme Narzo 60X (RMX3782)**.

The device tree and vendor files were generated using tools like `aosptgen` and `dumpyara`.

If you need any other help- Join Device Group
t.me/realme11x

## Device Specifications & Versioning

| Feature | Details |
| :--- | :--- |
| **Device Codename** | `ossi` |
| **Model Name** | Realme Narzo 60X | RMX3782 | RE5C6CL1
| **Platform** | MediaTek Dimensity 6100+ (MT6835) |
| **Android Version Base** | 14 (RUI 5) |
| **Security Patch Level** | October 5, 2024 |
| **Base Version** | Based on Android 14 source code |
| **Partition Scheme** | A/B |
| **OTA Version** | RMX3782_11_C_OTA_1240_all6zvKAJ_000110011.zip |

## Known Issues & Required Fixes

The following issues are known and require modification when building recovery:

### FBE (File-Based Encryption) Fix
The recovery requires specific modifications to correctly mount and decrypt partitions.

* **Files Requiring Fix:**
    * `fstab.mt6835` (located in `rootdir/etc/`)
    * `init.mt6835.rc` (located in `rootdir/etc/`)

* **Required Fix:** The existing configuration must be adjusted to properly handle FBE encryption, typically by updating mount flags and partition paths relevant to the MT6835 platform.

## Building Instructions

### Prerequisites

* A compiled TWRP or custom recovery source code compatible with **Android 14 (U/V)**.
* The required vendor/proprietary files (included in this repository under the `proprietary/` directory).

### Environment Setup (Example)

After syncing your recovery source, set up the environment using the relevant release tag (e.g., `ap2a` for Android 13, if the Android 14 target fails):

```bash
source build/envsetup.sh
# Example lunch command using a working release tag for compatibility
lunch twrp_ossi-userdebug

To build the final recovery image (required for A/B devices):
make vendorbootimage -j$(nproc)

