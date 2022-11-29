Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F334563C1EC
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:10:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235131AbiK2OKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:10:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235250AbiK2OKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:10:10 -0500
Received: from smtp-out-03.comm2000.it (smtp-out-03.comm2000.it [212.97.32.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C5A46456C
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:09:45 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-03.comm2000.it (Postfix) with ESMTPSA id AF8D0B48EA5;
        Tue, 29 Nov 2022 15:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669730983;
        bh=7YAGlJa9hMh0rdTbhXdU19bvu65xO83SPl8RumouZf4=;
        h=From:To:Cc:Subject:Date;
        b=CeJXP/s/83pJK4oA9ebbQF8+UVoWb7B4QPu/+9E/UKp0uiooblEGfxF0/CgoKqXtP
         XNLosk8tG+GSgLyBJzhl0aT9HIkcV38hBYq1hLF4aDOSBMc0h3sL9FKvMi/dt2xq1R
         3O0VOC9wIX7j3yu7fTtD/BUIIkBiT6TBB2oV8N+I0izr3WGxqgPEgfhLTzBMEd0VnI
         FjM1fOIaLo1n/1GOA0tb/B0rtQyfWr/MM4VM90atn9+ZLqybAaEVtPOiCvG5vBWIQS
         qSINCI6rjA7XdjWx4zqE1C5/QGBIc7C2Tnm8t2xg/a/NjTSyjfRiAeM/FG07QU4gGk
         WZDepKzmIbWfw==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Stefan Eichenberger <stefan.eichenberger@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2] arm64: dts: imx8mm-verdin: enable hpd on hdmi-connector
Date:   Tue, 29 Nov 2022 15:09:35 +0100
Message-Id: <20221129140935.34428-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Add hot plug detect gpio to the HDMI connector.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
v2: Added missing signed-off-by
---
 arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
index bcab830c6e95..8cc8a80ea255 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
@@ -56,7 +56,11 @@ key-wakeup {
 	hdmi_connector: hdmi-connector {
 		compatible = "hdmi-connector";
 		ddc-i2c-bus = <&i2c2>;
+		/* Verdin PWM_3_DSI (SODIMM 19) */
+		hpd-gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
 		label = "hdmi";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwm_3_dsi_hpd_gpio>;
 		type = "a";
 		status = "disabled";
 	};
@@ -598,7 +602,7 @@ hwmon: hwmon@40 {
 	hdmi_lontium_lt8912: hdmi@48 {
 		compatible = "lontium,lt8912b";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_10_dsi>, <&pinctrl_pwm_3_dsi_hpd_gpio>;
+		pinctrl-0 = <&pinctrl_gpio_10_dsi>;
 		reg = <0x48>;
 		/* Verdin GPIO_9_DSI (LT8912 INT, SODIMM 17, unused) */
 		/* Verdin GPIO_10_DSI (SODIMM 21) */
-- 
2.25.1

