Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB34D984D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 21:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729797AbfHUTxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 15:53:10 -0400
Received: from mout.perfora.net ([74.208.4.194]:56143 "EHLO mout.perfora.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727780AbfHUTxK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 15:53:10 -0400
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1M27K1-1hy3gg1CrB-002aZf; Wed, 21 Aug 2019 21:52:59 +0200
From:   Sunil Mohan Adapa <sunil@medhas.org>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     maxime.ripard@bootlin.com, wens@csie.org, robh+dt@kernel.org,
        mark.rutland@arm.com, Sunil Mohan Adapa <sunil@medhas.org>,
        Martin Ayotte <martinayotte@gmail.com>
Subject: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)
Date:   Wed, 21 Aug 2019 12:52:17 -0700
Message-Id: <20190821195217.4166-3-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:OwDbpGg2Ks5LgJ1WREQiBCK2IS1JoIJCbCDp2yFIvmREaZKDzFM
 MUZvypqZfQ+mb0pD3OzvI61YjgxZe33c2BjJ9fk+blKIBh002Tj1LkJfzYAEV+gVu/YDlC9
 h5w+Zm4290wRZvMKcihrrWbH5v21/RB8bYx192Vm6tdLgI8vtku3fZe7Is4gLevGGET0snp
 XVzYlT4Em8DS8i1ISoMNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6tFNsLTbxzw=:Eg8Ltl30HRzOpUOtw4lJjN
 kE/d/WmvSAJHezs/mEj0jh3ToOYbB7idgjJbX8nnMDaqphzH2JVY+XbqS0vnNMV6/UAqz1YZH
 CO9a96ZbYT8bqZKccUjRm3U3dOvwhrujklQh5kwAxB3L8/5Zo1nAA5lhysJnQSJGN0tBVoudb
 oYbSRNGpSnV9tUzLKfTyMWzY4odWqmGYq7OVsl8G33dvjqUlhCrxk9bHlQyFe/EOpBVX3zL3M
 GIwDc66RxSG7nHxm4z7xYqW6aief40PYUrhbi+705xtn0LYxGCrYh2AxEtZzl4tzQpN7A3pAg
 lw5vCdgZK1l3z1TxA3z976TqfMkG55cHez+vxjChtW42SP1CS0VYVbw31ZYsngv2G6VIEbkTx
 s6u+VeH67JnJGT7YJbl75kh5dCHJimJo2ihlp99GbqWTf4fsx6XyspW7keuU5Rwfg7NlIRfl+
 b9HJ2Sil5BzbH6OOGBs7yTs3CtVzQuDavaC8VEqZO+A9aFizQLvzW1YprmoxUcB/1BHbNDZ6Z
 UyaaVSHMY43VqGOE149jJxcwFNZr1XagdSV/0IHXSqwNhT/CgI0g+G7Ms35uhfNgo3jMlehfa
 1y02r5DBfP4Fp3qWuTs/SazTrx+BG1N3V/C4/l9u6O1W+yFTqCL9jxFYskmAlQpu89Aq+a4CB
 lURJTbziwTx3sM5G3YRyYX8As75ksMV/TE+qHgP41UcYE8g1WzJkyUPjAkPghAfiTYu8CkZCm
 a3X01otzYjHfCiQyVOH8db/JCtQ6E/cx0VLW7Q==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
Basic benchmarks using Flexible IO Tester show reasonable performance from the
eMMC.

eMMC - Random Write: 21.3MiB/s
eMMC - Sequential Write: 68.2MiB/s
SD Card - Random Write: 1690KiB/s
SD Card - Sequential Write: 11.0MiB/s

Changes:

  v3: Separate dts for eMMC variants

  v2: Fix descriptions for VCC and VCCQ

Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398
Signed-off-by: Martin Ayotte <martinayotte@gmail.com>
[sunil@medhas.org Fix descriptions for VCC and VCCQ, separate dts for eMMC]
Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-a64-olinuxino-emmc.dts   | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 395fe76f6819..d2418021768b 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-bananapi-m64.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-nanopi-a64.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-oceanic-5205-5inmfd.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-olinuxino.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-olinuxino-emmc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
new file mode 100644
index 000000000000..96ab0227e82d
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2018 Martin Ayotte <martinayotte@gmail.com>
+ * Copyright (C) 2019 Sunil Mohan Adapa <sunil@medhas.org>
+ */
+
+#include "sun50i-a64-olinuxino.dts"
+
+/ {
+	model = "Olimex A64-Olinuxino-eMMC";
+	compatible = "olimex,a64-olinuxino-emmc", "allwinner,sun50i-a64";
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_pins>;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
-- 
2.20.1

