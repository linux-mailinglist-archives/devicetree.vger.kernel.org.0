Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 924BA356AE5
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 13:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242158AbhDGLPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 07:15:54 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:29873 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351769AbhDGLPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 07:15:52 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdm65gtzmNxDG
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 14:15:40 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id GekSLUfKOiu9 for <devicetree@vger.kernel.org>;
        Wed,  7 Apr 2021 14:15:40 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdl5ghFzmSqbl;
        Wed,  7 Apr 2021 14:15:39 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ivan Uvarov <i.uvarov@cognitivepilot.com>
Subject: [PATCH v4 2/5] ARM: dts: sun8i: r40: add pinmux settings for MMC3 and UARTs 2,4,5&7
Date:   Wed,  7 Apr 2021 14:14:25 +0300
Message-Id: <20210407111428.3755684-3-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Forlinx OKA40i-C devboard makes use of UARTs 0,2,3,4,5 and 7 of the R40
SoC, of which UART 0 is connected to an RS232 converter, UART 5 routed to
an RS485 converter, and the rest broken out directly via labeled headers.
The board also contains a micro-SD slot connected to SDC3.

This patch adds settings to R40's pinmux node for MMC3 and those UARTs that
were not already mapped, which would allow us to make use of all available
UARTs and the micro-SD slot on this board in a further patch.

Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

 1 file changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 0b257a0779..9ad4f0129c 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -357,6 +357,8 @@ mmc3: mmc@1c12000 {
 			clock-names = "ahb", "mmc";
 			resets = <&ccu RST_BUS_MMC3>;
 			reset-names = "ahb";
+			pinctrl-0 = <&mmc3_pins>;
+			pinctrl-names = "default";
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			#address-cells = <1>;
@@ -601,6 +603,15 @@ mmc2_pins: mmc2-pins {
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			mmc3_pins: mmc3-pins {
+				pins = "PI4", "PI5", "PI6",
+				       "PI7", "PI8", "PI9";
+				function = "mmc3";
+				drive-strength = <30>;
+				bias-pull-up;
+			};
+
 			/omit-if-no-ref/
 			spi0_pc_pins: spi0-pc-pins {
 				pins = "PC0", "PC1", "PC2";
@@ -637,6 +648,18 @@ uart0_pb_pins: uart0-pb-pins {
 				function = "uart0";
 			};
 
+			/omit-if-no-ref/
+			uart2_pi_pins: uart2-pi-pins {
+				pins = "PI18", "PI19";
+				function = "uart2";
+			};
+
+			/omit-if-no-ref/
+			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
+				pins = "PI16", "PI17";
+				function = "uart2";
+			};
+
 			/omit-if-no-ref/
 			uart3_pg_pins: uart3-pg-pins {
 				pins = "PG6", "PG7";
@@ -648,6 +671,24 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
 				pins = "PG8", "PG9";
 				function = "uart3";
 			};
+
+			/omit-if-no-ref/
+			uart4_pg_pins: uart4-pg-pins {
+				pins = "PG10", "PG11";
+				function = "uart4";
+			};
+
+			/omit-if-no-ref/
+			uart5_ph_pins: uart5-ph-pins {
+				pins = "PH6", "PH7";
+				function = "uart5";
+			};
+
+			/omit-if-no-ref/
+			uart7_pi_pins: uart7-pi-pins {
+				pins = "PI20", "PI21";
+				function = "uart7";
+			};
 		};
 
 		wdt: watchdog@1c20c90 {
-- 
2.25.1

