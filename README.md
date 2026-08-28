### TWRP device tree for moto g 5g 2025 (kansas)

=========================================

The moto g 5g 2025 (codenamed _"kansas"_) is a mid-range smartphone from Motorola.

It was released in January 2025.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (2x2.4 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
Chipset | Mediatek Dimensity 6300 (6 nm)
GPU     | Mali-G57 MC2
Memory  | 4 GB RAM
Shipped Android Version | 15
Storage | 128/64 GB
Battery | Li-Po 5000 mAh, non-removable
Display | 720 x 1600 pixels, 6.5 inches, 60/90/120 hz

## Features

Works:

- [X] ADB
- [X] Decryption
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator
- [ ] Flashlight

    

## Compile

First checkout minimal twrp with aosp tree:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc --all)
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/motorola/kansas" name="kansas/android_device_motorola_kansas-twrp" remote="github" revision="android-12.1" />
```

Finally execute these:

```
source build/envsetup.sh
repopick <needed patch>
breakfast kansas
mka vendorbootimage -j$(nproc --all)
```
## To use it:

```
fastboot flash vendor_boot out/target/product/kansas/vendor_boot.img

---
```

---


## Special Thanks
- **[@Dip184](https://github.com/Dip184)** — for the decryption guide and all
- **[@koaaN](https://github.com/koaaN)** — for the security patch level sync script
- **[@perilouspike](https://github.com/perilouspike)** — for the base device tree
- **TeamWin Recovery Project (TWRP)** — for the recovery framework and `prepdecrypt` mechanism this build's decrypt fix is built on
- **PitchBlack Recovery Project** — for the recovery this device tree targets

---

