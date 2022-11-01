Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5FE96146AB
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 10:30:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiKAJaj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 05:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbiKAJai (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 05:30:38 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFCB12667
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 02:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667295037; x=1698831037;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=eEIGsA/PvZNFQUyUhmTytwmzIaUYi4AT15RJYkS3FJU=;
  b=SeiiYhDC9SFSI+rqwPMolv3riNklfgnDnNplms5UGEhQWthXnGZ0Oah3
   i5zxZKTgY7+0MVI9/jQdR5XAZEJb+PsVAMDFjmxvt3jz445u3vQQMdyPU
   cJIHy4BaZNRFp+fIwl5PFG9KzWSfpQe3WhD9c6wl5FOm/xmxy1qiCDI03
   HrXlM4/qTrwHUepw32zoQw8daStTmHqlPHson7C6vdDRyKNFCn7wfBIvy
   PyQmjFeaylRvzUqs82m5mBvrjfB0SjMab29lFbb38WsSgwFaWzENXmtsG
   JGa+w5dnGP44wnruIa+a7PDJQcSl7jc3Y5i28p77tg2gCn4MMJsfWhfSf
   Q==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083761"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Nov 2022 10:30:35 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 01 Nov 2022 10:30:35 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 01 Nov 2022 10:30:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667295035; x=1698831035;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=eEIGsA/PvZNFQUyUhmTytwmzIaUYi4AT15RJYkS3FJU=;
  b=Sazd5WQtb3htTFfdYg7rR/qdMiUFLjJuaO5LzJd3yIVd3j+3oNKFo14d
   g1NPXRLWnCkCSGL4GsTHptpsSGwveTVnUJRCyxfGzMfcQOpcI0CwZaCsx
   x3PfvNukjbPbMXMPcEwMCrwwRgDcQjuU796wXor+1KO1sfnVoBf+U7Fi1
   EkMddTnXApia6X3us8ERx1rE7BFPm3J2p9Ih7YkEFpwWlFQ8cDC8CgY0n
   MaB6OrUctVlmvURtx7MT/zWgO20oLEW/kWLwkCmHm1kLg7iCrdyra4TZ/
   2s9CnSZkXHrlSPpaFjWDXKmnhwqlpTVKcaFmjAM29O8Ov8ncgKt+1Yy/X
   w==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083760"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Nov 2022 10:30:34 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9E84F280056;
        Tue,  1 Nov 2022 10:30:34 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Date:   Tue,  1 Nov 2022 10:30:31 +0100
Message-Id: <20221101093031.278241-1-alexander.stein@ew.tq-group.com>
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

Using extcon USB host mode works properly on DR interface, e.g.
enabling/disabling VBUS. But USB device mode is not working.
Fix this by switching to usb-role-switch instead.

Fixes: dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree for TQMa8MQML with i.MX8MM")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Improve the commit message describing the actual issue being fixed

 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 32 +++++++++++++++----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index bfb44630da6b..56323c989d55 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -34,11 +34,25 @@ reg_usdhc2_vmmc: regulator-vmmc {
 		off-on-delay-us = <12000>;
 	};
 
-	extcon_usbotg1: extcon-usbotg1 {
-		compatible = "linux,extcon-usb-gpio";
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		label = "X19";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_usb1_extcon>;
-		id-gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pinctrl_usb1_connector>;
+		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				usb_dr_connector: endpoint {
+					remote-endpoint = <&usb1_drd_sw>;
+				};
+			};
+		};
 	};
 };
 
@@ -106,13 +120,19 @@ &usbotg1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usbotg1>;
 	dr_mode = "otg";
-	extcon = <&extcon_usbotg1>;
 	srp-disable;
 	hnp-disable;
 	adp-disable;
 	power-active-high;
 	over-current-active-low;
+	usb-role-switch;
 	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&usb_dr_connector>;
+		};
+	};
 };
 
 &usbotg2 {
@@ -242,7 +262,7 @@ pinctrl_usbotg1: usbotg1grp {
 			   <MX8MM_IOMUXC_GPIO1_IO13_USB1_OTG_OC		0x84>;
 	};
 
-	pinctrl_usb1_extcon: usb1-extcongrp {
+	pinctrl_usb1_connector: usb1-connectorgrp {
 		fsl,pins = <MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x1c0>;
 	};
 
-- 
2.34.1

