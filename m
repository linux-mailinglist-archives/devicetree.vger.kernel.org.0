Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F2674ABE75
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 13:16:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383353AbiBGMJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 07:09:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379988AbiBGLSB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 06:18:01 -0500
X-Greylist: delayed 122 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Feb 2022 03:17:58 PST
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089C1C0401E5
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 03:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1644232677; x=1675768677;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=77yz6w+2DoYy2A+2tV0NicdxNLpG2DjlpVJtoMUnRe8=;
  b=YTTMUJdL3vtFI7x++LYI5Pwq8OlM7EC6UuFdPZSiJNR49sLWNbepKUaT
   dIgIyPMCDkvVqRiGl09yAiqF9eGhNzWOeUrRAwSnr8QMfAcPLYw8wS/eA
   f14j/9VyK2C1u/SiYgV3fz6pBQzs0tZx7skfBvC68hFrFKcM2EpH2Et6S
   A7z84MtDj6NV8ZFf64Cd/6u5al8yMntay7IU1FlutHEQOQpzP8sqUsABl
   5J9/M+tH+w9r96V8TIyZw6rzD8KAmyKgF0L2xfTH2oOzZzkO0tpZpBxwj
   KU521iq1Azw4P86C8nJvwDmCNhFKFTzCDESn6qcWNVrd3GYAeGcLXwlUd
   g==;
IronPort-SDR: HkrNOAK/2IZIC1gMvUR04S5wbKevSxIDqvFudKUN9SD0U0iVMXDAHNNYx+Bi3W4cePl7ZMDUHB
 9j05gdaDthtZuEo55QgB0zaWIhL5PXDfGNCWhqMQjNeBj9k2aCJlHwv8YKVrxvP8Vjq0VWPXW/
 nsAEfVr5wo35ehXP9TdgvMfgxTVdVZKhZI7Z0+9VY+O04V117bN4K+zWHfatV9U3fzPGxz9lIU
 NwimsBUmPxGF5LUhtcN8vM2qj/vcBYk1NKN5n4nfv3x5IG/muvvo0d3+pD0kJv/ObM9Pe0IZfH
 CSrSHBnQcyu6djgKJTrvm59n
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; 
   d="scan'208";a="152699432"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 07 Feb 2022 04:14:17 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Mon, 7 Feb 2022 04:14:17 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2375.17 via Frontend Transport; Mon, 7 Feb 2022 04:14:15 -0700
From:   Claudiu Beznea <claudiu.beznea@microchip.com>
To:     <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
        <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH] ARM: dts: at91: remove status = "okay" from soc specific dtsi
Date:   Mon, 7 Feb 2022 13:15:23 +0200
Message-ID: <20220207111523.575474-1-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove status = "okay" from SoC specific dtsi as this is the default
state.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/sam9x60.dtsi | 4 ----
 arch/arm/boot/dts/sama5d2.dtsi | 3 ---
 arch/arm/boot/dts/sama5d4.dtsi | 3 ---
 arch/arm/boot/dts/sama7g5.dtsi | 3 ---
 4 files changed, 13 deletions(-)

diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index ec45ced3cde6..e3afa1dae207 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -280,7 +280,6 @@ sha: sha@f002c000 {
 				dma-names = "tx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 41>;
 				clock-names = "sha_clk";
-				status = "okay";
 			};
 
 			trng: trng@f0030000 {
@@ -288,7 +287,6 @@ trng: trng@f0030000 {
 				reg = <0xf0030000 0x100>;
 				interrupts = <38 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 38>;
-				status = "okay";
 			};
 
 			aes: aes@f0034000 {
@@ -304,7 +302,6 @@ AT91_XDMAC_DT_PERID(32))>,
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 39>;
 				clock-names = "aes_clk";
-				status = "okay";
 			};
 
 			tdes: tdes@f0038000 {
@@ -320,7 +317,6 @@ AT91_XDMAC_DT_PERID(31))>,
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 40>;
 				clock-names = "tdes_clk";
-				status = "okay";
 			};
 
 			classd: classd@f003c000 {
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 09c741e8ecb8..05ab16ffa8bb 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -316,7 +316,6 @@ sha@f0028000 {
 				dma-names = "tx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
 				clock-names = "sha_clk";
-				status = "okay";
 			};
 
 			aes@f002c000 {
@@ -332,7 +331,6 @@ AT91_XDMAC_DT_PERID(26))>,
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
 				clock-names = "aes_clk";
-				status = "okay";
 			};
 
 			spi0: spi@f8000000 {
@@ -1097,7 +1095,6 @@ AT91_XDMAC_DT_PERID(28))>,
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
 				clock-names = "tdes_clk";
-				status = "okay";
 			};
 
 			classd: classd@fc048000 {
diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index f6e3e6f57252..4de164905e03 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -684,7 +684,6 @@ aes@fc044000 {
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
 				clock-names = "aes_clk";
-				status = "okay";
 			};
 
 			tdes@fc04c000 {
@@ -698,7 +697,6 @@ tdes@fc04c000 {
 				dma-names = "tx", "rx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
 				clock-names = "tdes_clk";
-				status = "okay";
 			};
 
 			sha@fc050000 {
@@ -710,7 +708,6 @@ sha@fc050000 {
 				dma-names = "tx";
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
 				clock-names = "sha_clk";
-				status = "okay";
 			};
 
 			hsmc: smc@fc05c000 {
diff --git a/arch/arm/boot/dts/sama7g5.dtsi b/arch/arm/boot/dts/sama7g5.dtsi
index afd3e069b382..0b1e85541f7f 100644
--- a/arch/arm/boot/dts/sama7g5.dtsi
+++ b/arch/arm/boot/dts/sama7g5.dtsi
@@ -83,7 +83,6 @@ securam: securam@e0000000 {
 			#size-cells = <1>;
 			ranges = <0 0xe0000000 0x4000>;
 			no-memory-wc;
-			status = "okay";
 		};
 
 		secumod: secumod@e0004000 {
@@ -653,13 +652,11 @@ spi11: spi@400 {
 		uddrc: uddrc@e3800000 {
 			compatible = "microchip,sama7g5-uddrc";
 			reg = <0xe3800000 0x4000>;
-			status = "okay";
 		};
 
 		ddr3phy: ddr3phy@e3804000 {
 			compatible = "microchip,sama7g5-ddr3phy";
 			reg = <0xe3804000 0x1000>;
-			status = "okay";
 		};
 
 		gic: interrupt-controller@e8c11000 {
-- 
2.32.0

