Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59D0870E100
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 17:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237643AbjEWPvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 11:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237536AbjEWPvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 11:51:42 -0400
X-Greylist: delayed 695 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 23 May 2023 08:51:37 PDT
Received: from riemann.telenet-ops.be (riemann.telenet-ops.be [IPv6:2a02:1800:110:4::f00:10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57AB6121
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 08:51:37 -0700 (PDT)
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by riemann.telenet-ops.be (Postfix) with ESMTPS id 4QQf1x00w7z4x94r
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 17:51:33 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed30:b0ac:7afd:272:4cff])
        by laurent.telenet-ops.be with bizsmtp
        id 0FqP2A00Z0Jkz7G01FqP8M; Tue, 23 May 2023 17:50:32 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtp (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1q1UH3-002t5s-Af;
        Tue, 23 May 2023 17:50:23 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1q1UHH-00Ckpr-PS;
        Tue, 23 May 2023 17:50:23 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Russell King <linux@armlinux.org.uk>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <philmd@linaro.org>
Subject: [PATCH v2 2/3] ARM: dts: nuvoton: Fix pca954x i2c-mux node names
Date:   Tue, 23 May 2023 17:50:20 +0200
Message-Id: <c2641058bebc7f7506d99f1bd14439a2da08e170.1684856632.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1684856632.git.geert+renesas@glider.be>
References: <cover.1684856632.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dtbs_check":

    arch/arm/boot/dts/nuvoton-npcm730-gbs.dtb: i2c-switch@71: $nodename:0: 'i2c-switch@71' does not match '^(i2c-?)?mux'
	    From schema: Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
    ...

Fix this by renaming PCA954x nodes to "i2c-mux", to match the I2C bus
multiplexer/switch DT bindings and the Generic Names Recommendation in
the Devicetree Specification.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>
---
v2:
  - Add Reviewed-by.
---
 arch/arm/boot/dts/nuvoton-npcm730-gbs.dts        | 16 ++++++++--------
 arch/arm/boot/dts/nuvoton-npcm730-gsj.dts        |  2 +-
 arch/arm/boot/dts/nuvoton-npcm730-kudo.dts       |  8 ++++----
 .../boot/dts/nuvoton-npcm750-runbmc-olympus.dts  |  4 ++--
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton-npcm730-gbs.dts b/arch/arm/boot/dts/nuvoton-npcm730-gbs.dts
index 9e9eba8bad5e424a..9f64c85e1c206494 100644
--- a/arch/arm/boot/dts/nuvoton-npcm730-gbs.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm730-gbs.dts
@@ -525,7 +525,7 @@ &i2c0 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9546";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -666,7 +666,7 @@ mb_fru@50 {
 		reg = <0x50>;
 	};
 
-	i2c-switch@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9546";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -727,7 +727,7 @@ &i2c6 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@73 {
+	i2c-mux@73 {
 		compatible = "nxp,pca9545";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -763,7 +763,7 @@ &i2c7 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@72 {
+	i2c-mux@72 {
 		compatible = "nxp,pca9545";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -812,7 +812,7 @@ &i2c9 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9546";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -866,7 +866,7 @@ &i2c10 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9545";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -902,7 +902,7 @@ &i2c11 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@76 {
+	i2c-mux@76 {
 		compatible = "nxp,pca9545";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -961,7 +961,7 @@ &i2c14 {
 	clock-frequency = <100000>;
 	status = "okay";
 
-	i2c-switch@70 {
+	i2c-mux@70 {
 		compatible = "nxp,pca9545";
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts b/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
index 2a394cc15284c55d..9b1cc7f4adf0909d 100644
--- a/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
@@ -303,7 +303,7 @@ ucd90160@6b {
 &i2c15 {
 	status = "okay";
 
-	i2c-switch@75 {
+	i2c-mux@75 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts b/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
index f7b38bee039bcab5..58329adbd9186fd7 100644
--- a/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
@@ -494,7 +494,7 @@ &adc {
 
 &i2c1 {
 	status = "okay";
-	i2c-switch@75 {
+	i2c-mux@75 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -573,7 +573,7 @@ lm75@5c {
 			};
 		};
 	};
-	i2c-switch@77 {
+	i2c-mux@77 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -613,7 +613,7 @@ &i2c3 {
 
 &i2c4 {
 	status = "okay";
-	i2c-switch@77 {
+	i2c-mux@77 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -684,7 +684,7 @@ ssif-bmc@10 {
 
 &i2c13 {
 	status = "okay";
-	i2c-switch@77 {
+	i2c-mux@77 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus.dts b/arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus.dts
index 87359ab05db3ebab..209fa3400317bf19 100644
--- a/arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus.dts
@@ -208,7 +208,7 @@ &gmac0 {
 &i2c1 {
 	status = "okay";
 
-	i2c-switch@70 {
+	i2c-mux@70 {
 		compatible = "nxp,pca9548";
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -258,7 +258,7 @@ i2c_slot5: i2c-bus@6 {
 		};
 	};
 
-	i2c-switch@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9546";
 		reg = <0x71>;
 		#address-cells = <1>;
-- 
2.34.1

