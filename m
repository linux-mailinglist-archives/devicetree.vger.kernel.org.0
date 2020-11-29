Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF8DA2C7A67
	for <lists+devicetree@lfdr.de>; Sun, 29 Nov 2020 18:54:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728075AbgK2RyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Nov 2020 12:54:12 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:42350 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgK2RyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Nov 2020 12:54:12 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ATHqWx6081667;
        Sun, 29 Nov 2020 11:52:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606672352;
        bh=cbifc5hI//lkbMFiUzLYdVpxFGr5qHQr4+G+hiuIn+8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Rdywfdp0mSTt1n3AliiaNJ4GWVDh8Zu7pdw8iS8a0Asx4jdDoIirv+4lG1o/DWwoG
         iALy3JXFcmYSXOf7boLQWedElFL2tzAYMYhnyy2rsDFkOU00VRRst0c+npdpMgMDIJ
         SvRJAUACyX7OHHmsQg20PbR+LbY3KbziF6VI5398=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ATHqWAC014806
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 29 Nov 2020 11:52:32 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 29
 Nov 2020 11:52:31 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 29 Nov 2020 11:52:31 -0600
Received: from pxplinux063.india.englab.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ATHqOqg081845;
        Sun, 29 Nov 2020 11:52:30 -0600
From:   Sekhar Nori <nsekhar@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Faiz Abbas <faiz_abbas@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v3 2/2] arm64: dts: ti: k3-j721e-common-proc-board: Add support for SD card UHS modes
Date:   Sun, 29 Nov 2020 23:22:23 +0530
Message-ID: <20201129175223.21751-3-nsekhar@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201129175223.21751-1-nsekhar@ti.com>
References: <20201129175223.21751-1-nsekhar@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Faiz Abbas <faiz_abbas@ti.com>

Add support for UHS modes for the SD card connected at sdhci1. This
involves adding regulators for voltage switching and power cycling the
SD card and removing the no-1-8-v property.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 33 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     |  2 --
 2 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 5754892f8501..60764366e22b 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -67,6 +67,31 @@
 		regulator-boot-on;
 	};
 
+	vdd_mmc1: fixedregulator-sd {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_mmc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		vin-supply = <&vsys_3v3>;
+		gpio = <&exp2 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	vdd_sd_dv_alt: gpio-regulator-TLV71033 {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_dv_alt_pins_default>;
+		regulator-name = "tlv71033";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&vsys_5v0>;
+		gpios = <&main_gpio0 117 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+	};
+
 	sound0: sound@0 {
 		compatible = "ti,j721e-cpb-audio";
 		model = "j721e-cpb";
@@ -106,6 +131,12 @@
 		>;
 	};
 
+	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x1d8, PIN_INPUT, 7) /* (W4) SPI1_CS1.GPIO0_117 */
+		>;
+	};
+
 	main_usbss0_pins_default: main-usbss0-pins-default {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x290, PIN_OUTPUT, 0) /* (U6) USB0_DRVVBUS */
@@ -295,6 +326,8 @@
 
 &main_sdhci1 {
 	/* SD/MMC */
+	vmmc-supply = <&vdd_mmc1>;
+	vqmmc-supply = <&vdd_sd_dv_alt>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
 	ti,driver-strength-ohm = <50>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index d87748cb6896..2056a41f9378 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1107,7 +1107,6 @@
 		ti,trm-icp = <0x8>;
 		ti,clkbuf-sel = <0x7>;
 		dma-coherent;
-		no-1-8-v;
 	};
 
 	main_sdhci2: sdhci@4f98000 {
@@ -1128,7 +1127,6 @@
 		ti,trm-icp = <0x8>;
 		ti,clkbuf-sel = <0x7>;
 		dma-coherent;
-		no-1-8-v;
 	};
 
 	usbss0: cdns-usb@4104000 {
-- 
2.17.1

