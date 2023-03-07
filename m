Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7ED6AF27D
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 19:53:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233413AbjCGSxg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 13:53:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233444AbjCGSxI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 13:53:08 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1381C9BE2A
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:41:14 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MwwuJ-1qW96B2ccV-00ySAw; Tue, 07 Mar 2023 19:40:24 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 8/9] ARM: dts: imx28-ts4600: Convert to use label references
Date:   Tue,  7 Mar 2023 19:40:06 +0100
Message-Id: <20230307184007.10672-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:5WLGbgZTmA1Vo4VXka+q/8M782OoT8v94EcFqdUMJEdO9Fat5Os
 wxtSXL/LL2camsTq6pXvC+XIuz1cVZPDnsIYSQsqUgW2koRmJuTKYhadc+l+MF+tbEwGPc6
 jxVjFlt7w2cB0wv1s/pxasn/IkTwDrbxypBirVQzKmWLE7cV7/0KJL7CW3DT/hWU2p/GX6f
 l9ltge0duje6UnZLxoH6g==
UI-OutboundReport: notjunk:1;M01:P0:6l01397pkaE=;2/pj1Lys1m8xko4wZ3sV+/WQK+y
 mX+6RrRSRjccuT0t/mBNq9Vs63L2LWXWOdGQffvU/TWgCcK2NDqqGWSxyLOASFhmG17knkZrT
 qsV4NC3s58o7ShMstjmbgD3Cmghp/2sT8rxU+hxIF+fWFD1HzShMLDlyTW4LEWenyQLqsabse
 S4awNG7Oot30ew7kAfuJt3ayu8kICpUmo2OITbBItaZRl4BjeLdiP+6xGJ0e2W7jGWfWO+TKf
 huv3JWcUYqWqyQMj+SruDM75k/eSEv/SnK6jeEzxElgpqSAr2rxD113OLpOu7NcOdbh6WhbJO
 9i+sBtuTnge474Nwm64WrhvG51i1K89tREP7eJeV4p+JgmzL81SjC/9mXgtrBfk74GrfH3zRp
 Zg8brvyKfm0Z+HOv6wXxJo3EoJf2y3BACgMvIGdCuNE2a7kpAcfrcf4w9Y19t16wqtoxWkmbn
 8LprG7RsrVQ2b4uM0wa6qe3TedhHHGCQTVujAL0of1+bQPi773tBgElYpN4AS0Oub9sFwpvcP
 KcHfKwR1c10Iwns12ZTfDK2XFWhTBqY4EfoEka0Pzk8crXae5E47tJ66bSfLpeMc64VFn+4ZQ
 T/zeLrDpBZFevIjAxbswHpDJTSwTHB9kUlGeReB7guCgxVptNSesc2A1u5KEDDihhzcUpDlvq
 u383Ko/Uz5lUp1vyNHVe89GJoS3wfWHicflUHgTHWw==
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

