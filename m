Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB11EAF6C0
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 09:24:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727202AbfIKHRZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 03:17:25 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40117 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727259AbfIKHRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 03:17:24 -0400
Received: by mail-pf1-f194.google.com with SMTP id x127so13083018pfb.7
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 00:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VrMMAxmAWCoF+Z0mK+KREcF/roJedPfia4jPAm5aT6w=;
        b=v+z7bmUEVGgVLbs+h47tvjcjMgAGwHIKfunE2271dciJlZKtk8SNzuvz3qUAZNzEfT
         8ZnK9qEzhlC6QfbJr8c3LeIGgbGFkX6r58OoxXhO8jMdTeD9iWwrISs2FYO23HjHe/RU
         QceXow+wIojTbrW1Yj8JTaDTEQ97sl9W2hZE5mm/BlbmEzSE9ALLN0a0nWX8eBNXsYs6
         yFHsY7zXzfB+xxHIM4iypJgU72m3OT6jqG3pmMYwBjf7GAlvKIQzSQBg/hNqtf9guBol
         FksEj6ZdqxPuVlG3JKzz6iw7ikNWiqZcwvwxFzkHUv0iFsoO/pUe7aq+OIq+whiAEpFC
         hmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VrMMAxmAWCoF+Z0mK+KREcF/roJedPfia4jPAm5aT6w=;
        b=MV7GEU4IoBhguaAK0S1mC4KmGt0H7rxQ+RvbnrgHTHPo2broHecGGUbJwsxx3Dk1be
         WdWnWFnQdRSTfO0hg8EWTz+Ypp3f2WnjsZo220xT1BGLdqfQVfsRg2K2kKMwmlEvIf5g
         J5Wbph04RPOmyCYGEslApbJPvcKVGV0vfMj+UStFuOFwTb8y4ceYmmXHuyTsB/00FlbF
         6662aWPg2aqSH/OLVFR3rZRZ3jvCRKkDl0Isu0jdFdui4GW93Jjmtnj/anlk8xXsCRTf
         7+OwhGL+ATvKDpL4OykGmjGTmvYHhAEa2k53GD5fmul3spTNe//Uv8OlDc1TjiXNhs/c
         3lsA==
X-Gm-Message-State: APjAAAXVfUwBNwPerTkd6aMgPBMFFp6OSx7noNBpDe7MxZF8W21LbqmX
        RtQM6IlKvGeIEYceV2XTE3b6Yw==
X-Google-Smtp-Source: APXvYqw2xVyBCzBbFQzcye/zf6yXBv/n+Iq2Pf3mMZbyI2/1dmEY3X/6d1n4+N+19KDJ2xHq23+bnw==
X-Received: by 2002:a17:90a:1903:: with SMTP id 3mr3822034pjg.80.1568186243994;
        Wed, 11 Sep 2019 00:17:23 -0700 (PDT)
Received: from localhost ([49.248.201.118])
        by smtp.gmail.com with ESMTPSA id x24sm18955736pgl.84.2019.09.11.00.17.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Sep 2019 00:17:23 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v3 12/15] arm: dts: msm8974: thermal: Add interrupt support
Date:   Wed, 11 Sep 2019 12:46:29 +0530
Message-Id: <8d4fba37e8aa1a7511d22f5e53f78ab2e720d97a.1568185732.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568185732.git.amit.kucheria@linaro.org>
References: <cover.1568185732.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568185732.git.amit.kucheria@linaro.org>
References: <cover.1568185732.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupt for the tsens controller.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Tested-by: Brian Masney <masneyb@onstation.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 36 +++++++++++++++--------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index d32f639505f1..290f7c3827d4 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -139,8 +139,8 @@
 
 	thermal-zones {
 		cpu-thermal0 {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 5>;
 
@@ -159,8 +159,8 @@
 		};
 
 		cpu-thermal1 {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 6>;
 
@@ -179,8 +179,8 @@
 		};
 
 		cpu-thermal2 {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 7>;
 
@@ -199,8 +199,8 @@
 		};
 
 		cpu-thermal3 {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 8>;
 
@@ -219,8 +219,8 @@
 		};
 
 		q6-dsp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 1>;
 
@@ -234,8 +234,8 @@
 		};
 
 		modemtx-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 2>;
 
@@ -250,7 +250,7 @@
 
 		video-thermal {
 			polling-delay-passive = <0>;
-			polling-delay = <1000>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 3>;
 
@@ -279,8 +279,8 @@
 		};
 
 		gpu-thermal-top {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 9>;
 
@@ -294,8 +294,8 @@
 		};
 
 		gpu-thermal-bottom {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 10>;
 
@@ -531,6 +531,8 @@
 			nvmem-cells = <&tsens_calib>, <&tsens_backup>;
 			nvmem-cell-names = "calib", "calib_backup";
 			#qcom,sensors = <11>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

