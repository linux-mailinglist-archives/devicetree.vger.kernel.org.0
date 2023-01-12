Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B588466707B
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbjALLID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:08:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233819AbjALLHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:07:38 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D3D3C3B8
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:20 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id w3so19873240ply.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kefYJUfI5C9HmDtqywN/C6ROYRxXXEvJws3EuIccV8=;
        b=fJzp3rZk39quf2v6wZhBOjELZ0Ds+SQ3bznl94ekRdKQjUMXYD7Ojfnna+bEf39keO
         NwyLcGWKQqtb4j+gcSmaPH85IzhPx/C3gU7JSxA13npQIK6gKw66IbV0Mlf23/jADvju
         4gJR2VnT5soosylL6woyYr/oYp11wua1/RHQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3kefYJUfI5C9HmDtqywN/C6ROYRxXXEvJws3EuIccV8=;
        b=ozV0QK5LOCOD3AfrX0KkMLFUrNp2xMds9r7HDZGxIU5h9hKa7SRl5gEqrSgKNc1GTr
         bwo84/dnP1Ku1AMvI0kdZo45vzEU74LogI84ao/VWSPXR3S/46//i3yyhSRW6lOARuJA
         6uuVtYf4vG96YGuPZn3KKm3MDhy6VJ1YduXwhcfXGtuoG4CbVELNlhYsAptQ/Va3r/Eo
         DZOBjjp7zz4riPVlkVWLm07TEe0+wnFQMmptNxBauXwrRf7vIQyq/XkY3d68VOYenz4o
         gQn+1o5euddUI73dOq0/2wuR451oap84lglNnhcEEoZIIxUQRx8HsADTtoaxSSN8aZPF
         eWAQ==
X-Gm-Message-State: AFqh2krx7cAEVOfkJP9D6bv0XUJDGpUtM0Sc2HijCCQf8RAEQRkedAMn
        6dluw4C7Oihos2wbBWf/19a1g5IHquWBQ0w9
X-Google-Smtp-Source: AMrXdXvW/1TxUesz4wSKAhQjnf3Ngw5f//8J8wRDhG8a7FYTUUMNe0dnYCuENmcTBuIIQV/vSRoBeg==
X-Received: by 2002:a17:902:8543:b0:192:9454:7b32 with SMTP id d3-20020a170902854300b0019294547b32mr47749855plo.40.1673521159549;
        Thu, 12 Jan 2023 02:59:19 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:4cc5:b413:eb81:9f91:b22e:317f])
        by smtp.gmail.com with ESMTPSA id t5-20020a170902e84500b0017f756563bcsm11986850plg.47.2023.01.12.02.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 02:59:18 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3
Date:   Thu, 12 Jan 2023 16:29:01 +0530
Message-Id: <20230112105902.192852-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230112105902.192852-1-jagan@amarulasolutions.com>
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Compute Module 3(CM3) is one of the modules from a series
System On Module based on the Radxa ROCK 3 series and is compatible
with Raspberry Pi CM4 pinout and form factor.

Specification:
- Rockchip RK3566
- up to 8GB LPDDR4
- up to 128GB high performance eMMC
- Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
  BT 5.0, BLE with onboard and external antenna.
- Gigabit Ethernet PHY

Radxa CM3 needs to mount on top of this IO board in order to create
complete Radxa CM3 IO board platform.

Since Radxa CM3 is compatible with Raspberry Pi CM4 pinout so it is
possible to mount Radxa CM3 on top of the Rasberry Pi CM4 IO board.

Add support for Radxa CM3.

Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 345 ++++++++++++++++++
 1 file changed, 345 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
new file mode 100644
index 000000000000..23a85a13311a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Radxa Limited
+ * Copyright (c) 2022 Amarula Solutions(India)
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	compatible = "radxa,radxa-cm3", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "timer";
+			default-state = "on";
+			pinctrl-names = "default";
+			pinctrl-0 = <&user_led2>;
+		};
+	};
+
+	vcc_sys: vcc-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc_1v8: vcc-1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8_p>;
+	};
+
+	vcc_3v3: vcc-3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcca_1v8: vcca-1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8_p>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_npu>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		#clock-cells = <1>;
+		clock-output-names = "rk817-clkout1", "rk817-clkout2";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_gpu_npu: DCDC_REG2 {
+				regulator-name = "vdd_gpu_npu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG4 {
+				regulator-name = "vcc3v3_sys";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG1 {
+				regulator-name = "vcca1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8_p: LDO_REG7 {
+				regulator-name = "vcc_1v8_p";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG8 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc2v8_dvp: LDO_REG9 {
+				regulator-name = "vcc2v8_dvp";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+		};
+	};
+};
+
+&pinctrl {
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	leds {
+		user_led2: user-led2 {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc_3v3>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
-- 
2.25.1

