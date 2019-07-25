Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C8B9775AAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 00:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726990AbfGYWTT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 18:19:19 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41019 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726979AbfGYWTR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 18:19:17 -0400
Received: by mail-pf1-f193.google.com with SMTP id m30so23445867pff.8
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 15:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=uiQPKHwj11EPpZuRQWpTBZjUd/uUqkvhWCoDYYQxDwA=;
        b=uOd7YlV1/OOkQMJdcCgl8oAUvZobH84I3dUpaQ7blEHEOkHE07y7s7uxV0nagTTRuq
         q+/TPHlFixOUvXsY0FvjBwKRm+lQO62aY6VronZUz2YP7XZLwuTPTFJwdqlC55ASutoA
         dQm/VXAe2/IYPSjkimFXad0hCsBy9HXoU+5If2Assoa8l8tP7c04epZcBHhhWf25zdOd
         B3UzyJdvxULSnoZ1San1Txtsiuu0NxVkVwjmsORJ9lAWJMIte4qpze53IwJjrVgyY+Nl
         nomgCque2ZcK2lkjnEJlj1SvHGb37Yu2tbQuAtMOiQDYdMd8YHMAfB2ekcPrKDEEa4zV
         vO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=uiQPKHwj11EPpZuRQWpTBZjUd/uUqkvhWCoDYYQxDwA=;
        b=Y7NOk9EW3bKiCf2GtNP2E+8IazWE2xjLit6xl888vVOy54DxcpBq7iRYAw5FOAXUkb
         YLhkBC1fNEszoZGqX4MF0UQg5JUZT9WDcrlUMB6XzPCsEhamJ3EQXIrkDrFcEIy0pWJo
         2d/NHk1Y/OA5Bga5w1lqGgoHzwF1Mj4RN/Bv5wVQJWMLGlsMPnu/f/FYoDZit0ud5VWa
         geTAVvR2Sq8q2EoxPmFTuwIkqMvq3vnbA8C/3aqXxaVJtDztB+EFYGYItVYWwjZQZ1Wt
         xIg0a3g1b59OAw853rxX9lV56Lyb1DqEY/RNvA2pKudbdxC4bM4o13DFx7GNhzqWGu6N
         jU+Q==
X-Gm-Message-State: APjAAAX49G/m8t8kIWZ2IZM5pVkwMrJ3rt4ru9SnAuYrRDUNW5K1jprJ
        iwYzBVjywryHS36qTQw7WuckHQ==
X-Google-Smtp-Source: APXvYqyOLmezE9hL+lr5a5L7jAm7oojRGUA14/di4toZXjfHwMeg5P/peFoaSrSDPtk8GcsuOxPIfg==
X-Received: by 2002:a62:1bca:: with SMTP id b193mr18389670pfb.57.1564093156830;
        Thu, 25 Jul 2019 15:19:16 -0700 (PDT)
Received: from localhost ([49.248.170.216])
        by smtp.gmail.com with ESMTPSA id f64sm53517242pfa.115.2019.07.25.15.19.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Jul 2019 15:19:16 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com,
        andy.gross@linaro.org, Andy Gross <agross@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     masneyb@onstation.org, devicetree@vger.kernel.org
Subject: [PATCH 05/15] arm: dts: msm8974: thermal: Add thermal zones for each sensor
Date:   Fri, 26 Jul 2019 03:48:40 +0530
Message-Id: <9e2948528c789225bf8a6ef458b83a5350a7ea26.1564091601.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1564091601.git.amit.kucheria@linaro.org>
References: <cover.1564091601.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

msm8974 has 11 sensors connected to a single TSENS IP. Define a thermal
zone for each of those sensors to expose the temperature of each zone.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
Cc: masneyb@onstation.org

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

