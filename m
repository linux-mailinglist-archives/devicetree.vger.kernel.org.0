Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57B019E796
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 14:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726125AbfH0MPO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 08:15:14 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39971 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730008AbfH0MPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 08:15:13 -0400
Received: by mail-pf1-f196.google.com with SMTP id w16so14009693pfn.7
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 05:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oICHc/N2fVzNg9SEQ6NvPrxoshVnfXlZhDudW67PQGU=;
        b=Cp6897F1qL6ZQl9NYJzQI0+DCRd0dHQK3Y38hSJNb+Cacsa+FTmIu+DYI3I5U9ZbQ0
         Mgp8BpslWLL5SNJCsPTy5aW8JEnkwER/GyolJxSX30l0RF4UTxEQ4z8SjM/diMLMXDrt
         5I1TiVbi15ciQnGtof3JPw94cZghANLIBmy75WSze+XE7t1gW96FGx+FzKhZeDyy1MpC
         kJ5nEKJ4cZ13x8h7WORXg3ns7nYWu5F26lXoOb+qxt30hgc73Wnc4HUN5xzg07nHArw5
         cbNorbJVFg548rPO7BSxMl//sVXg2KAS38Gm21N5GEg+tcqyFrV4yC74bBWtfsKvjf0r
         rECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oICHc/N2fVzNg9SEQ6NvPrxoshVnfXlZhDudW67PQGU=;
        b=ldBXkJVxFIEh0QDvJDFHQqDjN7iDYQ18Ok2GialLmEGEHtoSjy7bgdw4F7CMpbs3mm
         LmaZLOK8e048MVl+FNJh0gz995mM4AZpwhYZbQYv/ZoGRW69g/VWllI+FOyy6xvdBWWj
         cdLnlIM5zBeQ6AQYuFISRlR11DmdQNIVYODtDfM+MnGJ4SZhfP5HowE1gNSopOTTbCxg
         3XFl3ge6T0z2or8MiMurNUGwpRssmyLcjmgKfH7NS6FZqjHBODqcwsStWrRFYUyJ9rHQ
         Y8/eZufkI+s5J1e8cWggV1vsRGkF0lXdfc0WHlQjszplYkR4F6iHKCHlD2ACE8D336on
         M6qA==
X-Gm-Message-State: APjAAAUTIOrXeoqNVwcask1iMsTyoCOuWpdpSS3LpSJnw/pdCOpMGkLk
        Aj17JoAx7QfiRZEmVJrjme3dIw==
X-Google-Smtp-Source: APXvYqw08/ZuiQs9CO2XzU2ubVRDh6b0AfuO9ArPxJLQF1TFuaL6QVHqg2guKmzjQPEVJ0liS75zBg==
X-Received: by 2002:aa7:8488:: with SMTP id u8mr26247184pfn.229.1566908112980;
        Tue, 27 Aug 2019 05:15:12 -0700 (PDT)
Received: from localhost ([49.248.54.193])
        by smtp.gmail.com with ESMTPSA id q8sm4785656pje.2.2019.08.27.05.15.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Aug 2019 05:15:12 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        sboyd@kernel.org, masneyb@onstation.org, marc.w.gonzalez@free.fr,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 12/15] arm: dts: msm8974: thermal: Add interrupt support
Date:   Tue, 27 Aug 2019 17:44:08 +0530
Message-Id: <383f16c449fb5a36d07ef98c5b071d9a50a86eb7.1566907161.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566907161.git.amit.kucheria@linaro.org>
References: <cover.1566907161.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1566907161.git.amit.kucheria@linaro.org>
References: <cover.1566907161.git.amit.kucheria@linaro.org>
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
index d32f639505f1b..290f7c3827d45 100644
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

