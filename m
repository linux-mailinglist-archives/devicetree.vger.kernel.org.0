Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38D87407290
	for <lists+devicetree@lfdr.de>; Fri, 10 Sep 2021 22:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233806AbhIJU2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Sep 2021 16:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233936AbhIJU2L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Sep 2021 16:28:11 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D3A0C061756
        for <devicetree@vger.kernel.org>; Fri, 10 Sep 2021 13:26:59 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mOn6s-0000xM-1H; Fri, 10 Sep 2021 22:26:54 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH v4 15/18] arm64: dts: imx8mm: put USB controllers into power-domains
Date:   Fri, 10 Sep 2021 22:26:37 +0200
Message-Id: <20210910202640.980366-16-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910202640.980366-1-l.stach@pengutronix.de>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have support for the power domain controller on the i.MX8MM
we can put the USB controllers in their respective power domains to allow
them to power down the PHY when possible.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 3922f26f8fd4..772f60bfe31e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1077,6 +1077,7 @@ usbotg1: usb@32e40000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
+				power-domains = <&pgc_otg1>;
 				status = "disabled";
 			};
 
@@ -1096,6 +1097,7 @@ usbotg2: usb@32e50000 {
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
+				power-domains = <&pgc_otg2>;
 				status = "disabled";
 			};
 
-- 
2.30.2

