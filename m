Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8BF0656C1F
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 15:43:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231478AbiL0On0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 09:43:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232259AbiL0OnB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 09:43:01 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C85BCA9
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 06:42:10 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id g13so19850279lfv.7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 06:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KHwRl+AB5wLkhKDAiPL0A8SAvtCqVXcA4oDfPcsR7vg=;
        b=K1bPYVJpCYQfjKyICsxvgGmmrR0YkHnHQfYUA8mTkRwOQmDR+VCnoFnMew3LoxxOHx
         qZjX2S/313YVzz+p7psxJbhSIxfqvpoGgavpmIMN7VTCsIB6iUmjvxD27wM5zXAi7FNR
         kk96cY2aZH2/rbXox5JuowofpPnhMhLP+5g2p9xVmn2COvnCBrClayT6to9hsCl8juMv
         3fnr7/e4rEvVqYFZz4wOD7k9O+ogzjQmADBRW+UGT3lKSfAVm1N4WL3y2B/z8s51hyTg
         74YV/7riJQx+qabkFUmCKyAe6PtDSMAFUTIL+nFra6biSe8HTshZVowuRYUrHaVG+xtR
         FPgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHwRl+AB5wLkhKDAiPL0A8SAvtCqVXcA4oDfPcsR7vg=;
        b=N+xHrjTvO+ieTLe14pBCplg7KkoFhdrE9+rfBTNliiM3tw3iUCioRhA1KG08TCsGvq
         r6YJZhnSJALoMga/MnZjcxndNSiyEAsgY4rwqv8utQiI98JxBrCVAusQ3wzim+FvkgwV
         bzHPPLY7gGmAa2JJu/PeUMtXIW65k4BUFtoIfVsHL74A5t9E9A7EYaGm86pvuJq8Zp9N
         60EetwJz8cJg+lPvllY5IM+z1FGS9CVm07PNxM8KUM8sQF7GKfJ7lnsuuTEGRb/PVvXC
         ltGQvu5ISEAMjHvAYwIdDZKx55PBOTSSyta8o9s3ef7s5fZg0iWb1mcomGvJwz3TKYnj
         sUrg==
X-Gm-Message-State: AFqh2kqekrA9/UT2UbhldnIpmTudDO1yIKgkvYMyCiCknnzihmvlAmbu
        8iU5Sun58lRZLItcYjWEpBtX0Q==
X-Google-Smtp-Source: AMrXdXvUrWPztaMGzMB2O8DAGmjZLYdFOUG4JdWoVImScN5zfbw1+sOw+sRCIFxR/1gtRVAHAvMQsQ==
X-Received: by 2002:a05:6512:210c:b0:4a4:68b7:deda with SMTP id q12-20020a056512210c00b004a468b7dedamr5535427lfr.54.1672152124874;
        Tue, 27 Dec 2022 06:42:04 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p7-20020a056512138700b00494643db68fsm2285923lfa.81.2022.12.27.06.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 06:42:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: document interrupts
Date:   Tue, 27 Dec 2022 15:42:02 +0100
Message-Id: <20221227144202.79800-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm Soc cpufreq hardware engine has LMh/thermal throttling
interrupts (already present in SM8250 and SM8450 DTS) and Linux driver
uses them:

  sm8250-hdk.dtb: cpufreq@18591000: 'interrupt-names', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
  sm8450-qrd.dtb: cpufreq@17d91000: 'interrupt-names', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index b69b71d497cc..2494e90a2fda 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -58,6 +58,17 @@ properties:
       - const: xo
       - const: alternate
 
+  interrupts:
+    minItems: 1
+    maxItems: 3
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: dcvsh-irq-0
+      - const: dcvsh-irq-1
+      - const: dcvsh-irq-2
+
   '#freq-domain-cells':
     const: 1
 
-- 
2.34.1

