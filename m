Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7334859F4C2
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 10:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232881AbiHXIJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 04:09:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235458AbiHXIJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 04:09:36 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5D584EC7
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:09:34 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id w138so13150116pfc.10
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=U9jAVq30OH23+ZeFIPEN9fwYADmpKbecPVtEANoFmGY=;
        b=plVVdTBGJre9n3XIHWK0XV6wOvGtZMXW1b4n089GiQCgi1zdrzAN4fl8gPkqimQirv
         l42KxJo7lShDxPRTSKDdvjVPtRfmFeqzM7J3ql9LEfVjH+OZi8+PC/PQu/nHBBoRa6CS
         QJ52XxZkQu34N28KQalw8yle68jjagvQ4IPN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=U9jAVq30OH23+ZeFIPEN9fwYADmpKbecPVtEANoFmGY=;
        b=g8EGo/2l/zevs2KqfFp/ZrJT6t80q2p6hHgvfaUhR8BEmcDEQHEZQp6w6m//1Q/JHH
         srdRuaPsOZ2Sp6EC3obLcza8eFgsEUhhj+1ofv5j9gi5Nak07TPYcTwSoeWVIOSpFmjI
         BmRZ+yTiJm8wgQwW74tRSVHJuq/45+WNLhNA+5ohBabj8mNwlp1qPNCfv5jYUoVLQuQq
         mA6tukevwlKvJ74XbAkuipXBZrgp23ReHpHKyM7NDgEXgvB6ZRxYpfSB8QAAa4QeIykl
         aBNb7QZRwDGvEDft8S/mQvxBa1m/jYiLKiaBDrsJoDIgh7/guQbROkY3IuzIBXomDT3V
         GJqw==
X-Gm-Message-State: ACgBeo1AXBMHaCru3yY2GT5B4C6tn8OQeI0dTSSYPSJEtb82HLjwIVt6
        9jVC0PI0B0tzdhHRJC9w702GqA==
X-Google-Smtp-Source: AA6agR5/tUCwSM8sJVZCkwOnNaWueSp3KVmA/rWDtQtpWxqLzRLnEZUJKYQEwFpDKTXlGbqp6UCLaA==
X-Received: by 2002:a63:d3:0:b0:42a:88e6:7e44 with SMTP id 202-20020a6300d3000000b0042a88e67e44mr14424163pga.234.1661328574196;
        Wed, 24 Aug 2022 01:09:34 -0700 (PDT)
Received: from localhost.localdomain ([212.102.47.105])
        by smtp.gmail.com with ESMTPSA id ik3-20020a170902ab0300b0016bdc98730bsm11859594plb.151.2022.08.24.01.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 01:09:33 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Stephen Chen <stephen@radxa.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date:   Wed, 24 Aug 2022 13:39:03 +0530
Message-Id: <20220824080903.3696847-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220824080903.3696847-1-jagan@amarulasolutions.com>
References: <20220824080903.3696847-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for Radxa ROCK 4C+ SBC.

4C+ replaced DP with HDMI and updated FPC connectors
for MIPI DSI/CSI compared to 4C revision.

Also, an official naming convention from Radxa mention
to remove Pi from board name, so this 4C+ is named as
Radxa ROCK 4C+ not Radxa ROCK Pi 4C+.

Signed-off-by: Stephen Chen <stephen@radxa.com>
Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 641 ++++++++++++++++++
 2 files changed, 642 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..f92637eb6f90 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -46,6 +46,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
new file mode 100644
index 000000000000..cf9997c011d2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -0,0 +1,641 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2022 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
+	model = "Radxa ROCK 4C+";
+	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
+
+	aliases {
+		mmc0 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
+	};
+
+	vcc5v0_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_host1: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host1";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_host0_s0>;
+	};
+
+	vcc5v0_typec: vcc5v0-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec0_en>;
+		regulator-name = "vcc5v0_typec";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_lan: vcc3v3-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_lan";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_lan>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x2a>;
+	rx_delay = <0x21>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	i2c-scl-falling-time-ns = <30>;
+	i2c-scl-rising-time-ns = <180>;
+	clock-frequency = <400000>;
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc_buck5>;
+		vcc6-supply = <&vcc_buck5>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_log";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_cpu_l";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+				regulator-initial-mode = <0x2>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc3v3_sys";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_buck5: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_buck5";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_0v9: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vcca_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc0v9_soc: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vcc0v9_soc";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_mipi: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vcc_mipi";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-name = "vcc_1v5";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v0: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vcc_3v0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_cam: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_cam";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc5v0_host0_s0: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc5v0_host0_s0";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			lcd_3v3: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "lcd_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	vdd_cpu_b: syr827@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel1_gpio>;
+		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: syr828@41 {
+		compatible = "silergy,syr828";
+		reg = <0x41>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel2_gpio>;
+		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-initial-mode = <1>; /* 1:force PWM 2:auto */
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&io_domains {
+	bt656-supply = <&vcc_3v0>;
+	gpio1830-supply = <&vcc_3v0>;
+	sdmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vsel1_gpio: vsel1-gpio {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		vsel2_gpio: vsel2-gpio {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	sdmmc {
+		sdmmc_bus4: sdmmc-bus4 {
+			rockchip,pins = <4 8 1 &pcfg_pull_up_8ma>,
+					<4 9 1 &pcfg_pull_up_8ma>,
+					<4 10 1 &pcfg_pull_up_8ma>,
+					<4 11 1 &pcfg_pull_up_8ma>;
+		};
+
+		sdmmc_clk: sdmmc-clk {
+			rockchip,pins = <4 12 1 &pcfg_pull_none_18ma>;
+		};
+
+		sdmmc_cmd: sdmmc-cmd {
+			rockchip,pins = <4 13 1 &pcfg_pull_up_8ma>;
+		};
+	};
+
+	usb-typec {
+		vcc5v0_typec0_en: vcc5v0-typec-en {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmu1830-supply = <&vcc_3v0>;
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc_1v8>;
+};
+
+&sdhci {
+	max-frequency = <150000000>;
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	supports-emmc;
+	non-removable;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <800>;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&tcphy0 {
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc5v0_host1>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_host1>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	extcon = <&u2phy0>;
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
-- 
2.25.1

