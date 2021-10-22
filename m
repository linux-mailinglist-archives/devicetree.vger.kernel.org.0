Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1A7C43805A
	for <lists+devicetree@lfdr.de>; Sat, 23 Oct 2021 00:46:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbhJVWsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 18:48:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbhJVWsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 18:48:17 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C45C061764
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 15:45:59 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id x192so438279lff.12
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 15:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bm1KHOnXO9Nvs/x1NBP6TsM2Dt9DXyHWBfDOZJg27a8=;
        b=EtCKFiatwuzA4uM+E8PWtwbbAe8XzQ7UUvuAMd8cRA8gKX4PEY/yqts7H6YG7/CMLM
         a/wNQytvXMKCr3maJK5FIRa31QxjMM8iA5ywrCoMBLH9Jql9MR1sDkCUUBtS15bBFVTz
         Tik5sNTQW1jbgyPq7wLbDyz21Bm3qgQmhPnOfhgIBwCGXT5vqsDTnCEuObZXvNCxaKI2
         3whQfZotJTMYyoXnHeYrq4a4wY27kJO99HoCgE6XBori3Dovuo+ufpEG6Pgbl42ce2ar
         wRVIKqlyderP80WeRrnGsPmnpsw7fdZoWXUlcvX1NvMLHAiuMkf30s8/jC02vQ3C+/qO
         KWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bm1KHOnXO9Nvs/x1NBP6TsM2Dt9DXyHWBfDOZJg27a8=;
        b=em2iNlrmGnRgAW9GtCDfydMEwT2N/D5jfvjBQ/eMU5iz5SCzethAKVe0CyA4Jv+tDd
         uCmaYAkHchWz3sepVP3nqWLnn1G/1uGSX5NQ8CJVarKosoSp60jh6Wur9N1n/bIYjObd
         NEQnAZxrP3xukBZwih2INydQ/yJJ0Lo6s08h5ilnxX26/WZ1NcdkW+K237CS6q0326vQ
         CvcwvLfxgLRJtR7JhR6AXF5/BAPaMSutViriEbbh+apiGz348EvgMyc439oy9c3lAOS5
         GPau2UsmhTa0i/n1pNyJaWbIQjZBY5OX6vjI0suopjGLUW3o/mvSN2/9dV/vFHUfUA7r
         pv1A==
X-Gm-Message-State: AOAM531/XYIultDFPlUk385pGm0qcfKL+zztMyErrEOT5Hj7zi9ncJcH
        1vR6Qxm5HPBYtJ+hdQRtkr+gFg==
X-Google-Smtp-Source: ABdhPJykSinQrW5tYMCkfcTqTWeVNXJPpKFxklqqD0dxJjpM+ZDacTlJnAzr/PdIr/kg70ibBzjdKg==
X-Received: by 2002:ac2:4426:: with SMTP id w6mr1158404lfl.90.1634942758007;
        Fri, 22 Oct 2021 15:45:58 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id b39sm923707lfv.200.2021.10.22.15.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 15:45:57 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: samsung: Document Exynos850 CMU_APM
Date:   Sat, 23 Oct 2021 01:45:55 +0300
Message-Id: <20211022224556.18742-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CMU_APM generates clocks for APM IP-core (Active Power Management). In
particular it generates RTC clocks, which are needed to enable rtc-s3c
driver on Exynos850 SoC.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
Changes in v2:
  - Added R-b tag by Krzysztof Kozlowski
  - Added Ack by Chanwoo Choi

 .../clock/samsung,exynos850-clock.yaml        | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
index 7f8c91a29b91..5618cfa62f80 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
@@ -32,6 +32,7 @@ properties:
   compatible:
     enum:
       - samsung,exynos850-cmu-top
+      - samsung,exynos850-cmu-apm
       - samsung,exynos850-cmu-core
       - samsung,exynos850-cmu-dpu
       - samsung,exynos850-cmu-hsi
@@ -68,6 +69,24 @@ allOf:
           items:
             - const: oscclk
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos850-cmu-apm
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CMU_APM bus clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: dout_clkcmu_apm_bus
+
   - if:
       properties:
         compatible:
-- 
2.30.2

