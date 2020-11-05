Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 794D12A853F
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 18:44:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731746AbgKERo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 12:44:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727275AbgKERo4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 12:44:56 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 391B1C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 09:44:56 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kajJa-0005qB-Qi; Thu, 05 Nov 2020 18:44:51 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Thu,  5 Nov 2020 18:44:33 +0100
Message-Id: <20201105174434.1817539-13-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201105174434.1817539-1-l.stach@pengutronix.de>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: [PATCH v2 12/13] arm64: dts: imx8mm: add GPC node and power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the DT nodes to describe the power domains available on the
i.MX8MM. Things are a bit more complex compared to other GPCv2 power
domain setups, as there is now a hierarchy of domains where complete
subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
fine granular gating within those subsystems is possible.

Note that this is still incomplete, as both VPU and DISP domains are
missing their reset clocks. Those aren't directly sourced from the CCM,
but have another level of clock gating in the BLKCTL of those domains,
which needs a separate driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 58 +++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b83f400def8b..c21901a8aea9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -4,6 +4,8 @@
  */
 
 #include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/power/imx8mm-power.h>
+#include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -547,6 +549,62 @@
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_hsiomix: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
+						clocks = <&clk IMX8MM_CLK_USB_BUS>;
+					};
+
+					pgc_pcie: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
+						power-domains = <&pgc_hsiomix>;
+					};
+
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
+						power-domains = <&pgc_hsiomix>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
+						power-domains = <&pgc_hsiomix>;
+					};
+
+					pgc_gpumix: power-domain@4 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
+						clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+						         <&clk IMX8MM_CLK_GPU_AHB>;
+					};
+
+					pgc_gpu: power-domain@5 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPU>;
+						clocks = <&clk IMX8MM_CLK_GPU_AHB>,
+						         <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
+						         <&clk IMX8MM_CLK_GPU2D_ROOT>,
+						         <&clk IMX8MM_CLK_GPU3D_ROOT>;
+						resets = <&src IMX8MQ_RESET_GPU_RESET>;
+						power-domains = <&pgc_gpumix>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
-- 
2.20.1

