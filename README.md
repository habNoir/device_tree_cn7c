# Universal Android Device Tree — TECNO CAMON 50 Pro 5G & Ultra 5G (`TECNO-CN7c`)

Universal, clean base Android 16 (`BP2A.250605.031.A3` / SDK 36) Device Tree for **TECNO CAMON 50 Pro 5G** & **TECNO CAMON 50 Ultra 5G** (`TECNO-CN7c` / `CN7c-OP-M1` / `cn7c_h788`), extracted 100% directly from live hardware dump on firmware **`CN7c-16.3.0.160SP03(OP005PF001M1)`**.

> **Architecture Separation:** This repository is the **pure, reusable base Android/AOSP/LineageOS device tree** (no custom-recovery-specific clutter), designed to serve as a clean foundation for Custom ROMs, GSI overlays, kernel work, or external recovery trees.
> - **Dedicated PitchBlack Recovery Project (PBRP) Tree:** [`habNoir/pbrp_tecno_cn7c`](https://github.com/habNoir/pbrp_tecno_cn7c)
> - **Maintainer:** [`habNoir`](https://github.com/habNoir)

## Verified Hardware & Firmware Specifications

| Component | Verified Value |
| :--- | :--- |
| **Device / Market Name** | `TECNO CN7c` (`TECNO CAMON 50 Pro 5G` / `TECNO CAMON 50 Ultra 5G`) |
| **Board / Bootloader** | `TECNO-CN7c` / `cn7c_h788` |
| **SoC (Marketing Name)** | **MediaTek Dimensity 7400 Ultimate** (4nm, 4x Cortex-A78 + 4x Cortex-A55) |
| **SoC Silicon Part & Platform** | `MT6878V_E/TZA` (`ro.board.platform = mt6878`, `arm64-v8a` 64-bit only) |
| **GPU** | Arm Mali-G615 MC2 (`mali_kbase_mt6878_r44.ko`, Vulkan 1.3) |
| **Firmware Base** | `CN7c-16.3.0.160SP03(OP005PF001M1)` (Android 16 / SDK 36, Vendor API 34, Patch `2026-10-05`) |
| **Kernel** | `6.1.157-android14-11-ga8b0b542991e-ab15601211` (GKI 2.0, 4K page size) |
| **Storage & UFS Controller** | UFS (`112b0000.ufshci`), `super = 16,198,402,048` bytes (`main = 16,196,304,896` bytes), Virtual A/B XOR |
| **Boot / Vendor Boot Layout** | Header v4 (`base=0x40000000`, `kernel_offset=0x0`, `ramdisk_offset=0x26f00000`, `tags/dtb=0x07c80000`) |
| **Display & Touchscreen** | `1208 x 2644` 144Hz AMOLED (`max_brightness=5119`), Dual-source FocalTech `FT3683G` + Goodix `GT9895`/`GT9896S` (`adaptive-ts.ko`) |
| **Encryption & Security** | FBEv2 (`aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized`) + Metadata (`f2fs`) + Trustonic Kinibi TEE (KeyMint 3.0, Gatekeeper V1) |
| **USB Controller** | `11201000.usb0` (`mtu3` / `xhci-mtk-hcd-v2`) |
