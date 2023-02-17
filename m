Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5818969B302
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:25:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbjBQTZ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:25:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBQTZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:25:56 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0AD553EE5
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:25:55 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4579A85CA6;
        Fri, 17 Feb 2023 20:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676661954;
        bh=+h0bvskE8xVAsdxYs3y1ZUYQC/591tJG8NsU+2PaOqg=;
        h=From:To:Cc:Subject:Date:From;
        b=ckV55D86a4hQ6JOu1Rqr3MbUF/PgWzDr1qd5Lkz+Vo9npwmYo2zYxMgQfYg9SfxMN
         8iLc1oqoHz5rTEQ4I6reA2+5eAvQo+WGylFPL5c5eiOhSWjzdGIh+1GzQix1o4MpEL
         gHYPVTJO0YR5bNTEX1kAgorxdEzW7ozEWjcwbTap8zucq2OOmCarYl5/tAcUEkSs96
         BeOn2MqoHxsMDoXSXG/Bh8g9TcCXqLLs/J/KMdnFfxLPmh4A/VfohuQ0PzNs9dWQj9
         suGMz4e5w0xwLHvmy0jqiGbGBsw31pF/qWxyYuHVU2Zv8XnO7cF7k4VfKVrdZAqWce
         It1dWTK05ZAfw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com
Subject: [PATCH] arm64: dts: imx8mp: Update GPIO M to CLKOUT1 on DH electronics i.MX8M Plus DHCOM and PDK2
Date:   Fri, 17 Feb 2023 20:25:45 +0100
Message-Id: <20230217192545.61714-1-marex@denx.de>
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

The GPIO M SoM pin is connected to CLKOUT1, while CLKOUT2 is used as a supply
for TC9595 bridge chip clock. Update the comment. No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index fdf18b7f208d5..b657ac6adddbe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -173,7 +173,7 @@ &iomuxc {
 	/*
 	 * GPIO_A,B,C,D are connected to buttons.
 	 * GPIO_E,F,H,I are connected to LEDs.
-	 * GPIO_M is connected to CLKOUT2.
+	 * GPIO_M is connected to CLKOUT1.
 	 */
 	pinctrl-0 = <&pinctrl_hog_base
 		     &pinctrl_dhcom_g &pinctrl_dhcom_j
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 9cdd4234c4cae..cc8e086ff7b63 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -547,7 +547,7 @@ &pinctrl_dhcom_a &pinctrl_dhcom_b &pinctrl_dhcom_c
 		     &pinctrl_dhcom_d &pinctrl_dhcom_e &pinctrl_dhcom_f
 		     &pinctrl_dhcom_g &pinctrl_dhcom_h &pinctrl_dhcom_i
 		     &pinctrl_dhcom_j &pinctrl_dhcom_k &pinctrl_dhcom_l
-		     /* GPIO_M is connected to CLKOUT2 */
+		     /* GPIO_M is connected to CLKOUT1 */
 		     &pinctrl_dhcom_int>;
 	pinctrl-names = "default";
 
-- 
2.39.1

