Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0A36E4D9D
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 17:49:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbjDQPtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 11:49:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231480AbjDQPtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 11:49:11 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99442CC03
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:47 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l31-20020a05600c1d1f00b003f1718d89b2so2292617wms.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681746517; x=1684338517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QId6uqWDe3rJwTCY+rBXyzj6MNEIN5Sx4GeYWVmYxg=;
        b=JFustvU0eun5UBSBAd4clCwxl+cz0JYJLGKqAnH1rTg5QQMk40Kb8sxSpnKGkbvR9U
         6t5DNsow3MPbj3U+a1GFK4dTaY3fnvzKwY20odE1zXSrBOTFgD8qu/AK7NUjQXTpvz0C
         jIkrYfGknJxX65kFno643NXORRayehNIGZ8I34broBpAEe0q6KrBYhYpKuWxnVNDyQJG
         7mO7S8RtMkfh5r1DGKLzq8pItXmI7wOjFSiW6l6OYUrim4lzUlCRom+p7eVbg48W/W0U
         iJBBZ27CnLVwqQx5oI3uSyhrqSlCbVSCBLlM4lbiqqdjugs8HXmnVgDYyYuVF9EQ3g42
         7dSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681746517; x=1684338517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5QId6uqWDe3rJwTCY+rBXyzj6MNEIN5Sx4GeYWVmYxg=;
        b=GV8Hq95krNYvMrkYySwAbSc0Z5OmPPdA1s8quIucerCxCBXS6Mp6YaTC8W2VEZVHwg
         GYigengw8rJQcZzx+eWuUd3wz4hXzowX4ZPX7H7TVjLs4vJnc6UejH/alqHG8ncnQ0V/
         2cXT85VbCIrY3cZqTaCWLgjlnGRWWeSdHooD/zaPoX7CCwgd68CjEHkKLi9Wh7jC3ZV2
         LMcNE6NrjnEu1wd+/HnahYH13+kU3MwKnj1XWGyDeIP4WldHa8XqRAduVbeeA8yRT13Y
         zBdld2Y+IbfxZvU0L5zhrAXpsfceHz6s26Ma1UyQrnVZrYKnAXFIVg2SqUCztjwqKnaa
         PBRA==
X-Gm-Message-State: AAQBX9ewDtM+8LANsvTIsBfwuUCR8IVkwN2E3Wq9DYWPOOZnEL8ipQfC
        FJbx2RdgfRa9fZWMz7Y7+rhyj27hAmkGHb4O8ILjIA==
X-Google-Smtp-Source: AKy350ZWa5SOHfWN5ZZn2YnS8wQJ3TbGHsDFVxsbkykD7nvEQonRV0725DczthAGmHsPlgXaEWBOFQ==
X-Received: by 2002:a05:600c:205a:b0:3f1:6fef:9862 with SMTP id p26-20020a05600c205a00b003f16fef9862mr4179205wmg.13.1681746516868;
        Mon, 17 Apr 2023 08:48:36 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:28d:66d0:5888:afdf:3f10:3b2b])
        by smtp.gmail.com with ESMTPSA id v5-20020a05600c444500b003f09cda253esm16189932wmn.34.2023.04.17.08.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 08:48:36 -0700 (PDT)
From:   Esteban Blanc <eblanc@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com, jpanis@baylibre.com,
        aseketeli@baylibre.com
Subject: [PATCH v3 2/6] arm64: dts: ti: k3-j721s2-som-p0: Add TP6594 family PMICs
Date:   Mon, 17 Apr 2023 17:48:28 +0200
Message-Id: <20230417154832.216774-3-eblanc@baylibre.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417154832.216774-1-eblanc@baylibre.com>
References: <20230417154832.216774-1-eblanc@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
Theses devices provides regulators (bucks and LDOs), but also
GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
which monitors the SoC error output signal, and a PFSM
(Pre-configurable Finite State Machine) which manages the
operational modes of the PMIC.

Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi | 213 +++++++++++++++++++
 1 file changed, 213 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
index 6930efff8a5a..9e312c35afdc 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi
@@ -79,3 +79,216 @@ &main_mcan16 {
 	pinctrl-names = "default";
 	phys = <&transceiver0>;
 };
+
+&wkup_pmx0 {
+	pmic_irq_pins_default: pmic-irq-pins-default {
+		pinctrl-single,pins = <
+			/* (C21) MCU_OSPI1_CSn1.WKUP_GPIO0_39 */
+			J721S2_WKUP_IOPAD(0x060, PIN_INPUT, 7)
+		>;
+	};
+
+	wkup_i2c0_pins_default: wkup_i2c0_pins_default {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x100, PIN_INPUT, 0) /* (H24) WKUP_I2C0_SCL */
+			J721S2_WKUP_IOPAD(0x104, PIN_INPUT, 0) /* (H27) WKUP_I2C0_SDA */
+		>;
+	};
+};
+
+&wkup_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_i2c0_pins_default>;
+	clock-frequency = <400000>;
+
+	tps659411: pmic@48 {
+		compatible = "ti,tps6594-q1";
+		reg = <0x48>;
+		ti,primary-pmic;
+		system-power-controller;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		buck1234-supply = <&vsys_3v3>;
+		buck5-supply = <&vsys_3v3>;
+		ldo1-supply = <&vsys_3v3>;
+		ldo2-supply = <&vsys_3v3>;
+		ldo3-supply = <&vsys_3v3>;
+		ldo4-supply = <&vsys_3v3>;
+
+		regulators {
+			bucka1234: buck1234 {
+				regulator-name = "vdd_cpu_avs";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka5: buck5 {
+				regulator-name = "vdd_mcu_0v85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa1: ldo1 {
+				regulator-name = "vdd_mcuwk_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa2: ldo2 {
+				regulator-name = "vdd_mcu_gpioret_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa3: ldo3 {
+				regulator-name = "vdd_mcuio_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa4: ldo4 {
+				regulator-name = "vda_mcu_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	tps659414: pmic@4c {
+		compatible = "ti,tps6594-q1";
+		reg = <0x4c>;
+		system-power-controller;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		buck1-supply = <&vsys_3v3>;
+		buck2-supply = <&vsys_3v3>;
+		buck3-supply = <&vsys_3v3>;
+		buck4-supply = <&vsys_3v3>;
+		buck5-supply = <&vsys_3v3>;
+		ldo1-supply = <&vsys_3v3>;
+		ldo2-supply = <&vsys_3v3>;
+		ldo3-supply = <&vsys_3v3>;
+		ldo4-supply = <&vsys_3v3>;
+
+		regulators {
+			buckb1: buck1 {
+				regulator-name = "vdd_io_1v8_reg";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buckb2: buck2 {
+				regulator-name = "vdd_fpd_1v1";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buckb3: buck3 {
+				regulator-name = "vdd_phy_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buckb4: buck4 {
+				regulator-name = "vdd_ddr_1v1";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buckb5: buck5 {
+				regulator-name = "vdd_ram_0v85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob1: ldo1 {
+				regulator-name = "vdd_wk_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob2: ldo2 {
+				regulator-name = "vdd_gpioret_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob3: ldo3 {
+				regulator-name = "vda_dll_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob4: ldo4 {
+				regulator-name = "vda_pll_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	lp876411: pmic@58 {
+		compatible = "ti,lp8764-q1";
+		reg = <0x58>;
+		system-power-controller;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		buck1234-supply = <&vsys_3v3>;
+
+		regulators {
+			buckc1234: buck1234 {
+				regulator-name = "vdd_core_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
-- 
2.39.2

