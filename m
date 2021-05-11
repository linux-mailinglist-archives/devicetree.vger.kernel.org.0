Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42BCD37A795
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 15:29:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231477AbhEKNaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 09:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbhEKNaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 09:30:52 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC3FC06175F
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 06:29:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2so28645872lft.4
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 06:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FFYr3Xo1ppCbhfOBPELbi7/g/WpT3C+kHa8n/mlqcNc=;
        b=xqyvcHJ3/7tk/3+p2H6mz7mGJYVGdp6Lwz1loHB0CDVOFJlyMuVPJ0XIX7zcqu4T0M
         ZNcQQT4Wx5RLT59t+TY6MjUlZKGMCB/JaJcLiEJ7LxntOuWHkTo6YkGZ4l9trrZlCIV/
         LzdCb1dBjuvyaVkHrzUDSEDMR31jRLi+zdfjO3ae+63VSw6Q1EJTmPU1beqjfkWf/Xhs
         XEq2zZib3MmsD2WjTVXgWL2Rmzus2nqmPUkmzurLX1PfKiXqipUqKkE71HP/fNrI1KMQ
         DyKvib95bsgPUnjaig8+UJ2bm+P7MlqqqSlLwTxJAVT+V3EdicAGqzd7r/Xf/usdh7wC
         Bulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FFYr3Xo1ppCbhfOBPELbi7/g/WpT3C+kHa8n/mlqcNc=;
        b=QaJdodJ28yUybrzCGIX7rNB0m8qqgeXU7186bLY5EW+ulCmVI1BdTDraK48IBVkSko
         +mRG2hu9h9tiUTQfWpYBiYUpuY4Rd6ZYkqSIiwLSO49qtVGPTZUJFr7FUXxfxkz9FuZm
         iHyDHOCUMMW7WdJz6exygiuNEXH9N3EWVzZBvZcnJMqzou52q3diexAXRLZ7sqtHBTjY
         kgbV5CKIMTCi5ZLIBufi7eG17MbxLwvF7knuN2rOoXOLIcReeoX1tx6vgbQrwHO5bHzU
         Er6iOf4WgvYbBv+dYu+tPMykLq+zdSRm+pCs6NEVpkeNcizrGlTt/4scxSl+EztY65w9
         9M1Q==
X-Gm-Message-State: AOAM530qig1SbJTuQC8CONVIQTS7DDZpXWVf2Q3nJwl+B60z0SLN3VhA
        kOBiTM2HV4KWfZSqIGKZVI53lQ==
X-Google-Smtp-Source: ABdhPJzFq6lZIyzeqJ0O+rx0RF9ZTO8L/DRul5UAuP4Z7uMSuZCun9S0iVdArkWaQQCmOFreo+ZHzQ==
X-Received: by 2002:a05:6512:3056:: with SMTP id b22mr20331716lfb.526.1620739782260;
        Tue, 11 May 2021 06:29:42 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id m4sm3699740ljc.20.2021.05.11.06.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 06:29:42 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Deepak Saxena <dsaxena@plexity.net>
Cc:     linux-crypto@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 4/5] hw_random: ixp4xx: Add DT bindings
Date:   Tue, 11 May 2021 15:29:27 +0200
Message-Id: <20210511132928.814697-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511132928.814697-1-linus.walleij@linaro.org>
References: <20210511132928.814697-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the simple random number
generator found in the IXP46x SoCs.

Cc: Deepak Saxena <dsaxena@plexity.net>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
The idea is to apply this through the ARM SoC tree along
with other IXP4xx refactorings.
Please tell me if you prefer another solution.
---
 .../bindings/rng/intel,ixp46x-rng.yaml        | 36 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml b/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml
new file mode 100644
index 000000000000..61963fa9347e
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/intel,ixp46x-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP46x RNG bindings
+
+description: |
+  The Intel IXP46x has a random number generator at a fixed physical
+  location in memory. Each read is guaranteed to provide a unique
+  32 bit random number.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    const: intel,ixp46x-rng
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rng@70002100 {
+      compatible = "intel,ixp46x-rng";
+      reg = <0x70002100 4>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index bd7aff0c120f..cc4bb4e75f04 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9248,6 +9248,7 @@ F:	include/linux/soc/ixp4xx/qmgr.h
 INTEL IXP4XX RANDOM NUMBER GENERATOR SUPPORT
 M:	Deepak Saxena <dsaxena@plexity.net>
 S:	Maintained
+F:	Documentation/devicetree/bindings/display/intel,ixp46x-rng.yaml
 F:	drivers/char/hw_random/ixp4xx-rng.c
 
 INTEL KEEM BAY DRM DRIVER
-- 
2.30.2

