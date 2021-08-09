Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77AAE3E4559
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 14:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235305AbhHIMH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 08:07:57 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:45268
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234773AbhHIMH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 08:07:56 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 470CB3F358
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 12:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628510855;
        bh=OzcbdzDbFX/7hdNHc1Uaa9h5AIzXuGJQ7WWbGJRZv2I=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=UX83DbrEYzZD/xbSGD9F1vrBUU+IeHZ5OahWfvHC28/KONW13KSiHnfkgwqgMpeYO
         /2HFMKC0sxYkZL62D9ZtVkv/fe/WNKAb0UROIdKjJ5f2D+lXSga8xgxz4eTRc0UyfG
         Wm0KlnE+HJHZ7m+1aeffgif/X8pcxXz+78yJ3R553XqP+SjhLAIAO/nVB6QuIFMfiJ
         DQz5ZLuiRvxHFhXVews8w2wswb0ayzPRKF8x89PctHp/80WRxEiXCAmN+rZP1QOBQG
         1VNV7qrKS3B7gAVWcBpM98whJ8ThXjRUXb0GL1JMhuGNeph6Sys2+3DzumSivyDI29
         WeAr05+HrrSfg==
Received: by mail-ej1-f72.google.com with SMTP id gg35-20020a17090689a3b0290580ff45a075so4411870ejc.20
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 05:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OzcbdzDbFX/7hdNHc1Uaa9h5AIzXuGJQ7WWbGJRZv2I=;
        b=shw4WMFd9EmuT3lypXiGrqxM49dQDyu/oTpL4VAapCt2kpB0RSsvKn6uBCXTSFoM7y
         9G0GE/FPOa1X+w9Q2Jm1gIEzZKIUralo3ndaPzx7SGYojhOU/rQQ9k3oIw9jGblPiAed
         JrEFU1Dq4lKGlEqyRajZLRU0th+jMdi2mNlRAPif8Y9WpbaLfMsfc7M/b9iEsvrt3nn5
         C1Io7wgBFcKcdtwJxM+cOQ/5Ju3Udu/hwBK7hFE1zgwCv/v+wTx7oQiyIznIVF3A2vcl
         SniZ3Lu5dYWuCTuRB1+7bv+BmyxZ7vLO9koNIGCinU23OXCD0L6+m7rxCfRfqC0PgxZn
         OXng==
X-Gm-Message-State: AOAM5306zPMZT10f8tr60aNfALRjC1S6cNRzoA7xmEt7Shgo2+Q+4Iw3
        IUlqnzhJh3izRlTUiawiH89YKL6gabhpamZUDp/PdfVWsLQhADwniUj7vD6aL+gmCnndRf2Rtah
        dAeG5II+UgUgS03s6jzptv3cXnCn8luJgw6xPV+E=
X-Received: by 2002:aa7:dc02:: with SMTP id b2mr28698712edu.46.1628510854819;
        Mon, 09 Aug 2021 05:07:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwl0z9zY6TIRsWFOr2u74gnQQlWSGYod2iNeNyrZ86XebFxOWaMyJnUCR3NQeVehyALnrzY2g==
X-Received: by 2002:aa7:dc02:: with SMTP id b2mr28698690edu.46.1628510854621;
        Mon, 09 Aug 2021 05:07:34 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id i6sm8084863edt.28.2021.08.09.05.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 05:07:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH 2/3] dt-bindings: clock: samsung: add bindings for Exynos external clock
Date:   Mon,  9 Aug 2021 14:05:43 +0200
Message-Id: <20210809120544.56596-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210809120544.56596-1-krzysztof.kozlowski@canonical.com>
References: <20210809120544.56596-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the bindings for Samsung Exynos external to SoC
(oscclk/XXTI/XusbXTI) clock provided on boards.  The bindings are
already implemented in most of the Exynos clock drivers and DTS files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../clock/samsung,exynos-ext-clock.yaml       | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml
new file mode 100644
index 000000000000..64d027dbe3b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/samsung,exynos-ext-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC external/osc/XXTI/XusbXTI clock
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+  - Tomasz Figa <tomasz.figa@gmail.com>
+
+description: |
+  Samsung SoCs require an external clock supplied through XXTI or XusbXTI pins.
+
+properties:
+  compatible:
+    enum:
+      - samsung,clock-xxti
+      - samsung,clock-xusbxti
+      - samsung,exynos5420-oscclk
+
+  "#clock-cells":
+    const: 0
+
+  clock-frequency: true
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - compatible
+  - clock-frequency
+
+additionalProperties: false
+
+examples:
+  - |
+    fixed-rate-clocks {
+        clock {
+            compatible = "samsung,clock-xxti";
+            clock-frequency = <24000000>;
+        };
+    };
-- 
2.30.2

