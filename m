Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA77654E6C4
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 18:17:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236051AbiFPQRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 12:17:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234913AbiFPQQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 12:16:59 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA3EA2E680
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 09:16:58 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 84B2A415;
        Thu, 16 Jun 2022 18:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1655396217;
        bh=SJhqQePK7wODzrgeP3CxupUo6l4nfct9TvzI4k2gJQQ=;
        h=From:To:Cc:Subject:Date:From;
        b=e2/ZmYJtLzwZCT2mTdpB5/NNqWTv+D00hk2ydsrpFGIn+CHQ9g/QPcmiAiJi84TD7
         jHJ6tXXqgGlZJwmIK5T9a9msJbGyQ86lUYfUKd6auZjnPf1h39m2BDx+HtKr0IGKSj
         Ry9+8Ta/odObA/uGXSaNud8EPjcdG4JlQoTJQHGk=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH] arm64: dts: imx8mp: Add CSIS DT nodes
Date:   Thu, 16 Jun 2022 19:16:43 +0300
Message-Id: <20220616161643.22867-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT nodes for the two CSI-2 receivers of the i.MX8MP.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
This patch depends on the DT bindings submitted in [1], for which I plan
to submit a pull request for v5.20.

[1] https://lore.kernel.org/linux-media/83e27382-6f97-015f-2ee1-f43820967093@linaro.org/T/#u
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 60 +++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index d9542dfff83f..c8ed206b7f41 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1063,6 +1063,66 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
 				#power-domain-cells = <1>;
 			};
 
+			mipi_csi_0: csi@32e40000 {
+				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
+				reg = <0x32e40000 0x10000>;
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				clock-frequency = <500000000>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+				clock-names = "pclk", "wrap", "phy", "axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clock-rates = <500000000>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
+			mipi_csi_1: csi@32e50000 {
+				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
+				reg = <0x32e50000 0x10000>;
+				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+				clock-frequency = <266000000>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+				clock-names = "pclk", "wrap", "phy", "axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM2_PIX>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clock-rates = <266000000>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
 			hsio_blk_ctrl: blk-ctrl@32f10000 {
 				compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
 				reg = <0x32f10000 0x24>;

base-commit: b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3
-- 
Regards,

Laurent Pinchart

