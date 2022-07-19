Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50FF357960F
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 11:19:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237217AbiGSJSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 05:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237200AbiGSJSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 05:18:11 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C724E2717B
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:08 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b26so20664884wrc.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TRd88bmoaCjMAcqLnxdFqKwkJo4v+suKXOwacUANYDU=;
        b=027zgYwc56Rmov9QaLTvH/fZZwiVK2cJ2/X1nsSiw89Kb4sxCMMJ4lNCzbj0M5LID+
         STHRxjwiInZyalKlA2i2DH6Qyx3vSr/ybK1UOuMS/iOXkz2h9fkNzTjG2Hl7h5KyDfvt
         JQr7kdEhVM4rCY6/+F/wAF144vDU8P3QkpFr0e0m2BcRmUcAAbJb0kOVyX+RcpCtedvS
         +f/lF1LGxTUHNhWKW1FiTW2xSyxocHsj1rVvIav8nMnhNCsA5eZlkDK0L/meOdiyoUES
         iBhkjAOBIqXIqCZDPo9At1YmjHg4wbKa0oqVpQ9O6vSKj4w3rzqzghVzutHxT1xJSza1
         mMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TRd88bmoaCjMAcqLnxdFqKwkJo4v+suKXOwacUANYDU=;
        b=ZnKIktU5mTLDd5Q8EOz3HVrYK1BjRvKOqYeAKhVEBxprry3UWQNmeHt6NOIsy+m/Tn
         +gSu0bXq5DI5qO3bwXLFAGkrO3E2QZ5aRaZ5h+Q40sgSFD1WwaS/RfgPjJI5tQvCwrwp
         qQqEIs24QWqn3iwk2FR7klZLl8Kvpdl44b5zBRgsofiW8EqA9hJu9vEhexPsmN3vDDKT
         zeYhe2NksasTcFuVh3CZRscEGZbsPbrENQwFfDrubAekPTBCoBXaR+dAItEe9T1tEkBK
         kWxNH5cvscZfm7fJKWbJLm6Gm8+f5hZYAs3EyRRFhqM/E/A6UaepIE7Uwe8vaUDVzdcv
         ONiQ==
X-Gm-Message-State: AJIora+ODLHR8UrwGVi/1g2OCy5A+nXvmmrzGJEzB5D2UZk1wfkNKBM5
        IAhDuRqqfCRFzPmXCL5tflpojw==
X-Google-Smtp-Source: AGRyM1tmLqnd9fGr/8qZMgWMoJoYZLq+Y3zuYom+uvINEGQVmA1OSAfOpmI9ytVAZ4EOehhnuvFt1Q==
X-Received: by 2002:adf:f2c6:0:b0:21e:40cc:402a with SMTP id d6-20020adff2c6000000b0021e40cc402amr867521wrp.644.1658222288325;
        Tue, 19 Jul 2022 02:18:08 -0700 (PDT)
Received: from localhost.localdomain (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id bk19-20020a0560001d9300b0021d63fe0f03sm12944281wrb.12.2022.07.19.02.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 02:18:07 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.c, lee.jones@linaro.org, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 11/14] arm64: dts: ti: Add TI TPS65219 PMIC support for AM642 SK board.
Date:   Tue, 19 Jul 2022 11:17:39 +0200
Message-Id: <20220719091742.3221-12-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220719091742.3221-1-jneanne@baylibre.com>
References: <20220719091742.3221-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support fot the TI Power Management IC TPS65219
on the AM642 SKEVM board

Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 104 +++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 59f506cbd275..4daf55b9d61a 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -150,6 +150,20 @@
 		vin-supply = <&com8_ls_en>;
 		gpio = <&main_gpio0 48 GPIO_ACTIVE_HIGH>;
 	};
+
+	vsel_sd_nddr: gpio-regulator {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vsel_sd_nddr_pins_default>;
+		regulator-name = "tps65219-LDO1-SEL-SD";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&ldo1_reg>;
+		gpios = <&main_gpio0 45 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+	};
 };
 
 &main_pmx0 {
@@ -172,6 +186,13 @@
 		>;
 	};
 
+	main_i2c0_pins_default: main-i2c0-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0260, PIN_INPUT_PULLUP, 0) /* (A18) I2C0_SCL */
+			AM64X_IOPAD(0x0264, PIN_INPUT_PULLUP, 0) /* (B18) I2C0_SDA */
+		>;
+	};
+
 	main_i2c1_pins_default: main-i2c1-pins-default {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
@@ -258,6 +279,12 @@
 			AM64X_IOPAD(0x00bc, PIN_INPUT, 7) /* (U8) GPIO0_46 */
 		>;
 	};
+
+	vsel_sd_nddr_pins_default: vsel-sd-nddr-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x00b8, PIN_INPUT, 7) /* (Y7) PRG1_PRU0_GPO0.GPIO0_45 */
+		>;
+	};
 };
 
 &mcu_uart0 {
@@ -301,6 +328,83 @@
 	status = "disabled";
 };
 
+&main_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c0_pins_default>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	tps65219: pmic@30 {
+		compatible = "ti,tps65219";
+		reg = <0x30>;
+		system-power-controller;
+
+		buck1-supply = <&vcc_3v3_sys>;
+		buck2-supply = <&vcc_3v3_sys>;
+		buck3-supply = <&vcc_3v3_sys>;
+		ldo1-supply = <&vcc_3v3_sys>;
+		ldo2-supply = <&buck2_reg>;
+		ldo3-supply = <&vcc_3v3_sys>;
+		ldo4-supply = <&vcc_3v3_sys>;
+
+		regulators {
+			buck1_reg: buck1 {
+				regulator-name = "VDD_CORE";
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck2_reg: buck2 {
+				regulator-name = "VCC1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck3_reg: buck3 {
+				regulator-name = "VDD_LPDDR4";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: ldo1 {
+				regulator-name = "VDDSHV_SD_IO_PMIC";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allow-bypass;
+			};
+
+			ldo2_reg: ldo2 {
+				regulator-name = "VDDAR_CORE";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: ldo3 {
+				regulator-name = "VDDA_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: ldo4 {
+				regulator-name = "VDD_PHY_2V5";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
 &main_i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c1_pins_default>;
-- 
2.17.1

