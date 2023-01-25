Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A08767B6A1
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 17:10:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235225AbjAYQKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 11:10:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235400AbjAYQKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 11:10:34 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED82193DA
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 08:10:33 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id e10-20020a17090a630a00b0022bedd66e6dso2526706pjj.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 08:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqGU3wJDMck0hXctP8UU1PV+5x18nPVs244//C4MGVw=;
        b=dTySioobE8TdQKBH6lc6LWHFTTNTkEXJLgy97QDnTIj5UEzY8QS/PqjYyZBYXBTByg
         YUuwZXmMw9SeyAPgwfJZyowKrKWH9+Srckmyhwij2CQ7SQ57F71NNxyslx2FdzScmnEc
         dfxA5ZWNmkmECARukK5gN1d02WquRj7a/V72c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqGU3wJDMck0hXctP8UU1PV+5x18nPVs244//C4MGVw=;
        b=lLbq+JRFncWkNF1oiGX1/ukbQD8bSykRAwOUljRYot7PGK1PJanoY0IuFSXmp5vd9T
         +yPZhJM++4IftJssgkmcbx42CJeP3vxmPUCD/i6ze+rouxXKcAADuDq8ouoc8h2sXHE/
         XT3HSVSWY26T5I/Z3P/BNVjKE6VfckdNAO0ILoquwV66C78hEsfX31IHI5c0RFcgMKhz
         8RwJOxPMI7UxXsIcis8rY8OOJB1CIDYTrTO5L4KCpqGkSelaaXHffV0D/CZm0w2X0sdr
         QrwBgY7qwGiH88JaFhrqtyzurX6rHS1fVhlwto+mZVHJSn//1u92Eq6HuKmYaiziuDif
         N4IQ==
X-Gm-Message-State: AFqh2kq/Nxr1V3wF2vzhdGs2PpVltNkR1IzE4Q+9eL9eC8oIGDYxohgp
        K57yHqVcI4JwJUZZPS95O4uMpQ1E7TD8tl0PsiU=
X-Google-Smtp-Source: AMrXdXuD52QWY23VyKrzu75dZZ2SbzMvglaxF2fTNgQpl1FDQKTDpLl2vrR8wSMJdFuVAuwBDPbedg==
X-Received: by 2002:a05:6a20:b71b:b0:b8:965a:ccb5 with SMTP id fg27-20020a056a20b71b00b000b8965accb5mr30301826pzb.24.1674663032871;
        Wed, 25 Jan 2023 08:10:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a238:3cb1:2156:ef87:8af5])
        by smtp.gmail.com with ESMTPSA id n29-20020a638f1d000000b004dadeb4decasm14929pgd.53.2023.01.25.08.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 08:10:32 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3566: Enable WiFi, BT support for Radxa CM3
Date:   Wed, 25 Jan 2023 21:40:23 +0530
Message-Id: <20230125161023.12115-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230125161023.12115-1-jagan@amarulasolutions.com>
References: <20230125161023.12115-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Compute Module 3 has an onboard AW_CM256SM WiFi/BT module.

Add nodes for enabling it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 23a85a13311a..3de3a4f38756 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -66,6 +66,15 @@ vcca_1v8: vcca-1v8-regulator {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc_1v8_p>;
 	};
+
+	sdio_pwrseq: pwrseq-sdio {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		reset-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &cpu0 {
@@ -287,6 +296,20 @@ regulator-state-mem {
 };
 
 &pinctrl {
+	bluetooth {
+		bt_host_wake_h: bt-host-wake-h {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host_h: bt-wake-host-h {
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -298,6 +321,16 @@ user_led2: user-led2 {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_reg_on_h: wifi-reg-on-h {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_h: wifi-host-wake-h {
+			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -318,6 +351,34 @@ &saradc {
 	status = "okay";
 };
 
+&sdmmc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_clk &sdmmc1_cmd>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+
+	wifi@1 {
+		compatible = "brcm,bcm43455-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <RK_PC1 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_h>;
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
@@ -330,6 +391,25 @@ &sdhci {
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1m0_ctsn &uart1m0_rtsn &uart1m0_xfer>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk817 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
+		vbat-supply = <&vcc_3v3>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
 &usb2phy0 {
 	status = "okay";
 };
-- 
2.25.1

