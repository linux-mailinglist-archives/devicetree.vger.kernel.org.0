Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6052860C540
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 09:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231805AbiJYHd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 03:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231826AbiJYHdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 03:33:19 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7296415202A
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 00:33:14 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id c24so10469854pls.9
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 00:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQnAjVM8KfWMqcwU3yG9m91ABhfRemXy71C0Mul10HU=;
        b=e8JJy63K9LlYNjNRkaJF+MGYeZJonUWQVJAkpo8xchWw4xqq+Fz/VfKE0WeZOnJcax
         W/+u2b+ROsGpGNPd/DE4I8cnfzjyQcemBjwVd6BD/A9kAfUwVQn85iW/9L0l5Zrv4zCM
         ef8TJpZAURk1+ZfOPgLTRLdnjX779naxVajmLClgWpVrgJ9hs8obvZPZTLuDWiGfgZcG
         uw9rUYAGDdZkDH6bkSgeaTruKw9jQF+/ZVJedGY5bkhH802qBSBQWn/TP+85PbXG5Aa6
         dDTEMcpkWdMwnSN8Wz8WR0PU1o8fRBMTkgnFrW40RVh3yrb4XT+sk61BwQyZxDx3fzFD
         +7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQnAjVM8KfWMqcwU3yG9m91ABhfRemXy71C0Mul10HU=;
        b=Za1rxXYso2qqMLGOTYe/YKY1BIhbYSzKfL5K9TY0EsEOBXpCsrY9JWUdokeuAkKT7S
         RzmRS8nOHWSRO2PDWlu0S9cbePe50gEeiyAuuOHDCEgflZTMeUy5nxL62yyRgBF3dTAo
         GCiKDOCG8K3G6BJ5H37wSF6T4d1Z4XsSfxeiF1l6UxXaEZxGWfk9KlqUUaP5/tXsXa6c
         Z6XUTxE2Mtel53vTFGcjqjmnwsjLDEKYtcfkgtH/z6Diyng/agZbddP05QxCW9D4DSCO
         F9AdZTGviZQQm5fQeH6kOZfhoslPTTZpXp7L3zyb0od3ogPfEKUoq2SSxnVrhPt7xwBP
         oJdA==
X-Gm-Message-State: ACrzQf2H3ptZ8vF+3LPQpT8DaMNUULUs7dG+KTw1Fxglpif0R6pJeDKY
        U3OLLLvb1FSP7mUrYdrj68azwweWpDx2bW0gKA==
X-Google-Smtp-Source: AMsMyM5Q6hyH/r3aMTe/oOPuJy8fJM9avInLR8qN1a8pB8WvQDd7f46uyeOJuTz7+IsPb8Uv/YtK6Q==
X-Received: by 2002:a17:90a:e606:b0:212:f100:22e3 with SMTP id j6-20020a17090ae60600b00212f10022e3mr15802518pjy.83.1666683194461;
        Tue, 25 Oct 2022 00:33:14 -0700 (PDT)
Received: from localhost.localdomain ([117.193.211.146])
        by smtp.gmail.com with ESMTPSA id c1-20020a17090a4d0100b0020dda7efe61sm5048369pjg.5.2022.10.25.00.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 00:33:12 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, viresh.kumar@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, rafael@kernel.org,
        robh+dt@kernel.org
Cc:     johan@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/7] dt-bindings: cpufreq: cpufreq-qcom-hw: Add cpufreq clock provider
Date:   Tue, 25 Oct 2022 13:02:48 +0530
Message-Id: <20221025073254.1564622-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025073254.1564622-1-manivannan.sadhasivam@linaro.org>
References: <20221025073254.1564622-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm platforms making use of CPUFreq HW Engine (EPSS/OSM) supply clocks
to the CPU cores. Document the same in the binding to reflect the actual
implementation.

CPUFreq HW will become the clock provider and CPU cores will become the
clock consumers.

The clock index for each CPU core is based on the frequency domain index.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index cbba8979fe0e..2e0336163ffb 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -57,6 +57,9 @@ properties:
   '#freq-domain-cells':
     const: 1
 
+  '#clock-cells':
+    const: 1
+
 required:
   - compatible
   - reg
@@ -84,6 +87,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_0>;
         qcom,freq-domain = <&cpufreq_hw 0>;
+        clocks = <&cpufreq_hw 0>;
         L2_0: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -100,6 +104,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_100>;
         qcom,freq-domain = <&cpufreq_hw 0>;
+        clocks = <&cpufreq_hw 0>;
         L2_100: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -113,6 +118,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_200>;
         qcom,freq-domain = <&cpufreq_hw 0>;
+        clocks = <&cpufreq_hw 0>;
         L2_200: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -126,6 +132,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_300>;
         qcom,freq-domain = <&cpufreq_hw 0>;
+        clocks = <&cpufreq_hw 0>;
         L2_300: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -139,6 +146,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_400>;
         qcom,freq-domain = <&cpufreq_hw 1>;
+        clocks = <&cpufreq_hw 1>;
         L2_400: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -152,6 +160,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_500>;
         qcom,freq-domain = <&cpufreq_hw 1>;
+        clocks = <&cpufreq_hw 1>;
         L2_500: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -165,6 +174,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_600>;
         qcom,freq-domain = <&cpufreq_hw 1>;
+        clocks = <&cpufreq_hw 1>;
         L2_600: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -178,6 +188,7 @@ examples:
         enable-method = "psci";
         next-level-cache = <&L2_700>;
         qcom,freq-domain = <&cpufreq_hw 1>;
+        clocks = <&cpufreq_hw 1>;
         L2_700: l2-cache {
           compatible = "cache";
           next-level-cache = <&L3_0>;
@@ -198,6 +209,7 @@ examples:
         clock-names = "xo", "alternate";
 
         #freq-domain-cells = <1>;
+        #clock-cells = <1>;
       };
     };
 ...
-- 
2.25.1

