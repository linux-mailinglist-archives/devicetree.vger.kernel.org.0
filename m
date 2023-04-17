Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE0076E4D9E
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 17:49:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231472AbjDQPtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 11:49:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231502AbjDQPtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 11:49:12 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B4EC661
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:48 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so21270846wmb.3
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681746518; x=1684338518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4Sn53RdqX904+o/7tHCPMWzrFYlXQgy7TVIXaTUnQ8=;
        b=kGyZFsJMfBG9lzMfnoXk0DhSRH+AonT8uALHDl54xbdp0lMunbQ7Ms+UT5AopgLlKe
         o4yf1XrMwWiM+ehgel2zWtrzMPT82qfjI8QjZp44A0iwiSsH5tlONikmlwwM7+SSOruw
         xM4qbzRdJAx83t5058e7bpjDnZYWDbS7SNARVUXMxucq8nmEyaksv7FA7MiEW47rzVSr
         cP2DbB5PGqKcgNQJLSlJ90ZZqXaQliMnOBg4PSLbgnVnsCP8ASATsIDQByPTMdgO552k
         a3pGQfXHD9DGFS5NB9tKRIU2DdPfrsywawXf0ZYyk8jWMIXHRKeiPeFicP9EPRZO5iSf
         OUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681746518; x=1684338518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U4Sn53RdqX904+o/7tHCPMWzrFYlXQgy7TVIXaTUnQ8=;
        b=AguQmn20d3dAGXP8fuDeLD7DlFks1+JdEAR8X3v/VbCBLsx9ITXMxbJni29kzsncz5
         xOzCSJqnIWr4vfEvd457MSeCZcE6NZfm2RlnuydPX5GxBLt7ucY673tuIR2fyUugyvqb
         Fjyjkaam0PSxtksYrsvP2TA19LmJnf7RmvazOsBdQs8ih36Zgvp6HQ0FeWinLSR1JpO6
         9GrNkPp7GpvWWnGAMbfCTo1aqGREWv0GVlz0DevNgUbaX4PKPsBvxVW8KK2WDSNCSjDE
         Zink/4bHf4TxsC8gNnmtfHC+Db9r2b50gVujz6vnpYkxuRQpcwmbqlPr/jnxmVjeQehP
         ONYQ==
X-Gm-Message-State: AAQBX9cXheM/gPCN8I21nT14QJ3yEdoKFRK3rMGjvDCVGZ+gIRX0xfV+
        W0J79MNxnbdCvd5EjJSyt0Yq2Q==
X-Google-Smtp-Source: AKy350YTxyxSIuRnXu1+kv98GgLXLDpgQICxbCvc3+hq5alGT6DU9b0N6nQyUyXx0e5Qujq+umk0rQ==
X-Received: by 2002:a7b:cd19:0:b0:3f1:6980:2d01 with SMTP id f25-20020a7bcd19000000b003f169802d01mr5674506wmj.9.1681746518007;
        Mon, 17 Apr 2023 08:48:38 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:28d:66d0:5888:afdf:3f10:3b2b])
        by smtp.gmail.com with ESMTPSA id v5-20020a05600c444500b003f09cda253esm16189932wmn.34.2023.04.17.08.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 08:48:37 -0700 (PDT)
From:   Esteban Blanc <eblanc@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com, jpanis@baylibre.com,
        aseketeli@baylibre.com
Subject: [PATCH v3 3/6] arm64: dts: ti: k3-j721e-som-p0: Add TP6594 family PMICs
Date:   Mon, 17 Apr 2023 17:48:29 +0200
Message-Id: <20230417154832.216774-4-eblanc@baylibre.com>
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

From: Jerome Neanne <jneanne@baylibre.com>

This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
Theses devices provides regulators (bucks and LDOs), but also
GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
which monitors the SoC error output signal, and a PFSM
(Pre-configurable Finite State Machine) which manages the
operational modes of the PMIC.

Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi | 171 ++++++++++++++++++++
 1 file changed, 171 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
index e289d5b44356..63be7949315e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
@@ -150,6 +150,12 @@ J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
 		>;
 	};
 
+	pmic_irq_pins_default: pmic-irq-pins-default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0xd4, PIN_INPUT, 7) /* (G26) WKUP_GPIO0_9 */
+		>;
+	};
+
 	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* MCU_OSPI0_CLK */
@@ -308,3 +314,168 @@ &c71_0 {
 	memory-region = <&c71_0_dma_memory_region>,
 			<&c71_0_memory_region>;
 };
+
+&wkup_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_i2c0_pins_default>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	tps659413: pmic@48 {
+		compatible = "ti,tps6594-q1";
+		reg = <0x48>;
+		system-power-controller;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		ti,primary-pmic;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		buck12-supply = <&vsys_3v3>;
+		buck3-supply = <&vsys_3v3>;
+		buck4-supply = <&vsys_3v3>;
+		buck5-supply = <&vsys_3v3>;
+		ldo1-supply = <&vsys_3v3>;
+		ldo2-supply = <&vsys_3v3>;
+		ldo3-supply = <&vsys_3v3>;
+		ldo4-supply = <&vsys_3v3>;
+
+		regulators {
+			bucka12: buck12 {
+				regulator-name = "vdd_cpu_avs";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka3: buck3 {
+				regulator-name = "vdd_mcu_0v85";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka4: buck4 {
+				regulator-name = "vdd_ddr_1v1";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			bucka5: buck5 {
+				regulator-name = "vdd_phyio_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa1: ldo1 {
+				regulator-name = "vdd1_lpddr4_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa2: ldo2 {
+				regulator-name = "vdd_mcuio_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldoa3: ldo3 {
+				regulator-name = "vdda_dll_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
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
+	tps659411: pmic@4c {
+		compatible = "ti,tps6594-q1";
+		reg = <0x4c>;
+		system-power-controller;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
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
+			buckb1234: buck1234 {
+				regulator-name = "vdd_core_0v8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
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
+				regulator-name = "vdd_sd_dv";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob2: ldo2 {
+				regulator-name = "vdd_usb_3v3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldob3: ldo3 {
+				regulator-name = "vdd_io_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
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
+};
-- 
2.39.2

