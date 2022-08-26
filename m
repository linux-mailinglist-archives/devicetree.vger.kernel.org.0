Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCDD75A2FF4
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 21:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242340AbiHZT3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 15:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbiHZT3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 15:29:43 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24C8ED11D3
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 12:29:43 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1oRf1L-000152-1M; Fri, 26 Aug 2022 21:29:35 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH 2/4] arm64: dts: imx8mp: add HDMI irqsteer
Date:   Fri, 26 Aug 2022 21:29:30 +0200
Message-Id: <20220826192932.3217260-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220826192932.3217260-1-l.stach@pengutronix.de>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HDMI irqsteer is a secondary interrupt controller within the HDMI
subsystem that maps all HDMI peripheral IRQs into a single upstream
IRQ line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a6df80092fbd..71c2397bf7c2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1132,6 +1132,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "hdmi-tx", "hdmi-tx-phy";
 				#power-domain-cells = <1>;
 			};
+
+			irqsteer_hdmi: interrupt-controller@32fc2000 {
+				compatible = "fsl,imx-irqsteer";
+				reg = <0x32fc2000 0x44>;
+				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				fsl,channel = <1>;
+				fsl,num-irqs = <64>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>;
+				clock-names = "ipg";
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
+			};
 		};
 
 		gpu3d: gpu@38000000 {
-- 
2.30.2

