Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECE8478F3B2
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 21:55:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242872AbjHaTz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 15:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238630AbjHaTz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 15:55:27 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC8AE72
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 12:55:22 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8DE6E86519;
        Thu, 31 Aug 2023 21:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1693511721;
        bh=EodmTQitUjpIfdmoqpgmoJiqjNshx8b9GgR+krLe03Y=;
        h=From:To:Cc:Subject:Date:From;
        b=PCgWk0Gz6paJVAfpK5yG0fw6BEaltsI/7zrD/qiIog18Zvesfi6mj12B4wXHeY9w/
         OQE5er/vhkrAip/6TTLT5DQ3CYPfVTUFxlW0qDFOphXU4YrFgfR+VILy60BKwd2qn3
         icNnEPwzQKB384e+6aI9O3B5511oFZObDcnpZFEdY7ZVV78s8rELcTobCKRc+lYqK+
         kWrLvl74DIi6PIq0g/qG3/22usgTSqszgKqeJ4YQIYrhbxBWUtvC0ebQJ5WtCI172z
         tzvdoh9KswvvfNutSIaGM3dokYDebzjT3vYvEAa1pb8noe4dSB42kM1ZZpS+P6uWJH
         qf+N1ld9rQ+mg==
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
Subject: [PATCH] arm64: dts: imx8mp: Simplify USB C on DH i.MX8M Plus DHCOM PDK3
Date:   Thu, 31 Aug 2023 21:55:09 +0200
Message-Id: <20230831195509.196883-1-marex@denx.de>
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

Remove the connector as well as all the links and only connect the
PTN5150 with xHCI controller. This is sufficient to implement the
role switching.

Furthermore, this makes resume work without hanging. Without this
patch, the platform would hang on resume of 'connector'.

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
 .../boot/dts/freescale/imx8mp-dhcom-pdk3.dts  | 58 ++-----------------
 1 file changed, 4 insertions(+), 54 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index a5d74b06f732d..b749e28e5ede5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -35,33 +35,6 @@ clk_xtal25: clock-xtal25 {
 		clock-frequency = <25000000>;
 	};
 
-	connector {
-		compatible = "usb-c-connector";
-		label = "USB-C";
-		data-role = "dual";
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-
-				usb_c_0_hs_ep: endpoint {
-					remote-endpoint = <&dwc3_0_hs_ep>;
-				};
-			};
-
-			port@1 {
-				reg = <1>;
-
-				usb_c_0_ss_ep: endpoint {
-					remote-endpoint = <&ptn5150_in_ep>;
-				};
-			};
-		};
-	};
-
 	gpio-keys {
 		compatible = "gpio-keys";
 
@@ -202,24 +175,10 @@ typec@3d {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ptn5150>;
 
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-
-						ptn5150_in_ep: endpoint {
-							remote-endpoint = <&usb_c_0_ss_ep>;
-						};
-					};
-
-					port@1 {
-						reg = <1>;
+				port {
 
-						ptn5150_out_ep: endpoint {
-							remote-endpoint = <&dwc3_0_ss_ep>;
-						};
+					ptn5150_out_ep: endpoint {
+						remote-endpoint = <&dwc3_0_ep>;
 					};
 				};
 			};
@@ -306,16 +265,7 @@ &usb_dwc3_0 {
 	usb-role-switch;
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		dwc3_0_hs_ep: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&usb_c_0_hs_ep>;
-		};
-
-		dwc3_0_ss_ep: endpoint@1 {
-			reg = <1>;
+		dwc3_0_ep: endpoint {
 			remote-endpoint = <&ptn5150_out_ep>;
 		};
 	};
-- 
2.40.1

