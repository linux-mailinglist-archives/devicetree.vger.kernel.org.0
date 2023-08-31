Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC9C878F274
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 20:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236642AbjHaSUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 14:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346953AbjHaSUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 14:20:52 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D5E10D7
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 11:20:37 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3D26A865A2;
        Thu, 31 Aug 2023 20:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1693506036;
        bh=/TL/kOCxYN4sOsGGALE7xzM5yuAr/QxDol+3B5IxeSw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=a6FnTZJnMt+T6prBpglKX5aE4ryGN6bYGaJVywO5JbnBivEbcASwfG5+mIaVeEUpQ
         8m+IpBZW5z1lj2OdCCkpu/crtnZdwErSTqIuIRkVZd7zi//dWW7x2sB/MsrcJE1iIy
         zX0+5mWruvlYE45M7QSClsCZwkMMtlFvnAh/iMAf8mLs9fKQa3KI0pRySt962cWUVZ
         hEjLYQBA2nYgnV2MDh+iHgxsxmYxJt4RfakU5xPVOIUg2To2JygwJC361DvgDkpjNV
         ow6kgOwEI/kpSrRTdY+fExCc/mFY8ZdFCCxvfGMYrhF2moJKVwlTe8PASCXQZszTg/
         mjXnB6hWRaf6w==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: imx8mp: Switch WiFI enable signal to mmc-pwrseq-simple on i.MX8MP DHCOM SoM
Date:   Thu, 31 Aug 2023 20:20:19 +0200
Message-Id: <20230831182020.154863-3-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230831182020.154863-1-marex@denx.de>
References: <20230831182020.154863-1-marex@denx.de>
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

The reset-gpio is connected to WL_REG_EN signal of the WiFi MAC, the
mmc-pwrseq-simple driver is better suited to operate this signal as
it is tied to the slot instead of the MAC, and it can enable the MAC
before the brcmfmac driver binds to it. Make use of the MMC power
sequencer.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 1644b56c3953d..df43741d04bb9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -57,6 +57,11 @@ reg_vdd_3p3v_awo: regulator-vdd-3p3v-awo {	/* VDD_3V3_AWO */
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "VDD_3P3V_AWO";
 	};
+
+	wlan_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &A53_0 {
@@ -543,6 +548,7 @@ &usdhc1 {
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
 	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	mmc-pwrseq = <&wlan_pwrseq>;
 	vmmc-supply = <&buck4>;
 	bus-width = <4>;
 	non-removable;
@@ -561,7 +567,6 @@ brcmf: bcrmf@1 {	/* muRata 2AE */
 		 * connected to the SoC, but can be connected on to
 		 * SoC pin on the carrier board.
 		 */
-		reset-gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.40.1

