Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA5F564F225
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 21:08:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231836AbiLPUI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 15:08:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231405AbiLPUI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 15:08:28 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD982EF22
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 12:08:28 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p6H0K-0000kf-9H; Fri, 16 Dec 2022 21:08:24 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: [PATCH v3 5/5] arm64: dts: imx8mp: add clock-cells to hsio-blk-ctrl
Date:   Fri, 16 Dec 2022 21:08:21 +0100
Message-Id: <20221216200821.3230165-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221216200821.3230165-1-l.stach@pengutronix.de>
References: <20221216200821.3230165-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HSIO blk-ctrl exposes the high performance PLL as
a simple clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Tested-by: Lukas F. Hartmann <lukas@mntre.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index bb916a0948a8..f39a39b44718 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1158,6 +1158,7 @@ hsio_blk_ctrl: blk-ctrl@32f10000 {
 						<&noc IMX8MP_ICM_PCIE &noc IMX8MP_ICN_HSIO>;
 				interconnect-names = "noc-pcie", "usb1", "usb2", "pcie";
 				#power-domain-cells = <1>;
+				#clock-cells = <0>;
 			};
 		};
 
-- 
2.30.2

