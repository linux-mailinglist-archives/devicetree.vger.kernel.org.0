Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52E1B3E56F5
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 11:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239140AbhHJJc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 05:32:58 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:42878
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239099AbhHJJcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 05:32:54 -0400
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 050D140328
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 09:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628587950;
        bh=OzcbdzDbFX/7hdNHc1Uaa9h5AIzXuGJQ7WWbGJRZv2I=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=s4IHJeV6bm9XYJ7hCRV5tq6xm0jKcBtwyzQyIDSsNeqkgj8z2x7F212gl8NA+lApX
         cS8g4rGwJBlqzYZE+uc0ucuzLYF949nJIStpaEwDo6Uo+XcsNoXDQcbGqCWz4yDn96
         +3fb2PQQn4YOIl2JhbzgVwc1wOG4HxInwOpBVRmEqQBW0NWqKHQnShwM5MhDBxsdEF
         jWXFc4Fo/kFEr1rIF6OTNGBJljWVFlr0TVthZEGrH5drVHeuT1IWQOxjjMwA20j44T
         PudpHNegvYEibsZNwsw/kdi6hU5mYPfEgX3KVyVOHgKTLDW5J60sZVsEuJ2ZUWmBfv
         UU/kuvSYuqv5w==
Received: by mail-ej1-f69.google.com with SMTP id qf6-20020a1709077f06b029057e66b6665aso5400886ejc.18
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 02:32:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OzcbdzDbFX/7hdNHc1Uaa9h5AIzXuGJQ7WWbGJRZv2I=;
        b=Wo1c6CZOze7uUUEIDsqDqknSId/OvqzHALQ+NM9QoqMwM/aIFLchO+w1chMxJNLlQF
         0P1fXsoaAQR3CZ86Bwz6FZLvFRyVMBjpu3n8K6Lene+NJtBBBa+bXK5cc1x7LbbbYTTj
         fPac7aFH06hOS4JXgnRaYMt95FkWsZGvs448SJznz4riSa6VJNI+yEqpLusXNayhauvS
         k+w7sXegUw3b1Pa4JTMWFdj83fqg4845mGl7DLB9ykjJY/Zda97xW4AOjYKLJz+t4x+X
         f53E6s/TD78CX16wKKP8DYehvWReT50jMOUieNaVBzfy+xrqMsuY2Zm+yw/vGzCmMeOt
         bgog==
X-Gm-Message-State: AOAM532z+2y8DnzU5rdEI3A3UQa/fNkKqlUS8DSlLSFRReHuEbNrOl02
        pzjhWMJFBhARa8DRFvpd+Q3edAjzD+GQq5Lpg+rCmH98rNIx5BAk7mlk8n+NqWjD16Iggx7UBlC
        lgQe/oekkpvXLAwCXYS6ImY7HPERX7jO26P800v4=
X-Received: by 2002:a17:906:1919:: with SMTP id a25mr26443206eje.161.1628587949720;
        Tue, 10 Aug 2021 02:32:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEhq+DTJX3If44p8meBN5uqXskUe0qEC5dC6lsnCApRuAsi68OVH0j029oDIRI/IB9Bru+nA==
X-Received: by 2002:a17:906:1919:: with SMTP id a25mr26443186eje.161.1628587949557;
        Tue, 10 Aug 2021 02:32:29 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id q21sm5117606ejs.43.2021.08.10.02.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 02:32:29 -0700 (PDT)
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
Subject: [PATCH v2 2/8] dt-bindings: clock: samsung: add bindings for Exynos external clock
Date:   Tue, 10 Aug 2021 11:31:39 +0200
Message-Id: <20210810093145.26153-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210810093145.26153-1-krzysztof.kozlowski@canonical.com>
References: <20210810093145.26153-1-krzysztof.kozlowski@canonical.com>
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

