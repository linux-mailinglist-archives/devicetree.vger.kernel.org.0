Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D96936ABE9
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 17:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387972AbfGPPgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 11:36:50 -0400
Received: from inva021.nxp.com ([92.121.34.21]:49046 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387958AbfGPPgu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 11:36:50 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6FA50200055;
        Tue, 16 Jul 2019 17:36:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0A0E620001C;
        Tue, 16 Jul 2019 17:36:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D378402E7;
        Tue, 16 Jul 2019 23:36:34 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 04/15] arm64: dts: imx8: add lsio lpcg clocks
Date:   Tue, 16 Jul 2019 23:14:38 +0800
Message-Id: <1563290089-11085-5-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add lsio lpcg clocks

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v2:
 * Use old SCU clock binding temporarily to avoid build warning due to SCU
   clock cell will be changed to 2.
 * add power domain property
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 155 +++++++++++++++++++++++-
 1 file changed, 154 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index 00eaadb..0a779a8 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -4,12 +4,28 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 lsio_subsys: bus@5d000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
 
+	lsio_mem_clk: clock-lsio-mem {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <200000000>;
+		clock-output-names = "lsio_mem_clk";
+	};
+
+	lsio_bus_clk: clock-lsio-bus {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "lsio_bus_clk";
+	};
+
 	lsio_gpio0: gpio@5d080000 {
 		reg = <0x5d080000 0x10000>;
 		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
@@ -131,8 +147,145 @@ lsio_subsys: bus@5d000000 {
 		power-domains = <&pd IMX_SC_R_MU_13A>;
 	};
 
-	lsio_lpcg: clock-controller@5d400000 {
+	/* LPCG clocks */
+	lsio_lpcg: clock-controller-legacy@5d400000 {
 		reg = <0x5d400000 0x400000>;
 		#clock-cells = <1>;
 	};
+
+	pwm0_lpcg: clock-controller@5d400000 {
+		reg = <0x5d400000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM0_CLK>,
+			 <&clk IMX_LSIO_PWM0_CLK>,
+			 <&clk IMX_LSIO_PWM0_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM0_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm0_lpcg_ipg_clk",
+				     "pwm0_lpcg_ipg_hf_clk",
+				     "pwm0_lpcg_ipg_s_clk",
+				     "pwm0_lpcg_ipg_slv_clk",
+				     "pwm0_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_0>;
+	};
+
+	pwm1_lpcg: clock-controller@5d410000 {
+		reg = <0x5d410000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM1_CLK>,
+			 <&clk IMX_LSIO_PWM1_CLK>,
+			 <&clk IMX_LSIO_PWM1_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM1_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm1_lpcg_ipg_clk",
+				     "pwm1_lpcg_ipg_hf_clk",
+				     "pwm1_lpcg_ipg_s_clk",
+				     "pwm1_lpcg_ipg_slv_clk",
+				     "pwm1_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_1>;
+	};
+
+	pwm2_lpcg: clock-controller@5d420000 {
+		reg = <0x5d420000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM2_CLK>,
+			 <&clk IMX_LSIO_PWM2_CLK>,
+			 <&clk IMX_LSIO_PWM2_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM2_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm2_lpcg_ipg_clk",
+				     "pwm2_lpcg_ipg_hf_clk",
+				     "pwm2_lpcg_ipg_s_clk",
+				     "pwm2_lpcg_ipg_slv_clk",
+				     "pwm2_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_2>;
+	};
+
+	pwm3_lpcg: clock-controller@5d430000 {
+		reg = <0x5d430000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM3_CLK>,
+			 <&clk IMX_LSIO_PWM3_CLK>,
+			 <&clk IMX_LSIO_PWM3_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM3_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm3_lpcg_ipg_clk",
+				     "pwm3_lpcg_ipg_hf_clk",
+				     "pwm3_lpcg_ipg_s_clk",
+				     "pwm3_lpcg_ipg_slv_clk",
+				     "pwm3_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_3>;
+	};
+
+	pwm4_lpcg: clock-controller@5d440000 {
+		reg = <0x5d440000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM4_CLK>,
+			 <&clk IMX_LSIO_PWM4_CLK>,
+			 <&clk IMX_LSIO_PWM4_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM4_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm4_lpcg_ipg_clk",
+				     "pwm4_lpcg_ipg_hf_clk",
+				     "pwm4_lpcg_ipg_s_clk",
+				     "pwm4_lpcg_ipg_slv_clk",
+				     "pwm4_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_4>;
+	};
+
+	pwm5_lpcg: clock-controller@5d450000 {
+		reg = <0x5d450000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM5_CLK>,
+			 <&clk IMX_LSIO_PWM5_CLK>,
+			 <&clk IMX_LSIO_PWM5_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM5_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm5_lpcg_ipg_clk",
+				     "pwm5_lpcg_ipg_hf_clk",
+				     "pwm5_lpcg_ipg_s_clk",
+				     "pwm5_lpcg_ipg_slv_clk",
+				     "pwm5_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_5>;
+	};
+
+	pwm6_lpcg: clock-controller@5d460000 {
+		reg = <0x5d460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM6_CLK>,
+			 <&clk IMX_LSIO_PWM6_CLK>,
+			 <&clk IMX_LSIO_PWM6_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM6_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm6_lpcg_ipg_clk",
+				     "pwm6_lpcg_ipg_hf_clk",
+				     "pwm6_lpcg_ipg_s_clk",
+				     "pwm6_lpcg_ipg_slv_clk",
+				     "pwm6_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_6>;
+	};
+
+	pwm7_lpcg: clock-controller@5d470000 {
+		reg = <0x5d470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_LSIO_PWM7_CLK>,
+			 <&clk IMX_LSIO_PWM7_CLK>,
+			 <&clk IMX_LSIO_PWM7_CLK>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_LSIO_PWM7_CLK>;
+		bit-offset = <0 4 16 20 24>;
+		clock-output-names = "pwm7_lpcg_ipg_clk",
+				     "pwm7_lpcg_ipg_hf_clk",
+				     "pwm7_lpcg_ipg_s_clk",
+				     "pwm7_lpcg_ipg_slv_clk",
+				     "pwm7_lpcg_ipg_mstr_clk";
+		power-domains = <&pd IMX_SC_R_PWM_7>;
+	};
 };
-- 
2.7.4

