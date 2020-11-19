Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4F42B8C33
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:23:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726231AbgKSHV1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:21:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725964AbgKSHV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:21:27 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52EACC0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:27 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id j19so3419551pgg.5
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+VtvYOkl9wdkZQHRmwyjhiNcQPfRwwwFD4Qxd7lx7iY=;
        b=CFZ+LTcWWfPn6c/hITWxAxBeXaobhhYSvtfb4JZnHzyUU352zcnD9k+OaM/Zq7E85q
         5s8HHqbCSxs7YzYnYj9meH0eZmsd8OIEgmSAlkPBHJCh4a5tMADX1tlwRhuOcux9/Cu6
         sN5cJyawg5dA5cO2P/ll+IimYNr0P6azTIiNCOztPCKs8qTSZw+lDUQ8Yw+WyImcxnwn
         SMWqb5AfqI8LTaW93WVR7d9461VXbSq0IUF42tYkYPb3ifaYj15PlTn2J/GUL9NpT/+e
         HpbnE2rEWkYnZ0fIMijwCqZk2SQ+SgKS/espDwB9a7BYfLMxG1cDGETOIDWwibhgXh/J
         H39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=+VtvYOkl9wdkZQHRmwyjhiNcQPfRwwwFD4Qxd7lx7iY=;
        b=ppLf0YUsXf7oNYAAwV/++Xtu3tZFGwtXT3UninZuvdm6UfXNZ5vzdIKFm8hXcsJtiP
         XYo4DX4w7QwpGvl4ppjlv51jxqTIQnzXEcx3uIsd8kY/XzqqMe6z4YJy28r9/z5FP+Sl
         Xl9eOyX+m5Z0DdFokQ3UZaIuqkvmfi59hMKUlpn+3ivSJPuPzEsjEbuIrz3mMxw2QTzI
         PhiE0LJUK1j1/Jhu4T9EPa8WWwxCUIeH9W/5Vc4zF6PNRutbm6etxkI6qlAbdXLTgt3S
         1Tw2VxKDeVyHdDzZk/LpRFOAyxNLiQWNaQwh4G3121W1yNbFN8Z5d6AaS2aydJF/K4+n
         Jqig==
X-Gm-Message-State: AOAM531XkHUKOHuzkmL77g+BL7GgnrCTuvxb9vybXN+MbxGswHROEqZj
        AiV4BbB/dAWvY+cTZXKIuGI36LWi0Qlf4A==
X-Google-Smtp-Source: ABdhPJx+gCSZjPFtHLz5bLkIHKZsT/LJtVZG1cWhDaFMJ2Ydit+uk0SoAxEwr/zOmt7bRfg3sXXOxA==
X-Received: by 2002:a63:5a62:: with SMTP id k34mr11887373pgm.391.1605770486825;
        Wed, 18 Nov 2020 23:21:26 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.19])
        by smtp.gmail.com with ESMTPSA id s145sm28067565pfs.187.2020.11.18.23.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:21:25 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>
Cc:     Lancelot Kao <lancelot.kao@fii-usa.com>,
        Fran Hsu <Fran.Hsu@quantatw.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Mustatfa Shehabi <Mustafa.Shehabi@fii-na.com>,
        Mohaimen alsmarai <Mohaimen.alsamarai@fii-na.com>,
        Vivekanand Veeracholan <vveerach@google.com>
Subject: [PATCH 5/5] ARM: dts: nuvoton: Add Fii Kudo system
Date:   Thu, 19 Nov 2020 17:50:38 +1030
Message-Id: <20201119072038.123046-6-joel@jms.id.au>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201119072038.123046-1-joel@jms.id.au>
References: <20201119072038.123046-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lancelot Kao <lancelot.kao@fii-usa.com>

Add device tree for the Kudo BMC. Kudo is an Ampere (Altra)
server platform manufactured by Fii and is based on a Nuvoton
NPCM730 SoC.

Signed-off-by: Mustatfa Shehabi <Mustafa.Shehabi@fii-na.com>
Signed-off-by: Mohaimen alsmarai <Mohaimen.alsamarai@fii-na.com>
Signed-off-by: Lancelot Kao <lancelot.kao@fii-usa.com>
Reviewed-by: Vivekanand Veeracholan <vveerach@google.com>
Reviewed-by: Benjamin Fair <benjaminfair@google.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Link: https://lore.kernel.org/r/20201116232127.7066-1-lancelot.kao@fii-usa.com
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/nuvoton-npcm730-kudo.dts | 826 +++++++++++++++++++++
 2 files changed, 827 insertions(+)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730-kudo.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index ad2eaf9ed4e4..7525d38ea1ab 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -340,6 +340,7 @@ dtb-$(CONFIG_ARCH_LPC32XX) += \
 	lpc3250-phy3250.dtb
 dtb-$(CONFIG_ARCH_NPCM7XX) += \
 	nuvoton-npcm730-gsj.dtb \
+	nuvoton-npcm730-kudo.dtb \
 	nuvoton-npcm750-evb.dtb \
 	nuvoton-npcm750-runbmc-olympus.dtb
 dtb-$(CONFIG_MACH_MESON6) += \
diff --git a/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts b/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
new file mode 100644
index 000000000000..82a104b2a65f
--- /dev/null
+++ b/arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
@@ -0,0 +1,826 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2020 Fii USA Inc.
+
+/dts-v1/;
+#include "nuvoton-npcm730.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Fii Kudo Board";
+	compatible = "fii,kudo", "nuvoton,npcm730";
+
+	aliases {
+		ethernet1 = &gmac0;
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
+		serial3 = &serial3;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		i2c7 = &i2c7;
+		i2c8 = &i2c8;
+		i2c9 = &i2c9;
+		i2c10 = &i2c10;
+		i2c11 = &i2c11;
+		i2c12 = &i2c12;
+		i2c13 = &i2c13;
+		i2c14 = &i2c14;
+		i2c15 = &i2c15;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		fiu0 = &fiu0;
+		fiu1 = &fiu3;
+	};
+
+	chosen {
+		stdout-path = &serial3;
+	};
+
+	memory {
+		reg = <0 0x40000000>;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc 0>, <&adc 1>, <&adc 2>, <&adc 3>,
+			<&adc 4>, <&adc 5>, <&adc 6>, <&adc 7>;
+	};
+
+	jtag_master {
+		compatible = "nuvoton,npcm750-jtag-master";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		// dev/jtag0
+		dev-num = <0>;
+		// pspi or gpio
+		mode = "pspi";
+
+		// pspi2
+		pspi-controller = <2>;
+		reg = <0xf0201000 0x1000>;
+		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clk NPCM7XX_CLK_APB5>;
+
+		// TCK, TDI, TDO, TMS
+		jtag-gpios = <&gpio0 19 GPIO_ACTIVE_HIGH>,
+				<&gpio0 18 GPIO_ACTIVE_HIGH>,
+				<&gpio0 17 GPIO_ACTIVE_HIGH>,
+				<&gpio0 16 GPIO_ACTIVE_HIGH>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		heartbeat {
+			label = "heartbeat";
+			gpios = <&gpio0 14 1>;
+		};
+	};
+
+	pinctrl: pinctrl@f0800000 {
+		gpio61oh_pins: gpio61oh-pins {
+			pins = "GPO61/nDTR1_BOUT1/STRAP6";
+			bias-disable;
+			output-high;
+		};
+		gpio62oh_pins: gpio62oh-pins {
+			pins = "GPO62/nRTST1/STRAP5";
+			bias-disable;
+			output-high;
+		};
+		gpio161ol_pins: gpio161ol-pins {
+			pins = "GPIO161/nLFRAME/nESPICS";
+			bias-disable;
+			output-low;
+		};
+		gpio163i_pins: gpio163i-pins {
+			pins = "GPIO163/LCLK/ESPICLK";
+			bias-disable;
+			input-enable;
+		};
+		gpio167ol_pins: gpio167ol-pins {
+			pins = "GPIO167/LAD3/ESPI_IO3";
+			bias-disable;
+			output-low;
+		};
+		gpio95i_pins: gpio95i-pins {
+			pins = "GPIO95/nLRESET/nESPIRST";
+			bias-disable;
+			input-enable;
+		};
+		gpio65ol_pins: gpio65ol-pins {
+			pins = "GPIO65/FANIN1";
+			bias-disable;
+			output-low;
+		};
+		gpio66oh_pins: gpio66oh-pins {
+			pins = "GPIO66/FANIN2";
+			bias-disable;
+			output-high;
+		};
+		gpio67oh_pins: gpio67oh-pins {
+			pins = "GPIO67/FANIN3";
+			bias-disable;
+			output-high;
+		};
+		gpio68ol_pins: gpio68ol-pins {
+			pins = "GPIO68/FANIN4";
+			bias-disable;
+			output-low;
+		};
+		gpio69i_pins: gpio69i-pins {
+			pins = "GPIO69/FANIN5";
+			bias-disable;
+			input-enable;
+		};
+		gpio70ol_pins: gpio70ol-pins {
+			pins = "GPIO70/FANIN6";
+			bias-disable;
+			output-low;
+		};
+		gpio71i_pins: gpio71i-pins {
+			pins = "GPIO71/FANIN7";
+			bias-disable;
+			input-enable;
+		};
+		gpio72i_pins: gpio72i-pins {
+			pins = "GPIO72/FANIN8";
+			bias-disable;
+			input-enable;
+		};
+		gpio73i_pins: gpio73i-pins {
+			pins = "GPIO73/FANIN9";
+			bias-disable;
+			input-enable;
+		};
+		gpio74i_pins: gpio74i-pins {
+			pins = "GPIO74/FANIN10";
+			bias-disable;
+			input-enable;
+		};
+		gpio75i_pins: gpio75i-pins {
+			pins = "GPIO75/FANIN11";
+			bias-disable;
+			input-enable;
+		};
+		gpio76i_pins: gpio76i-pins {
+			pins = "GPIO76/FANIN12";
+			bias-disable;
+			input-enable;
+		};
+		gpio77i_pins: gpio77i-pins {
+			pins = "GPIO77/FANIN13";
+			bias-disable;
+			input-enable;
+		};
+		gpio78i_pins: gpio78i-pins {
+			pins = "GPIO78/FANIN14";
+			bias-disable;
+			input-enable;
+		};
+		gpio79ol_pins: gpio79ol-pins {
+			pins = "GPIO79/FANIN15";
+			bias-disable;
+			output-low;
+		};
+		gpio80oh_pins: gpio80oh-pins {
+			pins = "GPIO80/PWM0";
+			bias-disable;
+			output-high;
+		};
+		gpio81i_pins: gpio81i-pins {
+			pins = "GPIO81/PWM1";
+			bias-disable;
+			input-enable;
+		};
+		gpio82i_pins: gpio82i-pins {
+			pins = "GPIO82/PWM2";
+			bias-disable;
+			input-enable;
+		};
+		gpio83i_pins: gpio83i-pins {
+			pins = "GPIO83/PWM3";
+			bias-disable;
+			input-enable;
+		};
+		gpio144i_pins: gpio144i-pins {
+			pins = "GPIO144/PWM4";
+			bias-disable;
+			input-enable;
+		};
+		gpio145i_pins: gpio145i-pins {
+			pins = "GPIO145/PWM5";
+			bias-disable;
+			input-enable;
+		};
+		gpio146i_pins: gpio146i-pins {
+			pins = "GPIO146/PWM6";
+			bias-disable;
+			input-enable;
+		};
+		gpio147oh_pins: gpio147oh-pins {
+			pins = "GPIO147/PWM7";
+			bias-disable;
+			output-high;
+		};
+		gpio168ol_pins: gpio168ol-pins {
+			pins = "GPIO168/nCLKRUN/nESPIALERT";
+			bias-disable;
+			output-low;
+		};
+		gpio169oh_pins: gpio169oh-pins {
+			pins = "GPIO169/nSCIPME";
+			bias-disable;
+			output-high;
+		};
+		gpio170ol_pins: gpio170ol-pins {
+			pins = "GPIO170/nSMI";
+			bias-disable;
+			output-low;
+		};
+		gpio218oh_pins: gpio218oh-pins {
+			pins = "GPIO218/nWDO1";
+			bias-disable;
+			output-high;
+		};
+		gpio37i_pins: gpio37i-pins {
+			pins = "GPIO37/SMB3CSDA";
+			bias-disable;
+			input-enable;
+		};
+		gpio38i_pins: gpio38i-pins {
+			pins = "GPIO38/SMB3CSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio39i_pins: gpio39i-pins {
+			pins = "GPIO39/SMB3BSDA";
+			bias-disable;
+			input-enable;
+		};
+		gpio40i_pins: gpio40i-pins {
+			pins = "GPIO40/SMB3BSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio121i_pins: gpio121i-pins {
+			pins = "GPIO121/SMB2CSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio122i_pins: gpio122i-pins {
+			pins = "GPIO122/SMB2BSDA";
+			bias-disable;
+			input-enable;
+		};
+		gpio123i_pins: gpio123i-pins {
+			pins = "GPIO123/SMB2BSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio124i_pins: gpio124i-pins {
+			pins = "GPIO124/SMB1CSDA";
+			bias-disable;
+			input-enable;
+		};
+		gpio125i_pins: gpio125i-pins {
+			pins = "GPIO125/SMB1CSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio126i_pins: gpio126i-pins {
+			pins = "GPIO126/SMB1BSDA";
+			bias-disable;
+			input-enable;
+		};
+		gpio127i_pins: gpio127i-pins {
+			pins = "GPIO127/SMB1BSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio136i_pins: gpio136i-pins {
+			pins = "GPIO136/SD1DT0";
+			bias-disable;
+			input-enable;
+		};
+		gpio137oh_pins: gpio137oh-pins {
+			pins = "GPIO137/SD1DT1";
+			bias-disable;
+			output-high;
+		};
+		gpio138i_pins: gpio138i-pins {
+			pins = "GPIO138/SD1DT2";
+			bias-disable;
+			input-enable;
+		};
+		gpio139i_pins: gpio139i-pins {
+			pins = "GPIO139/SD1DT3";
+			bias-disable;
+			input-enable;
+		};
+		gpio140i_pins: gpio140i-pins {
+			pins = "GPIO140/SD1CLK";
+			bias-disable;
+			input-enable;
+		};
+		gpio141i_pins: gpio141i-pins {
+			pins = "GPIO141/SD1WP";
+			bias-disable;
+			input-enable;
+		};
+		gpio190oh_pins: gpio190oh-pins {
+			pins = "GPIO190/nPRD_SMI";
+			bias-disable;
+			output-high;
+		};
+		gpio191oh_pins: gpio191oh-pins {
+			pins = "GPIO191";
+			bias-disable;
+			output-high;
+		};
+		gpio195ol_pins: gpio195ol-pins {
+			pins = "GPIO195/SMB0BSDA";
+			bias-disable;
+			output-low;
+		};
+		gpio196ol_pins: gpio196ol-pins {
+			pins = "GPIO196/SMB0CSCL";
+			bias-disable;
+			output-low;
+		};
+		gpio199i_pins: gpio199i-pins {
+			pins = "GPIO199/SMB0DSCL";
+			bias-disable;
+			input-enable;
+		};
+		gpio202ol_pins: gpio202ol-pins {
+			pins = "GPIO202/SMB0CSDA";
+			bias-disable;
+			output-low;
+		};
+	};
+};
+
+&gmac0 {
+	phy-mode = "rgmii-id";
+	snps,eee-force-disable;
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&fiu0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi0cs1_pins>;
+	status = "okay";
+	spi-nor@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		spi-max-frequency = <5000000>;
+		spi-rx-bus-width = <2>;
+		label = "bmc";
+		partitions@80000000 {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			u-boot@0 {
+				label = "u-boot";
+				reg = <0x0000000 0xC0000>;
+				read-only;
+			};
+			u-boot-env@100000{
+				label = "u-boot-env";
+				reg = <0x00100000 0x40000>;
+			};
+			kernel@200000 {
+				label = "kernel";
+				reg = <0x0200000 0x600000>;
+			};
+			rofs@800000 {
+				label = "rofs";
+				reg = <0x800000 0x3500000>;
+			};
+			rwfs@3d00000 {
+				label = "rwfs";
+				reg = <0x3d00000 0x300000>;
+			};
+		};
+	};
+	spi-nor@1 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <1>;
+		spi-max-frequency = <5000000>;
+		spi-rx-bus-width = <2>;
+		partitions@88000000 {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			spare1@0 {
+				label = "spi0-cs1-spare1";
+				reg = <0x0 0x800000>;
+			};
+			spare2@800000 {
+				label = "spi0-cs1-spare2";
+				reg = <0x800000 0x0>;
+			};
+		};
+	};
+};
+
+&fiu3 {
+	pinctrl-0 = <&spi3_pins>;
+	spi-nor@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		spi-max-frequency = <5000000>;
+		spi-rx-bus-width = <2>;
+		partitions@A0000000 {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			system1@0 {
+				label = "bios";
+				reg = <0x0 0x0>;
+			};
+			system2@800000 {
+				label = "spi3-system2";
+				reg = <0x800000 0x0>;
+			};
+		};
+	};
+};
+
+&watchdog1 {
+	status = "okay";
+};
+
+&rng {
+	status = "okay";
+};
+
+&serial0 {
+	status = "okay";
+};
+
+&serial1 {
+	status = "okay";
+};
+
+&serial2 {
+	status = "okay";
+};
+
+&serial3 {
+	status = "okay";
+};
+
+&adc {
+	#io-channel-cells = <1>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+	i2c-switch@75 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x75>;
+		i2c-mux-idle-disconnect;
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			// Rear-Fan
+			max31790@58 {
+				compatible = "maxim,max31790";
+				reg = <0x58>;
+			};
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			// Mid-Fan
+			max31790@58 {
+				compatible = "maxim,max31790";
+				reg = <0x58>;
+			};
+		};
+
+		i2c-bus@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+
+			// INLET1_T
+			lm75@5c {
+				compatible = "ti,lm75";
+				reg = <0x5c>;
+			};
+		};
+
+		i2c-bus@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+
+			// OUTLET1_T
+			lm75@5c {
+				compatible = "ti,lm75";
+				reg = <0x5c>;
+			};
+		};
+
+		i2c-bus@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+
+			// OUTLET2_T
+			lm75@5c {
+				compatible = "ti,lm75";
+				reg = <0x5c>;
+			};
+		};
+
+		i2c-bus@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+
+			// OUTLET3_T
+			lm75@5c {
+				compatible = "ti,lm75";
+				reg = <0x5c>;
+			};
+		};
+	};
+	i2c-switch@77 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x77>;
+		i2c-mux-idle-disconnect;
+
+		i2c-bus@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			// STB-T
+			pmbus@74 {
+				compatible = "pmbus";
+				reg = <0x74>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+	smpro@4f {
+		compatible = "ampere,smpro";
+		reg = <0x4f>;
+	};
+
+	smpro@4e {
+		compatible = "ampere,smpro";
+		reg = <0x4e>;
+	};
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+	i2c-switch@77 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x77>;
+		i2c-mux-idle-disconnect;
+
+		i2c-bus@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			// ADC sensors
+			adm1266@40 {
+				compatible = "adi,adm1266";
+				reg = <0x40>;
+			};
+		};
+
+		i2c-bus@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			// ADC sensors
+			adm1266@41 {
+				compatible = "adi,adm1266";
+				reg = <0x41>;
+			};
+		};
+	};
+};
+
+&i2c5 {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+};
+
+&i2c7 {
+	status = "okay";
+};
+
+&i2c8 {
+	status = "okay";
+};
+
+&i2c9 {
+	status = "okay";
+};
+
+&i2c10 {
+	status = "okay";
+};
+
+&i2c11 {
+	status = "okay";
+};
+
+&i2c12 {
+	status = "okay";
+	ssif-bmc@10 {
+		compatible = "ssif-bmc";
+		reg = <0x10>;
+	};
+};
+
+&i2c13 {
+	status = "okay";
+	i2c-switch@77 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x77>;
+		i2c-mux-idle-disconnect;
+
+		i2c-bus@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			// M2_ZONE_T
+			lm75@28 {
+				compatible = "ti,lm75";
+				reg = <0x28>;
+			};
+		};
+
+		i2c-bus@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+
+			// BATT_ZONE_T
+			lm75@29 {
+				compatible = "ti,lm75";
+				reg = <0x29>;
+			};
+		};
+
+		i2c-bus@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+
+			// NBM1_ZONE_T
+			lm75@28 {
+				compatible = "ti,lm75";
+				reg = <0x28>;
+			};
+		};
+		i2c-bus@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+
+			// NBM2_ZONE_T
+			lm75@29 {
+				compatible = "ti,lm75";
+				reg = <0x29>;
+			};
+		};
+	};
+};
+
+&i2c14 {
+	status = "okay";
+};
+
+&i2c15 {
+	status = "okay";
+};
+
+&spi0 {
+	cs-gpios = <&gpio6 11 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <
+			&gpio61oh_pins
+			&gpio62oh_pins
+			&gpio161ol_pins
+			&gpio163i_pins
+			&gpio167ol_pins
+			&gpio95i_pins
+			&gpio65ol_pins
+			&gpio66oh_pins
+			&gpio67oh_pins
+			&gpio68ol_pins
+			&gpio69i_pins
+			&gpio70ol_pins
+			&gpio71i_pins
+			&gpio72i_pins
+			&gpio73i_pins
+			&gpio74i_pins
+			&gpio75i_pins
+			&gpio76i_pins
+			&gpio77i_pins
+			&gpio78i_pins
+			&gpio79ol_pins
+			&gpio80oh_pins
+			&gpio81i_pins
+			&gpio82i_pins
+			&gpio83i_pins
+			&gpio144i_pins
+			&gpio145i_pins
+			&gpio146i_pins
+			&gpio147oh_pins
+			&gpio168ol_pins
+			&gpio169oh_pins
+			&gpio170ol_pins
+			&gpio218oh_pins
+			&gpio37i_pins
+			&gpio38i_pins
+			&gpio39i_pins
+			&gpio40i_pins
+			&gpio121i_pins
+			&gpio122i_pins
+			&gpio123i_pins
+			&gpio124i_pins
+			&gpio125i_pins
+			&gpio126i_pins
+			&gpio127i_pins
+			&gpio136i_pins
+			&gpio137oh_pins
+			&gpio138i_pins
+			&gpio139i_pins
+			&gpio140i_pins
+			&gpio141i_pins
+			&gpio190oh_pins
+			&gpio191oh_pins
+			&gpio195ol_pins
+			&gpio196ol_pins
+			&gpio199i_pins
+			&gpio202ol_pins
+			>;
+};
+
+&gcr {
+	serial_port_mux: mux-controller {
+		compatible = "mmio-mux";
+		#mux-control-cells = <1>;
+
+		mux-reg-masks = <0x38 0x07>;
+		idle-states = <2>;
+	};
+};
-- 
2.29.2

