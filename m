Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3156B162E
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:10:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbjCHXJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:09:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjCHXJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:09:36 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCB6164216
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:09:35 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id e26-20020a9d6e1a000000b00694274b5d3aso105036otr.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678316975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J5PJqs5BsEDG1wdBjWwvXsmxEV4UYqM9XMe4BPKxtuE=;
        b=ZU2X+gAAyNbrZY+ccoI8srKvzJyr8um35igO3wIc7sMBIwllqYYzfzRU6hDuVGzBr0
         Z1nYOwbnWSEU2h/QgERS5S+ydFsTvlH6nNRE6m/j2Ky9GxN0Ci41a7LPYHEiiTVxReeS
         5/rsNyudWq6Ka5nqw1VCHvBgAFvmaBpkSChwE6nZBj4I59II15cjF9FSygL2ikudqtxw
         qHohzOZJtqX/gh0emEUgvxEyOY7gXKgDlB3fses6xEISy921rs9AcR/5Pl2Aa9G8erh1
         ykGcKppFLstx1j6aEsp4/FwxKopraCwUk/BgBZrvZbWjl35uDJagPNrJBvQ8ucaq8GfB
         0JTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678316975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5PJqs5BsEDG1wdBjWwvXsmxEV4UYqM9XMe4BPKxtuE=;
        b=ALjsqA7S7eQ3BfVmX0rXjsStyZoJ1yC8v1AuRFweYABF3LaJ0vJfCFM3iGIWUE8DoF
         t11ZDnWr1bHCcEfpndA0zLiekUpP/80KbrxdtTaVj/B0FSuUKUiotOC7kTyOvWheErLQ
         W/XruZgrJENIVnrqGiHeiLwsRpPFDFYlpnWVTYXDnZXD/URXQsnGFxDMy3z93ZH4GEQw
         XYAArY+xjc04Ip5E11CKyvin0XgLZI4IIJvXNlfs2OnHFTHzWt68427qs61xF1aOuFhD
         XNefFhBo2h2O07L3ObASK4GmAOGasOrH4lNUNVZ3G38bFYLyjfcRaJxkIlVDSyiTAS+V
         yV/Q==
X-Gm-Message-State: AO0yUKWtuiS/jzxJoenGZB4Vn5Wp7X0zN3lHy2N0DddEzjmjTaTLbdQm
        jHv5bpLpEE3nXqSZ8zxcMuvX7A==
X-Google-Smtp-Source: AK7set9Bws1cMOebllDwvv/UMswljCg2/saQYhCNiwvbJgz55DbPlRXex9ohzIAXXIZMreMO0qAwgA==
X-Received: by 2002:a05:6830:1f42:b0:68d:41b2:5b75 with SMTP id u2-20020a0568301f4200b0068d41b25b75mr9166479oth.11.1678316975008;
        Wed, 08 Mar 2023 15:09:35 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id q24-20020a05683031b800b0068bc48c61a5sm6976067ots.19.2023.03.08.15.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:09:34 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: power: pd-samsung: Allow pd nodes to be children of PMU
Date:   Wed,  8 Mar 2023 17:09:27 -0600
Message-Id: <20230308230931.27261-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308230931.27261-1-semen.protsenko@linaro.org>
References: <20230308230931.27261-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce a new "samsung,pd-index" property to choose a specific power
domain. This way it would be possible to avoid specifying any addresses
in power domain nodes, relying solely on syscon regmap from the parent
node (which should be a PMU system controller). Therefore the "reg"
property is deprecated now, as it's more logical to describe power
domains as children of PMU node, because PD registers reside in the PMU
area.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../devicetree/bindings/power/pd-samsung.yaml         | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index a353a705292c..73178b1a56ea 100644
--- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -25,6 +25,10 @@ properties:
 
   reg:
     maxItems: 1
+    deprecated: true
+    description:
+      Physical base address and length of Power Domains area (if not a child of
+      PMU).
 
   clocks:
     deprecated: true
@@ -45,10 +49,15 @@ properties:
   power-domains:
     maxItems: 1
 
+  samsung,pd-index:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Power domain index (if a child of PMU). Valid values are defined in::
+        "include/dt-bindings/power/samsung,exynos850-power.h" - for Exynos850
+
 required:
   - compatible
   - "#power-domain-cells"
-  - reg
 
 unevaluatedProperties: false
 
-- 
2.39.2

