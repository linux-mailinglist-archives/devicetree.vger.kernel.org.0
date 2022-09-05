Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 255CC5ACCEE
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 09:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236281AbiIEHh4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 03:37:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236154AbiIEHhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 03:37:55 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 146211A3B3
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 00:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662363474; x=1693899474;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=njF9NKCaEaIKOiLI5wzuJzZxw4r2LlZSIkq096aUrHc=;
  b=d3ctaFHOPnn1AWRd4WcTvrWgbfyKnOrYXHAn2OvaABU64dkkVi5bjFBR
   Jc44ZMq8bht4ohsEXDQe0xvfG5xDoJilpEYm4HMnGnHetmvViZHv4jyjD
   OO2N/ENPG/cgDJKwDmIKJRfaWRUnmYnCTaqMvcEFf7o/utMI7iWOuOkgQ
   oLSISQa7c5jj4NIQR4X6O27k2N5N2RzNtJqI0OELw0YL/5ghAb+531TdR
   dtO8ECLTwiHNmyzxFB68tVO5RTcNNAULNP2PZxnd4yo1scyjCLyv2JUu1
   2hMOPcAWmp1HW5TCdbRJf00TxuWgV+atpRoGsb+ZZhEzpvu3sLVWJI6VZ
   A==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25980402"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Sep 2022 09:37:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 05 Sep 2022 09:37:52 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 05 Sep 2022 09:37:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662363472; x=1693899472;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=njF9NKCaEaIKOiLI5wzuJzZxw4r2LlZSIkq096aUrHc=;
  b=AyEK2sLXwXWFWwyGWIcl6oHBjOTD7TXA+ShrF5zxPveIEc54ezSLMVPK
   0oitMBgqLXFeSf4kvVm97Lpm40B/3wROjslBJUXcrDCOvUcjXb2qW3cKj
   iu+6atyKaNjgaN+U2rAwuV7cPrIcyu/XjSVzV0tvWCECEyX8EUAnTGxTa
   1ZZQNxtAk5M7e4UGJpMg9oKQYUAhbru+A229U0fTv7chICKlRW4bxF0a2
   PLV8LLKb6Xwj2xHmdwEl+p3bKz4/J8PKfsRs5O9xEt7+oe+JJoH3YyqnG
   VCzBu2+s0SAdzfaUEp2ootNKWBWobnrWUhFIki0vWOllszxYnLwCcGOqJ
   A==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25980401"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Sep 2022 09:37:52 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DB6F0280056;
        Mon,  5 Sep 2022 09:37:51 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
Subject: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Date:   Mon,  5 Sep 2022 09:37:30 +0200
Message-Id: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
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

Add support for USB DR on USB1 interface. Host/Device detection is done
using the usb-role-switch connector.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* Moved pinctrl to USB glue layer node
* Ordered nodes alphabetically

Changes in v2:
* Split from previous series
* For now enable USB OTG only

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index d8ca52976170..88579e8ac93b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -139,6 +139,13 @@ reg_vcc_3v3: regulator-3v3 {
 		regulator-max-microvolt = <3300000>;
 	};
 
+	reg_vcc_5v0: regulator-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -445,6 +452,38 @@ &uart4 {
 	status = "okay";
 };
 
+&usb3_0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb0>;
+	fsl,over-current-active-low;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	vbus-supply = <&reg_vcc_5v0>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	/* dual role is implemented, but not a full featured OTG */
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
+	status = "okay";
+
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		label = "X29";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbcon0>;
+		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
@@ -666,6 +705,15 @@ pinctrl_uart4: uart4grp {
 			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
 	};
 
+	pinctrl_usb0: usb0grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x1c0>,
+			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	0x1c0>;
+	};
+
+	pinctrl_usbcon0: usb0congrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x1c0>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
 			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
-- 
2.25.1

