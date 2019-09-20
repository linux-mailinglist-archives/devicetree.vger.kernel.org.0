Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 176F3B994E
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 23:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727952AbfITVww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 17:52:52 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:38905 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727778AbfITVwv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 17:52:51 -0400
Received: by mail-pf1-f196.google.com with SMTP id h195so5403254pfe.5
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 14:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GSstL9++8v2jfjaKtHregZZ+QyubdM5bUACzzsQ3BDU=;
        b=pn8AuEBsQg6IVp5o/EFkA1GwSIJe/A+D+mi4hwspnqNA+vURyNrxL0ZDZOp6IJMBI0
         3WjApcWmm1XqjkHvqID0v8lCFbd6/vGk0MGonDP/cdNGe9plvSl0C/HBXm7Lcpn03mKq
         32rGcamzhzOZsc5GNNhVaVcai2Xv8iwc8lIxkcaZ0PDNHHT+oKXG19ig8NNzO8M3EgEK
         jK09ufDwR0x+Q3BnzZx6K5p4V537kz5EcQBMK0DOhtYKlurnKjAw3NawF/NnobZzsMkV
         DmEzFLZ3VO9VvVWh5OZeMvmhD3fDF9laVS5ID1Q90Pdj8a0CyWV9t3n203szNQcfktWY
         v4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GSstL9++8v2jfjaKtHregZZ+QyubdM5bUACzzsQ3BDU=;
        b=OJYxHrzLQYm9SeY7qc/CciCmSSg7OMiO8P3awjNnCzT4CGUhhfvUOVz/UZ/gRwB7NC
         Vt5kVrt+a4CcK6ND1nTJiM/mFrLusTEuoYSzu+Sidvlcwweaz3GOqW48UImyYWgufDGj
         Y50xwN0GM6Vv2/ZWSjR72IuMdF/LoJQ+g7uOaXic24V57NoGiCs/5vfKNVRzeJtqxtQ/
         OdaZ7lYAiM/cvh+oKpsnSTRRsLofLROJF7ZxtFk9gX7WAeak4PYsmR2owjugWCxTQpjr
         I5xM2rncaRUgV0HNLUol/Jus55sSed4NtIj0/jrWkzwUYVK/0ZheC/TuM9Jl0iBqOWas
         zbSg==
X-Gm-Message-State: APjAAAXjBagY7G7P6i3B7RQ8rvQ/sKgvnQTeDJ1Fh+wJ4VnBMUuQ4Sr4
        Afg29kuBrazmlzhvf0fMNC41Dw==
X-Google-Smtp-Source: APXvYqzYDOlQMT4DB3sb+zXldEZj5cpQtxdsFY4KUIoeu1weRD8uJv/MSpiT20W/sv623bwoESzP0A==
X-Received: by 2002:a63:f745:: with SMTP id f5mr2785752pgk.175.1569016370970;
        Fri, 20 Sep 2019 14:52:50 -0700 (PDT)
Received: from localhost (wsip-98-175-107-49.sd.sd.cox.net. [98.175.107.49])
        by smtp.gmail.com with ESMTPSA id y15sm4049336pfp.111.2019.09.20.14.52.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Sep 2019 14:52:50 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v4 05/15] arm: dts: msm8974: thermal: Add thermal zones for each sensor
Date:   Fri, 20 Sep 2019 14:52:20 -0700
Message-Id: <6c3835cd92325b3f4ebc3885d9009b58d0cdf6b0.1569015835.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1569015835.git.amit.kucheria@linaro.org>
References: <cover.1569015835.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1569015835.git.amit.kucheria@linaro.org>
References: <cover.1569015835.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

msm8974 has 11 sensors connected to a single TSENS IP. Define a thermal
zone for each of those sensors to expose the temperature of each zone.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Tested-by: Brian Masney <masneyb@onstation.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 90 +++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 369e58f64145..d32f639505f1 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -217,6 +217,96 @@
 				};
 			};
 		};
+
+		q6-dsp-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens 1>;
+
+			trips {
+				q6_dsp_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
+
+		modemtx-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens 2>;
+
+			trips {
+				modemtx_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
+
+		video-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens 3>;
+
+			trips {
+				video_alert0: trip-point0 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
+
+		wlan-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&tsens 4>;
+
+			trips {
+				wlan_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
+
+		gpu-thermal-top {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens 9>;
+
+			trips {
+				gpu1_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
+
+		gpu-thermal-bottom {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens 10>;
+
+			trips {
+				gpu2_alert0: trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+			};
+		};
 	};
 
 	cpu-pmu {
-- 
2.17.1

