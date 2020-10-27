Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5664629A9EA
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 11:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898717AbgJ0Klx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 06:41:53 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36712 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1415496AbgJ0Klw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 06:41:52 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfl8H011655;
        Tue, 27 Oct 2020 05:41:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603795307;
        bh=vbcRkvtbtEOIBS4DHgIHa3VEgvqZEkWbKhQw5Lu02b8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=kf2v8B5MRS3kxU4Cbz3BHkw2w8HYSs9lA+RrgaDH9mmKw3+QtwB+omtPPia5ShEoC
         5PvM3sISAEBllS5pnDB3FRVE/KgPLyegzJsFBU679Mk84YhDqjv4P1xuZpzso6jrgk
         6t7HboD50cLu5qAidOI1EvwO8OJxfVO6qs88JK0A=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RAfl8h027495
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 05:41:47 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 05:41:47 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 05:41:47 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfd6B110982;
        Tue, 27 Oct 2020 05:41:45 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-j721e-common-proc-board: add DP to j7 evm
Date:   Tue, 27 Oct 2020 12:41:30 +0200
Message-ID: <20201027104132.105485-3-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027104132.105485-1-tomi.valkeinen@ti.com>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DisplayPort support.

The DP PWR is currently set as 'regulator-always-on', as we don't have a
dp-connector driver that would handle the power. When we do get such a
driver, the 'regulator-always-on' can be dropped.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 52e121155563..5a36d65755ee 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -83,6 +83,31 @@ sound0: sound@0 {
 			      "cpb-codec-scki",
 			      "cpb-codec-scki-48000", "cpb-codec-scki-44100";
 	};
+
+	dp_pwr_3v3: fixedregulator-dp-prw {
+		compatible = "regulator-fixed";
+		regulator-name = "dp-pwr";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&exp4 0 0>;	/* P0 - DP0_PWR_SW_EN */
+		enable-active-high;
+
+		/* Always on for now, until dp-connector driver can handle this */
+		regulator-always-on;
+	};
+
+	dp0: connector {
+		compatible = "dp-connector";
+		label = "DP0";
+		type = "full-size";
+		dp-pwr-supply = <&dp_pwr_3v3>;
+
+		port {
+			dp_connector_in: endpoint {
+				remote-endpoint = <&dp0_out>;
+			};
+		};
+	};
 };
 
 &main_pmx0 {
@@ -119,6 +144,12 @@ J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
 		>;
 	};
 
+	dp0_pins_default: dp0_pins_default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x1c4, PIN_INPUT, 5) /* SPI0_CS1.DP0_HPD */
+		>;
+	};
+
 	main_i2c1_exp4_pins_default: main-i2c1-exp4-pins-default {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x230, PIN_INPUT, 7) /* (U2) ECAP0_IN_APWM_OUT.GPIO1_11 */
@@ -538,6 +569,47 @@ &dss {
 				 <&k3_clks 152 6>,	/* PLL19_HSDIV0 */
 				 <&k3_clks 152 11>,	/* PLL18_HSDIV0 */
 				 <&k3_clks 152 18>;	/* PLL23_HSDIV0 */
+
+	status = "ok";
+};
+
+&dss_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+
+		dpi0_out: endpoint {
+			remote-endpoint = <&dp0_in>;
+		};
+	};
+};
+
+&mhdp {
+	status = "ok";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&dp0_pins_default>;
+};
+
+&dp0_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+		dp0_in: endpoint {
+			remote-endpoint = <&dpi0_out>;
+		};
+	};
+
+	port@4 {
+		reg = <4>;
+		dp0_out: endpoint {
+			remote-endpoint = <&dp_connector_in>;
+		};
+	};
 };
 
 &mcasp10 {
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

