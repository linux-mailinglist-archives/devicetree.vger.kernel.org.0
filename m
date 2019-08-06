Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF83583225
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731916AbfHFNFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:05:17 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:53083 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731858AbfHFNFR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:05:17 -0400
Received: by mail-wm1-f67.google.com with SMTP id s3so78109658wms.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NiNSwC1w2DwV9CwHEjfRSuQJOciTaxfr2h0JNT+7juw=;
        b=EHYBOLpk8xSLXE7FKn355BKQ13vlwR3ZCnaAz2IWUt2g774DsjpBHoAvqYsqxZVOj4
         XnyXkJ/j3iP23NR0X3Ig5azD/6rscihQu1z4WOmce8usRaz08Bt5oK85tXW8De/oz3uE
         ccZ0Nts615RF+Dvq4909tk5blSKQcmZ0uzvQx5j0vUPCoePCSuRx+ndSQwLFwBLu1rYq
         GGyMuOLy3R4GFzLQ6XwVvAeOJylpXu1dAkcxzIaUpdb9KLRpsWf160lCqdc8o/rOGqlM
         VxePBUUjgTgb1PaIEXmhhX0zRciOVg0R5nyHXACCFOJdkqJ089au+RQxnDteKiG9WzOB
         v2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NiNSwC1w2DwV9CwHEjfRSuQJOciTaxfr2h0JNT+7juw=;
        b=GOQBLgxKEVU2/2N65a99WI3opN/iEfPaY44i8RVMC+H8/gJsE1lLg+Gt+46ug3A1yM
         729X50edmV/OnsVSI/DpKIETGDU9XpyYdnx+eg06ooiZmoJapNKrCPMZYDs+RtajsDe9
         A3Rw9rZYFeet05UAJ0eSP2cwLG/TlPwGTfIhZEilS57/LGB3jPK0p9ptLMOETIvcmT1L
         XPVDcvVbIHPv30at7qJke/sD1bzEyoU09vPpz//5bQB0n1xouvGPT16zp/QQUr99b/Wt
         +6fqAFnk8axRSZ5TUb7r6cMhHWYISvIPsWht1o4Qx/8cp5/xQUvZnAUZ/BpfJBYDVGNU
         G6dg==
X-Gm-Message-State: APjAAAXevtok9QAs1TuLfPLZHyJGjAZeL+jrG+6X66NdnIXlipTfc559
        heG4n5ehKr7sRDluPWBjqLBXLQ==
X-Google-Smtp-Source: APXvYqypJpfP+/e201HN/T1eYuG4Bi9Q5B29Pi4H41CfmpjOXTeOpKGfzyFQw5yv78N7W36Wh6yuoQ==
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr4635611wmk.99.1565096715772;
        Tue, 06 Aug 2019 06:05:15 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.14
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:05:15 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/6] arm64: dts: amlogic: odroid-n2: add minimal thermal zone
Date:   Tue,  6 Aug 2019 15:05:05 +0200
Message-Id: <20190806130506.8753-6-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add minimal thermal zone for two temperature sensor
One is located close to the DDR and the other one is
located close to the PLLs (between the CPU and GPU)

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 75ff8a7e373d..a7d73c0c8447 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "hardkernel,odroid-n2", "amlogic,g12b";
@@ -20,6 +21,55 @@
 		ethernet0 = &ethmac;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&cpu_temp>;
+
+			trips {
+				cpu_critical: cpu-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map {
+					trip = <&cpu_critical>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		ddr-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&ddr_temp>;
+
+			trips {
+				ddr_critical: ddr-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map {
+					trip = <&ddr_critical>;
+					cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -288,6 +338,7 @@
 	operating-points-v2 = <&cpu_opp_table_0>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu1 {
@@ -295,6 +346,7 @@
 	operating-points-v2 = <&cpu_opp_table_0>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu100 {
@@ -302,6 +354,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu101 {
@@ -309,6 +362,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu102 {
@@ -316,6 +370,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu103 {
@@ -323,6 +378,7 @@
 	operating-points-v2 = <&cpub_opp_table_1>;
 	clocks = <&clkc CLKID_CPUB_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &ext_mdio {
@@ -377,6 +433,10 @@
 	};
 };
 
+&mali {
+	#cooling-cells = <2>;
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-- 
2.17.1

