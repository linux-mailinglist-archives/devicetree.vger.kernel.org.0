Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4866CABE6
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 19:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjC0Rfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 13:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbjC0Rfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 13:35:41 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6DA10DB
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:35:40 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkm-0002dR-7a; Mon, 27 Mar 2023 19:35:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkl-00783Z-Kf; Mon, 27 Mar 2023 19:35:31 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkk-008Tz0-UV; Mon, 27 Mar 2023 19:35:30 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: imx8mp: Add GPT blocks
Date:   Mon, 27 Mar 2023 19:35:26 +0200
Message-Id: <20230327173526.851734-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2560; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=Ir+1mLJDPzLO2B6s08AGZpt7TFEoOeiRCnmiT0adxLo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkIdPcZ4GEgjqa88gXsXdYm1KpJlcf2OA82pxfq 3WxD4fpAZiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCHT3AAKCRCPgPtYfRL+ TpiiB/0Wr5Gxms5TK5YsC5TV8hsOacj+7dNs2ADQ3NeXn/+JA5zB3H8B7tOD5otrLFo7UcuKpA0 E+mCDcHX/Z81vZqm0IYYUX2OJVw7/fjUhzoV3Y3QyBRmPQI/P451AaVLdQqzbix7D4ADQsi639k wG0PEBansU/Xd6Epgi6W9iJhtx1gtb3ChWXHJbn4j3pe8iEH34phJaUizZr3ntXqeK0tJDUtI90 T+pX9wUQ39eQnsv3ruTAAQ/4gl0fh/M/164SuB29MK66+Ic1vVXbik0NydYaBoldrumM8/sk57A kkjijH1Lh7hHesQjdDRTBzyQadIexbZwAuoW8zCPjjkcTX8Z
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP includes the same GPT blocks as the i.MX6DL. Add all 6
instances.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 48 +++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a19224fe1a6a..910534624beb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -409,6 +409,30 @@ wdog3: watchdog@302a0000 {
 				status = "disabled";
 			};
 
+			gpt1: timer@302d0000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302d0000 0x10000>;
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT1_ROOT>, <&clk IMX8MP_CLK_GPT1>;
+				clock-names = "ipg", "per";
+			};
+
+			gpt2: timer@302e0000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302e0000 0x10000>;
+				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT2_ROOT>, <&clk IMX8MP_CLK_GPT2>;
+				clock-names = "ipg", "per";
+			};
+
+			gpt3: timer@302f0000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302f0000 0x10000>;
+				interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT3_ROOT>, <&clk IMX8MP_CLK_GPT3>;
+				clock-names = "ipg", "per";
+			};
+
 			iomuxc: pinctrl@30330000 {
 				compatible = "fsl,imx8mp-iomuxc";
 				reg = <0x30330000 0x10000>;
@@ -722,6 +746,30 @@ system_counter: timer@306a0000 {
 				clocks = <&osc_24m>;
 				clock-names = "per";
 			};
+
+			gpt6: timer@306e0000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x306e0000 0x10000>;
+				interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT6_ROOT>, <&clk IMX8MP_CLK_GPT6>;
+				clock-names = "ipg", "per";
+			};
+
+			gpt5: timer@306f0000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x306f0000 0x10000>;
+				interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT5_ROOT>, <&clk IMX8MP_CLK_GPT5>;
+				clock-names = "ipg", "per";
+			};
+
+			gpt4: timer@30700000 {
+				compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";
+				reg = <0x30700000 0x10000>;
+				interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_GPT4_ROOT>, <&clk IMX8MP_CLK_GPT4>;
+				clock-names = "ipg", "per";
+			};
 		};
 
 		aips3: bus@30800000 {
-- 
2.39.2

