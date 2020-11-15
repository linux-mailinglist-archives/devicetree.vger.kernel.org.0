Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139572B3210
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 04:47:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726412AbgKODj0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 22:39:26 -0500
Received: from mx2.suse.de ([195.135.220.15]:34124 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726177AbgKODjZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 22:39:25 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1605411564; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=Nar9QyFAoVpbR6w/pIC3tSqy35WYcZIx+U7ttMG9XTI=;
        b=Gg/R1ShzUwfYVE0g2oVaBp/r6yBz54HhjrJ8qpDKCI3DE0jk9/kwI7G+kyU7nZV055kZ6a
        tSUL51zBMdcAw0b1W0pw879bDyaXOcV+t7m4p4Wvm6ZdBAKXU0DIaTayCEE4GX9WDPyc7d
        fx3MqWEr/2N0lQd+EilUaLK8z9jjYC8=
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 14AD8ABD1;
        Sun, 15 Nov 2020 03:39:24 +0000 (UTC)
From:   Qu Wenruo <wqu@suse.com>
To:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        gouwa@khadas.com, nick@khadas.com, art@khadas.com
Subject: [PATCH RFC] arm64: dts: Use separate dtb for Khadas vim3 usb3 and pcie controller
Date:   Sun, 15 Nov 2020 11:39:17 +0800
Message-Id: <20201115033917.83302-1-wqu@suse.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although the plan is to make the bootloader (U-boot) to load overlay for
the device, but currently the board doesn't have the upstream support
yet.

This means even upstream kernel supports all the needed drivers, we still
can't initialize the pcie controller.

As a workaround, make seperate device trees for pcie controller and usb3
controller.

Now user still need to go into the factory bootloader to switch the mux,
but they can easily boot the kernel with PCIE support by just swithcing
to the pcie device tree.

And since we didn't modify the original dtb, the future upstream uboot
can still use overlay to switch mode using the same dtb file.
The added new pcie dtb will just be a workaround.

Tested on my VIM3 pro board, now I can boot the root fs on the NVME
drive, with upstream kernel with the new pcie dtb.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../meson-g12b-a311d-khadas-vim3-pcie.dts     | 39 +++++++++++++++++++
 .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 23 +----------
 3 files changed, 41 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index ced03946314f..a0b8d30539e2 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -6,6 +6,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3-pcie.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
new file mode 100644
index 000000000000..93641a32eeec
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3-pcie.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "meson-g12b-a311d.dtsi"
+#include "meson-khadas-vim3.dtsi"
+#include "meson-g12b-khadas-vim3.dtsi"
+
+/ {
+	compatible = "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
+};
+
+/*
+ * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
+ * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
+ * an USB3.0 Type A connector and a M.2 Key M slot.
+ * The PHY driving these differential lines is shared between
+ * the USB3.0 controller and the PCIe Controller, thus only
+ * a single controller can use it.
+ *
+ * This is the PCIE device tree.
+ *
+ * Until upstream uboot can boot the board and modify the nodes before booting
+ * It's much easier to just choose this device tree file to use PCIE controller.
+ */
+
+&pcie {
+	status = "okay";
+};
+
+&usb {
+	phys = <&usb2_phy0>, <&usb2_phy1>;
+	phy-names = "usb2-phy0", "usb2-phy1";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
index 124a80901084..9c111d76baec 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
@@ -16,26 +16,5 @@ / {
 };
 
 /*
- * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
- * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
- * an USB3.0 Type A connector and a M.2 Key M slot.
- * The PHY driving these differential lines is shared between
- * the USB3.0 controller and the PCIe Controller, thus only
- * a single controller can use it.
- * If the MCU is configured to mux the PCIe/USB3.0 differential lines
- * to the M.2 Key M slot, uncomment the following block to disable
- * USB3.0 from the USB Complex and enable the PCIe controller.
- * The End User is not expected to uncomment the following except for
- * testing purposes, but instead rely on the firmware/bootloader to
- * update these nodes accordingly if PCIe mode is selected by the MCU.
- */
-/*
-&pcie {
-	status = "okay";
-};
-
-&usb {
-	phys = <&usb2_phy0>, <&usb2_phy1>;
-	phy-names = "usb2-phy0", "usb2-phy1";
-};
+ * Vim3 default to USB3.0 instead of PCIE controller.
  */
-- 
2.29.2

