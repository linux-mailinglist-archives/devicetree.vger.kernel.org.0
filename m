Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA66E776CFD
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 02:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbjHJANr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 20:13:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbjHJANq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 20:13:46 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8A6BE5F
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 17:13:39 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0CCCA860F1;
        Thu, 10 Aug 2023 02:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1691626416;
        bh=G43sbks2Yr21y2TJAqQdzhxP8jBBJ/21oycX/OOnKS0=;
        h=From:To:Cc:Subject:Date:From;
        b=AvBpUKLNreeYtZvg8PLWXKehVmz0s3ZCS1WhY8FM+uTgArBRLXkdE3SNEPQbN8KTC
         2GZfNRvJX++gbMGI3o4Bilo7TQpQbyqpHdE1t0AUVl+dMVV3jfyRxlGFxgH8OswGCZ
         D9G/cOCockW9HvJ7P+t2+JlZpOwrCuRRdfBSpyurr9NyeVTJSh8kuH3GnmLCmglOVL
         wph2bAQg8gEjEMtWIP5itT1QvbVlVel5alyS6nBfFRE8CF+p520zOKF6Ac3U1iRIx1
         Hmbva+snFuMsA2NUecbyKHK8J7q3JD2QPU9pkcTMkFbcakq92+rg6CfpI3omeCihjU
         vSy9BSYsK0B3A==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Li <Frank.Li@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Improve VPU clock configuration
Date:   Thu, 10 Aug 2023 02:13:20 +0200
Message-Id: <20230810001320.626744-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update VPU clock according to reference manual to improve performance.
i.MX 8M Plus Applications Processor Reference Manual, Rev. 1, 06/2021

Table 5-1. Clock Root Table (continued) reads as follows:
Clock Root ............... Max Freq (MHz)
VPU_BUS_CLK_ROOT ......... 800
VPU_G1_CLK_ROOT .......... 800
VPU_G2_CLK_ROOT .......... 700

5.1.5.1 Input Clocks
Input Clock .............. Frequency (MHz)
VPU_PLL_CLK .............. 800

The VPU G1 and VPU bus is now supplied from PLL1 which provides 800 MHz
on one of its outputs, the VPU G2 is supplied from VPU PLL with 700 MHz
which is a perfect fit for this setup. This also matches the NXP kernel
fork configuration.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frank Li <Frank.Li@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
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
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6f2f50e1639c3..77974bd6da63a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1928,8 +1928,8 @@ vpu_g1: video-codec@38300000 {
 			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk IMX8MP_CLK_VPU_G1_ROOT>;
 			assigned-clocks = <&clk IMX8MP_CLK_VPU_G1>;
-			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
-			assigned-clock-rates = <600000000>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+			assigned-clock-rates = <800000000>;
 			power-domains = <&vpumix_blk_ctrl IMX8MP_VPUBLK_PD_G1>;
 		};
 
@@ -1939,8 +1939,8 @@ vpu_g2: video-codec@38310000 {
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk IMX8MP_CLK_VPU_G2_ROOT>;
 			assigned-clocks = <&clk IMX8MP_CLK_VPU_G2>;
-			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
-			assigned-clock-rates = <500000000>;
+			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
+			assigned-clock-rates = <700000000>;
 			power-domains = <&vpumix_blk_ctrl IMX8MP_VPUBLK_PD_G2>;
 		};
 
@@ -1956,8 +1956,8 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
 				 <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
 			clock-names = "g1", "g2", "vc8000e";
 			assigned-clocks = <&clk IMX8MP_CLK_VPU_BUS>, <&clk IMX8MP_VPU_PLL>;
-			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
-			assigned-clock-rates = <600000000>, <600000000>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+			assigned-clock-rates = <800000000>, <700000000>;
 			interconnects = <&noc IMX8MP_ICM_VPU_G1 &noc IMX8MP_ICN_VIDEO>,
 					<&noc IMX8MP_ICM_VPU_G2 &noc IMX8MP_ICN_VIDEO>,
 					<&noc IMX8MP_ICM_VPU_H1 &noc IMX8MP_ICN_VIDEO>;
-- 
2.40.1

