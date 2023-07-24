Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B77FB760232
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 00:23:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231428AbjGXWXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 18:23:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231429AbjGXWXS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 18:23:18 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6535F1BD7
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 15:22:52 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 814FA867EF;
        Tue, 25 Jul 2023 00:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1690237371;
        bh=gun2RjExJqK2uUQaPkrEMyLsRl6lLc1CguLYjWiCDF4=;
        h=From:To:Cc:Subject:Date:From;
        b=mOSg0JSSqJht+TENyQi8KMLVpdXdoXhvo7BujV7vn8Quopge8SEdhpE+4+7cOv7G3
         1a81MLfSkhgCNf7mcaYFjbNvszDt14zzc97kkYpcoFn7JPSTbf8tOoCfbM7UwmJy+e
         XfK6VEI+05OqjaXQfXXMutZWFR+UK7HOgmdD5QgOjybI7fYiIkErQey/EObHOEvx6G
         OcGoxe3Dj7bfTZR5poOAE9FQc+B24CYMYciJzkKrXSqDNnveX8U14dx1cgMIkewkA3
         oJdSyHT/l5nOoi135+3Y51T6tA3VSMgYjpJ0acs9koYxA0UjDPpWxU4aP4agkvXzBl
         zc//ZmUeeyZhg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mn: Drop CSI1 PHY reference clock configuration
Date:   Tue, 25 Jul 2023 00:22:47 +0200
Message-Id: <20230724222247.162806-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CSI1 PHY reference clock are limited to 125 MHz according to:
i.MX 8M Nano Applications Processor Reference Manual, Rev. 2, 07/2022
Table 5-1. Clock Root Table (continued) / page 319
Slice Index n = 123 .

Currently those IMX8MN_CLK_CSI1_PHY_REF clock are configured to be
fed directly from 1 GHz PLL2 , which overclocks them . Instead, drop
the configuration altogether, which defaults the clock to 24 MHz REF
clock input, which for the PHY reference clock is just fine.

Fixes: ae9279f301b5 ("arm64: dts: imx8mn: Add CSI and ISI Nodes")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Jun <jun.li@nxp.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9869fe7652fca..aa38dd6dc9ba5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -1175,10 +1175,8 @@ mipi_csi: mipi-csi@32e30000 {
 				compatible = "fsl,imx8mm-mipi-csi2";
 				reg = <0x32e30000 0x1000>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-				assigned-clocks = <&clk IMX8MN_CLK_CAMERA_PIXEL>,
-						  <&clk IMX8MN_CLK_CSI1_PHY_REF>;
-				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_1000M>,
-							  <&clk IMX8MN_SYS_PLL2_1000M>;
+				assigned-clocks = <&clk IMX8MN_CLK_CAMERA_PIXEL>;
+				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_1000M>;
 				assigned-clock-rates = <333000000>;
 				clock-frequency = <333000000>;
 				clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>,
-- 
2.40.1

