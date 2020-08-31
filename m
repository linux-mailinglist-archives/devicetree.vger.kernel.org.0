Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB80257A73
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 15:32:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727088AbgHaNcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 09:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727955AbgHaNaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 09:30:46 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FD12C061575
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:30:29 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kCjt9-0005yD-Kn; Mon, 31 Aug 2020 15:30:23 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kCjt9-0006rZ-4j; Mon, 31 Aug 2020 15:30:23 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com
Cc:     kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6qdl: add enet_out clk support
Date:   Mon, 31 Aug 2020 15:30:18 +0200
Message-Id: <20200831133018.25713-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Like the other i-MX devices the i.MX6 family can output the enet tx
clock on the pad to feed the connected device. Add the missing clk here
to avoid local fixups like: arch/arm/boot/dts/imx6qdl-tx6.dtsi.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 43edbf1156c7..e24c3102c5e3 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1043,8 +1043,9 @@
 					     <0 119 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6QDL_CLK_ENET>,
 					 <&clks IMX6QDL_CLK_ENET>,
+					 <&clks IMX6QDL_CLK_ENET_REF>,
 					 <&clks IMX6QDL_CLK_ENET_REF>;
-				clock-names = "ipg", "ahb", "ptp";
+				clock-names = "ipg", "ahb", "ptp", "enet_out";
 				fsl,stop-mode = <&gpr 0x34 27>;
 				status = "disabled";
 			};
-- 
2.20.1

