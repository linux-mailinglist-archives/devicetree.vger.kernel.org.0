Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC6865A87D
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 01:50:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbjAAAuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 19:50:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbjAAAt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 19:49:59 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20EE6645B
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 16:49:57 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id g13so36881358lfv.7
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 16:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y0hOJm5JlWTUS3txuKs/3Hl6WOBaslW6DE/WqMSiEPw=;
        b=sSsiKXGI22S3A51L3ZGVW+J29r7H2Yfr2OfNvWEuS+a3MDFHELYyskHA7zQCppAdMf
         bGSa1MmCvi5f/Zzl+m47sS/9Diy7jf1iCercA1rZOz3Xk2xQEJTC7vF8vvo5yQaHYDX+
         vOP6RkOngelmo9HxHkHqbY+1FfWIGIQHNWz7blhyELu9JA8AwzjYlG9tOjaBu10ypw38
         BQ20Pg/IxSDZowLZBNIShgDSHM/BDwTwg3vuVcNNZAGWGwbdHgfLlrr4gYG+tXXJoBdl
         ji8KCcyBiyiFnG2U8A+NmnWwKKRZV+OkfcDiPtA5VQGqOkYY2l3PBglXE0PPf/0pUl3m
         +f7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0hOJm5JlWTUS3txuKs/3Hl6WOBaslW6DE/WqMSiEPw=;
        b=EuvcLWQPXzVAaGxekEjbMyymshOx+xHacR2iuDhn4Z61I3BGn6RCKQcsLbd24JkFLZ
         JZCfDVfaAMz47KwA1myT2TPIFB3PvV3lF6aVWI/psrOLLNhtiPxTWKObZ7vjSaNLgbcV
         HpB03o5rzLDuVGloWmJhNRINQ1tvkGIa5x64i2Pxb/PtlSoHv+e5vQvNTnEpZBz8dSlv
         Vao1sexakS/twxao8m9IGzsWowWZReg/PzHbsXcALhnfZdqEbPcYdaWwL6g/nxgQeUTV
         tm5AVVety1DBFJFaREHj+CmlDlGOWBa4Qzy0cJ+yWQ1CAFBPvm3s5Wk/XcQrL0q1DDcd
         tnXg==
X-Gm-Message-State: AFqh2krXJNM52tjAGN3hhmdsKGgO7Tex8XpSeCzhhCLlXms7wfcJ4Zkf
        d7tMf8ePLUxq/PuZWsp4VFUEig==
X-Google-Smtp-Source: AMrXdXu+J9geZflBf/rBRyaID42ofTf5B8mU8eag03n3pJFpmUPXRBDIYyjv+ge2mc9wtTPxJ9b4qw==
X-Received: by 2002:ac2:4f12:0:b0:4b5:b5d0:36e4 with SMTP id k18-20020ac24f12000000b004b5b5d036e4mr12525900lfr.13.1672534195466;
        Sat, 31 Dec 2022 16:49:55 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y17-20020ac24e71000000b00492e3c8a986sm4004726lfs.264.2022.12.31.16.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Dec 2022 16:49:54 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx: Add support for SK-iMX53 board
Date:   Sun,  1 Jan 2023 02:49:54 +0200
Message-Id: <20230101004954.613652-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

Add support for the StartKit sk-imx53 board, a simple development board
with the iMX536A SoC.

Tested and works:
- UARTs
- SPI
- I2C
- GPU
- USB
- uSD
- NAND
- Ethernet

Not tested:
- Display
- VPU
- capture

Not yet working:
- Sound

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/Makefile           |   1 +
 arch/arm/boot/dts/imx53-sk-imx53.dts | 361 +++++++++++++++++++++++++++
 2 files changed, 362 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx53-sk-imx53.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d08a3c450ce7..d20fd01a8d07 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -465,6 +465,7 @@ dtb-$(CONFIG_SOC_IMX53) += \
 	imx53-ppd.dtb \
 	imx53-qsb.dtb \
 	imx53-qsrb.dtb \
+	imx53-sk-imx53.dtb \
 	imx53-smd.dtb \
 	imx53-tx53-x03x.dtb \
 	imx53-tx53-x13x.dtb \
diff --git a/arch/arm/boot/dts/imx53-sk-imx53.dts b/arch/arm/boot/dts/imx53-sk-imx53.dts
new file mode 100644
index 000000000000..06e27a222070
--- /dev/null
+++ b/arch/arm/boot/dts/imx53-sk-imx53.dts
@@ -0,0 +1,361 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Copyright 2023 Linaro Ltd.
+
+/dts-v1/;
+
+#include "imx53.dtsi"
+
+/ {
+	model = "StarterKit SK-iMX53 Board";
+	compatible = "starterkit,sk-imx53", "fsl,imx53";
+
+	aliases {
+		/*
+		 * iMX RTC is not battery powered on this boart.
+		 * Use the i2c RTC as rtc0.
+		 */
+		rtc0 = &rtc;
+		rtc1 = &srtc;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory@70000000 {
+		device_type = "memory";
+		/* v2 had only 256 MB, v3 has 512 MB */
+		reg = <0x70000000 0x20000000>;
+	};
+
+	reg_usb1_vbus: regulator-usb-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 29 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usb_otg_vbus: regulator-otg-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 24 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1>;
+	status = "okay";
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&esdhc1 {
+	cd-gpios = <&gpio3 14 GPIO_ACTIVE_LOW>;
+	fsl,wp-controller;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+	phy-handle = <&phy0>;
+	mac-address = [000000000000]; /* placeholder; will be overwritten by bootloader */
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+			device_type = "ethernet-phy";
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	sda-gpios = <&gpio4 13 GPIO_ACTIVE_HIGH>;
+	scl-gpios = <&gpio2 30 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	tlv320aic23: codec@1a {
+		compatible = "ti,tlv320aic23";
+		reg = <0x1a>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec>;
+		#sound-dai-cells = <0>;
+	};
+
+	rtc: rtc@68 {
+		compatible = "dallas,ds1338";
+		reg = <0x68>;
+	};
+};
+
+&iomuxc {
+	pinctrl_audmux: audmuxgrp {
+		fsl,pins = <
+			MX53_PAD_SD2_DATA3__AUDMUX_AUD4_TXC	0x80000000
+			MX53_PAD_SD2_DATA2__AUDMUX_AUD4_TXD	0x80000000
+			MX53_PAD_SD2_DATA1__AUDMUX_AUD4_TXFS	0x80000000
+			MX53_PAD_SD2_DATA0__AUDMUX_AUD4_RXD	0x80000000
+		>;
+	};
+
+	pinctrl_can1: can1grp {
+		fsl,pins = <
+			MX53_PAD_PATA_INTRQ__CAN1_TXCAN		0x80000000
+			MX53_PAD_PATA_DIOR__CAN1_RXCAN		0x80000000
+		>;
+	};
+
+	pinctrl_codec: codecgrp {
+		fsl,pins = <
+			MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK	0x1c4
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX53_PAD_EIM_D16__ECSPI1_SCLK		0x80000000
+			MX53_PAD_EIM_D17__ECSPI1_MISO		0x80000000
+			MX53_PAD_EIM_D18__ECSPI1_MOSI		0x80000000
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX53_PAD_CSI0_DAT9__ECSPI2_MOSI		0xe4
+			MX53_PAD_CSI0_DAT10__ECSPI2_MISO	0xe4
+			MX53_PAD_EIM_CS0__ECSPI2_SCLK		0xe4
+		>;
+	};
+
+	pinctrl_esdhc1: esdhc1grp {
+		fsl,pins = <
+			MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1d5
+			MX53_PAD_SD1_DATA1__ESDHC1_DAT1		0x1d5
+			MX53_PAD_SD1_DATA2__ESDHC1_DAT2		0x1d5
+			MX53_PAD_SD1_DATA3__ESDHC1_DAT3		0x1d5
+			MX53_PAD_SD1_CMD__ESDHC1_CMD		0x1d5
+			MX53_PAD_SD1_CLK__ESDHC1_CLK		0x1d5
+			MX53_PAD_EIM_DA14__GPIO3_14		0x1f0
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX53_PAD_FEC_MDC__FEC_MDC		0x80000000
+			MX53_PAD_FEC_MDIO__FEC_MDIO		0x80000000
+			MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x80000000
+			MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x80000000
+			MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x80000000
+			MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x80000000
+			MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x80000000
+			MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x80000000
+			MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x80000000
+			MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x80000000
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX53_PAD_EIM_D21__I2C1_SCL		0xc0000000
+			MX53_PAD_EIM_D28__I2C1_SDA		0xc0000000
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX53_PAD_KEY_ROW3__I2C2_SDA             0xc0000000
+			MX53_PAD_EIM_EB2__I2C2_SCL		0xc0000000
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+			MX53_PAD_KEY_ROW3__GPIO4_13		0x1e4
+			MX53_PAD_EIM_EB2__GPIO2_30		0x1e4
+		>;
+	};
+
+	pinctrl_nand: nandgrp {
+		fsl,pins = <
+			MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B	0x4
+			MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B	0x4
+			MX53_PAD_NANDF_CLE__EMI_NANDF_CLE	0x4
+			MX53_PAD_NANDF_ALE__EMI_NANDF_ALE	0x4
+			MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B	0xe0
+			MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0	0xe0
+			MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0	0x4
+			MX53_PAD_NANDF_CS1__EMI_NANDF_CS_1	0x4
+			MX53_PAD_NANDF_CS2__EMI_NANDF_CS_2	0x4
+			MX53_PAD_NANDF_CS3__EMI_NANDF_CS_3	0x4
+			MX53_PAD_EIM_DA0__EMI_NAND_WEIM_DA_0	0xa4
+			MX53_PAD_EIM_DA1__EMI_NAND_WEIM_DA_1	0xa4
+			MX53_PAD_EIM_DA2__EMI_NAND_WEIM_DA_2	0xa4
+			MX53_PAD_EIM_DA3__EMI_NAND_WEIM_DA_3	0xa4
+			MX53_PAD_EIM_DA4__EMI_NAND_WEIM_DA_4	0xa4
+			MX53_PAD_EIM_DA5__EMI_NAND_WEIM_DA_5	0xa4
+			MX53_PAD_EIM_DA6__EMI_NAND_WEIM_DA_6	0xa4
+			MX53_PAD_EIM_DA7__EMI_NAND_WEIM_DA_7	0xa4
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX53_PAD_GPIO_9__PWM1_PWMO		0x5
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX53_PAD_PATA_DIOW__UART1_TXD_MUX	0x1e4
+			MX53_PAD_PATA_DMACK__UART1_RXD_MUX	0x1e4
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX53_PAD_EIM_D24__UART3_TXD_MUX		0x1e4
+			MX53_PAD_EIM_D25__UART3_RXD_MUX		0x1e4
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX53_PAD_KEY_COL0__UART4_TXD_MUX	0x1e4
+			MX53_PAD_KEY_ROW0__UART4_RXD_MUX	0x1e4
+		>;
+	};
+};
+
+&nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand>;
+	nand-bus-width = <8>;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "boot";
+			reg = <0x00000000 0x00100000>;
+			read-only;
+		};
+
+		partition@100000 {
+			label = "u-boot";
+			reg = <0x00100000 0x00100000>;
+			read-only;
+		};
+
+		partition@200000 {
+			label = "u-boot-env";
+			reg = <0x00200000 0x00100000>;
+			read-only;
+		};
+
+		partition@1000000 {
+			label = "kernel-safe";
+			reg = <0x01000000 0x00a00000>;
+			read-only;
+		};
+
+		partition@1a00000 {
+			label = "kernel";
+			reg = <0x01a00000 0x005e0000>;
+		};
+
+		partition@2000000 {
+			label = "ubifs";
+			reg = <0x02000000 0x0e000000>;
+		};
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb1_vbus>;
+	phy_type = "utmi";
+	disable-over-current;
+	status = "okay";
+};
+
+&usbotg {
+	dr_mode = "peripheral";
+	disable-over-current;
+	status = "okay";
+};
+
+&vpu {
+	status = "okay";
+};
-- 
2.39.0

