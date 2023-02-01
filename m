Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E932E686FB9
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbjBAUem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBAUek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:40 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA4F7374C
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:38 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmlCY-1oxMez0qms-00jqvE; Wed, 01 Feb 2023 21:34:19 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>
Subject: [PATCH 8/9] ARM: dts: imx28-ts4600: Convert to use label references
Date:   Wed,  1 Feb 2023 21:33:37 +0100
Message-Id: <20230201203338.9525-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Sy1nlieExUU4hqYrNt+jTcfS59biSLW40Dso9+qcEl1mAOjWchU
 hdIlD9334PkV6ob4VTbOBL3drp7pxmDUTwXrCapsyEHLHcPWVh/Xe0IiLhRgDvLS9A6/BwN
 ROHlo1qmFFWKOxkxS7fgfF6TkeIMadSgNhECHOqhF4Qh9gVmr8yzT4DwCQslP296Hti8F/8
 1+rSewawoJj507egRSvzw==
UI-OutboundReport: notjunk:1;M01:P0:eQdPpMPMiMI=;zVU7d9PAHfCvPgmGk0V9xv0KhgN
 +S87ScFzMSpcpSUatWwhRc/ljSWeKQ6NzzLDiIkK4FcxFeFyGBJS+PdRiiGzH85bmDTkmmgV4
 wwM8Cu4itfIAQi6PB9x+2rZdozIHZXdp/VFyFWFBQO6qNn/+y7Pwo0Lmj2xV0nbrTL/bTvnMr
 HnBdTOZqIZ2g6Ob9XBY6fdTVq1z2g+aAVbM5rOoa2p8DoSyobtdrcADlhPGgWLcZA4iguD+5v
 EVA0mBx1gpXZNCjV/J0urrLoGvxTkLk3upNFuwJYVe8CoNCvnmUKro66zNXNhTTjalvvC2a7s
 d1WKAwzg9tVbIvqQnIAuy4AoXkw7Uzq6PnUXg1oAFtixsO4Rx6knZAsGDyN7XwsSZsfNCYely
 JRdS9UiGTBv8PUeEYXDXkG0FDP2I//8Or9zloUPLgf0kSTRCKx7np46FoKFb5r2q4JuJgAr4y
 /Yz1Ds8tEdeyIiLJrSnQpD5sSHrk8eexjcDLo5s5/WRsZb6XGJvZINedFH+/EYc5OgZgX28Kn
 sa4RYgdRD+1tXQeoniRVI0tg/5LdY5Nk995tE3UlFCp4FezBmwSSyFizCMUFsfBK9FPrnJr9j
 07LxmG3fZMy2QDsSVeYWfRJpd0774SZ3ureSuVCxR3VjL4MmogWARrD7/swCeIJgec9H6klBS
 jHLG6H3x7y5aMzbM2X7myMkQUmgrbGjypPdawfwxMw==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This Technologic board file still use node name and unit address
to reference parts from the imx28.dtsi . This causes a lot of
redundancy. So use label references in order to make it easier
to maintain.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>
---
 arch/arm/boot/dts/imx28-ts4600.dts | 80 ++++++++++++++----------------
 1 file changed, 36 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-ts4600.dts b/arch/arm/boot/dts/imx28-ts4600.dts
index 0d58da1c0cc5..ae6ed5c41be3 100644
--- a/arch/arm/boot/dts/imx28-ts4600.dts
+++ b/arch/arm/boot/dts/imx28-ts4600.dts
@@ -18,50 +18,6 @@ memory@40000000 {
 		reg = <0x40000000 0x10000000>;   /* 256MB */
 	};
 
-	apb@80000000 {
-		apbh@80000000 {
-			ssp0: spi@80010000 {
-				compatible = "fsl,imx28-mmc";
-				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a
-					     &mmc0_sck_cfg
-					     &en_sd_pwr>;
-				broken-cd;
-				bus-width = <4>;
-				vmmc-supply = <&reg_vddio_sd0>;
-				status = "okay";
-			};
-
-			pinctrl@80018000 {
-
-				en_sd_pwr: en-sd-pwr@0 {
-					reg = <0>;
-					fsl,pinmux-ids = <
-						MX28_PAD_PWM3__GPIO_3_28
-					>;
-					fsl,drive-strength = <MXS_DRIVE_4mA>;
-					fsl,voltage = <MXS_VOLTAGE_HIGH>;
-					fsl,pull-up = <MXS_PULL_DISABLE>;
-				};
-
-			};
-		};
-
-		apbx@80040000 {
-			pwm: pwm@80064000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pwm2_pins_a>;
-				status = "okay";
-			};
-
-			duart: serial@80074000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&duart_pins_a>;
-				status = "okay";
-			};
-		};
-	};
-
 	reg_vddio_sd0: regulator-vddio-sd0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vddio-sd0";
@@ -72,3 +28,39 @@ reg_vddio_sd0: regulator-vddio-sd0 {
 	};
 
 };
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_a>;
+	status = "okay";
+};
+
+&pinctrl {
+	en_sd_pwr: en-sd-pwr@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_PWM3__GPIO_3_28
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm2_pins_a>;
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a
+		     &mmc0_sck_cfg
+		     &en_sd_pwr>;
+	broken-cd;
+	bus-width = <4>;
+	vmmc-supply = <&reg_vddio_sd0>;
+	status = "okay";
+};
-- 
2.34.1

