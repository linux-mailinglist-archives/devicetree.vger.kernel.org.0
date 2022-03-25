Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA8D84E7800
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:37:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235194AbiCYPgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377221AbiCYPdQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:33:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9191C1AF1D
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:28:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DA52460A76
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:28:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C8FAC36AE3;
        Fri, 25 Mar 2022 15:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648222118;
        bh=8T7ayo2DFmY5/GapiJuUagoFTrppEfE7ODMb7Q9gk6c=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=b/unoUPVgGFfIhqBgnDXoWBtvtNGW+yIh//WWOQZ0F4GEzcaHOxNfPwVsjT6GWUZo
         Zt/KZQgGZwuDBSpOCm+ZS8M3P3epK6gU/SsDH+fE5u4vhxGI3dUP53KME5Xwk2GGgu
         fgJhALvTF05TO0OYrG8KmBKjoX8KEZahXtVWM/3iGBJCO2QB4bLiwgOWjZFTPcs69r
         GNC4Vg6FZipsbHcgp2wboUdtnCdCWZpDkfDONFWzWv0dgIx4gFRg+IdezVFH3pIdZz
         M9Bm26oD94+o5Zx8Cwsr0Vrrb96uUEdIb9/YOvNCDORmh7BavjpYECGt58qUrw6y37
         0Yt4+VglBatyw==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v1 2/2] ARM: dts: at91: Describe regulators on at91sam9g20ek
Date:   Fri, 25 Mar 2022 15:27:15 +0000
Message-Id: <20220325152715.1597893-3-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220325152715.1597893-1-broonie@kernel.org>
References: <20220325152715.1597893-1-broonie@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1923; h=from:subject; bh=8T7ayo2DFmY5/GapiJuUagoFTrppEfE7ODMb7Q9gk6c=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiPd9S+Yaw6iywbVEowt+x7l3ydWfR0WdLuOWLiDtW sru9UCmJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYj3fUgAKCRAk1otyXVSH0AabB/ 0QxMbBJMVJXlm6/nBoz0h8hnvihpU761qOjhRWKYWzaAigYvp2lErbo4+I4OWY+QDzt+BrerLSPwjY 0TjWpJn/BWqUEfBmB6GvaZMyrwF5fmoI5f5M0ZgfQh0PFXEI0NKHbQSnTe5v9x+ZztqJVhxSXKcVWn oS3pQSzf0O+8WRsKoZNv3Gn9C9jlh2u1z6mNys5VGv3YdRkXbGaIQXXY46zEhsAvEOTmsXSBDx+KGW cQqpEJ7GXaktJ/O/llxFbxpteCji257mFunYuryhdxL0uL5+nvgxQErt0wAI/q1D+lIHCoJSdEr+KS qfoDDxV7W3OBm3aUJE+iVM/EXSSU1j
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The at91sam9g20ek has no software controllable regulators, only some fixed
discrete regulators, but they are there and currently the wm8731 driver
does try to use them. Show the supplies in the DT and map them for the
wm8731 so things start up cleanly.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 36 +++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
index ca03685f0f08..88cf3ab40aa6 100644
--- a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
+++ b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
@@ -225,6 +225,11 @@ wm8731: wm8731@1b {
 			clock-names = "mclk";
 			assigned-clocks = <&pmc PMC_TYPE_SYSTEM 8>;
 			assigned-clock-rates = <12000000>;
+
+			HPVDD-supply = <&vcc_dac>;
+			AVDD-supply = <&vcc_dac>;
+			DCVDD-supply = <&reg_3v3>;
+			DBVDD-supply = <&reg_3v3>;
 		};
 	};
 
@@ -260,4 +265,35 @@ sound {
 		atmel,ssc-controller = <&ssc0>;
 		atmel,audio-codec = <&wm8731>;
 	};
+
+	reg_5v: fixedregulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_3v3: fixedregulator1 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		vin-supply = <&reg_5v>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_1v: fixedregulator2 {
+		compatible = "regulator-fixed";
+		regulator-name = "1V";
+		vin-supply = <&reg_5v>;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+	};
+
+	vcc_dac: fixedregulator3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_DAC";
+		vin-supply = <&reg_3v3>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 };
-- 
2.30.2

