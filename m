Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1181827EDDD
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725800AbgI3Pu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726572AbgI3Pu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:27 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D00D8C0613D0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:26 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeN2-0006WU-KZ; Wed, 30 Sep 2020 17:50:21 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:50:06 +0200
Message-Id: <20200930155006.535712-12-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] arm64: dts: imx8mm: put USB controllers into power-domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
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
index a841fb2d0458..ab379d02d4e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -951,6 +951,7 @@
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
+				power-domains = <&pgc_otg1>;
 				status = "disabled";
 			};
 
@@ -970,6 +971,7 @@
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
+				power-domains = <&pgc_otg2>;
 				status = "disabled";
 			};
 
-- 
2.20.1

