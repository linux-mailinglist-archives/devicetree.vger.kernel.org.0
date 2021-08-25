Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA9403F7617
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:41:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241405AbhHYNm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:42:29 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:35690
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240160AbhHYNm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:42:28 -0400
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5B92B3F316
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629898902;
        bh=Mclsayvw5vzdJqYJyjB8YKrEmbvBZm4AA48dcUpjTgs=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=kncL+AyBPHfZC6xr7vHs4ScPutC7PCIiXK5ueYMpQ4JWyp8DysthyQmZ6IUhIEweD
         /lPY4tdEwYihxk8+VXygZWkZm09y12t020ayWHyM4KCKqoiXsX+Oa/0/BhUbcgDbxP
         lp6WGMIczo5yW8+Qj7xIoYB0uUVHNjL2g9+FMllzoTsHsV0nBhGgrBsMo7Zbke9cj1
         2GGfjezFVmzHFJd2hu5BZH5K1j72GvFHNWJbbho11BkIjZAQ1kfsHQfqvMYHx6JwxE
         OocWB8UKgp+t4N1LI3erIQ9XqK/bq1oJcEb4M9P+Uvnd2JoqaykVL72tRVoe6CoKNz
         eS0YkUNsyqp6w==
Received: by mail-wm1-f71.google.com with SMTP id u1-20020a05600c210100b002e74fc5af71so2779604wml.1
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mclsayvw5vzdJqYJyjB8YKrEmbvBZm4AA48dcUpjTgs=;
        b=VSm1DkCZWnovxSuw1t+ufP6Vvf0KYua0kOE4WcG2QfoN0nd8+VOctMU52wINwX03wR
         NvbPOVKoGTq2Meci3XUyAulCmjZ0jsyGxVQt7tpXzwAnwQeFWieVNLl+B74SqC3zhYEX
         l8v84in9Be/4FWmdbQGcyeL4MYEP341a9ffRN4Fx0f5pnNqkejS9LFPRsHXGgmG+Yt9x
         5mODBY5vpfrVaHlShL9aKM8kglQGJ3xaisfriRhaDlVcNWeLWmISjGQz8hEBJdFhAcjz
         spiOLDITIea1hav2exZGMG1tesjIvLKIVyQyfdgXlfHySkPa2UJ1AvgLusqRQEnTpWW1
         EblQ==
X-Gm-Message-State: AOAM533N+SWIHvfPOrUqVFgqPgL4rPCW+1znaDpWr4b8AoTAEfrrSeQ8
        pIdR+22zCVwrBLP5nvghzo8B7qQ8U/Hfmdt/2BRYwVBvZChQ1TcHl9efrF5hB2h7zbkxuNI41Sa
        A7dfSLe6J6DEEjlkZ+9iBZ4oYzMH13+wh9AsNu5M=
X-Received: by 2002:a5d:5908:: with SMTP id v8mr24694591wrd.8.1629898902121;
        Wed, 25 Aug 2021 06:41:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHJNime9ac9nI2qzlTFeA+AXuB8FrwyflWoZRfCyBPiJ3ohEkRferPwoc88Dy+Ml5E4n5v3w==
X-Received: by 2002:a5d:5908:: with SMTP id v8mr24694559wrd.8.1629898901933;
        Wed, 25 Aug 2021 06:41:41 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.233])
        by smtp.gmail.com with ESMTPSA id g5sm7185861wrq.80.2021.08.25.06.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:41:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH v3 3/8] dt-bindings: clock: samsung: convert Exynos542x to dtschema
Date:   Wed, 25 Aug 2021 15:40:51 +0200
Message-Id: <20210825134056.219884-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825134056.219884-1-krzysztof.kozlowski@canonical.com>
References: <20210825134056.219884-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merge Exynos542x clock controller bindings to existing DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../bindings/clock/exynos5420-clock.txt       | 42 -------------------
 .../bindings/clock/samsung,exynos-clock.yaml  |  9 +++-
 2 files changed, 8 insertions(+), 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/exynos5420-clock.txt

diff --git a/Documentation/devicetree/bindings/clock/exynos5420-clock.txt b/Documentation/devicetree/bindings/clock/exynos5420-clock.txt
deleted file mode 100644
index 717a7b1531c7..000000000000
--- a/Documentation/devicetree/bindings/clock/exynos5420-clock.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-* Samsung Exynos5420 Clock Controller
-
-The Exynos5420 clock controller generates and supplies clock to various
-controllers within the Exynos5420 SoC and for the Exynos5800 SoC.
-
-Required Properties:
-
-- compatible: should be one of the following.
-  - "samsung,exynos5420-clock" - controller compatible with Exynos5420 SoC.
-  - "samsung,exynos5800-clock" - controller compatible with Exynos5800 SoC.
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume.
-
-All available clocks are defined as preprocessor macros in
-dt-bindings/clock/exynos5420.h header and can be used in device
-tree sources.
-
-Example 1: An example of a clock controller node is listed below.
-
-	clock: clock-controller@10010000 {
-		compatible = "samsung,exynos5420-clock";
-		reg = <0x10010000 0x30000>;
-		#clock-cells = <1>;
-	};
-
-Example 2: UART controller node that consumes the clock generated by the clock
-	   controller. Refer to the standard clock bindings for information
-	   about 'clocks' and 'clock-names' property.
-
-	serial@13820000 {
-		compatible = "samsung,exynos4210-uart";
-		reg = <0x13820000 0x100>;
-		interrupts = <0 54 0>;
-		clocks = <&clock CLK_UART2>, <&clock CLK_SCLK_UART2>;
-		clock-names = "uart", "clk_uart_baud0";
-	};
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
index 1642f8405ed9..b807ae79e3b7 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
@@ -18,7 +18,14 @@ description: |
 
 properties:
   compatible:
-    const: samsung,exynos5250-clock
+    oneOf:
+      - enum:
+          - samsung,exynos5250-clock
+      - items:
+          - enum:
+              - samsung,exynos5420-clock
+              - samsung,exynos5800-clock
+          - const: syscon
 
   clocks:
     maxItems: 4
-- 
2.30.2

