Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B35A365BB56
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 08:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233036AbjACHn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 02:43:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjACHn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 02:43:26 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C311FC77D
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 23:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672731804; x=1704267804;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2IfcbMB1fHtgROrIQAQvB5zZXt4AyGV72a6U3wUr0KE=;
  b=OFy/SfUCT2Cw/2f3IEY1nQC02kywvlOvrG6/2nTIvDkGxDD1B4gSyszz
   jrA40ycMWdJEtjv5YSQkLW6JOsnHfvfNSvpDP6Aq3GaU8ykw2mXMrNEFZ
   MxOl3+9Xwgxj3mdQ1odEpUds4UG6JYyv87NL2YSOAkg6AgduPCdJNaPIL
   KzPyVdRiS8wEP+40DLvADZWS4NqaKuFviZGMHU05KH8UEpW/u1wlPWkMD
   UCjpmCuIvY/oZc88SVwprrrhbccbSNnKk+c2IhgRW632mSA9KsNL4TNde
   an9m3VnTXjK2mi/JXF8TdxkTLfrDy2fVX4x6ZTQhuPjTPeeKHRNqMcyLf
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,296,1665439200"; 
   d="scan'208";a="28213505"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 03 Jan 2023 08:43:22 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 03 Jan 2023 08:43:22 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 03 Jan 2023 08:43:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672731802; x=1704267802;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2IfcbMB1fHtgROrIQAQvB5zZXt4AyGV72a6U3wUr0KE=;
  b=BbQzVWbX4PYEyyRqszM7OWKMW8YD2WaJfQOVv/0tTl3DsjSBoq5Y81EH
   d1N6bZs2oGhhuI7/bSgOECbhz94akEBomc43zxjp+Ak2uCOoiosiuTC6l
   dCyjYV5lL1fTFzGvA2gbi6dri5AWNKWsZgi/F5GI1nSS+IaH386aPuo30
   un8QrGPcQ5h3gk1sHcvbq1q3pgRG+PIfX6xYPyECim2cJt1kKvEvlndpS
   kZjnbLA+g5/9yqweD6VWI0+kxYQQGZzWtYdjKbvaGHEfQnrjV+pVHtOP6
   jYx8wdhxLU5L/OyrhjFaYJf1YfDofAbgYyEFpVBBy7lsUIlLf+usLUZpj
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,296,1665439200"; 
   d="scan'208";a="28213504"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 Jan 2023 08:43:21 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C5456280056;
        Tue,  3 Jan 2023 08:43:21 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] arm64: dts: tqma8m*: Fix temperature sensor compatible
Date:   Tue,  3 Jan 2023 08:43:17 +0100
Message-Id: <20230103074318.3146070-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* Squashed into a single patch

 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi         | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi         | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 ++---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi         | 5 ++---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi           | 4 ++--
 arch/arm64/boot/dts/freescale/mba8mx.dtsi                   | 4 ++--
 6 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 88d89cd46c74..b4466a26d838 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -87,8 +87,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 48b965386e87..391ca5516e4c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -77,8 +77,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 25cbe333ab8f..34b62d8c76a0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -510,9 +510,8 @@ tlv320aic3x04: audio-codec@18 {
 		ldoin-supply = <&reg_vcc_3v3>;
 	};
 
-	/* NXP SE97BTP with temperature sensor + eeprom */
-	se97_1c: temperature-sensor-eeprom@1c {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	se97_1c: temperature-sensor@1c {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1c>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
index 7bd680a926ce..ebc29a950ba9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
@@ -63,9 +63,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	/* NXP SE97BTP with temperature sensor + eeprom */
-	se97: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	se97: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 9a95e30fb42d..5ca6b2252546 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -194,8 +194,8 @@ vgen6_reg: vgen6 {
 		};
 	};
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 3283af9888cf..d41f75b53bde 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -283,8 +283,8 @@ tlv320aic3x04: audio-codec@18 {
 		ldoin-supply = <&reg_vcc_3v3>;
 	};
 
-	sensor1: sensor@1f {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor1: temperator-sensor@1f {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1f>;
 	};
 
-- 
2.34.1

