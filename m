Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABC162D0D43
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 10:44:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726184AbgLGJoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 04:44:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgLGJoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 04:44:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B21F1C0613D0
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 01:43:40 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kmD3T-0004Da-43; Mon, 07 Dec 2020 10:43:39 +0100
Message-ID: <747017147843bbb1652c6bb67e1f4c04319b032d.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts imx8mm: Add power domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     devicetree@vger.kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, robh+dt@kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, festevam@gmail.com
Date:   Mon, 07 Dec 2020 10:43:38 +0100
In-Reply-To: <20201206174304.28106-1-adrien.grassein@gmail.com>
References: <20201206174304.28106-1-adrien.grassein@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1 (3.38.1-1.fc33) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adrien,

Am Sonntag, den 06.12.2020, 18:43 +0100 schrieb Adrien Grassein:
Power domains were not defined for imx8mm
but, according to spec, they are the same as on
the imx8mq SoC.

This patch is wrong. The power domains on the i.MX8MM are significantly
different from i.MX8MQ.

There is already a basic implementation of the power domains for
i.MX8MM on the list (for now without VPU and display domains):
[PATCH v2 00/13] i.MX8MM power domain support

Tested on a Boundary Nitrogen 8M Mini board.

Please help test the above series.

Regards,
Lucas


Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 76 +++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 05ee062548e4..72f69a6da5c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/power/imx8mq-power.h>
 

 #include "imx8mm-pinfunc.h"
 

@@ -549,6 +550,81 @@
 			};
 		};
 

+		gpc: gpc@303a0000 {
+			compatible = "fsl,imx8mq-gpc";
+			reg = <0x303a0000 0x10000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			pgc {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				pgc_mipi: power-domain@0 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI>;
+				};
+
+				/*
+				 * As per comment in ATF source code:
+				 *
+				 * PCIE1 and PCIE2 share the
+				 * same reset signal, if we
+				 * power down PCIE2, PCIE1
+				 * will be held in reset too.
+				 *
+				 * So instead of creating two
+				 * separate power domains for
+				 * PCIE1 and PCIE2 we create a
+				 * link between both and use
+				 * it as a shared PCIE power
+				 * domain.
+				 */
+				pgc_pcie: power-domain@1 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_PCIE1>;
+					power-domains = <&pgc_pcie2>;
+				};
+
+				pgc_otg1: power-domain@2 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_USB_OTG1>;
+				};
+
+				pgc_otg2: power-domain@3 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_USB_OTG2>;
+				};
+
+				pgc_ddr1: power-domain@4 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_DDR1>;
+				};
+
+				pgc_disp: power-domain@7 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_DISP>;
+				};
+
+				pgc_mipi_csi1: power-domain@8 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI_CSI1>;
+				};
+
+				pgc_mipi_csi2: power-domain@9 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI_CSI2>;
+				};
+
+				pgc_pcie2: power-domain@a {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_PCIE2>;
+				};
+			};
+		};
+
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			reg = <0x30400000 0x400000>;


