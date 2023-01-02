Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3C1265ACA6
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 01:44:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbjABAoe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 19:44:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229974AbjABAoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 19:44:32 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B168625D5
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 16:44:30 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so39611075lfv.2
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 16:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p5XP9JzVNhVmbNRAJ/KzJEMTIVOs+xdBDNgBgX4Irvg=;
        b=OGuBqHWhL3oINKbSc3X6brXHXOGbzyudEQIeXKrsARmMRND0qurqlTweKbS3DtqP6a
         zaTVBcLseMKu5W5q5DeKbBnPc70hn+t4HwTCjrMjeKhAjSjIbVcn4cS4MN/cP4ipXV50
         uXB+NvosBkMNda/hXnsZoVnr//1Y/9zTdFtcngxL6bhg3fYtoCtfmQbQNRG8lQHIhby0
         zRGvwFKRvEM5f8xCZ6GMzqJm+5ups2Ejj0CGvCOJfSEUb3GZpmLzds1FxzGRJ7CH2MDK
         of5sWO5560NGJbWMSWKqDzbGWTHWdCcHBTyU7fUBNgderAAkyYNqzgud7g0CZQw7xHFf
         AzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p5XP9JzVNhVmbNRAJ/KzJEMTIVOs+xdBDNgBgX4Irvg=;
        b=MlAY2tW1ejDzDuPZqXtRWx9zrZMDGWAAn5TxTI7SMeh4qKpn807//+Lo/aai+urWPT
         7lurMuhVxZXdAYLlipQ/Qsjqs36Wp/GRbRfl+5WMMZn0GcHa6el62H4yt9JOvt+++4bo
         HVY8Mw6HYWcDwPZZqE8SlEfDNrVi2XGrWmCPF+zdF01hosfH5Mut1DZ/cZ+un0JP5ANw
         IElkmeLIL1wjVPolifRlr3Nc8h72Nnm4t8SYgV4AV8VGHy9QIPWjfZ4qfLqS32faCDg8
         Zkrq2gmKWjOpiD/mQGlYAgL8DpDDVe6besZuPHwqPbWOBsDBzXq5tu4ivtxyTT1XAQu0
         S2GQ==
X-Gm-Message-State: AFqh2kq7+SzkHOa4lz4OJmnMC/4RYylU/r4T16Qn9KzU4xxYhzkjuX6/
        eTQQqgeU32IjE0Ls1ed0xydOrm27T6hG/I8V
X-Google-Smtp-Source: AMrXdXuOSQTJP48iGW3L1MT0DSUt5ZRYSX/2lD0k2POZgB4hGeFzi1ID5NON3QIG0wrhI1pySOxtuw==
X-Received: by 2002:a05:6512:368a:b0:4b4:e14a:ec7d with SMTP id d10-20020a056512368a00b004b4e14aec7dmr10267017lfs.17.1672620269047;
        Sun, 01 Jan 2023 16:44:29 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b0049482adb3basm4304788lfz.63.2023.01.01.16.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 16:44:28 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] ARM: dts: imx: Add support for SK-iMX53 board
Date:   Mon,  2 Jan 2023 02:44:25 +0200
Message-Id: <20230102004425.887092-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
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
 arch/arm/boot/dts/imx53-sk-imx53.dts | 357 +++++++++++++++++++++++++++
 2 files changed, 358 insertions(+)
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
index 000000000000..103e73176e47
--- /dev/null
+++ b/arch/arm/boot/dts/imx53-sk-imx53.dts
@@ -0,0 +1,357 @@
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
+		 * iMX RTC is not battery powered on this board.
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
+			reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
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
+			MX53_PAD_SD2_DATA3__AUDMUX_AUD4_TXC	0x1e4
+			MX53_PAD_SD2_DATA2__AUDMUX_AUD4_TXD	0x1e4
+			MX53_PAD_SD2_DATA1__AUDMUX_AUD4_TXFS	0x1e4
+			MX53_PAD_SD2_DATA0__AUDMUX_AUD4_RXD	0x1e4
+		>;
+	};
+
+	pinctrl_can1: can1grp {
+		fsl,pins = <
+			MX53_PAD_PATA_INTRQ__CAN1_TXCAN		0x1e4
+			MX53_PAD_PATA_DIOR__CAN1_RXCAN		0x1e4
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
+			MX53_PAD_EIM_D16__ECSPI1_SCLK		0x1e4
+			MX53_PAD_EIM_D17__ECSPI1_MISO		0x1e4
+			MX53_PAD_EIM_D18__ECSPI1_MOSI		0x1e4
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX53_PAD_CSI0_DAT9__ECSPI2_MOSI		0x1e4
+			MX53_PAD_CSI0_DAT10__ECSPI2_MISO	0x1e4
+			MX53_PAD_EIM_CS0__ECSPI2_SCLK		0x1e4
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
+			MX53_PAD_FEC_MDC__FEC_MDC		0x1e4
+			MX53_PAD_FEC_MDIO__FEC_MDIO		0x1e4
+			MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x1e4
+			MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x1e4
+			MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x1e4
+			MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x1e4
+			MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x1e4
+			MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x1c4
+			MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x1e4
+			MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x1e4
+			MX53_PAD_GPIO_1__GPIO1_1		0x1c4
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX53_PAD_EIM_D21__I2C1_SCL		0x400001e4
+			MX53_PAD_EIM_D28__I2C1_SDA		0x400001e4
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX53_PAD_KEY_ROW3__I2C2_SDA             0x400001e4
+			MX53_PAD_EIM_EB2__I2C2_SCL		0x400001e4
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
-- 
2.39.0

