Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96755670C4B
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbjAQW7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:59:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbjAQW67 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:58:59 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553702123
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:39:47 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 29C9F85551;
        Tue, 17 Jan 2023 23:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673995185;
        bh=6oaauU88UnwPzedHQcv0utCbHO9NRzM4I9TQUf1GPTg=;
        h=From:To:Cc:Subject:Date:From;
        b=qL5LkaCop4gvnvn6/Tq3uPE8cqp8KH6LY3WfEVocdtEhcCEgooUfkdcYIgrM3w5Xi
         VpZzXq7r2myjNeeJs6otXssOq5Yehmukp9IhTAq+Fki98z6QqvtZEU24vL1KXURJ1n
         WI/UO7tk1Az+8tmIQmcIIhJPJs+T65Z12kjfe4E2DFnTAuHgQaGOcHFeO/muTWYyew
         Ageu7jX2QrbtCLQRTfCUmD1yJsKAuuXkNXQy6rSGMdQR8mg+w5K6B5jRoyAifiYA6d
         1pqhPhNEkTO3vR5Mnl+ThWCjNVYU5yF924GMBmwO9qRAK8xlltEJZ+arZzKEgSFVnG
         YpXhaG0bxJ8kA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Improve bluetooth UART on DH electronics i.MX8M Plus DHCOM
Date:   Tue, 17 Jan 2023 23:39:42 +0100
Message-Id: <20230117223942.130170-1-marex@denx.de>
X-Mailer: git-send-email 2.39.0
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

Use PLL1_80M instead of PLL3 to drive UART2 clock divided down to 80 MHz
instead of 64 MHz to obtain suitable block clock for exact 4 Mbdps, which
is the maximum supported baud rate by the muRata 2AE BT UART.

The difference here is that at 64 MHz UART block clock, the clock with are
divided by 16 (due to oversampling) to 4 MHz and the baud rate generator
then needs to be set to UBIR+1/UBMR+1 = 1/1 to yield 4 Mbdps . In case of
80 MHz UART block clock divided by 16 to 5 MHz, the baud rate generator
needs to be set to UBIR+1/UBMR+1 = 4/5 to yield 4 Mbdps .

Both options are valid and yield the same result, except using the PLL1_80M
output requires fewer clock tree changes, since the PLL1 already generates
the 80 MHz usable for UART, which frees the PLL3 for other uses.

Suggested-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 89266b386ac85..75ac4c91a5a40 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -516,14 +516,15 @@ &uart2 {
 	status = "okay";
 
 	/*
-	 * PLL3 at 320 MHz supplies UART2 root with 64 MHz clock,
-	 * which with 16x oversampling yields 4 Mbdps baud base,
+	 * PLL1 at 80 MHz supplies UART2 root with 80 MHz clock,
+	 * which with 16x oversampling yields 5 Mbdps baud base,
+	 * which can be well divided by 5/4 to achieve 4 Mbdps,
 	 * which is exactly the maximum rate supported by muRata
 	 * 2AE bluetooth UART.
 	 */
-	assigned-clocks = <&clk IMX8MP_SYS_PLL3>, <&clk IMX8MP_CLK_UART2>;
-	assigned-clock-parents = <0>, <&clk IMX8MP_SYS_PLL3_OUT>;
-	assigned-clock-rates = <320000000>, <64000000>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	assigned-clock-rates = <80000000>;
 
 	bluetooth {
 		pinctrl-names = "default";
-- 
2.39.0

