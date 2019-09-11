Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF88AF6C3
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 09:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727286AbfIKHRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 03:17:30 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:37008 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727278AbfIKHR3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 03:17:29 -0400
Received: by mail-pf1-f194.google.com with SMTP id y5so10344416pfo.4
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 00:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IJ4n28SxZJ7IvqWaQtHl+XJExCPSVNY+ailM0rBB2SU=;
        b=ahSGl97fGWSaYEP376oOKRUvzQemigNFfYzPJEDbyo9WNAIjnvccVhzpgfcoFx6tCj
         Kjnz0OJXrlo8BX4DpWjSq2xtErHTYecQSlFmkSrscP/EJUJ9nBRAnHb2C2OE6i1FrD95
         5m4FwSD2bdglb78BkdowdMcQnQ8YmBOBUY0hzfnyrk3bZI/13MVhuooetfyH4I0+R3JN
         bbvAyhoOwZU8N4laiXBsxCKVRJ3JhqLT7/S8bNbKhFZsHgQYMlWarHv0VmNCgkq5R6ZB
         eKhl7/FLRzAv/fFJQHdkdLFXM+nm0TWEFOnGPSZYSl0unAz3CmLjLQhFoNHYBk7li1CL
         KLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=IJ4n28SxZJ7IvqWaQtHl+XJExCPSVNY+ailM0rBB2SU=;
        b=QwMO9EbBybtJcZYCEOwfIPXaASOTVXXKStGIS2b8ElPmGT5cB3LthlKWd2176kktZf
         2Bss7wbY2EJ8F7myQkb3ShZdV2koxhoThe7iK18Rh7QCoZogTwbuBIMqw3x8QxyGBxit
         IR6gFr/xglCXaMvYjC0iF2jtSD82NN8xC45WeW5RvD+KJ8fWsGyLUj6nCis4Mf3b1gOd
         hHpiliLvHX3k0REh+qbwH+mVoLFSLchwF0AG+AnXtunykObrj7wk7ihxYLx7T5K2sokG
         f9tthAN3Nip5HSiwAJEk9mXxo0A5VxrcJXXe/+AL8/3sMvZI15fmUzPt4biqR94Rlxxv
         6b/A==
X-Gm-Message-State: APjAAAWZnrvBdrtce4JhR9Rw+USj1S699S9JBY6nM2udI627x0Ziwwba
        l3ezv6XLhRXdtwbku4DdbJ5KTQ==
X-Google-Smtp-Source: APXvYqzdkGbLor2RIpKZHz8i39vyE1koinH0m5Pnx17Qg2qLyzSTtigbxB8dtrLdmL2k02u+fYeXLw==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr981886pgg.295.1568186247507;
        Wed, 11 Sep 2019 00:17:27 -0700 (PDT)
Received: from localhost ([49.248.201.118])
        by smtp.gmail.com with ESMTPSA id s97sm1680031pjc.4.2019.09.11.00.17.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Sep 2019 00:17:26 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v3 13/15] arm64: dts: msm8916: thermal: Add interrupt support
Date:   Wed, 11 Sep 2019 12:46:30 +0530
Message-Id: <29a78d620007af45ed94fa9f3a2199142bae5683.1568185732.git.amit.kucheria@linaro.org>
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
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8686e101905c..c0d0492d90ec 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -176,8 +176,8 @@
 
 	thermal-zones {
 		cpu0_1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 5>;
 
@@ -206,8 +206,8 @@
 		};
 
 		cpu2_3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 4>;
 
@@ -236,8 +236,8 @@
 		};
 
 		gpu-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 2>;
 
@@ -256,8 +256,8 @@
 		};
 
 		camera-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 1>;
 
@@ -271,8 +271,8 @@
 		};
 
 		modem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
 
 			thermal-sensors = <&tsens 0>;
 
@@ -816,6 +816,8 @@
 			nvmem-cells = <&tsens_caldata>, <&tsens_calsel>;
 			nvmem-cell-names = "calib", "calib_sel";
 			#qcom,sensors = <5>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

