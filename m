Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18C6269B2E6
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:16:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbjBQTQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:16:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjBQTQK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:16:10 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E2133446
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:15:52 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 530C885C0A;
        Fri, 17 Feb 2023 20:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676661349;
        bh=gEU3mJVEXDASlr9eibB+Yu/upzRGoMgMYGfr7TBBBE0=;
        h=From:To:Cc:Subject:Date:From;
        b=n2F9Q3AD/QknGG4I3iD6ojzgXfsoSvyBmW+U+/ic/JjnsnrnVHR+11H7kYTk+G291
         vKFXZeAnN/VZHoUDjAKwlrIBraZ3zE77nbdEfQmZJOuFqCpDDPYzHA1cgMzTWf0q07
         iKO1UBoyG0VUq+aF9YzYs3V5c2azIAyj8nQqGBclPeqyPi5GrtLx1OjaD127Sdj6Ch
         /TJMDpLrLuwYen4ytfhFh7oIDfAa8I0MTWhOT98rs7J/Ox65PSvJD1aCMxHP3v4bwW
         ttl/kmI6EvrcLviSMDZeBIhIVcth0iY0gmjJURhbrRLXzUIxx8nE2S0EUDSzql/9mM
         98Gn53/7FVGBA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Fix LCDIF2 node clock order
Date:   Fri, 17 Feb 2023 20:15:38 +0100
Message-Id: <20230217191538.54810-1-marex@denx.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'axi' clock are the bus APB clock, the 'disp_axi' clock are the
pixel data AXI clock. The naming is confusing. Fix the clock order.

Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a19224fe1a6ad..2dd60e3252f35 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1131,8 +1131,8 @@ lcdif2: display-controller@32e90000 {
 				reg = <0x32e90000 0x238>;
 				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
 				clock-names = "pix", "axi", "disp_axi";
 				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
 						  <&clk IMX8MP_VIDEO_PLL1>;
-- 
2.39.1

