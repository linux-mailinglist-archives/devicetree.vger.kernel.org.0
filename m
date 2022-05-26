Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 600A55354AC
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:41:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348768AbiEZUlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:41:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241642AbiEZUlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:41:06 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FB0E2778
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:04 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id fd25so3162184edb.3
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FG32quRdmb4L/HcSO6RP7C4liXSjCaPEAfDKdvMB5EA=;
        b=oQENf9F2y91hwmI2NQjA4MUdDMbDNCVRMpQ0gTwtMMGdQsMzZtArtWGca1ytuRnaAH
         BhBiSCeklPSR1offhy1ZnhKBGt8gGCgJjs/ADA7TeKR3gqTT+b+gGdetDtbwDES2lrpN
         i7sl2jtQ0GruOUJl1kv9Y1hdKU3jcxRpquoomW31vooAXHAYtuhcLpxVRaDS4z97yeMG
         +0gbEzRFYPCBmNRFk47ck7g16o3OxmPecrV4PtIGT5kVCt7AJrU8DWCzLDC1lV4o1P9l
         c60f73TtUeBWYuXsHIlyxdX70FbFyv2aCu3yv8DmJ6iB3N3T43YJ+ml3Jr6TakH5U5YM
         Drew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FG32quRdmb4L/HcSO6RP7C4liXSjCaPEAfDKdvMB5EA=;
        b=j1egHYea8zYHY0y0GKv9+t8HjhCPeLDWesjryP55VTkWS3UpbNSjg7HolHdo70DlaO
         pr2E6t0fcLgO1FK36+jrtnrJulHxklo6nZ8ENZsoScUWiDtzsqEXROpCp0Ozem9rB0Bp
         ET9Bd4jPUibZpVB19QsHZ3yUxl7abEEAQH4XVLFUDz/ZuCrN+SPBAXzNxr1u7asHRzFP
         LQv+coEDfsSxpFuHmxUN9GGNpD2Q2TPsqs3gWDX8V5ZC0deEc524X5OmEelI78bJBftN
         WCCEXHT689Z32fl4gxjge4eGHAaRUOqgmF5Mut5qytXYorziWDqEoYXr+glX6/aTYOMC
         p+Rw==
X-Gm-Message-State: AOAM532RHQ65hKzuKCvBkQr67XogdV/Fuhv/MQsrOKj6FAUHdP4c+gJL
        KgjcQfjrWQ1SLRy/gZSCOsYgCQ==
X-Google-Smtp-Source: ABdhPJxE42lHG/goCri8i5lqNiJ5YCP0nXE1k5un1U2V8/0pyn4A/lrspTOqoo4o+2LEi/0oVt17ZQ==
X-Received: by 2002:a05:6402:347:b0:42b:c4e3:897e with SMTP id r7-20020a056402034700b0042bc4e3897emr12082472edw.200.1653597663401;
        Thu, 26 May 2022 13:41:03 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d3-20020a1709063ec300b006fee2bdf6c6sm811327ejj.169.2022.05.26.13.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:41:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: axm: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:41:00 +0200
Message-Id: <20220526204100.831742-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/axm5516-cpus.dtsi | 32 ++++++++++++++---------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/axm5516-cpus.dtsi b/arch/arm/boot/dts/axm5516-cpus.dtsi
index 3bcf4e0a3c85..f13ef80b6637 100644
--- a/arch/arm/boot/dts/axm5516-cpus.dtsi
+++ b/arch/arm/boot/dts/axm5516-cpus.dtsi
@@ -73,7 +73,7 @@ CPU0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x00>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -81,7 +81,7 @@ CPU1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x01>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -89,7 +89,7 @@ CPU2: cpu@2 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x02>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -97,7 +97,7 @@ CPU3: cpu@3 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x03>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -105,7 +105,7 @@ CPU4: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x100>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -113,7 +113,7 @@ CPU5: cpu@101 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x101>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -121,7 +121,7 @@ CPU6: cpu@102 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x102>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -129,7 +129,7 @@ CPU7: cpu@103 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x103>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -137,7 +137,7 @@ CPU8: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x200>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -145,7 +145,7 @@ CPU9: cpu@201 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x201>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -153,7 +153,7 @@ CPU10: cpu@202 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x202>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -161,7 +161,7 @@ CPU11: cpu@203 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x203>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -169,7 +169,7 @@ CPU12: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x300>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -177,7 +177,7 @@ CPU13: cpu@301 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x301>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -185,7 +185,7 @@ CPU14: cpu@302 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x302>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 
@@ -193,7 +193,7 @@ CPU15: cpu@303 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
 			reg = <0x303>;
-			clock-frequency= <1400000000>;
+			clock-frequency = <1400000000>;
 			cpu-release-addr = <0>; // Fixed by the boot loader
 		};
 	};
-- 
2.34.1

