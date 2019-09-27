Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE311C0B8B
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 20:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728212AbfI0So3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 14:44:29 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42294 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728036AbfI0SoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 14:44:03 -0400
Received: by mail-wr1-f66.google.com with SMTP id n14so4298946wrw.9
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 11:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
        b=QifapQB3gJpS3duSfuss2bKCph2XDPCBGuA1ixcVHdgABdF3z6npkh9zYXzycrhVsp
         8P696tdPAgaAtiYwxoIcbLstboUrNv1j/dUKiejMbo3RUyg+C3Uxj9bj6X8Gv3T8w6a1
         Dk2LfVVAZytHukR9amphBUEAV7AcYLiMAvjZRglans6SdreItLzVs5+90rdiQVgmlpaW
         hktKbuomksiV35M8l8y8a6RjWMYPImJaVr2RQGegblBkjr2sLL1brnPvSz9sCpYMq9Jp
         gmG2jQ/htvJWpvTZpSEI7olV4X5GmYoG4f5xnfck2Q2FJIr3QcXyUSakZJqHPMemoJAh
         rRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K7iwhASPxbBfW+q2EXnPK2zfjdwyLTY+27xuFNIdRtA=;
        b=Mc7heFQoW5f7jPoABcSRC+W6jZnjyO6ozRm4Z8QKFiwzbUEdqZD+Mb++fsFBMyvXR4
         tOc1BfS8Lcvv+HCNYz07jrs4EFL45PnrVxLNjeanQEwgaGutOeV3dWzTvH1ebsKSLcjO
         Jjv857cl2GwAjOTpwI99zsbchcJzamHaoy9RJhzJCznFXtn/JjFAKpx9SpZOB0dbdbuq
         SHRaucd1zs6PFOrVvpwbPL69gAbKBhQkGPawh2Ci4XumZXpsO5acVeTllHVO0B0mN3Wg
         +NRZtmqbqQJA8K505FgXEIO4ixC6aistvdQ1hv0kqmWTjdPBJA9kndfcwrdOdfGYe7pZ
         6t1A==
X-Gm-Message-State: APjAAAWZIWZM5HxovHaxqBz88xmaA4F/NX0wemwIeRV5aVXvL4OPa3/B
        46a5R7CHjsmOz3DLpFDd7DhWxQ==
X-Google-Smtp-Source: APXvYqz3u6msX1INiY6wFChhqjbg5r9ADJSXD3syZv0Fnoe6AUeuH032CUpiOhoNsGOdw83xLNWDhg==
X-Received: by 2002:a5d:660c:: with SMTP id n12mr4269949wru.286.1569609840121;
        Fri, 27 Sep 2019 11:44:00 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 11:43:59 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v6 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date:   Fri, 27 Sep 2019 20:43:49 +0200
Message-Id: <20190927184352.28759-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
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

