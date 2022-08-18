Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 258E259834D
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244708AbiHRMmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244482AbiHRMmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:51 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBEE2B277F
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:50 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id r15-20020a17090a1bcf00b001fabf42a11cso1715866pjr.3
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=2pMMhB43f3lwu4pb/tiTlRIQItcyydhw5aFpb55Raho=;
        b=xWWY58q3GoFZgWEjQp5TeMRxVXJZASI2Z0KslTVXAdgkeM+zpb0pbK22iBtO24nozV
         SUszvf7HpwZCLwmJxjXlXlnL5ca7lIhb4QgYbKtgrpTvmpZ7Od07PAWkZMBxnGA+r4Cz
         KD4w1+SBuM343zZ+p+CAxasT8wJjp5vCH8cbPZ/0zBfxMn2utA/+s3TzZBN13sgfdLUA
         AQjA5Jh+ZHGBTjO6GPMzjFnKyupDX/uA3nQQZuKPrne5ZSOaIbpuBYUerAHUdxAOIiFg
         +JcvH/Zyc29MCot1aMD6VOXYgDPEcGu+X0Yz6o+9+rHRndD2mBx3oi8etvDl02bSXXVi
         Z2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=2pMMhB43f3lwu4pb/tiTlRIQItcyydhw5aFpb55Raho=;
        b=uky3nOU8ycgD749QbbMqpiHc+5+io7Rnv8utDp/AlGSwufNQ3/HUt4vfnvNeGOWhuT
         tEhAi8nBdBb0JNXGykmNHJScmYpCIs6CkurKaIOWr4YLuOf7KJ9mjt5cJdTiQbweJoVf
         7CnuC6DHI/LyBa9ar/2QnumntCoLoKeKkqQdDCy0I/oRu62NmjJLt/ugZ55PFaHYA/J+
         /BX/HrS3ud/fx1FLsuJ50RUqL1ICGRK2pHsLw/HbODDp95GrrvjhOUZCyF06KRVWZvhg
         y53Qm3VdaXmJl+jfW04XkdE6SLoT7gIVfMDSGkWqYin5EA5Gu40voNgSUK7+Y2vPhOfP
         xqTA==
X-Gm-Message-State: ACgBeo1L2OlE00Nb454xI8r1OI5QpUrldUbTtqV6UKcqQbVyRnZoFwWN
        Ahpt61ZjUdZ7CYE2VrpSFHICdg==
X-Google-Smtp-Source: AA6agR7rm4Bc5UIGcgEVAouYlWkA5L34FQkA9hwtaYFezF636pGeYtLovarVZiP1L9M/BfGA8QUUCA==
X-Received: by 2002:a17:902:eb86:b0:16f:d78:74d7 with SMTP id q6-20020a170902eb8600b0016f0d7874d7mr2460863plg.149.1660826570291;
        Thu, 18 Aug 2022 05:42:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:49 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 18/19] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
Date:   Thu, 18 Aug 2022 18:11:31 +0530
Message-Id: <20220818124132.125304-19-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

General features:
- Rockchip RV1126
- 2/4GB LPDDR4
- 16GB eMMC
- Fn-link 8223A-SR WiFi/BT

Edge Compute Module 0 needs to mount on top of Edgeble AI Carrier
boards for creating complete platform solutions.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- change meaninful dtsi name 

 .../rv1126-edgeble-edge-compute-module-0.dtsi | 353 ++++++++++++++++++
 1 file changed, 353 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi

diff --git a/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi b/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
new file mode 100644
index 000000000000..212990d8fb75
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
@@ -0,0 +1,353 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	aliases {
+		mmc0 = &emmc;
+	};
+
+	vcc5v0_sys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vccio_flash: vccio-flash {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&flash_vol_sel>;
+		regulator-name = "vccio_flash";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vccio_flash>;
+	rockchip,default-sample-phase = <90>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
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
+			vdd_npu_vepu: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_npu_vepu";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_arm";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+
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
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_buck5: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-name = "vcc_buck5";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2200000>;
+				};
+			};
+
+			vcc_0v8: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vcc_0v8";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmu: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_pmu";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd0v8_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vcc0v8_pmu";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <800000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_dovdd: LDO_REG5 {
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_dovdd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_dvdd: LDO_REG6 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vcc_dvdd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_avdd: LDO_REG7 {
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-name = "vcc_avdd";
+
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
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_sd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_5v0: SWITCH_REG1 {
+				regulator-name = "vcc_5v0";
+			};
+
+			vcc_3v3: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+			};
+		};
+	};
+};
+
+&pinctrl {
+	bt {
+		bt_enable: bt-enable {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	flash {
+		flash_vol_sel: flash-vol-sel {
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio0-supply = <&vcc1v8_pmu>;
+	pmuio1-supply = <&vcc3v3_sys>;
+	vccio1-supply = <&vccio_flash>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcc_dovdd>;
+	vccio5-supply = <&vcc_1v8>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_dovdd>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	max-frequency = <100000000>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_ctsn &uart0_rtsn>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,qca9377-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		enable-gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>; /* BT_RST */
+		max-speed = <2000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_enable>;
+		vddxo-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
-- 
2.25.1

