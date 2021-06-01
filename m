Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C9503979B9
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 20:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234628AbhFASIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 14:08:30 -0400
Received: from finn.gateworks.com ([108.161.129.64]:43936 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S231331AbhFASIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 14:08:30 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1lo8W1-003afM-8L; Tue, 01 Jun 2021 17:49:21 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 2/4] arm64: dts: imx8mm-venice-gw700x: fix mp5416 pmic config
Date:   Tue,  1 Jun 2021 10:49:15 -0700
Message-Id: <20210601174917.1979-2-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210601174917.1979-1-tharvey@gateworks.com>
References: <20210601174917.1979-1-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix various MP5416 PMIC configurations:
 - Update regulator names per dt-bindings
 - ensure values fit among valid register values
 - add required regulator-max-microamp property
 - add regulator-always-on prop

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../dts/freescale/imx8mm-venice-gw700x.dtsi   | 56 ++++++++++++-------
 1 file changed, 37 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
index 512b76cd7c3b..f4eb827baed7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
@@ -283,65 +283,83 @@
 		reg = <0x69>;
 
 		regulators {
+			/* vdd_0p95: DRAM/GPU/VPU */
 			buck1 {
-				regulator-name = "vdd_0p95";
-				regulator-min-microvolt = <805000>;
+				regulator-name = "buck1";
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1000000>;
-				regulator-max-microamp = <2500000>;
+				regulator-min-microamp  = <3800000>;
+				regulator-max-microamp  = <6800000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* vdd_soc */
 			buck2 {
-				regulator-name = "vdd_soc";
-				regulator-min-microvolt = <805000>;
+				regulator-name = "buck2";
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
-				regulator-max-microamp = <1000000>;
+				regulator-min-microamp  = <2200000>;
+				regulator-max-microamp  = <5200000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* vdd_arm */
 			buck3_reg: buck3 {
-				regulator-name = "vdd_arm";
-				regulator-min-microvolt = <805000>;
+				regulator-name = "buck3";
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1000000>;
-				regulator-max-microamp = <2200000>;
-				regulator-boot-on;
+				regulator-min-microamp  = <3800000>;
+				regulator-max-microamp  = <6800000>;
+				regulator-always-on;
 			};
 
+			/* vdd_1p8 */
 			buck4 {
-				regulator-name = "vdd_1p8";
+				regulator-name = "buck4";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-max-microamp = <500000>;
+				regulator-min-microamp  = <2200000>;
+				regulator-max-microamp  = <5200000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* nvcc_snvs_1p8 */
 			ldo1 {
-				regulator-name = "nvcc_snvs_1p8";
+				regulator-name = "ldo1";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-max-microamp = <300000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* vdd_snvs_0p8 */
 			ldo2 {
-				regulator-name = "vdd_snvs_0p8";
+				regulator-name = "ldo2";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <800000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* vdd_0p9 */
 			ldo3 {
-				regulator-name = "vdd_0p95";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <800000>;
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
+			/* vdd_1p8 */
 			ldo4 {
-				regulator-name = "vdd_1p8";
+				regulator-name = "ldo4";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 		};
 	};
-- 
2.17.1

