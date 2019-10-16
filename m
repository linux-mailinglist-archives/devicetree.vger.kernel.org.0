Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52B13D8B0E
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 10:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388727AbfJPIdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 04:33:35 -0400
Received: from inva020.nxp.com ([92.121.34.13]:44302 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388364AbfJPIdf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 16 Oct 2019 04:33:35 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B98321A0501;
        Wed, 16 Oct 2019 10:33:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 48A391A052D;
        Wed, 16 Oct 2019 10:33:31 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 166AA402B3;
        Wed, 16 Oct 2019 16:33:27 +0800 (SGT)
From:   Peter Chen <peter.chen@nxp.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
        Peter Chen <peter.chen@nxp.com>
Subject: [PATCH 1/1] ARM: dts: imx6ul-14x14-evk.dtsi: configure USBOTG1 ID pinctrl
Date:   Wed, 16 Oct 2019 16:31:05 +0800
Message-Id: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Without configuring this pinctrl, the ID value can't be got correctly,
then, the dual-role switch can't work well.

Reviewed-by: Jun Li <jun.li@nxp.com>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index c2a9dd57e56a..ed3d993c25f7 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -266,6 +266,8 @@
 
 &usbotg1 {
 	dr_mode = "otg";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg1>;
 	status = "okay";
 };
 
@@ -499,6 +501,12 @@
 		>;
 	};
 
+	pinctrl_usb_otg1: usbotg1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
-- 
2.17.1

