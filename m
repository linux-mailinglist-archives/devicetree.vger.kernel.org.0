Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00E6C3D7A99
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 18:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbhG0QLQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 12:11:16 -0400
Received: from finn.gateworks.com ([108.161.129.64]:58990 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S229540AbhG0QLP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 12:11:15 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1m8Pfd-005DjI-1R; Tue, 27 Jul 2021 16:11:05 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 2/5] arm64: dts: imx8mm-venice-gw700x: fix invalid pmic pin config
Date:   Tue, 27 Jul 2021 09:10:58 -0700
Message-Id: <20210727161101.32267-2-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210727161101.32267-1-tharvey@gateworks.com>
References: <20210727161101.32267-1-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GW700x PMIC does not have an interrupt. Remove the invalid pin
config.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
index f4eb827baed7..7043ac93205e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
@@ -278,8 +278,6 @@
 
 	pmic@69 {
 		compatible = "mps,mp5416";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_pmic>;
 		reg = <0x69>;
 
 		regulators {
@@ -444,12 +442,6 @@
 		>;
 	};
 
-	pinctrl_pmic: pmicgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
-		>;
-	};
-
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
-- 
2.17.1

