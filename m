Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 826D14FFB46
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 18:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235266AbiDMQbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 12:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233135AbiDMQbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 12:31:04 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54EC45064
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:28:41 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MCoYS-1nnRIE3oA4-008v2g; Wed, 13 Apr 2022 18:28:15 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>, matthias.bgg@kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH RFC] ARM: dts: bcm2711: Fix DMA constrains for newer BCM2711 boards
Date:   Wed, 13 Apr 2022 18:27:39 +0200
Message-Id: <20220413162739.6717-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:DMbliJyZHtRhT3XCf1R4ZRtgOWndXe4XF6s2L9Lk4jO4IfQbP9G
 jen5Fi+ZMkpox8ueSO7JEdXtGt0uhhOMg/qBJhqrSb6bwK9p7uL0B/czSbuU84kVRJCYcGG
 U9qcFWOBw9ozMFxNaXvTlLC/2jPnaiUzloC+r3DnMB1LQWvRqHBCiye1F0741kx9HttcwpN
 8hTZ7alpDbOnNRjTRpuEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:b0qKXLjwMyE=:ogLy03e69UZih+07u9Ida2
 w5r8pxG+UlOsFTeJPDiv2uy1Bghv3k8+xFkCFrv2RbSZFDVe9l2eFzdWhkpLYnZb7CP26om4d
 77L+3tlJD217ktW5832I/UQbyl49hV5omzfip2aCA5sHgyL0lSLt+PW2HSsLcwuwKe1oh6qX1
 9T3uAXUTKVfUYYJu3nDWL4w4mHdudsK2kPbEC47cu2aQgr0k6FXt3q+QnCzR5CT3fGZb6Hkpv
 JZloQIngLRsnB9u2LWfa8vd8XGoJ0RGO4vpxqAQdS2l5cTik+1YnW4k+Kmq+vkF+IXxiUmBTy
 Ht/sfl95tsJuTtnJAFmqrm0qCK0ujWyLb9ihzGaRrUEqKZVONvJNZoUqeqIyWTu/VOV5LV4Nw
 aWMvmenkECSWbTGq/KMBs69dUoEJjmBnPvoFCwYeVrOQtGkcwzYuxJAYMmBgHGmO+ihTMmIXM
 lLk55ivphGzDtWAWCPdgZOm4gJhacY/iyd/98k2RPF80wiZ19tB3eqD7ljqCCMLxiBlbV8Z77
 lIYf3NifLKrmQmOAkoIWl2JPpw2d94sT/sdCGTUW//YHgqWEapu+hpBAEyztsQboG3CxWY3rD
 mDVD8z6YYJ0ADMIhC/+93Am5dk3mS35m2hQmghhTQJ3D0ouftm5TA2JOxt0bPSs4LE61Q/TyP
 G1StcQUB2qGITj3AFEmH2u4kFsnO3nhkMs+/Ss96t7wQU17X/qmQKZ4JbOJdnfq8pNrhcq8fg
 TvwVbbhzR7DhVOrk
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
assumed that all bootloader pass the FDT modified by the firmware to the
kernel. But this is not always the case (e.g. Fedora) and cause boot
issues for boards with a BCM2711 C0 SoC (RPi 400, CM4, newer RPi 4 B)
which does have different DMA constraints.

Since we are not able to detect the SoC revision, let's assume a BCM2711
C0 SoC for bcm2711.dtsi and move the restricted DMA constrains to a
separate RPi 4 B board file just for the old SoC revision.

Fixes: 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/Makefile               |  1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts | 22 ++++++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi           | 11 +++--------
 3 files changed, 26 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 7c16f8a2b738..560d36ba1041 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -96,6 +96,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
 	bcm2837-rpi-zero-2-w.dtb \
 	bcm2711-rpi-400.dtb \
 	bcm2711-rpi-4-b.dtb \
+	bcm2711-rpi-4-b-b0.dtb \
 	bcm2711-rpi-cm4-io.dtb \
 	bcm2835-rpi-zero.dtb \
 	bcm2835-rpi-zero-w.dtb
diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts
new file mode 100644
index 000000000000..c53ed510392f
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2711-rpi-4-b.dts"
+
+&emmc2bus {
+	/*
+	 * emmc2 on initial SoC revision (only assembled on RPi 4 B)
+	 * has different DMA constraints.
+	 */
+	dma-ranges = <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
+};
+
+&pcie0 {
+	/*
+	 * The wrapper around the PCIe block has a bug
+	 * preventing it from accessing beyond the first 3GB of
+	 * memory.
+	 */
+	dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
+				      0x0 0xc0000000>;
+};
+
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 89af57482bc8..c307c45385a0 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -420,7 +420,7 @@ emmc2bus: emmc2bus {
 		#size-cells = <1>;
 
 		ranges = <0x0 0x7e000000  0x0 0xfe000000  0x01800000>;
-		dma-ranges = <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
+		dma-ranges = <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
 
 		emmc2: mmc@7e340000 {
 			compatible = "brcm,bcm2711-emmc2";
@@ -574,13 +574,8 @@ IRQ_TYPE_LEVEL_HIGH>,
 
 			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
 				  0x0 0x04000000>;
-			/*
-			 * The wrapper around the PCIe block has a bug
-			 * preventing it from accessing beyond the first 3GB of
-			 * memory.
-			 */
-			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
-				      0x0 0xc0000000>;
+			dma-ranges = <0x02000000 0x4 0x00000000 0x0 0x00000000
+				      0x1 0x00000000>;
 			brcm,enable-ssc;
 		};
 
-- 
2.25.1

