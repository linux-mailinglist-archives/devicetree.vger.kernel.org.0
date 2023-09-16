Return-Path: <devicetree+bounces-776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFA37A30AF
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 15:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8F79281D12
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 13:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EE713FFC;
	Sat, 16 Sep 2023 13:42:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2813AE6
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:42:09 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4FC19F
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 06:42:08 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-401b5516104so32979745e9.2
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 06:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1694871726; x=1695476526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0I8BJSJSrTtLmXJmST4e4bGFxlH1XXWk8PPdm7U7Gg=;
        b=WhtKFFu/eBi0je+J7DUmP5fqKL8Tmty1vmoZLt1y1KCbqaG1Sn0PhQdzBx++qAjRL7
         We+KwyIRbJQQ8FK7czYPY7LlCn3nYf00EhUA9/xswTzQp2nm8freLre8K9QbvWN3/sgY
         z1+obSS2u6pS4KDolk3miLCB8hjI8SBQ2/H3/GLrFdVR3Tk0HkJ/uupxCHJYf3Db4BPB
         b8lyGnEMFYB+JcxjtILLW9vfe1QDSCRwgxk/OKBi82WrAeH6jjkhV1DiSP+mV0xTNgyN
         p/x8vK9CEHUhkQZDl+ORtbFmVNM2kFQ/sRr81nK/2ZNHVh/kjbkTJQvnL93oHWbiPXX1
         ylrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694871726; x=1695476526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0I8BJSJSrTtLmXJmST4e4bGFxlH1XXWk8PPdm7U7Gg=;
        b=on2GwLwshy8dDgaDXmHJs3ifCFbgBOCKEhclw/p9ICjNS28fWyB2ZX1PP/aqWfDmhX
         6KJ9K3sTdb8qlfUJAO+yTKSHpwj6TKKqS+dT0EMGA6d6k3dKg05oiU4yXu2dRwJcA1pA
         2YUvLEnD/ZkZyMUQdSOnqDa8EW7HC0UPsKPK3L31dSyFl5gNAsKiqou6fhSAoYdlcKCl
         yP0bl8Mqspqdr26NR4E0bDPonuH/viwEk4weMwNgfE6mGTifiUUBMUG88EryYgDpTzku
         QriMAvEqoyUHl3wVht0tRTc9uhEVb9a4P/ASAt6NHWCELwZSOJ0PlHT9cCAIWo4vQ1Ma
         rzCw==
X-Gm-Message-State: AOJu0YznbI1xmrg5LsjJdcTCdst8Wh3pCSYpzv5zh7aTnmJpooly4Q86
	QAsioJ6iXwCwvGFLqWg8LiLdvg==
X-Google-Smtp-Source: AGHT+IELZqvkNVTmJMDr3SU0R3hrtymCvVzj/I4wfPIbQWyXKCLSTxr5HVR7XLjBaNJN+6WFp4BgDA==
X-Received: by 2002:a1c:7706:0:b0:401:2ee0:754a with SMTP id t6-20020a1c7706000000b004012ee0754amr4059600wmi.13.1694871726672;
        Sat, 16 Sep 2023 06:42:06 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8070:d84:9160:acd3:26fc:724e:a2dd])
        by smtp.gmail.com with ESMTPSA id f13-20020a5d568d000000b0031fd849e797sm7144278wrv.105.2023.09.16.06.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 06:42:06 -0700 (PDT)
From: Lukas Walter <lukas.walter@aceart.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Lukas Walter <lukas.walter@aceart.de>,
	Raymond Hackley <raymondhackley@protonmail.com>
Subject: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial device tree
Date: Sat, 16 Sep 2023 15:41:47 +0200
Message-ID: <20230916134147.163764-2-lukas.walter@aceart.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230916134147.163764-1-lukas.walter@aceart.de>
References: <20230916134147.163764-1-lukas.walter@aceart.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This dts adds support for Huawei Honor 5X / GR5 (2016) smartphone
released in 2015.

Add device tree with initial support for:

- GPIO keys
- Hall sensor
- SDHCI (internal and external storage)
- WCNSS (BT/WIFI)
- Sensors (accelerometer, proximity and gyroscope)
- Vibrator
- Touchscreen

Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/msm8939-huawei-kiwi.dts     | 238 ++++++++++++++++++
 2 files changed, 239 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8939-huawei-kiwi.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 2cca20563a1d..be9781c8e693 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -41,6 +41,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-thwc-uf896.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-thwc-ufi001c.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt88047.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-yiming-uz801v3.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-huawei-kiwi.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-samsung-a7.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-sony-xperia-kanuti-tulip.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-motorola-potter.dtb
diff --git a/arch/arm64/boot/dts/qcom/msm8939-huawei-kiwi.dts b/arch/arm64/boot/dts/qcom/msm8939-huawei-kiwi.dts
new file mode 100644
index 000000000000..19bd95233774
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/msm8939-huawei-kiwi.dts
@@ -0,0 +1,238 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+
+#include "msm8939-pm8916.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Huawei Honor 5X / GR5 (2016)";
+	compatible = "huawei,kiwi", "qcom,msm8939";
+	chassis-type = "handset";
+
+	aliases {
+		mmc0 = &sdhc_1; /* SDC1 eMMC slot */
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
+		serial0 = &blsp_uart2;
+	};
+
+	chosen {
+		stdout-path = "serial0";
+	};
+
+	reserved-memory {
+		reserved@84a00000 {
+			reg = <0x0 0x84a00000 0x0 0x1600000>;
+			no-map;
+		};
+	};
+
+	gpio-hall-sensor {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&gpio_hall_sensor_default>;
+		pinctrl-names = "default";
+
+		label = "GPIO Hall Effect Sensor";
+
+		event-hall-sensor {
+			label = "Hall Effect Sensor";
+			gpios = <&tlmm 69 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			linux,can-disable;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&gpio_keys_default>;
+		pinctrl-names = "default";
+
+		label = "GPIO Buttons";
+
+		button-volume-up {
+			label = "Volume Up";
+			gpios = <&tlmm 107 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+	};
+
+	usb_id: usb-id {
+		compatible = "linux,extcon-usb-gpio";
+		id-gpios = <&tlmm 110 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb_id_default>;
+		pinctrl-names = "default";
+	};
+};
+
+&blsp_i2c2 {
+	status = "okay";
+
+	accelerometer@1e {
+		compatible = "kionix,kx023-1025";
+		reg = <0x1e>;
+
+		vdd-supply = <&pm8916_l17>;
+		vddio-supply = <&pm8916_l6>;
+		pinctrl-0 = <&accel_int_default>;
+		pinctrl-names = "default";
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "1";
+	};
+
+	proximity@39 {
+		compatible = "avago,apds9930";
+		reg = <0x39>;
+
+		interrupt-parent = <&tlmm>;
+		interrupts = <113 IRQ_TYPE_EDGE_FALLING>;
+
+		vdd-supply = <&pm8916_l17>;
+		vddio-supply = <&pm8916_l6>;
+
+		led-max-microamp = <25000>;
+		amstaos,proximity-diodes = <0>;
+
+		pinctrl-0 = <&prox_irq_default>;
+		pinctrl-names = "default";
+	};
+};
+
+&blsp_i2c5 {
+	status = "okay";
+
+	touchscreen@1c {
+		compatible = "cypress,tt21000";
+
+		reg = <0x1c>;
+		interrupt-parent = <&tlmm>;
+		interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+
+		reset-gpios = <&tlmm 12 GPIO_ACTIVE_LOW>;
+
+		/*
+		 * NOTE: vdd is not directly supplied by pm8916_l16, it seems to be a
+		 * fixed regulator that is automatically enabled by pm8916_l16.
+		 */
+		vdd-supply = <&pm8916_l16>;
+		vddio-supply = <&pm8916_l16>;
+
+		pinctrl-0 = <&touchscreen_default>;
+		pinctrl-names = "default";
+	};
+};
+
+&blsp_uart2 {
+	status = "okay";
+};
+
+&pm8916_l8 {
+	regulator-min-microvolt = <2950000>;
+	regulator-max-microvolt = <2950000>;
+};
+
+&pm8916_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&pm8916_rpm_regulators {
+	pm8916_l16: l16 {
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	pm8916_l17: l17 {
+		regulator-min-microvolt = <2850000>;
+		regulator-max-microvolt = <2850000>;
+	};
+};
+
+&pm8916_vib {
+	status = "okay";
+};
+
+&sdhc_1 {
+	status = "okay";
+};
+
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_default &sdc2_cd_default>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_cd_default>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 38 GPIO_ACTIVE_HIGH>;
+
+	status = "okay";
+};
+
+&usb {
+	extcon = <&usb_id>, <&usb_id>;
+	status = "okay";
+};
+
+&usb_hs_phy {
+	extcon = <&usb_id>;
+};
+
+&wcnss {
+	status = "okay";
+};
+
+&wcnss_iris {
+	compatible = "qcom,wcn3620";
+};
+
+&tlmm {
+	accel_int_default: accel-int-default-state {
+		pins = "gpio115";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	gpio_hall_sensor_default: gpio-hall-sensor-default-state {
+		pins = "gpio69";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	gpio_keys_default: gpio-keys-default-state {
+		pins = "gpio107";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	prox_irq_default: prox-irq-default-state {
+		pins = "gpio113";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	sdc2_cd_default: sdc2-cd-default-state {
+		pins = "gpio38";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	touchscreen_default: touchscreen-default-state {
+		pins = "gpio12", "gpio13";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb_id_default: usb-id-default-state {
+		pins = "gpio110";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
+};
-- 
2.42.0


