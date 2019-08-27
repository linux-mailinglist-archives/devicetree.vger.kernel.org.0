Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80C869E79B
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 14:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730017AbfH0MPS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 08:15:18 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33940 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729968AbfH0MPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 08:15:17 -0400
Received: by mail-pl1-f196.google.com with SMTP id d3so11734157plr.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=X1C1wuLpaATs6Y4OlN6hIu56jXxXInO37XE+mmtb07c=;
        b=rNYuNnktdEgs/Igxq0AjJmX1QTMrz9hWnybCHl+0TPcfozu+U8NzY5JOcWQtMOE2GL
         2SYeBJB+LszgzXgips9HGnqCJ/KW5l20CvwubqC2McdZFKg1dndf9XV1E2ZJ5U3VRQzV
         UsuIAB2/I4w5tw6XKFgeqxEgEFXZPptZPaU0HTmirTKQA/F2xeVXFlw3pXFeO4z5YQsm
         rMqwTXYqa+VqoETpmjdTLHeacjJEZEdQW2lJbmdJ3aBjqZDcMQ9/vw5qrN3iXtna4NAw
         QpwLJgz8WZhdYEM0pXxX0BFgmFnQMoS5ZEC22UjgXQd/4bQG8JXUN5dRS3Uv1Xcjqp8g
         gx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=X1C1wuLpaATs6Y4OlN6hIu56jXxXInO37XE+mmtb07c=;
        b=WfELgFhAOk0fwSvfIACAvGc6VxQXByS7mhvUAj48e+ay91qmc3oDp/kp++h1HEdqpd
         w9jmYn8UfOW12ekF1ufPDJqEd2KXZ2sZUyqfrvO1or9XsjpX7wgYyK5GwG5gKQiaFrRp
         SwFo6jqZD5cZW5Gbyf750Do5PulvE1OJHi/cx6mLSeOFisAVKHyaNSJ2ifhhpmylPkDb
         TMfeKnp69IMfWKoEzroU/hJz5WLGwsV+wWgP9ufQQUylTwWSEAzD//AAcaDFmXq0qW1S
         NHHbV3TdZh2KXjUtDex9MnFXq+EgpKKJ/gL6MahsztPeWvwKcpk1p6LzhOTlQ0P3abvh
         4t8A==
X-Gm-Message-State: APjAAAUmfS04j59h52oomJSseqTOOMyuhBhUKMYactSqn3mcevgeC3+k
        yhIPlYOGLnRRvR6wrwpGdVy5Nw==
X-Google-Smtp-Source: APXvYqx/hNWE4nn6DV6gHnrucR81zd5daH4/skNEXcW/Z07C49C4lAbqYfCunzwuye2WpB7FkGyoqw==
X-Received: by 2002:a17:902:7c0b:: with SMTP id x11mr22630033pll.73.1566908116911;
        Tue, 27 Aug 2019 05:15:16 -0700 (PDT)
Received: from localhost ([49.248.54.193])
        by smtp.gmail.com with ESMTPSA id a1sm13719777pgh.61.2019.08.27.05.15.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Aug 2019 05:15:16 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        sboyd@kernel.org, masneyb@onstation.org, marc.w.gonzalez@free.fr,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 13/15] arm64: dts: msm8916: thermal: Add interrupt support
Date:   Tue, 27 Aug 2019 17:44:09 +0530
Message-Id: <e9edaeb7b65f98abd226b94e8487dff24e55b44a.1566907161.git.amit.kucheria@linaro.org>
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
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8686e101905cc..c0d0492d90ec0 100644
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

