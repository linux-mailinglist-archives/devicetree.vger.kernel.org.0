Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFBC4AD8B2
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243070AbiBHNPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357404AbiBHMdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:33:03 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2516FC03FECA
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323582; x=1675859582;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hiKaa+vjng7QGQwzXwJDmhDTUVL/l7PjxijS5yiT0vw=;
  b=hbQTQkaB7c4edI2P8I/vK67NIEkYSoxjjkCeFeQ0U8l0SU/AUMskrhu7
   oGuS9Ss2+DFB7uR6kknMBEkKTiLgrukMXaoo5N46daHoOlGgGtrO0xdM3
   q1Zbxzy/gu65ZL7sseZMFjPnQH4Po7bskje284PdAG73ruAFNJlKhY9zZ
   ibeKuBgAxROuVDr502xnx7k7qEhS1+NGmGv7Nl15LRan2M2camlWpVO4u
   qASdKuFtfsbrpWZNTP+Fi81n9g/vL/BiPsoRTEQV/GGhUxA45UEVYxbXh
   swml5XAORwOfrd4IGmiCix1H8ecl6hwoj1x1n7GZZOHyo1+nCxYmiq5DG
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960352"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 13:32:58 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 13:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323578; x=1675859578;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hiKaa+vjng7QGQwzXwJDmhDTUVL/l7PjxijS5yiT0vw=;
  b=Jv0DcV4Bm5jyPAAKO1Zv2Aveg5YfqrqeaJvcg/+fexhWEK5Lb/6DqYwv
   t+z3zJTxUDLMabBgtLxHIEzhuQRyzVLl22So1y/QSrmFwZS0551sMTMvT
   95GiNh81EKW9s1TmgTJOgk6tgMISRcQW2CaYfFI2wwwHISbNwmLPq+jWX
   7hpYDcVJmZJ4Vz8UuCIjk0JkjnFiOkKvDdSBICZfoREI4We9NETMqwni1
   5diLaK3poGqfVkISMeN4By9dWSvYH5PGQSxrnOG8UgLPoj+o1el4TbOO8
   cK16gXcxeTWTtwO1i7KDpBBwpEYJifSL9RzyMBC4p9O7YITN9lsu/jzVZ
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960350"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2A531280075;
        Tue,  8 Feb 2022 13:32:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: dts: imx6qdl: tqma6: Add i2c bus recovery
Date:   Tue,  8 Feb 2022 13:32:45 +0100
Message-Id: <20220208123248.821826-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
References: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the pinmuxing and GPIO settings for SCL/SDA for i2c1 & i2c3.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6b.dtsi  |  5 ++++-
 arch/arm/boot/dts/imx6qdl-tqma6.dtsi  | 14 ++++++++++++++
 arch/arm/boot/dts/imx6qdl-tqma6a.dtsi |  7 ++++++-
 arch/arm/boot/dts/imx6qdl-tqma6b.dtsi |  7 ++++++-
 4 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
index 2e3407790963..7d1cd7454c7f 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
@@ -13,8 +13,11 @@ &fec {
 
 &i2c1 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_recovery>;
+	scl-gpios = <&gpio5 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6qdl-tqma6.dtsi b/arch/arm/boot/dts/imx6qdl-tqma6.dtsi
index 51a3a5392c95..344ea935c7da 100644
--- a/arch/arm/boot/dts/imx6qdl-tqma6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tqma6.dtsi
@@ -52,6 +52,13 @@ MX6QDL_PAD_CSI0_DAT9__I2C1_SCL 0x4001b899
 		>;
 	};
 
+	pinctrl_i2c1_recovery: i2c1recoverygrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT8__GPIO5_IO26 0x4001b899
+			MX6QDL_PAD_CSI0_DAT9__GPIO5_IO27 0x4001b899
+		>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_5__I2C3_SCL 0x4001b899
@@ -59,6 +66,13 @@ MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b899
 		>;
 	};
 
+	pinctrl_i2c3_recovery: i2c3recoverygrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_5__GPIO1_IO05 0x4001b899
+			MX6QDL_PAD_GPIO_6__GPIO1_IO06 0x4001b899
+		>;
+	};
+
 	pinctrl_pmic: pmicgrp {
 		fsl,pins = <
 			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10 0x1b099 /* PMIC irq */
diff --git a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
index bfb67da64b96..7dc3f0005b0f 100644
--- a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
@@ -4,6 +4,8 @@
  * Copyright 2013-2017 Markus Niebel <Markus.Niebel@tq-group.com>
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 &fec {
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
@@ -11,8 +13,11 @@ &fec {
 };
 
 &i2c1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_recovery>;
+	scl-gpios = <&gpio5 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	clock-frequency = <100000>;
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/imx6qdl-tqma6b.dtsi b/arch/arm/boot/dts/imx6qdl-tqma6b.dtsi
index 49c472285c06..dd0925766440 100644
--- a/arch/arm/boot/dts/imx6qdl-tqma6b.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tqma6b.dtsi
@@ -4,9 +4,14 @@
  * Copyright 2013-2017 Markus Niebel <Markus.Niebel@tq-group.com>
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 &i2c3 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_recovery>;
+	scl-gpios = <&gpio1 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	clock-frequency = <100000>;
 	status = "okay";
 
-- 
2.25.1

