Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 858D65534BB
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 16:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348291AbiFUOlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 10:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349156AbiFUOlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 10:41:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8888525289
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 07:41:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2352B616CD
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 14:41:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09D90C3411C;
        Tue, 21 Jun 2022 14:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655822508;
        bh=7O/GgqyXUzzQYtevo4lhAlcT2fBJGD64p4uQHpFwsx0=;
        h=From:To:Cc:Subject:Date:From;
        b=RLJToAjmIs97OEh5R3ry4Nxnb7cscG4b+FrYQSLxw5gXi6iN28WtiTWsy7NCkHEJM
         2AWKNfwgfm6v6MVhhKph0SB6ufWZsfNRO2iA42WdcPTF8NuQag0VRugLP5dZLuFNj8
         0GlC4rxD2T+H4z65XJBz1w0HLOMvvC1GffSlruBLY7G1Hbx9urd3+OeCGHAt6tVSQS
         pd1NimXuDKdI25FNX8D8Hydxo7G+fGg0cf2AiJvGqer4Ffxb6QPkcyy442NBBPONzV
         GnF55AXFTE2mtuLsOQyacvFHsE0FyRNSwc9dyisxFxHdwHr8sOK3nFqgRA3JzoDcxu
         eRBRgIOZoyaXw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm: dts: socfpga: use the "intel,socfpga-i2c" binding
Date:   Tue, 21 Jun 2022 09:41:42 -0500
Message-Id: <20220621144142.1044151-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The I2C pins on Intel's SoCFPGA platform are not connected to GPIOs and
thus cannot be recovered by the standard GPIO method. The driver has
been updated to use the "intel,socfpga-i2c" binding to reset the I2C
host for error recovery.

Link: https://lore.kernel.org/lkml/20220620230109.986298-1-dinguyen@kernel.org/
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga.dtsi                    |  8 ++++----
 arch/arm/boot/dts/socfpga_arria10.dtsi            | 10 +++++-----
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 +++++-----
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 10 +++++-----
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index bfaef45bdd04..6cfbfca8b665 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -663,7 +663,7 @@ portc: gpio-controller@0 {
 		i2c0: i2c@ffc04000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc04000 0x1000>;
 			resets = <&rst I2C0_RESET>;
 			clocks = <&l4_sp_clk>;
@@ -674,7 +674,7 @@ i2c0: i2c@ffc04000 {
 		i2c1: i2c@ffc05000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc05000 0x1000>;
 			resets = <&rst I2C1_RESET>;
 			clocks = <&l4_sp_clk>;
@@ -685,7 +685,7 @@ i2c1: i2c@ffc05000 {
 		i2c2: i2c@ffc06000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc06000 0x1000>;
 			resets = <&rst I2C2_RESET>;
 			clocks = <&l4_sp_clk>;
@@ -696,7 +696,7 @@ i2c2: i2c@ffc06000 {
 		i2c3: i2c@ffc07000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc07000 0x1000>;
 			resets = <&rst I2C3_RESET>;
 			clocks = <&l4_sp_clk>;
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 4370e3cbbb4b..a8675369c07d 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -558,7 +558,7 @@ fpga_mgr: fpga-mgr@ffd03000 {
 		i2c0: i2c@ffc02200 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02200 0x100>;
 			interrupts = <0 105 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&l4_sp_clk>;
@@ -569,7 +569,7 @@ i2c0: i2c@ffc02200 {
 		i2c1: i2c@ffc02300 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02300 0x100>;
 			interrupts = <0 106 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&l4_sp_clk>;
@@ -580,7 +580,7 @@ i2c1: i2c@ffc02300 {
 		i2c2: i2c@ffc02400 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02400 0x100>;
 			interrupts = <0 107 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&l4_sp_clk>;
@@ -591,7 +591,7 @@ i2c2: i2c@ffc02400 {
 		i2c3: i2c@ffc02500 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02500 0x100>;
 			interrupts = <0 108 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&l4_sp_clk>;
@@ -602,7 +602,7 @@ i2c3: i2c@ffc02500 {
 		i2c4: i2c@ffc02600 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02600 0x100>;
 			interrupts = <0 109 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&l4_sp_clk>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index db771690641b..0ddfd51be590 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -244,7 +244,7 @@ portb: gpio-controller@0 {
 		i2c0: i2c@ffc02800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02800 0x100>;
 			interrupts = <0 103 4>;
 			resets = <&rst I2C0_RESET>;
@@ -255,7 +255,7 @@ i2c0: i2c@ffc02800 {
 		i2c1: i2c@ffc02900 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02900 0x100>;
 			interrupts = <0 104 4>;
 			resets = <&rst I2C1_RESET>;
@@ -266,8 +266,8 @@ i2c1: i2c@ffc02900 {
 		i2c2: i2c@ffc02a00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
 			reg = <0xffc02a00 0x100>;
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			interrupts = <0 105 4>;
 			resets = <&rst I2C2_RESET>;
 			clocks = <&clkmgr STRATIX10_L4_SP_CLK>;
@@ -277,7 +277,7 @@ i2c2: i2c@ffc02a00 {
 		i2c3: i2c@ffc02b00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02b00 0x100>;
 			interrupts = <0 106 4>;
 			resets = <&rst I2C3_RESET>;
@@ -288,7 +288,7 @@ i2c3: i2c@ffc02b00 {
 		i2c4: i2c@ffc02c00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02c00 0x100>;
 			interrupts = <0 107 4>;
 			resets = <&rst I2C4_RESET>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 7bbec8aafa62..17e733a48b9d 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -248,7 +248,7 @@ portb: gpio-controller@0 {
 		i2c0: i2c@ffc02800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02800 0x100>;
 			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rst I2C0_RESET>;
@@ -259,7 +259,7 @@ i2c0: i2c@ffc02800 {
 		i2c1: i2c@ffc02900 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02900 0x100>;
 			interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rst I2C1_RESET>;
@@ -270,7 +270,7 @@ i2c1: i2c@ffc02900 {
 		i2c2: i2c@ffc02a00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02a00 0x100>;
 			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rst I2C2_RESET>;
@@ -281,7 +281,7 @@ i2c2: i2c@ffc02a00 {
 		i2c3: i2c@ffc02b00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02b00 0x100>;
 			interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rst I2C3_RESET>;
@@ -292,7 +292,7 @@ i2c3: i2c@ffc02b00 {
 		i2c4: i2c@ffc02c00 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
+			compatible = "intel,socfpga-i2c", "snps,designware-i2c";
 			reg = <0xffc02c00 0x100>;
 			interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rst I2C4_RESET>;
-- 
2.25.1

