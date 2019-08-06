Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BE3D83224
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731759AbfHFNFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:05:17 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43999 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726092AbfHFNFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:05:16 -0400
Received: by mail-wr1-f67.google.com with SMTP id p13so13259290wru.10
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qwty+uxLKW1T/NpMTHcmh0LshwdYZ4vWjP/ELdKEa2o=;
        b=D8KntWaHGtZ31QHHDa61n2oMLWd4F23GRShXo3nHC6VQoVhNaFY7sDI/Csy/6Me9yf
         BI/24N1NVcDWsyki+QKrIraE8cg+2vsh/62upOMDFf0UoUPZtP9yavFP8NT+cp4QwCTe
         6onwk+WuG++MfoPTDsWpopIQOXhv6h8asue7aGwn0YDIHZ9qw49q/yI4XBOQ4kqMv4/k
         TQXpXB450iCNK8XIcGfFP8l8OwXWAJ8/N2Q3g3D9Dqzb7GW7QcS7Ua4M9lLgtffPhsQT
         HtHqzc+9c7n9a7CHlTaMzkEyLLYjEDjyCxvwxljpqgjQXKx69nTdjyotbyRsqgePoLm6
         5vlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qwty+uxLKW1T/NpMTHcmh0LshwdYZ4vWjP/ELdKEa2o=;
        b=HZ8WeP8e2DY0VP/GMwO7nm2Gk7LHUio2bZXr2ZV/VcGNvb1c737mTvRGJXfjTtwDHQ
         WWSKvSwoz3sxxkZSA4JfMpbcJu9TeXm7nkX5Op+k40BfVkQTNJLiND4I8hkDw6qyeJca
         A1RsgcFr+LTNd9TXbkL95EbNfyntB+awWCYDWMpNKNriJ8aiFaQcEXv0Ekj7jp7r+OcY
         JN4DnaOXGU+Zjs2bq6tvEhv8jt+T0cccw1UFzLA6irSR3Xxe58gwDSQLKiqdqtkyQFxW
         TE+bVG3MhXg09sfLDoVLEb+x5CAxBgowRxShtoSqTkCj+eN/Ox8vvnwnLs5dINXxdO8s
         dcQg==
X-Gm-Message-State: APjAAAX1eO+dphkWtS/4gXmNFOMvIhGBWQ/ti+5X3YgguX/gAJJS4HnH
        /6vIwZTfvgHFAUhId7hlaDwP5Q==
X-Google-Smtp-Source: APXvYqyVQt4r+6RR/MOTDKyTCAF0jOlW3C9iIlORo2Xif8u4MR5vfYeZfvvigGrDR3y0dOxzfl9wrQ==
X-Received: by 2002:adf:e94a:: with SMTP id m10mr3455716wrn.245.1565096714776;
        Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
Date:   Tue,  6 Aug 2019 15:05:04 +0200
Message-Id: <20190806130506.8753-5-glaroque@baylibre.com>
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
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 979449968a5f..2c16a2cba0a3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "seirobotics,sei510", "amlogic,g12a";
@@ -33,6 +34,53 @@
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
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
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
 	mono_dac: audio-codec-0 {
 		compatible = "maxim,max98357a";
 		#sound-dai-cells = <0>;
@@ -321,6 +369,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu1 {
@@ -328,6 +377,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu2 {
@@ -335,6 +385,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cpu3 {
@@ -342,6 +393,7 @@
 	operating-points-v2 = <&cpu_opp_table>;
 	clocks = <&clkc CLKID_CPU_CLK>;
 	clock-latency = <50000>;
+	#cooling-cells = <2>;
 };
 
 &cvbs_vdac_port {
@@ -368,6 +420,10 @@
 	status = "okay";
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

