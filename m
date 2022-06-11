Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB915476B3
	for <lists+devicetree@lfdr.de>; Sat, 11 Jun 2022 18:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233764AbiFKQ7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jun 2022 12:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234525AbiFKQ7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jun 2022 12:59:53 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6543417052
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 09:59:51 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j5-20020a05600c1c0500b0039c5dbbfa48so2522428wms.5
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 09:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JdMW+GNSGWbOb/1vUklHM9SGyivlgdwCwlgeUZbl6E8=;
        b=emPIW5Rw/aikH5OABELCozsJ/aQdnssw3apc99+Q/EvEWAPwPQj1tLfDshTKqWrgfn
         wjkRIOikJGOSrmz3QBFbtZfuEP/xpskwsHWevpfNWjXKsEevvWtFCzFIlJv/EsHeeNwJ
         ML2H31Qf5VczCh7kKqhbnRZ2WQIEcWaRhHftfAunmpv080Ij8/l6FDnhlqq24+IJ2MUL
         jg6yyojEzNT+DzgoPh4QW09QVj6CAxPbQCVUUn1ix+GEm+ClPB75YYzqsJoHOIULBidb
         vrDFZSNovg0hqWbDEbPaQcBMl8qOF4Lf7fpIG1+T70svEjTqDSVPChvj0hNEfAxWM135
         HKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JdMW+GNSGWbOb/1vUklHM9SGyivlgdwCwlgeUZbl6E8=;
        b=L2EHrgOmT/y8Qt4F+dl0Hh9Vz/G/gFZ1bQEIbC2V0VwG+ti2IQBBCmL/E/sP4qHNvN
         WZUPdBfA3uHWkIFI+XXagLAMheNhFSdZBSZnWzHrUvPoklqMykqe+G+kRRwnib6nZzNp
         Luo77rp28sT4Gjj07XO890+4H5opEbUWWTfVNw0hY9oDW4Hi8T3V9eXaszP7ZL+pkn5O
         fPQqzHN0tblcGrORG8Q/WMaOwGql+iLBpk96eoojvtKX/xSof0UEkeU1c3Pjnnt4ZRYS
         kMZ69qx9DsXVtPf4oTUDp1OwDfGEBEGHcvJEbpkIxvPjghutQqiQKGMij5EwPSJ0opAQ
         tqIw==
X-Gm-Message-State: AOAM533avMLBFF/0xLOlSi6LIW863fx8oGLLtGO7aj2NzXttOAbPoXLW
        C/wXMB5kj31ZD5cy+9b/OX8=
X-Google-Smtp-Source: ABdhPJwowIbymMesCHYm9VAgwDAsSB2EcRB10FLscG+AKVNIQjWBflnjI4DAtpXlZRxOSywYSGA6fg==
X-Received: by 2002:a05:600c:acb:b0:397:bdb:ffea with SMTP id c11-20020a05600c0acb00b003970bdbffeamr5774700wmr.56.1654966789913;
        Sat, 11 Jun 2022 09:59:49 -0700 (PDT)
Received: from debian64.daheim (p5b0d7071.dip0.t-ipconnect.de. [91.13.112.113])
        by smtp.gmail.com with ESMTPSA id r124-20020a1c2b82000000b0039466988f6csm7192668wmr.31.2022.06.11.09.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 09:59:49 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1o04Si-001ik7-Uv;
        Sat, 11 Jun 2022 18:59:48 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 2/2] ARM: BCM5301X: Add DT for Meraki MR26
Date:   Sat, 11 Jun 2022 18:59:48 +0200
Message-Id: <20220611165948.410308-2-chunkeey@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220611165948.410308-1-chunkeey@gmail.com>
References: <20220611165948.410308-1-chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Meraki MR26 is an EOL wireless access point featuring a
PoE ethernet port and two dual-band 3x3 MIMO 802.11n
radios and 1x1 dual-band WIFI dedicated to scanning.

Thank you Amir for the unit and PSU.

Hardware info:
SOC   : Broadcom BCM53015A1KFEBG (dual-core Cortex-A9 CPU at 800 MHz)
RAM   : H5TQ1G63EFR, SK hynix Inc. 1Gb DDR3 SDRAM = 128 MiB
NAND  : S34ML01G100TF100, S34ML01G1 1 Gb Spansion SLC NAND Flash = 128 MiB
ETH   : 1GBit Ethernet Port - PoE (TPS23754 PoE Interface)

WIFI0 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
WIFI1 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
WIFI2 : Broadcom BCM43428               802.11 abgn (1x1:1)
BUTTON: one reset button
LEDS  : one amber (fault), one white (indicator) LED, separate RGB-LED.
MISC  : Atmel AT24C64 8KiB EEPROM i2c
      : Ti INA219 26V, 12-bit, i2c output current/voltage/power monitor

SERIAL:
      WARNING: The serial port needs a TTL/RS-232 3V3 level converter!
      The Serial setting is 115200-8-N-1. The board has a populated
      right angle 1x4 0.1" pinheader.
      The pinout is: VCC (next to J3, has the pin 1 indicator), RX, TX, GND.

Odd stuff:

- uboot does not support lzma compression, but gzip'd uImage/DTB work.
- uboot claims to support FIT, but fails to pass the DTB to the kernel.
  Appending the dtb after the kernel image works.
- RGB-controller is supported through an external userspace program.
- The ubi partition contains a "board-config" volume. It stores the
  MAC Address (0x66 in binary) and Serial No. (0x7c alpha-numerical).
- SoC's temperature sensor always reports that it is on fire.
  This causes the system to immediately shutdown! Looking at reported
  "418 degree Celsius" suggests that this sensor is not working.

WIFI:
b43 is able to initialize all three WIFIs @ 802.11bg.
| b43-phy0: Broadcom 43431 WLAN found (core revision 29)
| bcma-pci-bridge 0000:01:00.0: bus1: Switched to core: 0x812
| b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
| b43-phy0: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
| b43-phy0 warning: 5 GHz band is unsupported on this PHY
| b43-phy1: Broadcom 43431 WLAN found (core revision 29)
| bcma-pci-bridge 0001:01:00.0: bus2: Switched to core: 0x812
| b43-phy1: Found PHY: Analog 9, Type 7 (HT), Revision 1
| b43-phy1: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
| b43-phy1 warning: 5 GHz band is unsupported on this PHY
| b43-phy2: Broadcom 43228 WLAN found (core revision 30)
| bcma-pci-bridge 0002:01:00.0: bus3: Switched to core: 0x812
| b43-phy2: Found PHY: Analog 9, Type 4 (N), Revision 16
| b43-phy2: Found Radio: Manuf 0x17F, ID 0x2057, Revision 9, Version 1
| Broadcom 43xx driver loaded [ Features: NL ]

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---

|WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
|#89:
|new file mode 100644

MAINTAINERS has:

>BROADCOM BCM5301X ARM ARCHITECTURE
>[...]
>F:      arch/arm/boot/dts/bcm5301*

|WARNING: DT compatible string "atmel,24c64" appears un-documented \
|-- check ./Documentation/devicetree/bindings/
|#245: FILE: arch/arm/boot/dts/bcm53015-meraki-mr26.dts:152:
|+            compatible = "atmel,24c64";

weird, it should match what is in:
Documentation/devicetree/bindings/eeprom/at24.yaml
---
 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 166 +++++++++++++++++++++
 2 files changed, 167 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm53015-meraki-mr26.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 184899808ee7..9ad78c358330 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -135,6 +135,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
 	bcm47094-luxul-xwr-3150-v1.dtb \
 	bcm47094-netgear-r8500.dtb \
 	bcm47094-phicomm-k3.dtb \
+	bcm53015-meraki-mr26.dtb \
 	bcm53016-meraki-mr32.dtb \
 	bcm94708.dtb \
 	bcm94709.dtb \
diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
new file mode 100644
index 000000000000..597d36945756
--- /dev/null
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Broadcom BCM470X / BCM5301X ARM platform code.
+ * DTS for Meraki MR26 / Codename: Venom
+ *
+ * Copyright (C) 2022 Christian Lamparter <chunkeey@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm4708.dtsi"
+#include "bcm5301x-nand-cs0-bch8.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	compatible = "meraki,mr26", "brcm,bcm53015", "brcm,bcm4708";
+	model = "Meraki MR26";
+
+	memory@0 {
+		reg = <0x00000000 0x08000000>;
+		device_type = "memory";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			function = LED_FUNCTION_FAULT;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&chipcommon 13 GPIO_ACTIVE_HIGH>;
+			panic-indicator;
+		};
+		led-1 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&chipcommon 12 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&chipcommon 11 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&uart0 {
+	clock-frequency = <50000000>;
+	/delete-property/ clocks;
+};
+
+&uart1 {
+	status = "disabled";
+};
+
+&gmac0 {
+	status = "okay";
+};
+
+&gmac1 {
+	status = "disabled";
+};
+&gmac2 {
+	status = "disabled";
+};
+&gmac3 {
+	status = "disabled";
+};
+
+&nandcs {
+	nand-ecc-algo = "hw";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0x200000>;
+			read-only;
+		};
+
+		partition@200000 {
+			label = "u-boot-env";
+			reg = <0x200000 0x200000>;
+			/* empty */
+		};
+
+		partition@400000 {
+			label = "u-boot-backup";
+			reg = <0x400000 0x200000>;
+			/* empty */
+		};
+
+		partition@600000 {
+			label = "u-boot-env-backup";
+			reg = <0x600000 0x200000>;
+			/* empty */
+		};
+
+		partition@800000 {
+			label = "ubi";
+			reg = <0x800000 0x7780000>;
+		};
+	};
+};
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "poe";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+
+			fixed-link {
+				speed = <1000>;
+				duplex-full;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinmux_i2c>;
+
+	clock-frequency = <100000>;
+
+	ina219@40 {
+		compatible = "ti,ina219"; /* PoE power */
+		reg = <0x40>;
+		shunt-resistor = <60000>; /* = 60 mOhms */
+	};
+
+	eeprom@56 {
+		compatible = "atmel,24c64";
+		reg = <0x56>;
+		pagesize = <32>;
+		read-only;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		/* it's empty */
+	};
+};
+
+&thermal {
+	status = "disabled";
+	/* does not work, reads 418 degree Celsius */
+};
-- 
2.36.1

