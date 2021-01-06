Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCF72EC01B
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:07:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726211AbhAFPGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:06:43 -0500
Received: from foss.arm.com ([217.140.110.172]:42258 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726011AbhAFPGn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Jan 2021 10:06:43 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 387C212FC;
        Wed,  6 Jan 2021 07:05:58 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3CA33F719;
        Wed,  6 Jan 2021 07:05:56 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 4/7] arm64: dts: allwinner: H6: Allow up to 150 MHz MMC bus frequency
Date:   Wed,  6 Jan 2021 15:05:22 +0000
Message-Id: <20210106150525.15403-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210106150525.15403-1-andre.przywara@arm.com>
References: <20210106150525.15403-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The H6 manual explicitly lists a frequency limit of 150 MHz for the bus
frequency of the MMC controllers. So far we had no explicit limits in the
DT, which limited eMMC to a rather conservative 52 MHz.

Put those maximum frequencies in the SoC .dtsi, to allow higher speed
modes (which still would need to be explicitly enabled, per board).

Tested with an eMMC using HS-200 on a Pine H64. Running at the spec'ed
200 MHz indeed fails with I/O errors, but 150 MHz seems to work stably.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index f593cfeaecc9..77765d4a05ec 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -436,6 +436,7 @@
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc0_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -452,6 +453,7 @@
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc1_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -468,6 +470,7 @@
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&mmc2_pins>;
+			max-frequency = <150000000>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.17.5

