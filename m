Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B1219E791
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 14:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729951AbfH0MPH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 08:15:07 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:39262 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729864AbfH0MO5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 08:14:57 -0400
Received: by mail-pf1-f195.google.com with SMTP id y200so6328275pfb.6
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 05:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=R8SVDVYDPqPD92rv7vIeGNMJyLBzmIm/PMxRYwWOMAE=;
        b=ZrzooqLlegbOShgbGsH2MK5xvpPaVSmHD/uxSLmeXrdazxVBHUw3GUXSK5Wo3Y2lkS
         +EIr5jWTKWTmPxi5/twmpbewDG3PSoSM3SX2PSQvnyIp0AaQnQMKOjdzUuN8scocPqaq
         fwjHknRt5+X56MFeLpmN01ghBK/NYJzMhx+6zi+eHIYHzOrl/ecjiMuwwjq7iAd4bylI
         nO4avgUA6v+KpXsTPw7bmYwZv2cBoLtroMDxcv7UWH/PeE9Kh3vtcMOPftP1RIsWiLBj
         ZNCwEp0vpkRWoMgoSrS1qZjDu2cwUO4hkvcANV7ZMgrdjo50l22m2xkou+csppAMkJZ/
         Tknw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=R8SVDVYDPqPD92rv7vIeGNMJyLBzmIm/PMxRYwWOMAE=;
        b=mYURzL0c7r+rni2bFIBbbloRXZ7GmjUUSV0mEN5yUHOG+7oWUkZ5jyFBfXFnyXIYNh
         c6SOQDMAZKXhTKYd37q9cRpnpzJeIuRUzVUmaXhx/xBfVkAVFlNJGjsUy9WfGHoavS0S
         T2ta9uOqnl27UlawfOThYxcM/h+Dk/AVAX7r/roPxzvLOnChZDHRsfl3/HyWpFkN+1ax
         1MyWNLB9VS4jiSgrCRz6VU6IIlKQ74KUjPuNDuI2weRj0csvzPzxdAROU4J5OAvIeBJo
         hlhYq9pIsVaqSdqy7L+yHUA6gE0OeQiVqCMZxEjqjEE0h41cjL4IFxrPLbQpmvm0zEWk
         ythg==
X-Gm-Message-State: APjAAAWY2WUABDWIfXFuUVzadZrH3LKk3k4mxRaTyPFAbPLnLVZfMBay
        rINp7i6rR3LNxGLK2o4hkadBNg==
X-Google-Smtp-Source: APXvYqyrOyW07wMl7hTejpEU7jqjnesVleTp0Xl3/H1HugIGtsCUXjbh+wF1BqnIdeJu4egEGlLWDQ==
X-Received: by 2002:a63:de43:: with SMTP id y3mr21196569pgi.211.1566908096789;
        Tue, 27 Aug 2019 05:14:56 -0700 (PDT)
Received: from localhost ([49.248.54.193])
        by smtp.gmail.com with ESMTPSA id e13sm18212271pfl.130.2019.08.27.05.14.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Aug 2019 05:14:56 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        sboyd@kernel.org, masneyb@onstation.org, marc.w.gonzalez@free.fr,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 08/15] arm64: dts: sdm845: thermal: Add interrupt support
Date:   Tue, 27 Aug 2019 17:44:04 +0530
Message-Id: <32c755a9b9959b358e99d3b0957c283a6c6f0e89.1566907161.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566907161.git.amit.kucheria@linaro.org>
References: <cover.1566907161.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1566907161.git.amit.kucheria@linaro.org>
References: <cover.1566907161.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupts for each of the two tsens controllers.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 88 +++++++++++++++-------------
 1 file changed, 46 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 4babff5f19b5c..fdd74c39b744e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2386,6 +2386,8 @@
 			reg = <0 0x0c263000 0 0x1ff>, /* TM */
 			      <0 0x0c222000 0 0x1ff>; /* SROT */
 			#qcom,sensors = <13>;
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -2394,6 +2396,8 @@
 			reg = <0 0x0c265000 0 0x1ff>, /* TM */
 			      <0 0x0c223000 0 0x1ff>; /* SROT */
 			#qcom,sensors = <8>;
+			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -2712,8 +2716,8 @@
 
 	thermal-zones {
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 1>;
 
@@ -2756,8 +2760,8 @@
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 2>;
 
@@ -2800,8 +2804,8 @@
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 3>;
 
@@ -2844,8 +2848,8 @@
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 4>;
 
@@ -2888,8 +2892,8 @@
 		};
 
 		cpu4-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 7>;
 
@@ -2932,8 +2936,8 @@
 		};
 
 		cpu5-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 8>;
 
@@ -2976,8 +2980,8 @@
 		};
 
 		cpu6-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 9>;
 
@@ -3020,8 +3024,8 @@
 		};
 
 		cpu7-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 10>;
 
@@ -3064,8 +3068,8 @@
 		};
 
 		aoss0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 0>;
 
@@ -3079,8 +3083,8 @@
 		};
 
 		cluster0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 5>;
 
@@ -3099,8 +3103,8 @@
 		};
 
 		cluster1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 6>;
 
@@ -3119,8 +3123,8 @@
 		};
 
 		gpu-thermal-top {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 11>;
 
@@ -3134,8 +3138,8 @@
 		};
 
 		gpu-thermal-bottom {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens0 12>;
 
@@ -3149,8 +3153,8 @@
 		};
 
 		aoss1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 0>;
 
@@ -3164,8 +3168,8 @@
 		};
 
 		q6-modem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 1>;
 
@@ -3179,8 +3183,8 @@
 		};
 
 		mem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 2>;
 
@@ -3194,8 +3198,8 @@
 		};
 
 		wlan-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 3>;
 
@@ -3209,8 +3213,8 @@
 		};
 
 		q6-hvx-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 4>;
 
@@ -3224,8 +3228,8 @@
 		};
 
 		camera-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 5>;
 
@@ -3239,8 +3243,8 @@
 		};
 
 		video-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 6>;
 
@@ -3254,8 +3258,8 @@
 		};
 
 		modem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens1 7>;
 
-- 
2.17.1

