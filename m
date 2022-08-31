Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31B745A77F5
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 09:46:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbiHaHqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 03:46:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiHaHqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 03:46:30 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8071050056
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661931984; x=1693467984;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yAZ2XOwkxSOAkfD0obd00DPm0z35wYrOkSQ6Dd7X0to=;
  b=lr/B67Cy8Cr/cB375MXaRYLN3xEg5a+CmEPRTE1WTFk/q1TKXdCRi6VJ
   WCsnlwxbz7Ri94ECQgUjqOtEn+b6sTVs2Ev/jA7yw53s6rVZuF2Si8d6t
   wBKpjAOtiz1Iqs3QqpGj3aiSaVHkggF7HXFL6m16l0zs8zvxOrL4pshcr
   TEqeOT2RpVDFuDjS/vaxoZdgY7GWB7iVS3p2nR0fAKhTcPPoilidcq4wY
   41cuTqeA9ybn7vHEw01doEZ7PAzT99nvERmxVkY4ulQbDsLY6RFlvnBSL
   726F8+RN/LTGdzqvBoi63zU5BRbBZs/pv9nMbhTScWfm8cl3N9bDfxzj9
   g==;
X-IronPort-AV: E=Sophos;i="5.93,277,1654552800"; 
   d="scan'208";a="25901350"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 Aug 2022 09:46:22 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 31 Aug 2022 09:46:22 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 31 Aug 2022 09:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661931982; x=1693467982;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yAZ2XOwkxSOAkfD0obd00DPm0z35wYrOkSQ6Dd7X0to=;
  b=QFTbdShW4TB55E7Y+IR7TzJyDiG2Bw5u6RovneIJarGqOzJqqRSJ2XAt
   tL2lDO72MoEbrjFOo0jUhzsELgsFOcO5rf5YI2quPu9tB6bdVUDKBv9/U
   HKumM3uHA2Y2JIfst+lFSrWO24cXAgIkxk4l4ItsKxVEq+yQY+2FdI2JJ
   +O6Io7KV8EN6n+Rw1qTd8OMHiCkWf7vVjzyKurFiKHOobXTEabZq0AS3W
   RKVMNS2FleAlfEpODaDSK7JQyQFR60nU6GC1urbItJcOOR9XssOYr8Ph1
   cSnHPTPw5zAZVRea52qPkCZh8FU8oBTHsY7sJB42NIw1HIR4OOxkQZWCU
   A==;
X-IronPort-AV: E=Sophos;i="5.93,277,1654552800"; 
   d="scan'208";a="25901349"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Aug 2022 09:46:22 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4A10B280056;
        Wed, 31 Aug 2022 09:46:22 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
Subject: [PATCH v2 1/1] arm64: dts: tqma8mpql: add USB DR support
Date:   Wed, 31 Aug 2022 09:46:06 +0200
Message-Id: <20220831074606.1677052-1-alexander.stein@ew.tq-group.com>
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
Changes in v2:
* Split from previous series
* For now enable USB OTG only

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index d8ca52976170..b30d75b1fa47 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -459,6 +459,37 @@ &usdhc2 {
 	status = "okay";
 };
 
+&usb3_phy0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb0>;
+	status = "okay";
+};
+
+&usb3_0 {
+	fsl,over-current-active-low;
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
 &iomuxc {
 	pinctrl_backlight: backlightgrp {
 		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x14>;
@@ -666,6 +697,15 @@ pinctrl_uart4: uart4grp {
 			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
 	};
 
+	pinctrl_usbcon0: usb0congrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x1c0>;
+	};
+
+	pinctrl_usb0: usb0grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x1c0>,
+			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	0x1c0>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
 			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
-- 
2.25.1

