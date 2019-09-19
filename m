Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8BFB72A3
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:29:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388195AbfISF3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:29:10 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:44787 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388120AbfISF3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:29:10 -0400
Received: by mail-pg1-f195.google.com with SMTP id i18so1175029pgl.11
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SJDlhm907xyTeLn8eboZhigP+1jC9h49ln8vZf3zaoo=;
        b=fd6AiriFsm5ECQXieYjvYwo3dEkcVTY9IjOW3Fk0LLzlRQG0mt0IXNaSmaSqNOB/Uv
         emPEVfv7t9j4appHb5AVXYwS3SE8mm+9U/5UzlTs7yTymYOJps5Dw3ixojv80GKmX4GT
         XpUkPZWt8A20bfnt8gqyCQDBu45+Jr8aMc1fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SJDlhm907xyTeLn8eboZhigP+1jC9h49ln8vZf3zaoo=;
        b=pRg7cexmlsMAlJCKqYcfBHY2fzdlAYuky/aRr2mMY4MBv0uEQ1gyMFoqTLX6sRhudh
         xCMigJWdr9uUPIWwtnKvIrfJYhA33K6PP0W2VYw3VxPdJ/ABtsdqMgB8r9VSVIOQCBIC
         w//0kVpCVonDU5kIRdnUWED5ImBX6dYsgGtDnEb0+TWDDvPrp19KDbSV7DpZvUvlenr4
         JuTIJEDJEneWLHYnw+ZroHSnkAJAHl16wicEIQiC+6N+DGEBk/5zcSPXXtCxGZ1RH/mF
         jG5Xk4EYqiFmPyTVgeNEzsVypV8YwbIMYoVSGWAvCRcyB3ozweRFGqUL/Ol4Lrsjju/p
         aMfA==
X-Gm-Message-State: APjAAAXkwxn32gbtU4kCN1wcahJ0zrnyBo1u/iMUl3XNCO22Zu/mpWuP
        gV3jPLMk/RI9ppzalcaFVPQCMA==
X-Google-Smtp-Source: APXvYqz8LkQoMxwMIj4ICP+GqPvIhHkETgBA+pziMgTii53NMnmCFKiBfOFnLxpeVQSb2I0N3iEmSQ==
X-Received: by 2002:a65:4782:: with SMTP id e2mr6861393pgs.402.1568870949591;
        Wed, 18 Sep 2019 22:29:09 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:29:09 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 6/6] arm64: dts: rockchip: Fix roc-rk3399-pc regulator input rails
Date:   Thu, 19 Sep 2019 10:58:22 +0530
Message-Id: <20190919052822.10403-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Few, know rk808 pmic regulators VCC[1-4], VCC[6-7], VCC[9-11],
VDD_LOG, VDD_GPU, VDD_CPU_B, VCC3V3_SYS are inputting with vcc_sys
which is 5V power rail from dc_12v.

So, replace the vin-supply of above mentioned regulators
with vcc_sys as per the PMIC-RK808-D page of roc-rk3399-pc
schematics.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../rk3399-libretech-roc-rk3399-pc.dts        | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
index 51242ea5447d..1eddb2e00809 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
@@ -85,7 +85,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&vcc_sys>;
 	};
 
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
@@ -129,7 +129,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 	};
 };
 
@@ -202,16 +202,16 @@
 		rockchip,system-power-controller;
 		wakeup-source;
 
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
 		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		vcc10-supply = <&vcc3v3_sys>;
-		vcc11-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc1v8_pmu>;
 
@@ -385,7 +385,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -404,7 +404,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
-- 
2.18.0.321.gffc6fa0e3

