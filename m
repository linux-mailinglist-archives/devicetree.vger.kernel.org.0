Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81E9E2EC020
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:07:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726251AbhAFPHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:07:24 -0500
Received: from foss.arm.com ([217.140.110.172]:42324 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725803AbhAFPHX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Jan 2021 10:07:23 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B77C91396;
        Wed,  6 Jan 2021 07:05:59 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EAA93F719;
        Wed,  6 Jan 2021 07:05:58 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 5/7] arm64: dts: allwinner: A64: Limit MMC2 bus frequency to 150 MHz
Date:   Wed,  6 Jan 2021 15:05:23 +0000
Message-Id: <20210106150525.15403-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210106150525.15403-1-andre.przywara@arm.com>
References: <20210106150525.15403-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In contrast to the H6 (and later) manuals, the A64 datasheet does not
specify any limitations in the maximum possible frequency for eMMC
controllers.
However experimentation has found that a 150 MHz limit similar to other
SoCs and also the MMC0 and MMC1 controllers on the A64 seems to exist
for the MMC2 controller.

Limit the frequency for the MMC2 controller to 150 MHz in the SoC .dtsi.
The Pinebook seems to be the an odd exception, since it apparently seems
to work with 200 MHz as well, so overwrite this in its board .dts file.

Tested on a Pine64-LTS: 200 MHz HS-200 fails, 150 MHz HS-200 works.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index d07cf05549c3..7ae16541d14f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -167,6 +167,7 @@
 	pinctrl-0 = <&mmc2_pins>, <&mmc2_ds_pin>;
 	vmmc-supply = <&reg_dcdc1>;
 	vqmmc-supply = <&reg_eldo1>;
+	max-frequency = <200000000>;
 	bus-width = <8>;
 	non-removable;
 	cap-mmc-hw-reset;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 19e9b8ca8432..57786fc120c3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -514,7 +514,7 @@
 			resets = <&ccu RST_BUS_MMC2>;
 			reset-names = "ahb";
 			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
-			max-frequency = <200000000>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.17.5

