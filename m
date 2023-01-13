Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34FF166A2F1
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 20:29:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbjAMT3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 14:29:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbjAMT3M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 14:29:12 -0500
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4562E87F3A
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 11:28:44 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id j15so14397988qtv.4
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 11:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8xLeML+IM2NXdvQdyuAbDPwLmWJn/6uvJ23G35oWwk=;
        b=Q+3QlkBj+whLKMDflle4Z0R65xtcHkEGCbH9MWnaTcb0FDGzRDHYMwbxMwKcu5F2v/
         7LD2N8u8QahOIKjvpIuzakog6tIWjL2UTLEs6SAhgP19bOWMhM/9G/oK67j4RyPs4/6X
         QHylp9uGJvWgWjEIHnXjev+bSiyCE+XRtw/+tvKrByFR61u3TfGFIt6Xfu7qWKTS7X8P
         gbcwhJ0QzH/WhBAjnQykJcnNQ+GPU7pQ94ukpTtHGq76UXwJv0cYwQ0nIsZKmesdbX+c
         scfhOgTLOPKWTFhWy7bk7Bro4Fykiyckv285Oe6LFyG842WHrppOUFQ9Yxmb6HUemz1n
         hWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8xLeML+IM2NXdvQdyuAbDPwLmWJn/6uvJ23G35oWwk=;
        b=mpKeOMdQatcVQn8qaDuDrEq/fqrcFNAtrKM5aFPni2jVL8NZhKY9S0VudetZ4aeKjH
         GqM+jr/EcC/vnK0mFeEuPyEbA3FKMdOQ7yjHuf09bvRHkU1cjA/0YLJ0v2u3MD1xirgw
         jTGAJ/W0GFMkKQUOEZH34lwvkUMaNRluYN9C6s1QtvftlEbWgN3t1AoTvBoLgmdooTxn
         BwY29iiQhSpN6T37B1p6tkrQyMqWuYb+uamvjtRtngGjctDls6uanB80Mml7/FiAyQ05
         0TjmC5WNHFzDJUY/oDgGVNVOM7Ysi16XzGFtH2/8wGEZpVMCcWhnUoi7mYtSZSpQeQ9b
         FolA==
X-Gm-Message-State: AFqh2krBq3BKDlbJ4G/W41u08++prID/XizLRabvllhkkM/FThrBLI63
        MbVmVqnREzz7jBjf/wDw9RyKRly9lkg=
X-Google-Smtp-Source: AMrXdXs1gX2+fQDnau0SPUaim3AajhlCWfasUhCz9DDdH/J8albp1g2gHbMCFi3MDVMlpJTKxE5LDw==
X-Received: by 2002:ac8:5e8f:0:b0:3a8:175a:fd48 with SMTP id r15-20020ac85e8f000000b003a8175afd48mr105675767qtx.64.1673638123786;
        Fri, 13 Jan 2023 11:28:43 -0800 (PST)
Received: from mrbigstuff.yallywood.com (45-22-66-152.lightspeed.tukrga.sbcglobal.net. [45.22.66.152])
        by smtp.gmail.com with ESMTPSA id m20-20020ac866d4000000b003a6a7a20575sm10969317qtp.73.2023.01.13.11.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 11:28:43 -0800 (PST)
From:   Logan Blyth <mrbojangles3@gmail.com>
X-Google-Original-From: Logan Blyth <mr.bo.jangles3@gmail.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.org
Cc:     jon@solid-run.com, Logan Blyth <mrbojangles3@gmail.com>
Subject: [PATCH] Add support for SolidRun Clearfog CN9130 base,pro.
Date:   Fri, 13 Jan 2023 14:28:23 -0500
Message-Id: <20230113192823.6301-2-mr.bo.jangles3@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113192823.6301-1-mr.bo.jangles3@gmail.com>
References: <20230113192823.6301-1-mr.bo.jangles3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Logan Blyth <mrbojangles3@gmail.com>

Signed-off-by: Logan Blyth <mrbojangles3@gmail.com>
---
 arch/arm64/boot/dts/marvell/Makefile          |   2 +
 .../arm64/boot/dts/marvell/cn9130-cf-base.dts | 367 +++++++++++++++
 arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts | 428 ++++++++++++++++++
 3 files changed, 797 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 058237681fe5..6b3b4c4856c1 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -25,4 +25,6 @@ dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db-B.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-A.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-B.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-pro.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-base.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += ac5-98dx35xx-rd.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
new file mode 100644
index 000000000000..f258a539e378
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
@@ -0,0 +1,367 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright SolidRun Ltd.
+ *
+ * Device tree for the	CN9130 based SOM.
+ */
+
+#include "cn9130.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "SolidRun CN9130 based SOM Clearfog Base";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		gpio1 = &cp0_gpio1;
+		gpio2 = &cp0_gpio2;
+		i2c0 = &cp0_i2c0;
+		ethernet0 = &cp0_eth0;
+		ethernet1 = &cp0_eth1;
+		ethernet2 = &cp0_eth2;
+		spi1 = &cp0_spi0;
+		spi2 = &cp0_spi1;
+	};
+
+	memory@00000000 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+	v_3_3: regulator-3-3v {
+		compatible = "regulator-fixed";
+		regulator-name = "v_3_3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		status = "okay";
+	};
+	ap0_reg_sd_vccq: ap0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "ap0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		states = <1800000 0x1 3300000 0x0>;
+	};
+
+	cp0_reg_usb3_vbus0: cp0_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	cp0_usb3_0_phy0: cp0_usb3_phy@0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus0>;
+	};
+
+	cp0_reg_usb3_vbus1: cp0_usb3_vbus@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	cp0_usb3_0_phy1: cp0_usb3_phy@1 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus1>;
+	};
+
+	cp0_reg_sd_vccq: cp0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		states = <1800000 0x1
+			3300000 0x0>;
+	};
+
+	cp0_reg_sd_vcc: cp0_sd_vcc@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0_sd_vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	cp0_sfp_eth0: sfp-eth@0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp0_i2c1>;
+		los-gpio = <&expander0 12 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&expander0 15 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <2000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+// on-board eMMC
+&ap_sdhci0 {
+	pinctrl-names = "default";
+	bus-width = <8>;
+	vqmmc-supply = <&ap0_reg_sd_vccq>;
+	status = "okay";
+};
+
+&cp0_crypto {
+	status = "disabled";
+};
+
+&cp0_ethernet {
+	status = "okay";
+};
+
+&cp0_gpio1 {
+	status = "okay";
+};
+
+&cp0_gpio2 {
+	status = "okay";
+};
+
+// EEPROM
+&cp0_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c0_pins>;
+	clock-frequency = <100000>;
+
+	/*
+	 * PCA9655 GPIO expander, up to 1MHz clock.
+	 *	0-CON3 CLKREQ#
+	 *	1-CON3 PERST#
+	 *	2-CON2 PERST#
+	 *	3-CON3 W_DISABLE
+	 *	4-CON2 CLKREQ#
+	 *	5-USB3 overcurrent
+	 *	6-USB3 power
+	 *	7-CON2 W_DISABLE
+	 *	8-JP4 P1
+	 *	9-JP4 P4
+	 * 10-JP4 P5
+	 * 11-m.2 DEVSLP
+	 * 12-SFP_LOS
+	 * 13-SFP_TX_FAULT
+	 * 14-SFP_TX_DISABLE
+	 * 15-SFP_MOD_DEF0
+	 */
+	expander0: gpio-expander@20 {
+		/*
+		 * This is how it should be:
+		 * compatible = "onnn,pca9655", "nxp,pca9555";
+		 * but you can't do this because of the way I2C works.
+		 */
+		compatible = "nxp,pca9555";
+		gpio-controller;
+		#gpio-cells = <2>;
+		reg = <0x20>;
+
+		pcie1_0_clkreq {
+			gpio-hog;
+			gpios = <0 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "pcie1.0-clkreq";
+		};
+		pcie1_0_w_disable {
+			gpio-hog;
+			gpios = <3 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "pcie1.0-w-disable";
+		};
+		usb3_ilimit {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "usb3-current-limit";
+		};
+		usb3_power {
+			gpio-hog;
+			gpios = <6 GPIO_ACTIVE_HIGH>;
+			output-high;
+			line-name = "usb3-power";
+		};
+		m2_devslp {
+			gpio-hog;
+			gpios = <11 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "m.2 devslp";
+		};
+	};
+
+	// The MCP3021 supports standard and fast modes
+	mikrobus_adc: mcp3021@4c {
+		compatible = "microchip,mcp3021";
+		reg = <0x4c>;
+	};
+
+	// EEPROM on the SOM
+	eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+};
+
+// I2C Master
+&cp0_i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c1_pins>;
+};
+
+&cp0_gpio1 {
+	// Release switch reset
+	phy_reset {
+		gpio-hog;
+		gpios = <27 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
+&cp0_mdio {
+	status = "okay";
+	phy0: ethernet-phy@0 {
+		// Green led blinks on activity, Orange LED on link
+		marvell,reg-init = <3 16 0 0x0064>;
+		reg = <0>;
+	};
+	phy1: ethernet-phy@1 {
+		// Green led blinks on activity, Orange LED on link
+		marvell,reg-init = <3 16 0 0x0064>;
+		reg = <1>;
+	};
+};
+
+// SRDS #0 - SATA on M.2 connector
+&cp0_sata0 {
+	status = "okay";
+};
+
+// SRDS #1 - USB 3.0 host
+&cp0_usb3_0 {
+	status = "okay";
+	usb-phy = <&cp0_usb3_0_phy0>;
+	phy-names = "usb";
+};
+
+// SRDS #2 - SFP+ 10GE
+&cp0_eth0 {
+	status = "okay";
+	phy-mode = "10gbase-r";
+	phys = <&cp0_comphy2 0>;
+	managed = "in-band-status";
+	sfp = <&cp0_sfp_eth0>;
+};
+
+// SRDS #3 - SGMII 1GE on carrier board
+&cp0_eth1 {
+	status = "okay";
+	phys = <&cp0_comphy3 1>;
+	phy = <&phy1>;
+	managed = "in-band-status";
+	phy-mode = "sgmii";
+};
+
+// SRDS #4 - USB 3.0 host on M.2 connector
+&cp0_usb3_1 {
+	status = "okay";
+	usb-phy = <&cp0_usb3_0_phy1>;
+	phy-names = "usb";
+};
+
+// SRDS #5 - mini PCIe slot
+&cp0_pcie2 {
+	status = "okay";
+	phys = <&cp0_comphy5 2>;
+	num-lanes = <1>;
+	reset-gpios = <&expander0 1 GPIO_ACTIVE_LOW>;
+};
+
+// GE PHY RGMII
+&cp0_eth2 {
+	status = "okay";
+	phy = <&phy0>;
+	phy-mode = "rgmii-id";
+	pinctrl-0 = <&cp0_ge2_rgmii_pins>;
+};
+
+&cp0_sdhci0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_sdhci_pins
+			&cp0_sdhci_cd_pins>;
+	bus-width = <4>;
+	cd-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
+	no-1-8-v;
+	vqmmc-supply = <&v_3_3>;
+	vmmc-supply = <&v_3_3>;
+};
+
+&cp0_spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_spi1_pins>;
+	reg = <0x700680 0x50>;
+	spi-flash@0 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-max-frequency = <10000000>;
+	};
+	spi-flash@1 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x1>;
+		// On carrier MUX does not allow higher frequencies
+		spi-max-frequency = <20000000>;
+	};
+};
+
+&cp0_syscon0 {
+	cp0_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+		cp0_i2c0_pins: cp0-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp0_i2c1_pins: cp0-i2c-pins-1 {
+			marvell,pins = "mpp35", "mpp36";
+			marvell,function = "i2c1";
+		};
+		cp0_ge2_rgmii_pins: cp0-ge-rgmii-pins-0 {
+			marvell,pins =	"mpp44", "mpp45", "mpp46",
+					"mpp47", "mpp48", "mpp49",
+					"mpp50", "mpp51", "mpp52",
+					"mpp53", "mpp54", "mpp55";
+			marvell,function = "ge1";
+		};
+		cp0_sdhci_cd_pins: cp0-sdhci-cd-pins-0 {
+			marvell,pins = "mpp43";
+			marvell,function = "sdio";
+		};
+		cp0_sdhci_pins: cp0-sdhi-pins-0 {
+			marvell,pins =	"mpp56", "mpp57", "mpp58",
+					"mpp59", "mpp60", "mpp61";
+			marvell,function = "sdio";
+		};
+		cp0_spi1_pins: cp0-spi-pins-1 {
+			marvell,pins = "mpp12", "mpp13", "mpp14", "mpp15", "mpp16";
+			marvell,function = "spi1";
+		};
+	};
+};
+
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts
new file mode 100644
index 000000000000..781d5c8f0fa8
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts
@@ -0,0 +1,428 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright SolidRun Ltd.
+ *
+ * Device tree for the	CN9130 based SOM.
+ */
+
+#include "cn9130.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "SolidRun CN9130 based SOM Clearfog Pro";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		gpio1 = &cp0_gpio1;
+		gpio2 = &cp0_gpio2;
+		i2c0 = &cp0_i2c0;
+		ethernet0 = &cp0_eth0;
+		ethernet1 = &cp0_eth1;
+		ethernet2 = &cp0_eth2;
+		spi1 = &cp0_spi0;
+		spi2 = &cp0_spi1;
+	};
+
+	memory@00000000 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+	v_3_3: regulator-3-3v {
+		compatible = "regulator-fixed";
+		regulator-name = "v_3_3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		status = "okay";
+	};
+	ap0_reg_sd_vccq: ap0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "ap0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		states = <1800000 0x1 3300000 0x0>;
+	};
+
+	cp0_reg_usb3_vbus0: cp0_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	cp0_usb3_0_phy0: cp0_usb3_phy@0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus0>;
+	};
+
+	cp0_reg_usb3_vbus1: cp0_usb3_vbus@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0-xhci1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
+	cp0_usb3_0_phy1: cp0_usb3_phy@1 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp0_reg_usb3_vbus1>;
+	};
+
+	cp0_reg_sd_vccq: cp0_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "cp0_sd_vccq";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		states = <1800000 0x1
+			3300000 0x0>;
+	};
+
+	cp0_reg_sd_vcc: cp0_sd_vcc@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp0_sd_vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	cp0_sfp_eth0: sfp-eth@0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp0_i2c1>;
+		los-gpio = <&expander0 12 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&expander0 15 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <2000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+// on-board eMMC
+&ap_sdhci0 {
+	pinctrl-names = "default";
+	bus-width = <8>;
+	vqmmc-supply = <&ap0_reg_sd_vccq>;
+	status = "okay";
+};
+
+&cp0_crypto {
+	status = "disabled";
+};
+
+&cp0_ethernet {
+	status = "okay";
+};
+
+&cp0_gpio1 {
+	status = "okay";
+};
+
+&cp0_gpio2 {
+	status = "okay";
+};
+
+// EEPROM
+&cp0_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c0_pins>;
+	clock-frequency = <100000>;
+
+	/*
+	 * PCA9655 GPIO expander, up to 1MHz clock.
+	 *	0-CON3 CLKREQ#
+	 *	1-CON3 PERST#
+	 *	2-CON2 PERST#
+	 *	3-CON3 W_DISABLE
+	 *	4-CON2 CLKREQ#
+	 *	5-USB3 overcurrent
+	 *	6-USB3 power
+	 *	7-CON2 W_DISABLE
+	 *	8-JP4 P1
+	 *	9-JP4 P4
+	 * 10-JP4 P5
+	 * 11-m.2 DEVSLP
+	 * 12-SFP_LOS
+	 * 13-SFP_TX_FAULT
+	 * 14-SFP_TX_DISABLE
+	 * 15-SFP_MOD_DEF0
+	 */
+	expander0: gpio-expander@20 {
+		/*
+		 * This is how it should be:
+		 * compatible = "onnn,pca9655", "nxp,pca9555";
+		 * but you can't do this because of the way I2C works.
+		 */
+		compatible = "nxp,pca9555";
+		gpio-controller;
+		#gpio-cells = <2>;
+		reg = <0x20>;
+
+		pcie1_0_clkreq {
+			gpio-hog;
+			gpios = <0 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "pcie1.0-clkreq";
+		};
+		pcie1_0_w_disable {
+			gpio-hog;
+			gpios = <3 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "pcie1.0-w-disable";
+		};
+		pcie2_0_clkreq {
+			gpio-hog;
+			gpios = <4 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "pcie2.0-clkreq";
+		};
+		pcie2_0_w_disable {
+			gpio-hog;
+			gpios = <7 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "pcie2.0-w-disable";
+		};
+		usb3_ilimit {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "usb3-current-limit";
+		};
+		usb3_power {
+			gpio-hog;
+			gpios = <6 GPIO_ACTIVE_HIGH>;
+			output-high;
+			line-name = "usb3-power";
+		};
+		m2_devslp {
+			gpio-hog;
+			gpios = <11 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "m.2 devslp";
+		};
+	};
+
+	// The MCP3021 supports standard and fast modes
+	mikrobus_adc: mcp3021@4c {
+		compatible = "microchip,mcp3021";
+		reg = <0x4c>;
+	};
+
+	// EEPROM on the SOM
+	eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+};
+
+// I2C Master
+&cp0_i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c1_pins>;
+};
+
+&cp0_gpio1 {
+	// Release switch reset
+	phy_reset {
+		gpio-hog;
+		gpios = <27 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
+&cp0_mdio {
+	status = "okay";
+	phy0: ethernet-phy@0 {
+		// Green led blinks on activity, Orange LED on link
+		marvell,reg-init = <3 16 0 0x0064>;
+		reg = <0>;
+	};
+	switch@4 {
+		compatible = "marvell,mv88e6085";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <4>;
+		pinctrl-0 = <&cp0_dsa0_pins>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "lan5";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "lan4";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan3";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan2";
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "lan1";
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+				ethernet = <&cp0_eth1>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+
+		};
+	};};
+
+// SRDS #0 - SATA on M.2 connector
+&cp0_sata0 {
+	status = "okay";
+};
+
+// SRDS #1 - USB 3.0 host
+&cp0_usb3_0 {
+	status = "okay";
+	usb-phy = <&cp0_usb3_0_phy0>;
+	phy-names = "usb";
+};
+
+// SRDS #2 - SFP+ 10GE
+&cp0_eth0 {
+	status = "okay";
+	phy-mode = "10gbase-r";
+	phys = <&cp0_comphy2 0>;
+	managed = "in-band-status";
+	sfp = <&cp0_sfp_eth0>;
+};
+
+// SRDS #3 - SGMII 1GE to L2 switch
+&cp0_eth1 {
+	status = "okay";
+	phys = <&cp0_comphy3 1>;
+	phy-mode = "sgmii";
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+// SRDS #4 - mini PCIe slot near SOM
+&cp0_pcie1 {
+	status = "okay";
+	phys = <&cp0_comphy4 1>;
+	num-lanes = <1>;
+	reset-gpios = <&expander0 2 GPIO_ACTIVE_LOW>;
+};
+
+// SRDS #5 - mini PCIe slot far from SOM
+&cp0_pcie2 {
+	status = "okay";
+	phys = <&cp0_comphy5 2>;
+	num-lanes = <1>;
+	reset-gpios = <&expander0 1 GPIO_ACTIVE_LOW>;
+};
+
+// GE PHY RGMII
+&cp0_eth2 {
+		status = "okay";
+	phy = <&phy0>;
+		phy-mode = "rgmii-id";
+	pinctrl-0 = <&cp0_ge2_rgmii_pins>;
+};
+
+&cp0_sdhci0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_sdhci_pins
+			&cp0_sdhci_cd_pins>;
+	bus-width = <4>;
+	cd-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
+	no-1-8-v;
+	vqmmc-supply = <&v_3_3>;
+	vmmc-supply = <&v_3_3>;
+};
+
+&cp0_spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_spi1_pins>;
+	reg = <0x700680 0x50>;
+	spi-flash@0 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-max-frequency = <10000000>;
+	};
+	spi-flash@1 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x1>;
+		// On carrier MUX does not allow higher frequencies
+		spi-max-frequency = <20000000>;
+	};
+};
+
+&cp0_syscon0 {
+	cp0_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+		cp0_i2c0_pins: cp0-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp0_i2c1_pins: cp0-i2c-pins-1 {
+			marvell,pins = "mpp35", "mpp36";
+			marvell,function = "i2c1";
+		};
+		cp0_ge2_rgmii_pins: cp0-ge-rgmii-pins-0 {
+			marvell,pins =	"mpp44", "mpp45", "mpp46",
+					"mpp47", "mpp48", "mpp49",
+					"mpp50", "mpp51", "mpp52",
+					"mpp53", "mpp54", "mpp55";
+			marvell,function = "ge1";
+		};
+		cp0_sdhci_cd_pins: cp0-sdhci-cd-pins-0 {
+			marvell,pins = "mpp43";
+			marvell,function = "sdio";
+		};
+		cp0_sdhci_pins: cp0-sdhi-pins-0 {
+			marvell,pins =	"mpp56", "mpp57", "mpp58",
+					"mpp59", "mpp60", "mpp61";
+			marvell,function = "sdio";
+		};
+		cp0_spi1_pins: cp0-spi-pins-1 {
+			marvell,pins = "mpp12", "mpp13", "mpp14", "mpp15", "mpp16";
+			marvell,function = "spi1";
+		};
+		cp0_dsa0_pins: cp0-dsa0-pins {
+			marvell,pins = "mpp29", "mpp27";
+			marvell,function = "gpio";
+		};
+	};
+};
+
-- 
2.39.0

