Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9D6436C2D
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 22:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232169AbhJUUeM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 16:34:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232054AbhJUUeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 16:34:11 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ABF6C061243
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 13:31:55 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id e19so1558885edy.0
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 13:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+AAeT1s5etdXanRn4aSszKNI29PERXQFpDmpMaONVPY=;
        b=XCV+7ls9ymJQESDnoVrKDqw43/z3HmKtMn5kgZkGDkChRBSDIFerDu7SxdASWpHeof
         5+cV3u5rkCAukglJLnxyiWawK/p6JgUWnyB9FmVXutdRGfl/RJHWan8z3DcMmS8D4S6s
         vAL4PlGz8U7dW7ou47v06kIyoGcnQHZlT1zU4mUF0cvXdwcFiYDE4cOaiiNF0gHiernP
         yUS6Lw0lPz7vmUavtVkk5gTvleJDrsTlqbkAmv+eyuIL3LW5L+3kEb9jiewMlcwlE+Ig
         9OBqMN5ZxHTkgzMsYccXVF2x1K9e1KBRCVo24Wa+d9W0izFU0xMt2S9lS9Bl/jFcd/CU
         nUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+AAeT1s5etdXanRn4aSszKNI29PERXQFpDmpMaONVPY=;
        b=d5VFscRUXBfP1Dpsd4ZG8tTSjXvCITODFO17NXNumsfQKHRdXbqXbKeFFGvuxbGpHN
         DvJeFs/+ZrdxddRB/Et17djUt9tL6+FmqW2XyUAhmaedTPG6e/ASD2yrtP6V8o54LNTw
         c1SF+R9quJNlyaFTMfgd1nSPoHxWG2Vqd6CnSou8Hc7LQi890dNgd4te7Rszl/QmAHrw
         FEaUqJ3o5AcpZUXbm+6HFJ7jQKaGqVhk9A6/YeVAoVW+KvR4hhqMbJRIgWPmQjsnq4oc
         TOcDqkGB1BfOszYOFiw9nD8eNGYsalA1ZK9P3Jnc06lDzY2GOVGNh5Mx4ItVK3dtoI+2
         ir0g==
X-Gm-Message-State: AOAM533h86c6W8pIEOMRQ28ePBUtlcJgvfdu6RrGSgHmCakuAICnQ8IS
        ThuSH15bKiuH3C/ilO+RgRABBw==
X-Google-Smtp-Source: ABdhPJx8Igs3iTlr4qpiVqe1jpwXDeVQlItrxTjJTiKYrz23gen6QSEo6M7blcHlSX3CgR4v2vi5mg==
X-Received: by 2002:a17:906:c205:: with SMTP id d5mr9611265ejz.528.1634848313960;
        Thu, 21 Oct 2021 13:31:53 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id f7sm3296171edl.33.2021.10.21.13.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 13:31:53 -0700 (PDT)
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
Subject: [PATCH 1/2] dt-bindings: clock: samsung: Document Exynos850 CMU_APM
Date:   Thu, 21 Oct 2021 23:31:51 +0300
Message-Id: <20211021203152.29312-1-semen.protsenko@linaro.org>
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
---
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

