Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0B7D5EA694
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 14:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234509AbiIZMz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 08:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234614AbiIZMzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 08:55:00 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5AA4155666
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1664191768; x=1695727768;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zbgm85B3cdu2VAHr0/2r40wRxzSOaMMEVarL++vzOJc=;
  b=VMNub1lIIk3iXEYAe+BYzOsrSixBpG6ag/RKuhNxDScIQZ2fjF1IW1Ly
   eOM8G40aqbG5JBULyR3iGFFYw5gyNbkF2MpdLKZrNizDA2fM6wFdfyioE
   xbe0RQdVbszTQ+OamNDAimrP6SCaLp1Cg8kZpd4E+KoUVl5Hqnr69yeS8
   M+j/DI6VTh8qedmYIRE9ScywHWP+Xf2gWwtYli64HowMDRtNLKCLL+ubs
   sI7HVjmoA3ycDrADl3yDdvoie0y91EDkrQ/cK9RtmU7rhpmc6T705c14R
   omSVi+12KJVZTDwhb6llff9C01hNazqgWTaPy/B8oKU0EEf/e5EuWzUf1
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,345,1654552800"; 
   d="scan'208";a="26392991"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Sep 2022 13:26:27 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 26 Sep 2022 13:26:27 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 26 Sep 2022 13:26:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1664191587; x=1695727587;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zbgm85B3cdu2VAHr0/2r40wRxzSOaMMEVarL++vzOJc=;
  b=Y+awTS0nYuqh3EWdyP+F5ityMJxJcc6lhQLEp114QoYrWWWEAO59PFWC
   A5XNdijRkDz7cX6YBvbwCtluhtVpSi0c+ll1X+WQA2fLc4vsJEwwKxfT1
   /+aoKspZjvXikYPBwcIgfikrsP7Zhq4WHo/4oGiriG2WpxJUvtqsB0xvz
   0SPXPlI91MZKJ2VEcWdaMAg6q+xq1EHAZPLnAhwiGxEfLTBUeRefyhVX6
   lPuCwupdwr8BRLDU8ojNO2OqfGzU+Q234dpxfCxjf6j3IbbjbyoGjIpJ2
   QpyyWRH9mzxGdzPw98qmaPmhC7d9zUXyRoMLHFREBVECiuvDavChsvu/T
   g==;
X-IronPort-AV: E=Sophos;i="5.93,345,1654552800"; 
   d="scan'208";a="26392990"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Sep 2022 13:26:27 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 45950280056;
        Mon, 26 Sep 2022 13:26:27 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Date:   Mon, 26 Sep 2022 13:26:22 +0200
Message-Id: <20220926112622.2912885-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
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

extcon does not work somehow, so switch to usb-role-switch instead.

Fixes: dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree for TQMa8MQML with i.MX8MM")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
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
2.25.1

