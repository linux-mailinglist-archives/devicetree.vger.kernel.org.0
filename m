Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96F6E24E962
	for <lists+devicetree@lfdr.de>; Sat, 22 Aug 2020 21:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728677AbgHVTfy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Aug 2020 15:35:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728655AbgHVTfx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Aug 2020 15:35:53 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4491EC061573
        for <devicetree@vger.kernel.org>; Sat, 22 Aug 2020 12:35:53 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id t10so6826524ejs.8
        for <devicetree@vger.kernel.org>; Sat, 22 Aug 2020 12:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cBMQj+q8Km/OC7OjFFESd1OXXtGqhV+hAYiEZyRerxA=;
        b=PtnASTQvbiIoo/WrWVKzeEwmUv80t6eH1s8MOYsN+iEeQVkM4k5nV9HR3hX7Q8wgCD
         d+EdX/ynDqU72x11ybO3frkUTIK3PO7TKkPoX89kGzTb6824SBuXMbKBpnR16USsxlk4
         +NibXnZBP8nvtVjxYACElAkJF9AmHYI22woIFi/rof8QVe5HDLVQWDLYxFJ7loY7/2dE
         c59I55IlARkHzduiJAOPr7jYfM42SvzIrnC2ZjzBEE1zGMyMcrxgJwiydv/2eQShCgv2
         hvs+Wz9aGcZDVtjnEotilpL9hCCDUnZJLbIxh73/e1UIUeMhyKjbcghvJnv8DgYRQbXd
         FNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cBMQj+q8Km/OC7OjFFESd1OXXtGqhV+hAYiEZyRerxA=;
        b=Lek/b/O7VYwOnafbSQvzPaUeyiltThHErjsthEFWcKtGLHt+CcIWXEFPlP/0w305Ej
         hjJN1xdJgug2n44rAgs4aYKYMzadlyTMlIEDcfqYa1u79825A1qTYHwWNaJorupkbQud
         adgRXM9NWl5wHmkV/ilyOLb1eta+wCBzekXhHVVhSs3tAWYiKMP3+IaOlEpWiNZwwGHc
         LJvRI2VX4i1UqT6wXSsToq5m3IiNSYKxqww7F5no2pqeOtO8zD0oLLcTZKLySUPRQely
         4N9h2Tr9sfXgRsZIoQiELJZTRygVHkpYp/tFxADiTZ6MxQhfqImvGipKEGVhshcDaM56
         VFMg==
X-Gm-Message-State: AOAM530g/gpLdMb6VEFQGZRPlPqe3GFBD78pQIZ/pqjTTsIkjgs0fSP7
        pQ+Fpn4vmMSyKqTqOVdwat0=
X-Google-Smtp-Source: ABdhPJxgBnC3NcbqUPTdjX23fw2SZ5vBusmC9Ezmrqf8tQKqZfdF5pQ8XYiw3Xh5ETdnSTrTDAgx6A==
X-Received: by 2002:a17:906:924d:: with SMTP id c13mr8248611ejx.518.1598124951162;
        Sat, 22 Aug 2020 12:35:51 -0700 (PDT)
Received: from debian64.daheim (p4fd09171.dip0.t-ipconnect.de. [79.208.145.113])
        by smtp.gmail.com with ESMTPSA id z10sm3823115eje.122.2020.08.22.12.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 12:35:50 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1k9ZIh-000Enp-05; Sat, 22 Aug 2020 21:35:39 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 3/4] powerpc: apm82181: add Meraki MR24 AP
Date:   Sat, 22 Aug 2020 21:35:20 +0200
Message-Id: <20cc32c8ee98be82934c85fcbba290703f8e4492.1598124791.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1598124791.git.chunkeey@gmail.com>
References: <cover.1598124791.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the device-tree definitions for Meraki MR24
Accesspoint devices.

Board: MR24 - Meraki MR24 Cloud Managed Access Point
CPU: APM82181 SoC 800 MHz (PLB=200 OPB=100 EBC=100)
Flash size: 32MiB
RAM Size: 128MiB
Wireless: Atheros AR9380 5.0GHz + Atheros AR9380 2.4GHz
EPHY: 1x Gigabit Atheros AR8035

Ready to go images and install instruction can be found @OpenWrt.

Signed-off-by: Chris Blake <chrisrblake93@gmail.com>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>

---
- rfc v1 -> v2:
	- use new led naming scheme
	- space-vs-tab snafu cleanup
	- remove led-aliases (openwrt specific)
	- overhauled commit message
---
 arch/powerpc/boot/dts/meraki-mr24.dts      | 235 +++++++++++++++++++++
 arch/powerpc/platforms/44x/ppc44x_simple.c |   1 +
 2 files changed, 236 insertions(+)
 create mode 100644 arch/powerpc/boot/dts/meraki-mr24.dts

diff --git a/arch/powerpc/boot/dts/meraki-mr24.dts b/arch/powerpc/boot/dts/meraki-mr24.dts
new file mode 100644
index 000000000000..58050c2c92a2
--- /dev/null
+++ b/arch/powerpc/boot/dts/meraki-mr24.dts
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Device Tree Source for Meraki MR24 (Ikarem)
+ *
+ * Copyright (C) 2016 Chris Blake <chrisrblake93@gmail.com>
+ *
+ * Based on Cisco Meraki GPL Release r23-20150601 MR24 DTS
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include "apm82181.dtsi"
+
+/ {
+	model = "Meraki MR24 Access Point";
+	compatible = "meraki,mr24";
+
+	aliases {
+		serial0 = &UART1;
+	};
+
+	chosen {
+		stdout-path = "/plb/opb/serial@ef600400";
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
+&NAND {
+	status = "okay";
+
+	/* 32 MiB NAND Flash */
+	nand {
+		partition@0 {
+			label = "u-boot";
+			reg = <0x00000000 0x00150000>;
+			read-only;
+		};
+
+		partition@150000 {
+			/*
+			 * The u-boot environment size is one NAND
+			 * block (16KiB). u-boot allocates four NAND
+			 * blocks (64KiB) in order to have spares
+			 * around for bad block management
+			 */
+			label = "u-boot-env";
+			reg = <0x00150000 0x00010000>;
+			read-only;
+		};
+
+		partition@160000 {
+			/*
+			 * redundant u-boot environment.
+			 * has to be kept it in sync with the
+			 * data in "u-boot-env".
+			 */
+			label = "u-boot-env-redundant";
+			reg = <0x00160000 0x00010000>;
+			read-only;
+		};
+
+		partition@170000 {
+			label = "oops";
+			reg = <0x00170000 0x00010000>;
+		};
+
+		partition@180000 {
+			label = "ubi";
+			reg = <0x00180000 0x01e80000>;
+		};
+	};
+};
+
+&UART1 {
+	status = "okay";
+};
+
+&GPIO0 {
+	status = "okay";
+};
+
+&IIC0 {
+	status = "okay";
+	/* Boot ROM is at 0x52-0x53, do not touch */
+	/* Unknown chip at 0x6e, not sure what it is */
+};
+
+&EMAC0 {
+	status = "okay";
+
+	phy-mode = "rgmii-id";
+	phy-map = <0x2>;
+	phy-address = <0x1>;
+	phy-handle = <&phy>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy: phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+		};
+	};
+};
+
+&POB0 {
+	leds {
+		compatible = "gpio-leds";
+
+		status: power-green {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		failsafe: power-amber {
+			function = LED_FUNCTION_FAULT;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&GPIO0 19 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 17 GPIO_ACTIVE_LOW>;
+		};
+
+		/* signal strength indicator */
+		ssi-0 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 23 GPIO_ACTIVE_LOW>;
+		};
+
+		ssi-1 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 22 GPIO_ACTIVE_LOW>;
+		};
+
+		ssi-2 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 21 GPIO_ACTIVE_LOW>;
+		};
+
+		ssi-3 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&GPIO0 20 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			/* Label as per Meraki's "MR24 Installation Guide" */
+			label = "Factory Reset Button";
+			linux,code = <KEY_RESTART>;
+			interrupt-parent = <&UIC1>;
+			interrupts = <0x15 IRQ_TYPE_EDGE_FALLING>;
+			gpios = <&GPIO0 16 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+};
+
+&PCIE0 {
+	status = "okay";
+	/*
+	 * relevant lspci topology:
+	 *
+	 *	-+-[0000:40]---00.0-[41-7f]----00.0-[42-45]--+-02.0-[43]----00.0
+	 *	                                             +-03.0-[44]----00.0
+	 *
+	 */
+
+	bridge@64,0 {
+		reg = <0x00400000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		bridge@65,0 {
+			/* IDT PES3T3 PCI Express Switch */
+			compatible = "pci111d,8039";
+			reg = <0x00410000 0 0 0 0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+
+			bridge@66,2 {
+				compatible = "pci111d,8039";
+				reg = <0x00421000 0 0 0 0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+
+				wifi0: wifi@67,0 {
+					/* Atheros AR9380 2.4GHz */
+					compatible = "pci168c,0030";
+					reg = <0x00430000 0 0 0 0>;
+				};
+			};
+
+			bridge@66,3 {
+				compatible = "pci111d,8039";
+				reg = <0x00421800 0 0 0 0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+
+				wifi1: wifi@68,0 {
+					/* Atheros AR9380 5GHz */
+					compatible = "pci168c,0030";
+					reg = <0x00440000 0 0 0 0>;
+				};
+			};
+		};
+	};
+};
+
+&MSI {
+	status = "okay";
+};
diff --git a/arch/powerpc/platforms/44x/ppc44x_simple.c b/arch/powerpc/platforms/44x/ppc44x_simple.c
index 1122702c804a..7d479928fd48 100644
--- a/arch/powerpc/platforms/44x/ppc44x_simple.c
+++ b/arch/powerpc/platforms/44x/ppc44x_simple.c
@@ -60,6 +60,7 @@ static char *board[] __initdata = {
 	"amcc,taishan",
 	"amcc,yosemite",
 	"mosaixtech,icon",
+	"meraki,mr24",
 	"wd,mybooklive",
 };
 
-- 
2.28.0

