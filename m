Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99AB754FFA1
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 00:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbiFQWAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 18:00:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbiFQWAd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 18:00:33 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC425D1A4
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:00:31 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id q9so7248334wrd.8
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OCL3Sf6QQ2x1AKkKoXlg181Ap1kNxrArD9oN9eWO6pI=;
        b=KLrmE0qwXU9sI32TF+LZblewI0XJkSfs2VNG0Bi545BOnXutFNq0+apdt2lG8SHO7h
         ZvV3q92yYuUzcfnZJWtUu6aJ0/bu6m1zaEM6gqsopWM+4H/1o6rEnadLfAqB6IcuMBDC
         dvP6/+gujBjTg7LdbrfbJpnH3nBHpxgiQN0XFbQyWFzpLj8MFWQ6nT3pNefH5mNV3J4n
         HBbDzV6mBcMeIkH7fVMl5Gq90lMwfqOGN7P93fOVcNbry4mClZYl+DGV4WV4ULSXcBo6
         9oymBqE6SHZhcApmcYZiphJJGVR2hCJ0ANFFwDieqe0sZCHL8Z70nrxEmm+NyK/RhCW7
         LTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OCL3Sf6QQ2x1AKkKoXlg181Ap1kNxrArD9oN9eWO6pI=;
        b=WFnvccsSxagL0Ev40Zvcum6b4Yfobdox2eSoMnkeVx+BV6SHw6G7q4Ny8kat4wBelE
         3YTKEj1CRnfPn8WjYwCvXbNsLwKFLlOvElPCorq3+yJv0nJOtYnrmWXSL7e3i3FwqzN/
         1kUKl7BHEYEVSYWuUBrBQpKqCZj7rVvz5lBBmARovrzl/WBvYqNOBN3zuXclDqJ16jsM
         IVKClyt1X/crX0VPuM2NZTDii9AXIszzFwn5QEWbaTn1uP7GASDpiZFZOwqqCZax2kgX
         znI/3zg/cpm3rWciKrCLDMiDNKKfwbwPtjYkcMI3/Ae8/6zcklwCJ676QigF5eOGPRpg
         LLww==
X-Gm-Message-State: AJIora9w1wHzEKKwZrhTrX1kXckI55vQA+mXEyLTKAl4Pppk9OvlCg9C
        +OP/pClF2lAC2c3ZkjcFnyU=
X-Google-Smtp-Source: AGRyM1vT3EqbC9JaXSnY0tfYUGxK6D7Xk3sH/bv4eIaua2BOHMYRMPekDOIjYRPbcZvWZT1dBt5q2Q==
X-Received: by 2002:a5d:5231:0:b0:21b:838e:65ba with SMTP id i17-20020a5d5231000000b0021b838e65bamr1767118wra.412.1655503230366;
        Fri, 17 Jun 2022 15:00:30 -0700 (PDT)
Received: from debian64.daheim (p5b0d7eeb.dip0.t-ipconnect.de. [91.13.126.235])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b003974b95d897sm11995480wmq.37.2022.06.17.15.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 15:00:29 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1o2K0z-007aMZ-G6;
        Sat, 18 Jun 2022 00:00:29 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/2] ARM: BCM5301X: Add DT for Meraki MR26
Date:   Sat, 18 Jun 2022 00:00:29 +0200
Message-Id: <20220617220029.1808063-2-chunkeey@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220617220029.1808063-1-chunkeey@gmail.com>
References: <20220617220029.1808063-1-chunkeey@gmail.com>
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
RAM   : SK Hynix Inc. H5TQ1G63EFR, 1 GBit DDR3 SDRAM = 128 MiB
NAND  : Spansion S34ML01G100TF100, 1 GBit SLC NAND Flash = 128 MiB
ETH   : 1 GBit Ethernet Port - PoE (TPS23754 PoE Interface)
WIFI0 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
WIFI1 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
WIFI2 : Broadcom BCM43428 "Air Marshal" 802.11 abgn (1x1:1)
BUTTON: One reset key behind a small hole next to the Ethernet Port
LEDS  : One amber (fault), one white (indicator) LED, separate RGB-LED
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
v1 -> v2:
	- gpio-key's restart node renamed to key-restart (Rob)
          needs an opended paperclip due to the "pinhole" to be pressed.
	  references:
	  <https://lore.kernel.org/all/20220616005333.18491-27-krzysztof.kozlowski@linaro.org/T/>
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
index 000000000000..14f58033efeb
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
+		key-restart {
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

