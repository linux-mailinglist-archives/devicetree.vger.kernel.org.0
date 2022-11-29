Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2996663C1CF
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:06:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233851AbiK2OGT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:06:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234979AbiK2OGE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:06:04 -0500
Received: from smtp-out-05.comm2000.it (smtp-out-05.comm2000.it [212.97.32.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63FFA2B273
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:06:00 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-05.comm2000.it (Postfix) with ESMTPSA id 9EEB2825CF7;
        Tue, 29 Nov 2022 15:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669730757;
        bh=ppnWKo+T2iOXu6K5xdyOO9k93h0u1SwJWycpsdSijtA=;
        h=From:To:Cc:Subject:Date;
        b=Mt/6GngWTUJeapkqa0kpwYYbeRzGisQhXObMKrgStu6ui9NjrW7JViNl2/yvgXiW+
         /8FBsDdw2t1VtLjkTLC1O8ZAwpGFHQlcOQrcZokqAzpc8yIIvE2eelUBAJzf2D81kM
         Xs8r0GaASTaT2442QymF+nT0jurvuCyeYm3kKmMEYkYggq2ezZdzxKF6RgdR3Zg/QU
         x2eGJmDq74RtzXy9pUiE2ETwDmF8KyqPEFv/QbW9z+VmzyssCpFXbdpcWC5om5674e
         817Z5Ibfp1K2pGUxXmDxFpURXzyNsvxHb5rSixtbYBD+tTV8MpTdPVeUpbGkSTrkxq
         eR7hv+KMHhaZw==
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
        devicetree@vger.kernel.org
Subject: [PATCH v1] arm64: dts: imx8mm-verdin: enable hpd on hdmi-connector
Date:   Tue, 29 Nov 2022 15:05:29 +0100
Message-Id: <20221129140529.33782-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
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

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Add hot plug detect gpio to the HDMI connector.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
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

