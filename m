Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36ACEC057F
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 14:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727775AbfI0Mr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 08:47:59 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36336 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727741AbfI0Mr6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 08:47:58 -0400
Received: by mail-wr1-f66.google.com with SMTP id y19so2606337wrd.3
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 05:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
        b=hM5HszN16GCur2cmgDofM9AqaYy/8VHWlTMuTYKWxaoCpfe68AbKYf7EgP7AZTtGQV
         8QNDXtu1HjBkX9ECY6kbivdSZfVJYZTeKsZHaMbuU/sLrONewee0F1UjlotFAULK1C3o
         /z9KWEDWXZpk/LY86hLqVLE6JoiskNBmKHPiML4PpKE88HOBCkpaexIc0YGwOw4cno4Q
         15a8we+0SuJt2+CZCC9j4Ve9gg14S6DEGczcfLM/AVRpLfrWYM66YFp4YjgKfrzGxMe2
         zKPZJzJGzRWIyYFMG0tBMuhPFNRns/rx2Jrh4MfM3e20HwdEmYFkaqe2BP/3sAK2M08R
         nJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
        b=iAapC2c2onl77t5pPFbH+ZZM3hBecblFgAnh4toy/8Mz3RD8uVaKOVK7MgvwSo4ujd
         GOjWQjlKMbcafXxxq6Qn4OPN/1j9IUTsJZ0fnWfoOuzpuBL9PsS6qPiWfGnUu/0Oxw96
         Il5SByn9DGFZwXbwH+ZN0Rw8tCTgfg+dN3DrmBqsvvHkf65+9nMR+KCF2Y+eZUhF2YHj
         /BPOVYxxpV05xmhjhNNHz7Ejzl4Hnr4uwbUk3CA6ynzZBLtnLOpB7dhs7UeWBu/9NROS
         l17kV+eEtInc9VB/3E8GSZKahoVJ3p7QEmGaJ0o66548C3thTZ84+BqJHZh0GpPGb96d
         mc4w==
X-Gm-Message-State: APjAAAV+gUaz+OYtdEFKEvzrkUr4BiNHiFJoxURxMnMg6cx9ep3TI+jv
        KD3ZoqWntYVvjCAcuNzYp0nQlw==
X-Google-Smtp-Source: APXvYqwAZclia+Z3ixWm7xB2/jZuLwc25ZPoW5O3SUaOaSe4s8zlVe9XokOOM88zEMRzk8WB6E25Jw==
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr2807206wrw.7.1569588476337;
        Fri, 27 Sep 2019 05:47:56 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 05:47:55 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v5 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date:   Fri, 27 Sep 2019 14:47:45 +0200
Message-Id: <20190927124750.12467-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add minimal thermal zone for two temperature sensor
One is located close to the DDR and the other one is
located close to the PLLs (between the CPU and GPU)

Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0660d9ef6a86..f98171949fcb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -94,6 +95,50 @@
 		#size-cells = <2>;
 		ranges;
 
+		thermal-zones {
+			cpu_thermal: cpu-thermal {
+				polling-delay = <1000>;
+				polling-delay-passive = <100>;
+				thermal-sensors = <&cpu_temp>;
+
+				trips {
+					cpu_passive: cpu-passive {
+						temperature = <85000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "passive";
+					};
+
+					cpu_hot: cpu-hot {
+						temperature = <95000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "hot";
+					};
+
+				};
+			};
+
+			ddr_thermal: ddr-thermal {
+				polling-delay = <1000>;
+				polling-delay-passive = <100>;
+				thermal-sensors = <&ddr_temp>;
+
+				trips {
+					ddr_passive: ddr-passive {
+						temperature = <85000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "passive";
+					};
+				};
+
+				cooling-maps {
+					map {
+						trip = <&ddr_passive>;
+						cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					};
+				};
+			};
+		};
+
 		ethmac: ethernet@ff3f0000 {
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
@@ -2412,6 +2457,7 @@
 			assigned-clock-rates = <0>, /* Do Nothing */
 					       <800000000>,
 					       <0>; /* Do Nothing */
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.17.1

