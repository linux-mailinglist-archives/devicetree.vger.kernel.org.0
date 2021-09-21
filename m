Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23A28413369
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 14:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231315AbhIUMhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 08:37:21 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17403 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbhIUMhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 08:37:20 -0400
X-Greylist: delayed 902 seconds by postgrey-1.27 at vger.kernel.org; Tue, 21 Sep 2021 08:37:20 EDT
ARC-Seal: i=1; a=rsa-sha256; t=1632226812; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=KqTjOuul0ShDfQL0HR+x5b2JSol2ZRmnyoV/icqEJ9xv0yVPm5ghsMumHInMBSYhncaTYwawWuqgEPycJ1IFC+Mz3nIylA8sTEAyq88bSQfLuCPmMr+ExLTWkgSqNIDaCigJ3OGJrAPkdopGu2B+kqUmH6r+hpA3zi6AgRnalMQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1632226812; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=VvDsc+gQoDZr/j7tQJ62FUWhBIy/AmZHs1YEqTRrqxc=; 
        b=c9XESzCho4BCAVVXmtRSK01wTFaZhFnMpoEXEH0m1khiswq4hUpt5/lJpi6OaFjLCC4T25hIxiJQljQ5WsBeV5sPPaLusztH2Mj+rbzwrdaozforN98khJKBErMB/R2nQym+jy/jh4jPBMVLIRjnJL1f7IsMGlRML2iDeuVOyaE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1632226812;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=VvDsc+gQoDZr/j7tQJ62FUWhBIy/AmZHs1YEqTRrqxc=;
        b=gH86y6xSrCfNa9blU7ntqsDi7qALV3Mf2gde2389IPtiCBSli/dn6fqRi0LNKIk+
        e4pVyJASf0DM5BUSIwzIVRjUGov4Be/srea6ThRhKumqCcjwpBwpsqj0QjebzEKuMDo
        ciBi5AMbRzjmNmTp1zgZeBXcDzEfwafqIFAq2otg=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1632226808352807.8359321725588; Tue, 21 Sep 2021 05:20:08 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
Date:   Tue, 21 Sep 2021 20:19:01 +0800
Message-Id: <20210921121901.24578-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hardware Info
-------------

Processor	- Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
Switch		- BCM53012 in BCM4709C0KFEBG & external RTL8365MB
DDR3 RAM	- 512 MB
Flash		- 128 MB (ESMT F59L1G81LA-25T)
2.4GHz		- BCM4366 4×4 2.4/5G single chip 802.11ac SoC
5GHz		- BCM4366 4×4 2.4/5G single chip 802.11ac SoC
Ports		- 8 Ports, 1 WAN Ports

Tested on OpenWrt on kernel 5.10 built with DSA driver.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/Makefile                   |   1 +
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 200 +++++++++++++++++++
 2 files changed, 201 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 7e0934180724..339239c6a76d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -117,6 +117,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
 	bcm4709-netgear-r7000.dtb \
 	bcm4709-netgear-r8000.dtb \
 	bcm4709-tplink-archer-c9-v1.dtb \
+	bcm47094-asus-rt-ac88u.dtb \
 	bcm47094-dlink-dir-885l.dtb \
 	bcm47094-linksys-panamera.dtb \
 	bcm47094-luxul-abr-4500.dtb \
diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
new file mode 100644
index 000000000000..448060561cd0
--- /dev/null
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -0,0 +1,200 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (C) 2021 Arınç ÜNAL <arinc.unal@arinc9.com>
+ */
+
+/dts-v1/;
+
+#include "bcm47094.dtsi"
+#include "bcm5301x-nand-cs0-bch8.dtsi"
+
+/ {
+	compatible = "asus,rt-ac88u", "brcm,bcm47094", "brcm,bcm4708";
+	model = "Asus RT-AC88U";
+
+	chosen {
+		bootargs = "earlycon";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
+	};
+
+	nvram@1c080000 {
+		compatible = "brcm,nvram";
+		reg = <0x1c080000 0x00180000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			label = "white:power";
+			gpios = <&chipcommon 3 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "default-on";
+		};
+
+		wan-red {
+			label = "red:wan";
+			gpios = <&chipcommon 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		lan {
+			label = "white:lan";
+			gpios = <&chipcommon 21 GPIO_ACTIVE_LOW>;
+		};
+
+		usb2 {
+			label = "white:usb2";
+			gpios = <&chipcommon 16 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ehci_port2>;
+			linux,default-trigger = "usbport";
+		};
+
+		usb3 {
+			label = "white:usb3";
+			gpios = <&chipcommon 17 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ehci_port1>, <&xhci_port1>;
+			linux,default-trigger = "usbport";
+		};
+
+		wps {
+			label = "white:wps";
+			gpios = <&chipcommon 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		wps {
+			label = "WPS";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&chipcommon 20 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&chipcommon 11 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "Wi-Fi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&chipcommon 18 GPIO_ACTIVE_LOW>;
+		};
+
+		led {
+			label = "Backlight";
+			linux,code = <KEY_BRIGHTNESS_ZERO>;
+			gpios = <&chipcommon 4 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&srab {
+	compatible = "brcm,bcm53012-srab", "brcm,bcm5301x-srab";
+	status = "okay";
+	dsa,member = <0 0>;
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			label = "lan4";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan3";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan2";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan1";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "wan";
+		};
+
+		sw0_p5: port@5 {
+			reg = <5>;
+			label = "extsw";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+
+		port@7 {
+			reg = <7>;
+			ethernet = <&gmac1>;
+			label = "cpu";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+
+		port@8 {
+			reg = <8>;
+			ethernet = <&gmac2>;
+			label = "cpu";
+			status = "disabled";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+	};
+};
+
+&usb2 {
+	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
+};
+
+&usb3_phy {
+	status = "okay";
+};
+
+&nandcs {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "boot";
+			reg = <0x00000000 0x00080000>;
+			read-only;
+		};
+
+		partition@80000 {
+			label = "nvram";
+			reg = <0x00080000 0x00180000>;
+		};
+
+		partition@200000 {
+			label = "firmware";
+			reg = <0x00200000 0x07e00000>;
+			compatible = "brcm,trx";
+		};
+	};
+};
-- 
2.25.1

