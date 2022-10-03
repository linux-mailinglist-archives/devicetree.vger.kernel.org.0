Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFD6F5F2B7B
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbiJCIPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:15:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbiJCIOm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:14:42 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B25A829360
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 00:50:11 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id 13so20352342ejn.3
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 00:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=3BjC5TdVOJG0MFJ0v+35mmv8Y28sqjeiZ/AJc3bp1Tk=;
        b=oygBMmxNw8VIDjVH99V9psCK7riOQZ4D412Pz0QCjsm25hvbfvhcizK3E+6pUhcom5
         wrUHJ4/bS0HY9D+D6MfrPXaDSjNiNyJH5CS45m35xeiKw7LuKWKajb2ritxZ7/S2lh23
         PTlUuERs4vayOf/96SgA84h01J229B0o3pShE4L72R9MG2RI/2aoRJi6nS8+KxQ8dh5i
         NiLsGQsvABCnzncuVFlbe3burkzfMln+/wuUZZlwtzvHyYWQUlmotAixbEg0Vgg3uwCd
         VmKBg4VCwD3kTIc+CI9MipDOP57kNhiB4Z9fOPTi8cC2iqXQl0OSW/ZyRJc7Eyl/LZ+D
         FbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=3BjC5TdVOJG0MFJ0v+35mmv8Y28sqjeiZ/AJc3bp1Tk=;
        b=WThjYLyg0WqzZrvVZ/TmXax2mgY/o5pDwkXESaij3bP4WlWvL+ndbiVph8W5Jh22J5
         Yk8dpU182ebrH+sHxHAbmhrxg7J11tJJuwVCPECydTzRomdAdll1hE6tGH/Q4JrTMCyR
         UwqWxJNpT6l8Uzpjw59eJWkvdzfuRfdedsaFirrCeorWwtOlQG7ACVPOJs+Xtn3NKLEQ
         pJSXcy2ugu855VUKojoPBwDq/BE0LFX1XdEUO9V2HVCXKi5lxqHUvwt2hNIpj7zMsYcV
         oJXMqyb9sebHkbnawfzoGtbpLbNWMr5FPqGNXAkGFSlBWjkn++SAA7JUfF1xPPcOhsIK
         VL2A==
X-Gm-Message-State: ACrzQf1mGmx5u1OQh4PUkxmCOE9EMexLi9QkD1l+NsxSshq84kLEpJSF
        NX9CtOBJ9jGiYxBQk8JlWpe65Gts98tQHg==
X-Google-Smtp-Source: AMsMyM5KVkjohkiW2EzYCIwVYjacwxKBBRbPBJJPX1azL/mAC4r2NfTqpr2s4q3VoWpu6h+TwyfK9A==
X-Received: by 2002:a17:907:75fc:b0:78b:db95:f99f with SMTP id jz28-20020a17090775fc00b0078bdb95f99fmr1889090ejc.658.1664782489341;
        Mon, 03 Oct 2022 00:34:49 -0700 (PDT)
Received: from WBEC325.dom.lan ([2001:470:64f7:0:1c86:a9a0:86fe:7563])
        by smtp.gmail.com with ESMTPSA id cy8-20020a0564021c8800b00459012e5145sm1720265edb.70.2022.10.03.00.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 00:34:48 -0700 (PDT)
From:   Pawel Dembicki <paweldembicki@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>
Subject: [PATCH v2] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
Date:   Mon,  3 Oct 2022 09:34:43 +0200
Message-Id: <20221003073443.1511266-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Endian 4i Edge 200 is 5-port firewall.
It have also clone: Endian UTM Mini (The same hardware, with added WLAN
card).

Hardware:
  - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
  - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
  - NAND Flash: 512MB (Micron 29F4G08AAC)
  - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
  - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
  - Storage: MicroSD Slot
  - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
          (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
  - USB: 1x USB 2.0 port
  - Console: RJ-45 port
  - LEDs: 3x GPIO controlled

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
Changes in v2:
- added MIT licence option
- removed "cpu" switch port label.

 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/kirkwood-4i-edge-200.dts | 205 +++++++++++++++++++++
 2 files changed, 206 insertions(+)
 create mode 100644 arch/arm/boot/dts/kirkwood-4i-edge-200.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index eae7d1139fbc..81a24fe623a8 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -299,6 +299,7 @@ dtb-$(CONFIG_ARCH_KEYSTONE) += \
 	keystone-k2g-evm.dtb \
 	keystone-k2g-ice.dtb
 dtb-$(CONFIG_MACH_KIRKWOOD) += \
+	kirkwood-4i-edge-200.dtb \
 	kirkwood-b3.dtb \
 	kirkwood-blackarmor-nas220.dtb \
 	kirkwood-c200-v1.dtb \
diff --git a/arch/arm/boot/dts/kirkwood-4i-edge-200.dts b/arch/arm/boot/dts/kirkwood-4i-edge-200.dts
new file mode 100644
index 000000000000..b1749d3f60b7
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-4i-edge-200.dts
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Endian 4i Edge 200 Board Description
+ * Note: Endian UTM Mini is hardware clone of Endian Edge 200
+ * Copyright 2021-2022 Pawel Dembicki <paweldembicki@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Endian 4i Edge 200";
+	compatible = "endian,4i-edge-200", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+		stdout-path = &uart0;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pmx_led>;
+		pinctrl-names = "default";
+
+		led-1 {
+			function = LED_FUNCTION_SD;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+		};
+
+		led-2 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-3 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+};
+
+&eth0port {
+	speed = <1000>;
+	duplex = <1>;
+};
+
+&eth1 {
+	status = "okay";
+};
+
+&eth1port {
+	phy-handle = <&ethphyb>;
+};
+
+&mdio {
+	status = "okay";
+
+	ethphyb: ethernet-phy@b {
+		reg = <0x0b>;
+
+		marvell,reg-init =
+			/* link-activity, bi-color mode 4 */
+			<3 0x10 0xfff0 0xf>; /* Reg 3,16 <- 0xzzzf */
+	};
+
+	switch0: switch@11 {
+		compatible = "marvell,mv88e6085";
+		reg = <0x11>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "port1";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "port2";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "port3";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "port4";
+			};
+
+			port@5 {
+				reg = <5>;
+				phy-mode = "rgmii-id";
+				ethernet = <&eth0port>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&nand {
+	status = "okay";
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x00000000 0x000a0000>;
+		read-only;
+	};
+
+	partition@a0000 {
+		label = "u-boot-env";
+		reg = <0x000a0000 0x00060000>;
+		read-only;
+	};
+
+	partition@100000 {
+		label = "kernel";
+		reg = <0x00100000 0x00400000>;
+	};
+
+	partition@500000 {
+		label = "ubi";
+		reg = <0x00500000 0x1fb00000>;
+	};
+};
+
+&pciec {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-0 = <&pmx_sysrst>;
+	pinctrl-names = "default";
+
+	pmx_sysrst: pmx-sysrst {
+		marvell,pins = "mpp6";
+		marvell,function = "sysrst";
+	};
+
+	pmx_sdio_cd: pmx-sdio-cd {
+		marvell,pins = "mpp28";
+		marvell,function = "gpio";
+	};
+
+	pmx_led: pmx-led {
+		marvell,pins = "mpp34", "mpp35", "mpp49";
+		marvell,function = "gpio";
+	};
+};
+
+&rtc {
+	status = "okay";
+};
+
+&sata_phy0 {
+	status = "disabled";
+};
+
+&sata_phy1 {
+	status = "disabled";
+};
+
+&sdio {
+	pinctrl-0 = <&pmx_sdio_cd>;
+	pinctrl-names = "default";
+	status = "okay";
+	cd-gpios = <&gpio0 28 9>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
-- 
2.34.1

