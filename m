Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C29F63C2EC
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235530AbiK2Oog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:44:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234912AbiK2Oog (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:44:36 -0500
Received: from smtp-out-01.comm2000.it (smtp-out-01.comm2000.it [212.97.32.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 793D52717F
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:44:35 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-01.comm2000.it (Postfix) with ESMTPSA id 8DA8D843CBE;
        Tue, 29 Nov 2022 15:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669733074;
        bh=Ane6xT0USg1n2hwSTiqU2oGaF6O2VGRPsOvULlULlTY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=JEjDg+WZ5MHOvj3rwpYBoxW7+0XvZuvB6EsTUmOuRKm6ABzdO2jPkkxfhaH1nT2L6
         9aQUqmvrN3A03AYnZkNmwFP5mF9/PbOBMU5kFbNlTx+uSi50G0Gq+iEFuYYVtaZwYq
         fbDfmelFI9yfisAKJ9cJlWPirXmLvfdkHNgCC/o7XNc5BpN69Uio2eUYWhD/l/MOgw
         bdMepABMq29pD7ecNdolqfsrTI7jIK4F32Ty1f7Geh9Y3eoxPtBqrL0lcHy3VyVrAy
         dpJ1/NB4UXeEKtsGMU3eqhUASihdF+bcdNY+7ufe1CkvWNyZb9bB/cIY4NjVgsfa8A
         4kYZ4z0Ef2Gkg==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Max Krummenacher <max.krummenacher@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, laurent.pinchart@ideasonboard.com,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 1/2] arm64: dts: imx8mp-verdin: add dsi to hdmi functionality
Date:   Tue, 29 Nov 2022 15:44:11 +0100
Message-Id: <20221129144412.37497-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129144412.37497-1-francesco@dolcini.it>
References: <20221129144412.37497-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Max Krummenacher <max.krummenacher@toradex.com>

Add the hdmi connector present on the dsi to hdmi adapter now
required by the upstream lontium bridge driver.
The dsi to hdmi adapter is enabled in an device tree overlay.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index 6a1890a4b5d8..c9c64433cf70 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -60,6 +60,18 @@ button-wakeup {
 		};
 	};
 
+	hdmi_connector: hdmi-connector {
+		compatible = "hdmi-connector";
+		ddc-i2c-bus = <&i2c2>;
+		/* Verdin PWM_3_DSI (SODIMM 19) */
+		hpd-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
+		label = "hdmi";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwm_3_dsi_hpd_gpio>;
+		type = "a";
+		status = "disabled";
+	};
+
 	/* Carrier Board Supplies */
 	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
@@ -701,7 +713,7 @@ hwmon: hwmon@40 {
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

