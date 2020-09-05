Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CF8925EB3C
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 00:06:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728731AbgIEWGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 18:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728726AbgIEWGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Sep 2020 18:06:45 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DA5CC061244
        for <devicetree@vger.kernel.org>; Sat,  5 Sep 2020 15:06:44 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id i26so13045243ejb.12
        for <devicetree@vger.kernel.org>; Sat, 05 Sep 2020 15:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N+Vkdp0mEcq2IEncnbJf6rFZEGr/e9FOpe6bU8zEbsc=;
        b=IqvX/RnA5mBlG3iE8uZrZRTeXEu6l+L7c+tMzA5SEVFHZttOJ/F7zbxJaqUmqDs94N
         Du6BUiuqJlOkm7gVkgmcxYVMpeWffSV4O5k7PMwFwQseGrWzwrajBQNVdjbXvKjJ6i+L
         B5XR3nlUcZkQb3jXHtjmLcSzet6tKIEMjDfaXSQSgv8lmFcwdLkPTtAcP2bCCAZWQyz8
         m+h2crXdbVfx6MNpM5jqRWTDYLWXprP8MQFr3F9bOTwMflwAiTarFLZfb2uoarKUXdTy
         PvE1vCEQ1qwZ4I0uGenDX18rOr8OnSC2Lv4viQtFkjfo/XNwq5SRBNbN+8IcBulKunNh
         wJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N+Vkdp0mEcq2IEncnbJf6rFZEGr/e9FOpe6bU8zEbsc=;
        b=ZghQpmw6x0am1eG2sv1JKkfYOMDXqmgGeCSrfZ9O4Oo0Ukv3Sq/bz6BOsRD+ya7Dlm
         9BnMjfNGXoV1Ab61/cKtA0PU5zgryklucbcW96hIsCLxPvgdfAmghMVWNO1ESkKrAkRn
         gjFEUY0mMj4WcyjqrTTRsMg+ozii/JT1vvpNghK0lVbhhG69+b55XhOIT4BC3qQlzkZ9
         HsxMlBqD2s0WIUeNvpJ+N6dLHshsVegHXp7yzXwmH0SoUfRtCgk6PCTBj1xQ1+xpqwQ9
         dM3ADO34p6CsVitqkvV9HawU44x0WpaW6H0z+Jrm+34yfEQr3yxUqt3/y7fm/ws8e34W
         RlhA==
X-Gm-Message-State: AOAM5306cfPqdFcfd4T3EZlHhNkdoswwetiqnZKi6Eco/AFwpy1HG+Co
        xXoD7no2x6k0JI0O4+sXv6g=
X-Google-Smtp-Source: ABdhPJx2so+u82pSbaUiBijVkoA1mA322dFjnJlbTBIIrPVTaIn/w7o4PN+LUtPFG2QKPch6vaEqLQ==
X-Received: by 2002:a17:906:af42:: with SMTP id ly2mr13437227ejb.362.1599343602173;
        Sat, 05 Sep 2020 15:06:42 -0700 (PDT)
Received: from debian64.daheim (pd9e292e7.dip0.t-ipconnect.de. [217.226.146.231])
        by smtp.gmail.com with ESMTPSA id y6sm278590edj.50.2020.09.05.15.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:06:41 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1kEgKI-000FIr-RM; Sun, 06 Sep 2020 00:06:26 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/5] powerpc: apm82181: add WD MyBook Live NAS
Date:   Sun,  6 Sep 2020 00:06:13 +0200
Message-Id: <3a39f6d6c559097534f8e3dab9f13de610fda9bd.1599343429.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1599343429.git.chunkeey@gmail.com>
References: <cover.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the device-tree definitions for
Western Digital MyBook Live NAS devices.

CPU: AMCC PowerPC  APM82181 (PVR=12c41c83) at 800 MHz
     (PLB=200, OPB=100, EBC=100 MHz)
     32 kB I-Cache 32 kB D-Cache, 256 kB L2-Cache, 32 kB OnChip Memory
DRAM:  256 MB (2x NT5TU64M16GG-AC)
FLASH: 512 kB
Ethernet: 1xRGMII - 1 Gbit - Broadcom PHY BCM54610
SATA: 2*SATA (DUO Variant) / 1*SATA (Single Variant)
USB: 1xUSB2.0 (Only DUO)

Technically, this devicetree file is shared by two, very
similar devices.

There's the My Book Live and the My Book Live Duo. WD's uboot
on the device will enable/disable the nodes for the device.
This device boots from a u-boot on a 512 KiB NOR Flash onto a
Linux image stored on one of the harddrives.

Ready to go images and install instruction can be found @OpenWrt.org

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
rfc v1 -> v2:
	- use new LED naming scheme
	- dish out read-only; for essential NOR partitions
	- remove openwrt led-aliases
	- comment on the location of linux kernel (on the HDD)
	- overhauled commit message
v2 -> v3:
	- "jedec-probe" should be "jedec,spi-nor"
---
 arch/powerpc/boot/dts/wd-mybooklive.dts    | 200 +++++++++++++++++++++
 arch/powerpc/platforms/44x/ppc44x_simple.c |   3 +-
 2 files changed, 202 insertions(+), 1 deletion(-)
 create mode 100644 arch/powerpc/boot/dts/wd-mybooklive.dts

diff --git a/arch/powerpc/boot/dts/wd-mybooklive.dts b/arch/powerpc/boot/dts/wd-mybooklive.dts
new file mode 100644
index 000000000000..8fe868252cb5
--- /dev/null
+++ b/arch/powerpc/boot/dts/wd-mybooklive.dts
@@ -0,0 +1,200 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2008 DENX Software Engineering, Stefan Roese <sr@denx.de>
+ * (c) Copyright 2010 Western Digital Technologies, Inc. All Rights Reserved.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include "apm82181.dtsi"
+
+/ {
+	compatible = "wd,mybooklive";
+	model = "MyBook Live";
+
+	aliases {
+		serial0 = &UART0;
+	};
+};
+
+&POB0 {
+	GPIO1: gpio@e0000000 {
+		compatible = "wd,mbl-gpio";
+		reg-names = "dat";
+		reg = <0xe0000000 0x1>;
+		#gpio-cells = <2>;
+		gpio-controller;
+
+		enable-button {
+			/* Defined in u-boot as: NOT_NOR
+			 * "enables features other than NOR
+			 * specifically, the buffer at CS2"
+			 * (button).
+			 *
+			 * Note: This option is disabled as
+			 * it prevents the system from being
+			 * rebooted successfully.
+			 */
+
+			gpio-hog;
+			line-name = "Enable Reset Button, disable NOR";
+			gpios = <1 GPIO_ACTIVE_HIGH>;
+			output-low;
+		};
+	};
+
+	GPIO2: gpio@e0100000 {
+		compatible = "wd,mbl-gpio";
+		reg-names = "dat";
+		reg = <0xe0100000 0x1>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		no-output;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		/* There's just one tri-color LED. */
+		failsafe: power-red {
+			function = LED_FUNCTION_FAULT;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&GPIO1 4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "panic";
+		};
+
+		power-green {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO1 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		power-blue {
+			function = LED_FUNCTION_DISK;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&GPIO1 6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "disk-activity";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <60>;	/* 3 * 20 = 60ms */
+		autorepeat;
+
+		reset-button {
+			label = "Reset button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&GPIO2 2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	usbpwr: usb-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "Power USB Core";
+		gpios = <&GPIO1 2 GPIO_ACTIVE_LOW>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	sata1pwr: sata1-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "Power Drive Port 1";
+		gpios = <&GPIO1 3 GPIO_ACTIVE_LOW>;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on; /* needed to read OS from HDD */
+	};
+
+	sata0pwr: sata0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "Power Drive Port 0";
+		gpios = <&GPIO1 7 GPIO_ACTIVE_LOW>;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on; /* needed to read OS from HDD */
+	};
+};
+
+&NOR {
+	status = "okay";
+	compatible = "jedec,spi-nor";
+	bank-width = <1>;
+	reg = <0x00000000 0x00000000 0x00080000>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		/* Part of bootrom - Don't use it without a jump */
+		label = "bootrom";
+		reg = <0x00000000 0x0001e000>;
+		read-only;
+	};
+
+	partition@1e000 {
+		label = "env";
+		reg = <0x0001e000 0x00002000>;
+	};
+
+	partition@20000 {
+		label = "uboot";
+		reg = <0x00020000 0x00050000>;
+		read-only;
+	};
+};
+
+&EMAC0 {
+	status = "okay";
+
+	phy-map = <0x2>;
+	phy-address = <0x1>;
+	phy-handle = <&phy>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reset-gpios = <&GPIO1 0 GPIO_ACTIVE_LOW>;
+
+		phy: phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+		};
+	};
+};
+
+&CRYPTO {
+	status = "okay";
+};
+
+&HWRNG {
+	status = "okay";
+};
+
+&SATA0 {
+	status = "okay";
+
+	drive0: sata-port@0 {
+		reg = <0>;
+		#thermal-sensor-cells = <0>;
+	};
+};
+
+&SATA1 {
+	status = "okay";
+
+	drive1: sata-port@0 {
+		reg = <0>;
+		#thermal-sensor-cells = <0>;
+	};
+};
+
+&UART0 {
+	status = "okay";
+};
+
+&USBOTG0 {
+	status = "okay";
+	dr_mode = "host";
+	vbus-supply = <&usbpwr>;
+};
diff --git a/arch/powerpc/platforms/44x/ppc44x_simple.c b/arch/powerpc/platforms/44x/ppc44x_simple.c
index 3dbd8ddd734a..1122702c804a 100644
--- a/arch/powerpc/platforms/44x/ppc44x_simple.c
+++ b/arch/powerpc/platforms/44x/ppc44x_simple.c
@@ -59,7 +59,8 @@ static char *board[] __initdata = {
 	"amcc,sequoia",
 	"amcc,taishan",
 	"amcc,yosemite",
-	"mosaixtech,icon"
+	"mosaixtech,icon",
+	"wd,mybooklive",
 };
 
 static int __init ppc44x_probe(void)
-- 
2.28.0

