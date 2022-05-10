Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9B1520ADB
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234341AbiEJB5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234354AbiEJB5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:07 -0400
Received: from mo-csw.securemx.jp (mo-csw1514.securemx.jp [210.130.202.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D826714042E
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:11 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 24A1qjhs003919; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 34tMbOxKUJOM4eLy9N
X-Iguazu-QSIG: v=2; s=0; t=1652147564; q=34tMbOxKUJOM4eLy9N; m=R1jSCNcHLEoaFBNyV6StyWjZNtQapTTo6wL7OMiuW9k=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1511) id 24A1qivq019637
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 4/9] arm64: dts: visconti: Update the clock providers for SPI
Date:   Tue, 10 May 2022 10:52:24 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-5-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove fixed clock and source common clock for SPI.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../dts/toshiba/tmpv7708-visrobo-vrc.dtsi     |  2 --
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi     | 21 ++++++++++++-------
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
index adfe8406c24c..0c8321022a73 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
@@ -25,8 +25,6 @@ &spi0_pins {
 
 &spi0 {
 	status = "okay";
-	clocks = <&clk300mhz>, <&clk150mhz>;
-	clock-names = "sspclk", "apb_pclk";
 
 	mmc-slot@0 {
 		compatible = "mmc-spi-slot";
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 6050796a1678..196cda7b5d90 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -143,13 +143,6 @@ clk125mhz: clk125mhz {
 		clock-output-names = "clk125mhz";
 	};
 
-	clk150mhz: clk150mhz {
-		compatible = "fixed-clock";
-		clock-frequency = <150000000>;
-		#clock-cells = <0>;
-		clock-output-names = "clk150mhz";
-	};
-
 	clk300mhz: clk300mhz {
 		compatible = "fixed-clock";
 		clock-frequency = <300000000>;
@@ -395,6 +388,8 @@ spi0: spi@28140000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI1>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -407,6 +402,8 @@ spi1: spi@28141000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI1>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -419,6 +416,8 @@ spi2: spi@28142000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI2>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -431,6 +430,8 @@ spi3: spi@28143000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI3>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -443,6 +444,8 @@ spi4: spi@28144000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI4>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -455,6 +458,8 @@ spi5: spi@28145000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI5>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
@@ -467,6 +472,8 @@ spi6: spi@28146000 {
 			num-cs = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PISPI6>;
+			clock-names = "apb_pclk";
 			status = "disabled";
 		};
 
-- 
2.36.0


