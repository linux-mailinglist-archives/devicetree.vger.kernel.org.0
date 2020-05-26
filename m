Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F4531B0025
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2020 05:14:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725991AbgDTDOc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Apr 2020 23:14:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725865AbgDTDOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 Apr 2020 23:14:31 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5DBC061A0C
        for <devicetree@vger.kernel.org>; Sun, 19 Apr 2020 20:14:31 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id x26so4359031pgc.10
        for <devicetree@vger.kernel.org>; Sun, 19 Apr 2020 20:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Of5YSCYSCqIBDFJz0HLqdOdvr2dlfEZUxY/uSbLvMwQ=;
        b=S4iCRNFPVeD2liK++AjbUz3+LQvcyBsThGO0NNoc6haE76pCvjDan1i0DYG4H2iE0h
         M8SyHe8J1MrhOJrSZsYe7U+IdFkw352TzB1SmKw549ja+QHEomzHo2/PoIP2k+QOY1AX
         t3l2aMMYJ+efE6xYIFgWxyNPruy1YK/fr9heKkd75Ki/NMI6pvCFZ7CPkJA3e+B84mxs
         2dlZKhcPXncp7wC79JboXi+jFrp4uc7mTu/QVZkpqIPy39a1QFQVTG0sbyJ5SC3HeeXL
         YbBh35OZ+4yAttu1u6uZkjFwwYgJearF5844enyfyKjR3ipsWZ8KWhChnNsTlDWXmRPe
         aGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Of5YSCYSCqIBDFJz0HLqdOdvr2dlfEZUxY/uSbLvMwQ=;
        b=dWUI47GW5NdrelJhWb0cIVs5RsLaOCJnZ2sNUYQypKWY4/vYfwaaJe6jhU2dx41weK
         ALm/cdg8ybrKnZVTL/1cUzV5e0l2YT0fLif9zIWeFQpu12/lvY6y8qZjvdX49gsj9lZW
         NaMp9Ljf2I5DustEhpJVuQQmk7U/XvDUE+t+54iNcRAk3OtegtSalLSa1rAKC9689yB4
         oAZBH1HsPCc1sNFEtWXt/q0F2dKGYo6+Wbm9+8ozNhhG8/Wm/eBoA31SmCyGnJ0LMnfT
         Jc5BN8iBThmTR64G9zp67o0mhXX6szo76rYUcFMv4GyKFtNtXqsKWvKUmK+dIWSkbCWR
         jC9Q==
X-Gm-Message-State: AGi0PubREQBkAUF9KmoTSDJiiHJfKBqIiMAwA/7bjyorxEn4Xu32zho3
        yiom1wvluEfcZ2ybZ1avL+Gbqw==
X-Google-Smtp-Source: APiQypJOgb0HXmX0iZ+BqFtpAY/TBiBsnrv00fy98y1kmyNMl56E4Exh3NdsNbgA/7s+9f+NGXBeHQ==
X-Received: by 2002:a62:1950:: with SMTP id 77mr14715230pfz.326.1587352471260;
        Sun, 19 Apr 2020 20:14:31 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
        by smtp.gmail.com with ESMTPSA id e66sm22176674pfa.69.2020.04.19.20.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 20:14:30 -0700 (PDT)
Date:   Mon, 20 Apr 2020 12:14:08 +0900
From:   Linaro <masami.hiramatsu@linaro.org>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: uniphier: Add support for Akebi96
Message-Id: <20200420121408.5ad907cff5f1e74b1ef7f980@linaro.org>
In-Reply-To: <158735030084.17831.6159788305648251972.stgit@localhost>
References: <158735030084.17831.6159788305648251972.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree for Akebi96. Akebi96 is a 96boards certified
development board based on UniPhir LD20.
( https://www.96boards.org/product/akebi96/ )

This board has;
- MAX3421 USB-SPI chip on SPI port3 (for USB gadget port)
- Simple frame buffer with 1080p fixed resolution.
- I2S port which is connected to aout1b instead of aout1.
- 3 serial ports, only serial3 has CTS/RTS.
- No NAND, only eMMC on the board.
- OP-TEE support.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  200 ++++++++++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi   |    2 
 3 files changed, 202 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

diff --git a/arch/arm64/boot/dts/socionext/Makefile b/arch/arm64/boot/dts/socionext/Makefile
index d45441249cb5..dda3da33614b 100644
--- a/arch/arm64/boot/dts/socionext/Makefile
+++ b/arch/arm64/boot/dts/socionext/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_UNIPHIER) += \
 	uniphier-ld11-global.dtb \
 	uniphier-ld11-ref.dtb \
+	uniphier-ld20-akebi96.dtb \
 	uniphier-ld20-global.dtb \
 	uniphier-ld20-ref.dtb \
 	uniphier-pxs3-ref.dtb
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
new file mode 100644
index 000000000000..84ff98d96751
--- /dev/null
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
@@ -0,0 +1,200 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Device Tree Source for Akebi96 Development Board
+//
+// Derived from uniphier-ld20-global.dts.
+//
+// Copyright (C) 2015-2017 Socionext Inc.
+// Copyright (C) 2019-2020 Linaro Ltd.
+
+/dts-v1/;
+#include <dt-bindings/gpio/uniphier-gpio.h>
+#include "uniphier-ld20.dtsi"
+
+/ {
+	model = "Akebi96";
+	compatible = "socionext,uniphier-ld20-akebi96",
+		     "socionext,uniphier-ld20";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
+		serial3 = &serial3;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		ethernet0 = &eth;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0 0x80000000 0 0xc0000000>;
+	};
+
+	framebuffer {
+		compatible = "simple-framebuffer";
+		reg = <0 0xc0000000 0 0x02000000>;
+		width = <1920>;
+		height = <1080>;
+		stride = <7680>;
+		format = "a8r8g8b8";
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		memory@c0000000 {
+			reg = <0 0xc0000000 0 0x02000000>;
+			no-map;
+		};
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "UniPhier LD20";
+		dais = <&spdif_port0
+			&comp_spdif_port0>;
+	};
+
+	spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port@0 {
+			spdif_tx: endpoint {
+				remote-endpoint = <&spdif_hiecout1>;
+			};
+		};
+	};
+
+	comp-spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port@0 {
+			comp_spdif_tx: endpoint {
+				remote-endpoint = <&comp_spdif_hiecout1>;
+			};
+		};
+	};
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+};
+
+&serial0 {
+	/* Onboard USB-UART */
+	status = "okay";
+};
+
+&serial2 {
+	/* LS connector UART1 */
+	status = "okay";
+};
+
+&serial3 {
+	/* LS connector UART0 */
+	status = "okay";
+	pinctrl-0 = <&pinctrl_uart3_ctsrts>;
+};
+
+&spdif_hiecout1 {
+	remote-endpoint = <&spdif_tx>;
+};
+
+&comp_spdif_hiecout1 {
+	remote-endpoint = <&comp_spdif_tx>;
+};
+
+&eth {
+	status = "okay";
+	phy-mode = "rgmii";
+	pinctrl-0 = <&pinctrl_ether_rgmii>;
+	phy-handle = <&ethphy>;
+};
+
+&mdio {
+	ethphy: ethphy@0 {
+		reg = <0>;
+	};
+};
+
+&usb {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+};
+
+&i2c0 {
+	/* LS connector I2C0 */
+	status = "okay";
+};
+
+&i2c1 {
+	/* LS connector I2C1 */
+	status = "okay";
+};
+
+&audio {
+	pinctrl-0 = <&pinctrl_aout1b>,
+		    <&pinctrl_aoutiec1>;
+};
+
+&spi3 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	usb-over-spi@0 {
+		compatible = "maxim,max3421-udc";
+		reg = <0>;
+		spi-max-frequency = <12500000>;
+		interrupt-parent = <&gpio>;
+		interrupts = <0 2>, <10 3>;
+	};
+};
+
+&gpio {
+	/* IRQs for Max3421 */
+	xirq0 {
+		gpio-hog;
+		gpios = <UNIPHIER_GPIO_IRQ(0) 1>;
+		input;
+	};
+	xirq10 {
+		gpio-hog;
+		gpios = <UNIPHIER_GPIO_IRQ(10) 1>;
+		input;
+	};
+};
+
+&pinctrl {
+	pinctrl_aout1b: aout1b {
+		groups = "aout1", "aout1b";
+		function = "aout1";
+	};
+
+	pinctrl_uart3_ctsrts: uart3-ctsrts {
+		groups = "uart3", "uart3_ctsrts";
+		function = "uart3";
+	};
+};
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index a93148c2088f..8f799f4bcda4 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -337,7 +337,7 @@
 						     <21 217 3>;
 		};
 
-		audio@56000000 {
+		audio: audio@56000000 {
 			compatible = "socionext,uniphier-ld20-aio";
 			reg = <0x56000000 0x80000>;
 			interrupts = <0 144 4>;

