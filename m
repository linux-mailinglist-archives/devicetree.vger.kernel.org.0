Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66731CB6D5
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 11:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388093AbfJDJBZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 05:01:25 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55107 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387991AbfJDJBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 05:01:24 -0400
Received: by mail-wm1-f67.google.com with SMTP id p7so4956161wmp.4
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 02:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gKlncKkeKiOPhKAIhttqbr6HYS2dTyRQP+4Baa5xLmI=;
        b=BSv5Bycmn4XtgAhc6+7VYH4IbEvzSwbW2t+hZmS2GoP+VLplDuZF103AwDwHjtjW4V
         q4gJrMYJPkkiFHyNjhp/zm0QuBXfOMO5PaXUJhdIy6XUuxufRovFlvp2C59lEyXSuvcw
         Kd29tObmyi6qJDb17C09EvX7ko4jurraqABZsn16WrjpHBkZXTUL3PhTE7A3JnDzBVdc
         fLZi1uUHFLh7oLJHx3RB87oPPEUtd4gPkmF/WB6hHoKv97bLTJE3UuqZiQmAH9Q4sDeC
         t1nRvr7AZnpwjKwqB4XY1L3eX9sLtponVvNE2z2Td6P1RqQGnYNQcDR4wu2joV7BI4IQ
         scKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=gKlncKkeKiOPhKAIhttqbr6HYS2dTyRQP+4Baa5xLmI=;
        b=e7kl2IRXmPSizFAyc7sWAHaxFXoTR8Gr4oeNTU9v6EzXrOV+ud4aPpxmhIBYX4rmgf
         R3hD6VBxBxfCrVZEp72/s8pEdKMwljU5kpSSh3519vwKmkXYdVk+8ELonFRxJuW0Rzy0
         x+vpxHMpWS+JiPKooan3TANIxcH1xj1Qcv0lh6JfiD1vXhDOn4UOzbM49pMUo140cje7
         WnwtV8WAWoi2V8Ir7Q0h1ip0Kzcli53E2/e63i0rRUgmTUocQOhVrEKKOJ6LKYmyolgA
         fHHEm1Dt4i5Ckv8hMySUfTbNk2LOWwmjJ9YnkVIIhePK97UyDauBn+OZjz+DoNZXKyvA
         vGxw==
X-Gm-Message-State: APjAAAVENC6Q+uJ7VcBxGg0s7soONjuoASL/PraZdZgy/Dhp/AVB9wv9
        BUfpdK6PRcXt6WHr++I01+rtQw==
X-Google-Smtp-Source: APXvYqx8aNzo3ZYZjTc1LIfBgqGsmtdQFK4IhoYvZX3PB6pFJxFE5P7+1MnQrQAZfG0vVA7IaIiSbA==
X-Received: by 2002:a1c:a8d8:: with SMTP id r207mr9701863wme.135.1570179681779;
        Fri, 04 Oct 2019 02:01:21 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 02:01:21 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
Date:   Fri,  4 Oct 2019 11:01:11 +0200
Message-Id: <20191004090114.30694-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add minimal thermal zone for two temperature sensor
One is located close to the DDR and the other one is
located close to the PLLs (between the CPU and GPU)

Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0660d9ef6a86..a98c16e163c2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -94,6 +95,61 @@
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
+					cpu_critical: cpu-critical {
+						temperature = <110000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "critical";
+					};
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
+
+					ddr_critical: ddr-critical {
+						temperature = <110000>; /* millicelsius */
+						hysteresis = <2000>; /* millicelsius */
+						type = "critical";
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
@@ -2412,6 +2468,7 @@
 			assigned-clock-rates = <0>, /* Do Nothing */
 					       <800000000>,
 					       <0>; /* Do Nothing */
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.17.1

