Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5C93E8C29
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 10:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236279AbhHKIor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 04:44:47 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:45756
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236277AbhHKIof (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Aug 2021 04:44:35 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 0C60140644
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628671451;
        bh=xfBIY5y7ayvXi13bXMhUcn2KK8OyGJ2/oFr8yDw2Ddk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=uuNIIdAn6dh1T2wWXHtUeUZG3IoVILxdJbF7vaQA7dkdRfrMNXWkRZZ2/mvklU5+s
         wojyzPkvQI7i9MepKTGf8I5AeDI3qEFBCPoEURlJNb8OVcQJCz4Pq+4ZrTZBL00NLF
         oxoLcbFh59vtGvzPkneSLlO5ndnHqHsALgy+xHzKCw4/JQa5n3KqEuLhrHQXycmNPX
         O37AnHn5rc9/J+jp8r1W5YS2PsmZ9MO4wMES+uejA9Oh5DLLlkPNxFwV6sjpTAQc99
         NJXOmCeDMq0V2lbTry030/4Wu+r7OzHXBUeQ+weK8hyhUD9xKyr7cQBCiJhFhBQ1B8
         HUdeDJRS1lz3g==
Received: by mail-ej1-f70.google.com with SMTP id h13-20020a1709062dcdb02905aec576a827so391967eji.23
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:44:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xfBIY5y7ayvXi13bXMhUcn2KK8OyGJ2/oFr8yDw2Ddk=;
        b=ePzuIN9OCZBsbgKZBagF/XoHPgTbTAvcsRpEai8GYKieyLq+crbiLWxh3iGbtL5gBt
         zcXIBCKjny3V4nFe/+gokeLoQBrgQHSYCD0QXyyxtZ5j3tw63q9Of4HdrHphj9xkJ5/F
         6bZpLJOYegRGYjhCNKdXj28X7j+xwwa2AOsxihGPlyTcfkxMTf9h5QZAvzsQUqoIDbjO
         BUfZgLJy1N23cvGTF5+JUw4eDU4SaBUTB+YlhcdsPeEhsiahio9jUPf1nuxCK58NBhrU
         5p4bMRgNxzxQ24rINgN7kNHhpvNQ3kJ2kf4QZV3UnUIFCCfGKOBEs6KNDAOQBHA/3kLW
         xkpw==
X-Gm-Message-State: AOAM533qv4UCR/OhHtEJI4Jry9I7z3dkPr0iHYG1VRKYQ2JPTqkAXPEr
        b78S+qDOkyxGijqduVZ48sglUB5WroiyQdCpHd9ALe4QW48DSLHeGbocuUwvyMeIRMx2X3NwVZs
        +e05ALRdrbqs+G85+f67c7XIYFbOQx4qwfFC/3tQ=
X-Received: by 2002:a17:907:b09:: with SMTP id h9mr2622129ejl.278.1628671450762;
        Wed, 11 Aug 2021 01:44:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwv7TUIBok7XHuyD2Zd18YzZSSYWehpsmAnvm6xQwKtN6nkWJ6/okvCpUEsBx3DOW3xQGbMhw==
X-Received: by 2002:a17:907:b09:: with SMTP id h9mr2622106ejl.278.1628671450546;
        Wed, 11 Aug 2021 01:44:10 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id kk14sm2429708ejc.29.2021.08.11.01.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 01:44:10 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-crypto@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: rng: convert Samsung Exynos TRNG to dtschema
Date:   Wed, 11 Aug 2021 10:43:06 +0200
Message-Id: <20210811084306.28740-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811084306.28740-1-krzysztof.kozlowski@canonical.com>
References: <20210811084306.28740-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Samsung Exynos SoC True Random Number Generator bindings to DT
schema format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/rng/samsung,exynos5250-trng.txt  | 17 -------
 .../bindings/rng/samsung,exynos5250-trng.yaml | 44 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 45 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml

diff --git a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
deleted file mode 100644
index 5a613a4ec780..000000000000
--- a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Exynos True Random Number Generator
-
-Required properties:
-
-- compatible  : Should be "samsung,exynos5250-trng".
-- reg         : Specifies base physical address and size of the registers map.
-- clocks      : Phandle to clock-controller plus clock-specifier pair.
-- clock-names : "secss" as a clock name.
-
-Example:
-
-	rng@10830600 {
-		compatible = "samsung,exynos5250-trng";
-		reg = <0x10830600 0x100>;
-		clocks = <&clock CLK_SSS>;
-		clock-names = "secss";
-	};
diff --git a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
new file mode 100644
index 000000000000..a50c34d5d199
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/samsung,exynos5250-trng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC True Random Number Generator
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Łukasz Stelmach <l.stelmach@samsung.com>
+
+properties:
+  compatible:
+    const: samsung,exynos5250-trng
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: secss
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5250.h>
+
+    rng@10830600 {
+        compatible = "samsung,exynos5250-trng";
+        reg = <0x10830600 0x100>;
+        clocks = <&clock CLK_SSS>;
+        clock-names = "secss";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 4477215ef649..ebdb07a49b02 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16398,7 +16398,7 @@ SAMSUNG EXYNOS TRUE RANDOM NUMBER GENERATOR (TRNG) DRIVER
 M:	Łukasz Stelmach <l.stelmach@samsung.com>
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
+F:	Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
 F:	drivers/char/hw_random/exynos-trng.c
 
 SAMSUNG FRAMEBUFFER DRIVER
-- 
2.30.2

