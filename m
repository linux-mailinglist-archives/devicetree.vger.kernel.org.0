Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEE8673AD0
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:56:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbjASN4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:56:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231395AbjASNz4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:55:56 -0500
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D714A75A0F
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:55:37 -0800 (PST)
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199]) by mx-outbound23-43.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 19 Jan 2023 13:55:34 +0000
Received: by mail-oi1-f199.google.com with SMTP id eb8-20020a056808634800b0036e1f34427aso675953oib.18
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ij+LKypRyC4ET1YOYoExmQTJSo7+G67OGUgekgJ94Yg=;
        b=IRFYsRaD3I302AXwlsHkOJZzKQHYhQBWslTiVQsarDNNbZMFI9zYx00lHQ7aYchuZb
         EOLu2p+bx26HGkcVmY9AjwUYBJm7DPo/YHG2k59lcvERuyF19CLHJW2DzvYFdDL7iUHa
         MRarZbk9AahGmNWep1EDRUB6mFhC4HyA0wP0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ij+LKypRyC4ET1YOYoExmQTJSo7+G67OGUgekgJ94Yg=;
        b=o2oUtubIGLZnHisD2sSdu9njFZmA9HS+537HsAf6MUPfcZlWo+EGBBSoS3HWj0ZA1X
         5ZvJZ5Kjh4tZUbLkxcRo/rvNBGe3ypyM6Qnfv7Xn0kJQPROiIcKXmvleLHkzotNsWYNv
         ftlXJLxY1Gjo3FdIiqFOgAnRYfJiok8hj1+1kRobFo6IaTKUSXrWQv0N4LFS4egx7uli
         RYcQylUJ0YnVt9wgSxTf3O+n2kuU08jlmPUJiB3oLG5MUf1qaSNtlGb4Z3HBqnAB3vkf
         UeRYtXdoh5/1E529cNGBDILi0P09vPEb1i/cRYYB1ZyX0/66afNfAlylJHyNagd0KoQo
         l7lA==
X-Gm-Message-State: AFqh2koFpL2ePRGwqtH9vgdDVl88DJCskyhCm9Kwz8A9DlXgt+vYnQH3
        2rby1zd0pljA3ZGeWdMuuJ7nfxobrZf/4hrh5zwkD6IsQChZxaCYSE1T1QHB+ZrvvXabmACla4A
        hMbYjsfowuigprLW9ngpj80rd+deDJXKPBju/degc4qOi19IGy8Uhkhw8VA==
X-Received: by 2002:a62:63c6:0:b0:576:ddd4:6a02 with SMTP id x189-20020a6263c6000000b00576ddd46a02mr11386278pfb.22.1674135064563;
        Thu, 19 Jan 2023 05:31:04 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtSilHtZxuUmQzIhtirA57CSvuBMsp+pEpNPo/LV67F9fFfUijD8PDM6qo9lanw/gfKgyaohg==
X-Received: by 2002:a62:63c6:0:b0:576:ddd4:6a02 with SMTP id x189-20020a6263c6000000b00576ddd46a02mr11386245pfb.22.1674135064263;
        Thu, 19 Jan 2023 05:31:04 -0800 (PST)
Received: from LAP789U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id l123-20020a622581000000b005818d429d98sm23949210pfl.136.2023.01.19.05.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 05:31:03 -0800 (PST)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 2/2] arch: arm64: dts: Add support for AM69 Starter Kit
Date:   Thu, 19 Jan 2023 18:59:58 +0530
Message-Id: <20230119132958.124435-3-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230119132958.124435-1-sabiya.d@ti.com>
References: <20230119132958.124435-1-sabiya.d@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1674136534-305931-5378-9940-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.167.199
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245567 [from 
        cloudscan8-57.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.50 BSF_RULE7568M          META: Custom Rule 7568M 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_RULE7568M, BSF_SC0_MISMATCH_TO, NO_REAL_NAME, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 Starter Kit is a single board designed for TI AM69 SOC that
provides advanced system integration in automotive ADAS applications,
autonomous mobile robot and edge AI applications. The SOC comprises
of Cortex-A72s in dual clusters, lockstep capable dual Cortex-R5F MCUs,
Vision Processing Accelerators (VPAC) with Image Signal Processor (ISP)
and multiple vision assist accelerators, Depth and Motion Processing
Accelerators (DMPAC), Deep-learning Matrix Multiply Accelerator(MMA)
and C7x floating point vector DSP

AM69 SK supports the following interfaces:
       * 32 GB LPDDR4 RAM
       * x1 Gigabit Ethernet interface
       * x3 USB 3.0 Type-A ports
       * x1 USB 3.0 Type-C port
       * x1 UHS-1 capable micro-SD card slot
       * x4 MCAN instances
       * 32 GB eMMC Flash
       * 512 Mbit OSPI flash
       * x2 Display connectors
       * x1 PCIe M.2 M Key
       * x1 PCIe M.2 E Key
       * x1 4L PCIe Card Slot
       * x3 CSI2 Camera interface
       * 40-pin Raspberry Pi header

Add initial support for the AM69 SK board.

Design Files: https://www.ti.com/lit/zip/SPRR466
TRM: https://www.ti.com/lit/zip/spruj52

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile       |   1 +
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 180 ++++++++++++++++++++++++++
 2 files changed, 181 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am69-sk.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index e7c2c7dd0b25..04b1a7611096 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
 
+dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
new file mode 100644
index 000000000000..bc49ba534790
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Design Files: https://www.ti.com/lit/zip/SPRR466
+ * TRM: https://www.ti.com/lit/zip/spruj52
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "k3-j784s4.dtsi"
+
+/ {
+	compatible = "ti,am69-sk", "ti,j784s4";
+	model = "Texas Instruments AM69 SK";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	aliases {
+		serial2 = &main_uart8;
+		mmc1 = &main_sdhci1;
+		i2c0 = &main_i2c0;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 32G RAM */
+		reg = <0x00 0x80000000 0x00 0x80000000>,
+		      <0x08 0x80000000 0x07 0x80000000>;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			no-map;
+		};
+	};
+
+	vusb_main: regulator-vusb-main5v0 {
+		/* USB MAIN INPUT 5V DC */
+		compatible = "regulator-fixed";
+		regulator-name = "vusb-main5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_5v0: regulator-vsys5v0 {
+		/* Output of LM61460 */
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vusb_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_3v3: regulator-vsys3v3 {
+		/* Output of LM5143 */
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vusb_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_mmc1: regulator-sd {
+		/* Output of TPS22918 */
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_mmc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		vin-supply = <&vsys_3v3>;
+		gpio = <&exp1 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	vdd_sd_dv: regulator-tlv71033 {
+		/* Output of TLV71033 */
+		compatible = "regulator-gpio";
+		regulator-name = "tlv71033";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_dv_pins_default>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&vsys_5v0>;
+		gpios = <&main_gpio0 49 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+	};
+};
+
+&main_pmx0 {
+	main_uart8_pins_default: main-uart8-pins-default {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0d0, PIN_INPUT, 11) /* (AP38) SPI0_CS1.UART8_RXD */
+			J784S4_IOPAD(0x0d4, PIN_OUTPUT, 11) /* (AN38) SPI0_CLK.UART8_TXD */
+		>;
+	};
+
+	main_i2c0_pins_default: main-i2c0-pins-default {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0e0, PIN_INPUT_PULLUP, 0) /* (AN36) I2C0_SCL */
+			J784S4_IOPAD(0x0e4, PIN_INPUT_PULLUP, 0) /* (AP37) I2C0_SDA */
+		>;
+	};
+
+	main_mmc1_pins_default: main-mmc1-pins-default {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x104, PIN_INPUT, 0) /* (AB38) MMC1_CLK */
+			J784S4_IOPAD(0x108, PIN_INPUT, 0) /* (AB36) MMC1_CMD */
+			J784S4_IOPAD(0x100, PIN_INPUT, 0) /* (No Pin) MMC1_CLKLB */
+			J784S4_IOPAD(0x0fc, PIN_INPUT, 0) /* (AA33) MMC1_DAT0 */
+			J784S4_IOPAD(0x0f8, PIN_INPUT, 0) /* (AB34) MMC1_DAT1 */
+			J784S4_IOPAD(0x0f4, PIN_INPUT, 0) /* (AA32) MMC1_DAT2 */
+			J784S4_IOPAD(0x0f0, PIN_INPUT, 0) /* (AC38) MMC1_DAT3 */
+			J784S4_IOPAD(0x0e8, PIN_INPUT, 8) /* (AR38) TIMER_IO0.MMC1_SDCD */
+		>;
+	};
+
+	vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0C4, PIN_INPUT, 7) /* (AD36) ECAP0_IN_APWM_OUT.GPIO0_49 */
+		>;
+	};
+};
+
+&main_uart8 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart8_pins_default>;
+};
+
+&main_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c0_pins_default>;
+	clock-frequency = <400000>;
+
+	exp1: gpio@21 {
+		compatible = "ti,tca6416";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names	= "BOARDID_EEPROM_WP", "CAN_STB", "GPIO_uSD_PWR_EN",
+				"IO_EXP_MCU_RGMII_RST#", "IO_EXP_PCIe0_4L_PERST#",
+				"IO_EXP_PCIe1_M.2_RTSz", "IO_EXP_PCIe3_M.2_RTSz",
+				"PM_INA_BUS_EN", "ENET1_EXP_PWRDN", "EXP1_ENET_RSTz",
+				"ENET1_I2CMUX_SEL", "PCIe0_CLKREQ#", "PCIe1_M.2_CLKREQ#",
+				"PCIe3_M2_CLKREQ#", "PCIe0_PRSNT2#_1", "PCIe0_PRSNT2#_2";
+	};
+};
+
+&main_sdhci1 {
+	/* SD card */
+	status = "okay";
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	pinctrl-names = "default";
+	disable-wp;
+	vmmc-supply = <&vdd_mmc1>;
+	vqmmc-supply = <&vdd_sd_dv>;
+};
+
+&main_gpio0 {
+	status = "okay";
+};
-- 
2.25.1

