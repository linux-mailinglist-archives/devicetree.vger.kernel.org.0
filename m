Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 430FD6548A6
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 23:40:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235525AbiLVWkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 17:40:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235845AbiLVWkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 17:40:21 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A68D27CF8
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671748729;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5VqO/oai3keL8dEjX/YRNHEFAUJ+v+2KFPvz+aMB4Ww=;
        b=NrOk118NASsBtx3pk55/srrWkkeukdN1SlprOmtK0ygFRxxRhA8EAPr8hjmMAJcw5tGC1z
        G+Pg0PuKwzl5kpgAJ3XAl1QAhFvznZlBcwOc7Qv3fE4aTnJUztIZ4F3ALWMVHjchvPG4uE
        Kb1OwRadxJTDafQQC2r9DuYQtvPs5Hg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-596-mP4D20_aPoiAPUGfZ-0zCw-1; Thu, 22 Dec 2022 17:38:48 -0500
X-MC-Unique: mP4D20_aPoiAPUGfZ-0zCw-1
Received: by mail-wm1-f71.google.com with SMTP id h64-20020a1c2143000000b003d65ff910e1so2901639wmh.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5VqO/oai3keL8dEjX/YRNHEFAUJ+v+2KFPvz+aMB4Ww=;
        b=GMGyGzoyG0jhH8DKrjtVJEWjVeHGlRT6yiZCLHSFWMyxemYcqX0Q2cQo/bV+QrZTOK
         tbN6Ob+qGuzmz/3n96x8r5adeaOZZ1NTT7mpgGIK0f511N4mB8AMxy69TOUTleBk+VCp
         J2g9E8cqztUKhpXkg89CF6MbXv3b0dzsNlGeHcXUyuSt77AqSB0XZAm8FnW/cIQd2wax
         iYHPnpfamRM/BU9ArvvLmikL5p/6To2HgKmi2qhnO8bbqXj1I+WsFI7f+7dPg3WP32TN
         G0Of6UxPRVvg4gMR05++23aRjyrwXbHm+1/MkNsbqzmVy40RIYuXMdjFUPtgqweVEIhO
         tLvw==
X-Gm-Message-State: AFqh2kpTAPOWB3Z4Q1qakOQPAAdGXxT/C94BuoDDPLo0Z7ZdB4VcdprE
        XO6hInQB7Vuzlm6k4g2rcVRCSSf3D0MhH94Iy25cP6em+BMnbOGuPp0RAQ31MYSN1CgJqOMAdr2
        UH1RDMndw80mwv/IwM9Dhpw==
X-Received: by 2002:a05:600c:2e44:b0:3d3:4406:8a3c with SMTP id q4-20020a05600c2e4400b003d344068a3cmr5381451wmf.32.1671748727351;
        Thu, 22 Dec 2022 14:38:47 -0800 (PST)
X-Google-Smtp-Source: AMrXdXujTp/r+Z9BJodxOP+KL4VFiH6woCgGKOUx1Gqbs/viGQvmDG3JnCj2av/xH0vD5gJtdWRlwA==
X-Received: by 2002:a05:600c:2e44:b0:3d3:4406:8a3c with SMTP id q4-20020a05600c2e4400b003d344068a3cmr5381445wmf.32.1671748727160;
        Thu, 22 Dec 2022 14:38:47 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n25-20020a7bc5d9000000b003d969a595fbsm2386239wmk.10.2022.12.22.14.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 14:38:46 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date:   Thu, 22 Dec 2022 23:38:30 +0100
Message-Id: <20221222223830.2494900-5-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221222223830.2494900-1-javierm@redhat.com>
References: <20221222223830.2494900-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ondrej Jirman <megi@xff.cz>

The phone's display is using Hannstar LCD panel, and Goodix based
touchscreen. Support it.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Co-developed-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../dts/rockchip/rk3399-pinephone-pro.dts     | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 0e4442b59a55..a0439a60395e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -29,6 +29,12 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 1000000 0>;
+		pwm-delay-us = <10000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -81,6 +87,32 @@ vcc1v8_codec: vcc1v8-codec-regulator {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc3v3_sys>;
 	};
+
+	/* MIPI DSI panel 1.8v supply */
+	vcc1v8_lcd: vcc1v8-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		regulator-name = "vcc1v8_lcd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&display_pwren1>;
+	};
+
+	/* MIPI DSI panel 2.8v supply */
+	vcc2v8_lcd: vcc2v8-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		regulator-name = "vcc2v8_lcd";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		vin-supply = <&vcc3v3_sys>;
+		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&display_pwren>;
+	};
 };
 
 &cpu_l0 {
@@ -111,6 +143,11 @@ &emmc_phy {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
@@ -193,6 +230,9 @@ vcc3v0_touch: LDO_REG2 {
 				regulator-name = "vcc3v0_touch";
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
 			};
 
 			vcca1v8_codec: LDO_REG3 {
@@ -326,6 +366,26 @@ opp07 {
 	};
 };
 
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+
+	touchscreen@14 {
+		compatible = "goodix,gt917s";
+		reg = <0x14>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PB5 IRQ_TYPE_EDGE_RISING>;
+		irq-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_HIGH>;
+		AVDD28-supply = <&vcc3v0_touch>;
+		VDDIO-supply = <&vcc3v0_touch>;
+		touchscreen-size-x = <720>;
+		touchscreen-size-y = <1440>;
+		poweroff-in-suspend;
+	};
+};
+
 &io_domains {
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;
@@ -334,6 +394,40 @@ &io_domains {
 	status = "okay";
 };
 
+&mipi_dsi {
+	status = "okay";
+	clock-master;
+
+	ports {
+		mipi_out: port@1 {
+			#address-cells = <0>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel@0 {
+		compatible = "hannstar,hsd060bhw4";
+		reg = <0>;
+		backlight = <&backlight>;
+		reset-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&vcc2v8_lcd>; // 2v8
+		iovcc-supply = <&vcc1v8_lcd>; // 1v8
+		pinctrl-names = "default";
+		pinctrl-0 = <&display_rst_l>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
 &pmu_io_domains {
 	pmu1830-supply = <&vcc_1v8>;
 	status = "okay";
@@ -360,6 +454,20 @@ vsel2_pin: vsel2-pin {
 		};
 	};
 
+	dsi {
+		display_rst_l: display-rst-l {
+			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		display_pwren: display-pwren {
+			rockchip,pins = <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		display_pwren1: display-pwren1 {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
 	sound {
 		vcc1v8_codec_en: vcc1v8-codec-en {
 			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
@@ -367,6 +475,10 @@ vcc1v8_codec_en: vcc1v8-codec-en {
 	};
 };
 
+&pwm0 {
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
@@ -396,3 +508,15 @@ &tsadc {
 &uart2 {
 	status = "okay";
 };
+
+&vopb {
+	status = "okay";
+	assigned-clocks = <&cru DCLK_VOP0_DIV>, <&cru DCLK_VOP0>,
+			  <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <100000000>;
+	assigned-clock-parents = <&cru PLL_CPLL>, <&cru DCLK_VOP0_FRAC>;
+};
+
+&vopb_mmu {
+	status = "okay";
+};
-- 
2.38.1

