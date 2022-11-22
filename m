Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6799633553
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 07:31:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbiKVGbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 01:31:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiKVGbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 01:31:16 -0500
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D5719C2F
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 22:31:15 -0800 (PST)
Received: by mail-il1-x131.google.com with SMTP id z15so6687426ilp.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 22:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bsoeB67PBLcHTOuWNBTA4LGNQI5Jn+cJhPvAir+OmEw=;
        b=U00nL9m5+4ShcBT4yLfRgGxGIWuIzIpJyjXt0Av0vNIE41g4Owxh638Oot6EIJ5bsn
         OCTX1rK45GHf0By//aOqiV7NNNcan9ryevUfQpFZ0A78exLjdD3DIWHbimX+cUY+o92t
         HV/FIvIp2aVsHZBXXK38FgeE6Au4MUR/Jxkgv1AMeOzcd0gVbdc1QRHlX+AEEwbkYxG+
         RPhm2ov0vTmYKClTrl+w0iMvybeI3eWdC3JZjWTS1PpArVDrYaORTj2EIoryg+RJvK3S
         9d1JmFtAJQcQ0CGvKtKXfyg7AzpveoJWXpJRym2BBoh6jRMOipQ9SHsAuuRaPCYEtBoo
         Zd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsoeB67PBLcHTOuWNBTA4LGNQI5Jn+cJhPvAir+OmEw=;
        b=p74gwOAR16MaYaZChKXQBwOUtnsMECGcoukVOCUsPDOR7X5IPb7gLl5PeFqVeEzbzB
         7cg5YNc4TDKzzl7QkS6ENKqLFmyPys96Makb6l+8UHXSwk/gm+TGwsj+qdNhUcD+HQYb
         FOg1zheW1h6r1/S/hbu/FVnEXxOsSRdzuSY98l5aGe28FAgFtHFHQJ7fNNl9UurMC1SG
         aZ+aUjo0c/YaPvViuz+i047RJVV2BhoLdKLhZ/tFMfUiUTJORbkPdX364/fY7Kemaf1c
         8RUAXPNndYk6DxSkNxFvc27khRSXF0urQdXVWIQ7Rapzn3vQSDOIqJd8B5SUVC7L0E81
         3D1w==
X-Gm-Message-State: ANoB5pmxD2mbUUvatomj7oxqRSizLaRfjpsoB4EsMEyFOxtjCpuk8QSz
        R+PBVWSTHpgV7guCHDKWhhdeyFzV90m5gw==
X-Google-Smtp-Source: AA0mqf4BH2zJxrJnDxhXdD+nkIPYNkSefv41ATJty2dfABsEdPyUE1jvfNuAqei/UW8oEJPakfSUGQ==
X-Received: by 2002:a05:6e02:dca:b0:300:d3b4:389 with SMTP id l10-20020a056e020dca00b00300d3b40389mr1234017ilj.114.1669098674846;
        Mon, 21 Nov 2022 22:31:14 -0800 (PST)
Received: from localhost.localdomain ([2a01:4f9:c010:5d73::1])
        by smtp.gmail.com with ESMTPSA id j1-20020a5e9e41000000b0068a235db030sm5050947ioq.27.2022.11.21.22.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 22:31:14 -0800 (PST)
From:   Enrico Mioso <mrkiko.rs@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     Enrico Mioso <mrkiko.rs@gmail.com>, Pali <pali@pali.im>
Subject: [PATCH] arm64: dts: marvell: add DTS for GL.iNet GL-MV1000
Date:   Tue, 22 Nov 2022 07:30:17 +0100
Message-Id: <20221122063017.924-1-mrkiko.rs@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GL-MV1000 (Brume) is a small form-factor gateway router.
It is based on the Marvell Armada 88F3720 SOC (1GHz), has 3 gigabit ethernet ports, 1 GB RAM, 16M SPI flash, 8GB eMMC and an uSD slot, as well as an USB 2.0 type A and an USB 3.0 type C port.

Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
CC: Pali <pali@pali.im>
---
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/armada-3720-gl-mv1000.dts     | 248 ++++++++++++++++++
 2 files changed, 249 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 058237681fe5..79ac09b58a89 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -7,6 +7,7 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-emmc.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-ultra.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7-emmc.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-gl-mv1000.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-turris-mox.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-uDPU.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-db.dtb
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
new file mode 100644
index 000000000000..72d7267ccd08
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include "armada-372x.dtsi"
+
+/ {
+	model = "GL.iNet GL-MV1000";
+	compatible = "glinet,gl-mv1000", "marvell,armada3720";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
+	};
+
+	vcc_sd_reg1: regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "vcc_sd1";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+
+		gpios-states = <0>;
+		states = <1800000 0x1
+			3300000 0x0>;
+		enable-active-high;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
+		};
+
+		switch {
+			label = "switch";
+			linux,code = <BTN_0>;
+			gpios = <&gpiosb 22 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		vpn {
+			label = "green:vpn";
+			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
+		};
+
+		wan {
+			label = "green:wan";
+			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power: power {
+			label = "green:power";
+			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		m25p,fast-read;
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0 0xf0000>;
+				read-only;
+			};
+
+			partition@f0000 {
+				label = "u-boot-env";
+				reg = <0xf0000 0x8000>;
+				read-only;
+			};
+
+			factory: partition@f8000 {
+				label = "factory";
+				reg = <0xf8000 0x8000>;
+				read-only;
+			};
+
+			partition@100000 {
+				label = "gl-firmware-dtb";
+				reg = <0x100000 0x10000>;
+				read-only;
+			};
+
+			partition@110000 {
+				label = "gl-firmware";
+				reg = <0x110000 0xef0000>;
+				read-only;
+			};
+
+			partition@ef0000 {
+				label = "gl-firmware-jffs2";
+				reg = <0xef0000 0x110000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&sdhci1 {
+	wp-inverted;
+	bus-width = <4>;
+	cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
+	marvell,pad-type = "sd";
+	no-1-8-v;
+	vqmmc-supply = <&vcc_sd_reg1>;
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sd;
+	no-sdio;
+	marvell,pad-type = "fixed-1-8v";
+	status = "okay";
+};
+
+&usb3 {
+	status = "okay";
+};
+
+&usb2 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&mdio {
+	switch0: switch0@1 {
+		compatible = "marvell,mv88e6085";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <1>;
+
+		dsa,member = <0 0>;
+
+		ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "cpu";
+				ethernet = <&eth0>;
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "wan";
+				phy-handle = <&switch0phy0>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan0";
+				phy-handle = <&switch0phy1>;
+
+				nvmem-cells = <&macaddr_factory_6>;
+				nvmem-cell-names = "mac-address";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan1";
+				phy-handle = <&switch0phy2>;
+
+				nvmem-cells = <&macaddr_factory_6>;
+				nvmem-cell-names = "mac-address";
+			};
+		};
+
+		mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0phy0: switch0phy0@11 {
+				reg = <0x11>;
+			};
+			switch0phy1: switch0phy1@12 {
+				reg = <0x12>;
+			};
+			switch0phy2: switch0phy2@13 {
+				reg = <0x13>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	nvmem-cells = <&macaddr_factory_0>;
+	nvmem-cell-names = "mac-address";
+	phy-mode = "rgmii-id";
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&factory {
+	compatible = "nvmem-cells";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	macaddr_factory_0: macaddr@0 {
+		reg = <0x0 0x6>;
+	};
+
+	macaddr_factory_6: macaddr@6 {
+		reg = <0x6 0x6>;
+	};
+};
-- 
2.38.1

