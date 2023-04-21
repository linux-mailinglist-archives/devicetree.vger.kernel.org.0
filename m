Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE35E6EB4D0
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233922AbjDUWcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232177AbjDUWb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:59 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECE6935A3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:52 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-94f1a6e66c9so372647866b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116312; x=1684708312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z/JXh3KMYvLK06HDirT25EHs53ovQgqJ5TzbHwT/AYg=;
        b=DWPXztrUVvPQULYZ1j30gTAOTD/rB0+B0XLM56SuuRqMQKSwX9sCdFLa7sewsDZrui
         JwS9pXvO9h0VnLxjjJ3l+xH1MPmymodCX/LI3xD8bZ3GMldEBLRTty38maVbC3FhiB36
         fB2ig0ujglejO6dVgr21LPaj6ud9Ivd9waoFleBroyp32Dku4Sc76NBWjwedinGT3TRJ
         X1m3BIMtEGiopADUyxz/3W5CelN/dbIXnGssWG5CIrUrRURlHUVITtY8O7Tj4xqTZYqA
         ujWSfKMqmU15SNYWKxq5SREIQl9jDpq9haa9VBVLYbBa4DXvHeKF1j0aT1AsKbYB+/wM
         zp4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116312; x=1684708312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/JXh3KMYvLK06HDirT25EHs53ovQgqJ5TzbHwT/AYg=;
        b=RxgAXIuyj+MFxsU3kff0NWWJ/DvG2xawoT8NplWb2csTMxerAOnJ/jA2aEDi0jfqXz
         JJpwNFAMurQvV/LGG2QDOGSikLx7CAiG5RIohgyOxMsnBx1LqwvgP87tNq9EtwRzSUwl
         RvuE93kW5H1sCR9Whp2dQ7Ys/Tb9EL9u6+WOwDRl9eM80FCnUrolOCAppn3Js7GopHO/
         +w08vMj4V+Gko6B/NKOaX9KxIVVKMJJH+ySHCztAqa3AcTOA//wAylKpRwfPhHJ9d7aO
         XyJrw1ONmyUvzxOWcYYKmBIVGSx401r0iKgby6WJZAsRMU/4GFwmaDNo6Na3abVaK1QX
         jZ6Q==
X-Gm-Message-State: AAQBX9erQFzqa/i+0BZnVWknTKZ8fubdXfZSojukhzxcbTPUvln5s6oJ
        qSuf4BbPGUlowj/N1SKhJ8eSNA==
X-Google-Smtp-Source: AKy350YmcK1D5WYWTu1lCCnLsNdzO3Hik5EGsJBcczUkgtnr30yP7c3gLlS149BrTtCSghRjxAMyPQ==
X-Received: by 2002:a17:906:fcc:b0:94f:250b:2536 with SMTP id c12-20020a1709060fcc00b0094f250b2536mr3229726ejk.28.1682116312383;
        Fri, 21 Apr 2023 15:31:52 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id k1-20020a170906a38100b0094ece70481csm2537895ejz.197.2023.04.21.15.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: realtek: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:50 +0200
Message-Id: <20230421223151.115243-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified and cache-level properties to fix warnings like:

  rtd1293-ds418j.dtb: l2-cache: 'cache-level' is a required property
  rtd1293-ds418j.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/realtek/rtd1293.dtsi | 2 ++
 arch/arm64/boot/dts/realtek/rtd1295.dtsi | 2 ++
 arch/arm64/boot/dts/realtek/rtd1296.dtsi | 2 ++
 arch/arm64/boot/dts/realtek/rtd1395.dtsi | 2 ++
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi | 4 ++++
 5 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/realtek/rtd1293.dtsi b/arch/arm64/boot/dts/realtek/rtd1293.dtsi
index 2d92b56ac94d..d0c9387ac17a 100644
--- a/arch/arm64/boot/dts/realtek/rtd1293.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1293.dtsi
@@ -30,6 +30,8 @@ cpu1: cpu@1 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/realtek/rtd1295.dtsi b/arch/arm64/boot/dts/realtek/rtd1295.dtsi
index 1402abe80ea1..b7f63102f2dd 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1295.dtsi
@@ -44,6 +44,8 @@ cpu3: cpu@3 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/realtek/rtd1296.dtsi b/arch/arm64/boot/dts/realtek/rtd1296.dtsi
index fb864a139c97..4f805f576cef 100644
--- a/arch/arm64/boot/dts/realtek/rtd1296.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1296.dtsi
@@ -44,6 +44,8 @@ cpu3: cpu@3 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/realtek/rtd1395.dtsi b/arch/arm64/boot/dts/realtek/rtd1395.dtsi
index 05c9216a87ee..2efe5b25c83c 100644
--- a/arch/arm64/boot/dts/realtek/rtd1395.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1395.dtsi
@@ -44,6 +44,8 @@ cpu3: cpu@3 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
index bf4d9e917925..34802cc62983 100644
--- a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
@@ -88,11 +88,15 @@ cpu5: cpu@500 {
 		l2: l2-cache {
 			compatible = "cache";
 			next-level-cache = <&l3>;
+			cache-level = <2>;
+			cache-unified;
 
 		};
 
 		l3: l3-cache {
 			compatible = "cache";
+			cache-level = <3>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

