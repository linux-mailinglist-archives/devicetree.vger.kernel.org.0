Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542B763F935
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 21:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbiLAUhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 15:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbiLAUhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 15:37:06 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EDC4C0555
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 12:37:04 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1442977d77dso2384853fac.6
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 12:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDNVIS6v1yG6sAvFOYg/2+Zxz4ZXp/Ow5NLTwsyPqTQ=;
        b=CvmuuY+wkEu+uT9ff0B1aNBJgUaRDd7us1n2vCBeR82xZfRBOaHewq3903/N34zrA9
         FkJN+nPJH1eEZEGJ9GsNYO514rTQQ1kBeB9lHSPUIZBUP/xiitn9po9PJs/lc67QI8+j
         3ezbkOBRj6OvXCWdLhKNvxR/IuIraY3IV9sygT5Kr3IlYO5dVO4IzdsisWkqLHNPIudY
         sUCrblfeGWV+Xdj2QdSdYPvZDOZlFVWlKO49jND/gFtmNr2gBm8LB3DIIjr4bS6GoJ3o
         MiatGl/Bc63gM3Nd96H/t21WkAjhUnumaDwuhPvb0g6hiTnCTib+2NhYkAYRTh0I64Gq
         jMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDNVIS6v1yG6sAvFOYg/2+Zxz4ZXp/Ow5NLTwsyPqTQ=;
        b=5C6Lf1cc3R6Guh+fMsPjljGc/rvKL3s3KsKdUYx0M1944gA3VA/QzoPXkFBWyt9WAE
         YTSY02QRb1dtSwNhwPX8okNNxrEeXpRc1OBK8h8g9ex5o2DJy0zy64nvXComIeqmnhZh
         UhitVpadWXTgl7jvHDCnC/hPCJdedB7rUDLKy3Vkubk4WhdnN0DH1V2pHwP4UqVSnNJc
         ZdrypstnTDYhDCUb2o/IY5NPvCyX6Yt28U2948HQIfblLrP02/Z+Z1T2lUcTtWk6dkGo
         Z10f/bvozlejRHe1QC70qwx1xGwaoaizqszFGN9hQBdCXxIdHrVajGG2AdgmKK+eEF7t
         8zLQ==
X-Gm-Message-State: ANoB5pkEHlYX2JZX+MbDIy6AXfzzK05LKSbMSgpNPATsL+/XEol3aTMT
        Fkv9tDqRqBWMnP7AS8QiO/E=
X-Google-Smtp-Source: AA0mqf6tqXSIMh4TUCBXKPIj9DYC2ccLMsIsrsKIgoHSvwThYP7VK6hWkaFN+IlGAUxfMVTxBHDrLQ==
X-Received: by 2002:a05:6870:479b:b0:142:7f3b:d60a with SMTP id c27-20020a056870479b00b001427f3bd60amr37573173oaq.111.1669927023423;
        Thu, 01 Dec 2022 12:37:03 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: update px30 thermal zones for GPU
Date:   Thu,  1 Dec 2022 14:36:54 -0600
Message-Id: <20221201203655.1245-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Without the trips, the following errors are received in the dmesg
log and the rockchip-thermal driver fails to load the gpu sensor:

"thermal_sys: Failed to find 'trips' node"
"rockchip-thermal ff280000.tsadc: failed to register sensor 1: -22"

Trip values are assumed, unfortunately, as the same values as the
CPU. The datasheet and TRM didn't appear to have any information
regarding thermals for the GPU.

Stress tested successfully on my Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 33 +++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bfa3580429d1..4f6959eb564d 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -210,12 +210,6 @@ map0 {
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 					contribution = <4096>;
 				};
-
-				map1 {
-					trip = <&target>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-					contribution = <4096>;
-				};
 			};
 		};
 
@@ -223,6 +217,33 @@ gpu_thermal: gpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
 			polling-delay = <1000>; /* milliseconds */
 			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				gpu_threshold: gpu-threshold {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_target: gpu-target {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_crit: gpu-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_target>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 	};
 
-- 
2.25.1

