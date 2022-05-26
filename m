Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A0D5354F0
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348796AbiEZUpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346501AbiEZUpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:45:44 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCB5346156
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:45:33 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ck4so5068006ejb.8
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h+A3qo6BldJs7yB/PUZIl3d+cRoad7gVEXVoqQHqU1I=;
        b=bsgklBTJ5kRGLaDjr1BfSDjF1LVpD2uDeE4Cb6TesbVm7pPQRfsRxCEA3IhYwiCk29
         uPGnS1ku5A8/1gUu1EBhlwaWa4l1MW35jGgmfYB12OYCt14rnwHUI5mdm4ZyGbL7rGTb
         PcIeDNiDsgUlpgkLZUg/70YBUS6aKSK2bMKe26r1SgMtkl25sWih7r/kV0mbctgGmDG0
         LubrrOByyAJe7+gV37x9aH6a5r6oEZysuurR1wjxszu3tiQ9w+KPQESd0lEnYJwvcqQN
         jnjUBv/GlpyQ9oy8zoaP8pj8NBmNvOFMWBkHdcqHVkA1qROpQVMsLoqjZ6rKD0kNPOzX
         hKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h+A3qo6BldJs7yB/PUZIl3d+cRoad7gVEXVoqQHqU1I=;
        b=hupad/pDDRWdcMC7mUjal0c1UEFTlS+MgbfkSV8aahZFxhWE1omLI/1hsrPV5poJPa
         bZi1uyCzfZ+25qVhHuWbzkwG1i+i0wrmkBRxc0TqeEf4zXSnYEaw5sDHhC3vx+0u6xpO
         6vqFBoI27T/jlHhHYDlFtZlrEQS6QSypp3lRht0Z4mYGhVrbTILtPa4tLihW6ei6zLyZ
         GMwiwJGPYW3HozVnMXcX0Ys9MLnPBdIBhaE9p83Eh2gmgtIKtirXJ6H1Tyfg5VilrJVo
         7lF3Lb6AIsxake2IA2gIfu2WcGYMCE26psE0XLBXBupkayf8G8bRfceecBDwddd6Tuon
         zgYw==
X-Gm-Message-State: AOAM530q8ZMsrhAnDyp09Zzteh01IbKEykBbZtIN9vfUvhvRCo1+PdyH
        35xfyNI1qng/IEhovUS4va17Tw==
X-Google-Smtp-Source: ABdhPJxbfx0ehewyZhx++Y7dMO9l/5GqNy/H+1t0rKskIYQrY9Sk4ZR/QsPiB+GGpu0kCkRrHSGEWA==
X-Received: by 2002:a17:906:99c3:b0:6ff:1254:7227 with SMTP id s3-20020a17090699c300b006ff12547227mr8743993ejn.692.1653597932074;
        Thu, 26 May 2022 13:45:32 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id rv3-20020a1709068d0300b006fec69a3978sm769550ejc.207.2022.05.26.13.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:45:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Daniel Mack <daniel@zonque.org>,
        Haojian Zhuang <haojian.zhuang@gmail.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: pxa: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:45:25 +0200
Message-Id: <20220526204525.832847-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
References: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
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
 arch/arm/boot/dts/pxa300-raumfeld-common.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
index 8a6721d436bd..147c99191dc2 100644
--- a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
+++ b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
@@ -189,31 +189,31 @@ max8660: regulator@34 {
 
 		regulators {
 			regulator-v3 {
-				regulator-compatible= "V3(DCDC)";
+				regulator-compatible = "V3(DCDC)";
 				regulator-min-microvolt = <725000>;
 				regulator-max-microvolt = <1800000>;
 			};
 
 			regulator-v4 {
-				regulator-compatible= "V4(DCDC)";
+				regulator-compatible = "V4(DCDC)";
 				regulator-min-microvolt = <725000>;
 				regulator-max-microvolt = <1800000>;
 			};
 
 			regulator-v5 {
-				regulator-compatible= "V5(LDO)";
+				regulator-compatible = "V5(LDO)";
 				regulator-min-microvolt = <1700000>;
 				regulator-max-microvolt = <2000000>;
 			};
 
 			reg_vcc_sdio: regulator-v6 {
-				regulator-compatible= "V6(LDO)";
+				regulator-compatible = "V6(LDO)";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};
 
 			regulator-v7 {
-				regulator-compatible= "V7(LDO)";
+				regulator-compatible = "V7(LDO)";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 			};
-- 
2.34.1

