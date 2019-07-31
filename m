Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF3177C6C3
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 17:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725209AbfGaPfk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 11:35:40 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:39235 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729208AbfGaPfj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 11:35:39 -0400
Received: by mail-wr1-f68.google.com with SMTP id x4so17031509wrt.6
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 08:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=C6EJL/51AHNPmVJCC71cSQAo/Uql1LEExYduU9tlj54=;
        b=USefCljrpz1yRsoIXF2w4xg9VXh4QbDSRfoyiXoY6jTBa7FxJT/7Due8LQ+/bxUmFp
         WAnAouc1YOFfmGGlkNGldaFXIxCzuzfN2zJb8T2LWO6y0KSY9g+ThTrcEkjgJRrQypui
         TsALxmEM6dEQtySXllvS/VgeRnzL0tr4TE/tKkqBl2gomPbnpVwkSJM34y8hi4C+tq00
         nUML5hcGDz/hAz/bYVpHD4tw1+z/2tRy2XSrR0p9nOkH2XwzrkSf15x7n1UTHj+JEKVf
         DBXXcERhZyinR8yH4dhsmdtXxIqaSW5Xl367BjgxRe//gosv9vVQECKBtdVspL1td+tS
         BVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=C6EJL/51AHNPmVJCC71cSQAo/Uql1LEExYduU9tlj54=;
        b=tDRQBa9/Z5njWAn5WP10VETL7b1Z/rMMvBwdG0hMpi5+yvPn7ayQY3Y5DsxLWrcL36
         qB8sIy3w14JpyHl9NWZTIbQ27jGMDFWdoYMVxmWvzcOBrGdUwNTPeB3hiyzDDwfQVbc4
         JV5VSNr6jNEpZU8Zbnqz8KDDD0dXLheru5OBc4h3tbpoQH2eyLhzUV9e7ZYt84eH3wY8
         vkQjRgSlnZwOLMX03WDHW2m1dmFmNpe7RIHtca5UBofZjm+GKgQkMTeBsTcX9+281hJT
         5icp5SfYHEtwAMqXO4VsyIvaYmNj3YLiakUgrvKeXBppsdOnqWzAzVqvcpKSJlm8n6CM
         IbSQ==
X-Gm-Message-State: APjAAAWs80MtIiUIml6El53dfVJyAeleJib0e9kCdKA8RkpHpTYCEbSH
        jYZhdMamkDs2F/CEBp2qI2W5nw==
X-Google-Smtp-Source: APXvYqxYIBXbtzSuPK9eyz7FC0ILxtSo7AVLrSGfVDmK39RujTf/qMGWu4sryl3IMIl6xvWfe1kg/w==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr44406641wrs.200.1564587336894;
        Wed, 31 Jul 2019 08:35:36 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 08:35:36 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/6] arm64: dts: amlogic: odroid-n2: add minimal thermal zone
Date:   Wed, 31 Jul 2019 17:35:28 +0200
Message-Id: <20190731153529.30159-6-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731153529.30159-1-glaroque@baylibre.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add minimal thermal zone for DDR and CPU sensor

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

