Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C486975AA5
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 00:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727202AbfGYWTf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 18:19:35 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:42101 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727198AbfGYWTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 18:19:35 -0400
Received: by mail-pf1-f194.google.com with SMTP id q10so23423502pff.9
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 15:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JdFpkP7pbSMH9B4M7FTkhgG/lqjyJ6OOE6axVL6CUAA=;
        b=GYJfW3Nk1FciY+HZgW4xr/BxUwR7yovYnBpJcN1IbpNy1g1p3YsR/uwxoB2IEi7P4K
         KcbL5OybLLonmU2MsMy5Q4cq3vm39gIgZPoP+xBpaaLSREG8FuBZvYcrvWnRYDY+Tt4K
         gKHCBwaODfRdhdGG2E9Qc6dEl/hlqAj2VffQcXz8erUZ8nbzYhE6deP/J+tDFIaeOC8M
         PEiDGmTj8kVDTzuXHPslBfvdhR0WOBZvo6Yh52qvN9S085CKrLZNVi28rcG9vlHXyp9T
         kfczcZmu9/OshGnXY7I0YVHqA4igGLAg1y2t58VzSN23q3RidX2i5UPwStT+unPXrT47
         00lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JdFpkP7pbSMH9B4M7FTkhgG/lqjyJ6OOE6axVL6CUAA=;
        b=VzUMSMLpWvTGcDDSO/ZC6s5ye4ajZvFmj7h+LoAqJMhqW6DDeHEBujP049voIKBz/J
         oNjtl1LMUGpjkWuvacG50SsGooWaMbMNEic1m4EyzWMyPy35m7CTpzEAuSY1yQg0IVOk
         lJ/XZwqCHjoB/EJr3tp/JwuVxJ51PZ+18RB5m0pew+wjUHfi5y6fHAMp/SqHJcZhwQSs
         vtT+el0Bv+SScdH9UofavsIF1XJ7Vj0cQFnkgyi2Rqnlg3q+jnBwG8fyeMjZy/CzFXU1
         s4Xx2jIAc6/JPPOtV9TucJs3/HBSroM8Q5yOIe3AMOmHq3O62GQuytrUd3r6kJ1icIBR
         3Uvw==
X-Gm-Message-State: APjAAAX2M3wDdmvTK1JSMr4eHlRJYZYLGFcs6dHle4qHOc2VpfL6b3A0
        efwCUV0v/wl6RYC6dww2eXVhKQ==
X-Google-Smtp-Source: APXvYqxyocB2IP0VmLclM747d+dY4/1ESTdssmPD05O6XV57QvN96aFcvgfeq5qNasSkKs0RwQQuow==
X-Received: by 2002:a62:8494:: with SMTP id k142mr18672822pfd.75.1564093174334;
        Thu, 25 Jul 2019 15:19:34 -0700 (PDT)
Received: from localhost ([49.248.170.216])
        by smtp.gmail.com with ESMTPSA id 81sm45632927pfa.86.2019.07.25.15.19.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Jul 2019 15:19:33 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com,
        andy.gross@linaro.org, Andy Gross <agross@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     marc.w.gonzalez@free.fr, devicetree@vger.kernel.org
Subject: [PATCH 10/15] arm64: dts: msm8998: thermal: Add interrupt support
Date:   Fri, 26 Jul 2019 03:48:45 +0530
Message-Id: <d87cc6488923fcb7358ebf8b37449f17d8161fe8.1564091601.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupts for each of the two tsens controllers.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
Cc: marc.w.gonzalez@free.fr

 arch/arm64/boot/dts/qcom/msm8998.dtsi | 82 ++++++++++++++-------------
 1 file changed, 42 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c13ed7aeb1e0..f9abd652a544 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -440,8 +440,8 @@
 
 	thermal-zones {
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 1>;
 
@@ -461,8 +461,8 @@
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 2>;
 
@@ -482,8 +482,8 @@
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 3>;
 
@@ -503,8 +503,8 @@
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 4>;
 
@@ -524,8 +524,8 @@
 		};
 
 		cpu4-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 7>;
 
@@ -545,8 +545,8 @@
 		};
 
 		cpu5-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 8>;
 
@@ -566,8 +566,8 @@
 		};
 
 		cpu6-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 9>;
 
@@ -587,8 +587,8 @@
 		};
 
 		cpu7-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 10>;
 
@@ -608,8 +608,8 @@
 		};
 
 		gpu-thermal-bottom {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 12>;
 
@@ -623,8 +623,8 @@
 		};
 
 		gpu-thermal-top {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 13>;
 
@@ -638,8 +638,8 @@
 		};
 
 		clust0-mhm-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 5>;
 
@@ -653,8 +653,8 @@
 		};
 
 		clust1-mhm-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 6>;
 
@@ -668,8 +668,8 @@
 		};
 
 		cluster1-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 11>;
 
@@ -683,8 +683,8 @@
 		};
 
 		modem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 1>;
 
@@ -698,8 +698,8 @@
 		};
 
 		mem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 2>;
 
@@ -713,8 +713,8 @@
 		};
 
 		wlan-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 3>;
 
@@ -728,8 +728,8 @@
 		};
 
 		q6-dsp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 4>;
 
@@ -743,8 +743,8 @@
 		};
 
 		camera-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 5>;
 
@@ -758,8 +758,8 @@
 		};
 
 		multimedia-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 6>;
 
@@ -845,8 +845,9 @@
 			compatible = "qcom,msm8998-tsens", "qcom,tsens-v2";
 			reg = <0x10ab000 0x1000>, /* TM */
 			      <0x10aa000 0x1000>; /* SROT */
-
 			#qcom,sensors = <14>;
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tsens0";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -854,8 +855,9 @@
 			compatible = "qcom,msm8998-tsens", "qcom,tsens-v2";
 			reg = <0x10ae000 0x1000>, /* TM */
 			      <0x10ad000 0x1000>; /* SROT */
-
 			#qcom,sensors = <8>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tsens1";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

