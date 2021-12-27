Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEE5E480354
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231722AbhL0SdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:03 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59438
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229643AbhL0SdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:03 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7708A402EC
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629979;
        bh=Ha91ZDV5aCOHeV4K+0XvZy0cP8PcDx+1Y/WeQ3R169I=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=l6IMq0gOBTk9fMF99J1d6pFB7e70Vl3xXwJgCUMq5CObjL0uWCWSNxbgmf3TyyYNw
         WRVMZpX+AVemL7qNnolzjzk7TrCEtBP/IL7uXWvCMPQedtsxvnpgERnU3KkX0/DvbL
         mZUEOsTPOZ2YR5gQNFLh6ODJe+B4nK8WKfGJQHNSemDD99i3TkQbg/1zn1M40zLK78
         vePYJHYCJfADoUj9HAJFkE4YCL2kgOQtQTU2By+k3k7frIW8D115hjJhJU8+ADAuYk
         IRGeCvQNF0lcEBCz8lrAyeqgYa4T2UeQ/ADUkDq0NQCFu8iCHvxRiJsTO9w7eEi7Uh
         AyXS70/2XUvZw==
Received: by mail-lj1-f200.google.com with SMTP id k20-20020a2e9214000000b0022d6b13bc8aso5258676ljg.13
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ha91ZDV5aCOHeV4K+0XvZy0cP8PcDx+1Y/WeQ3R169I=;
        b=gpwaNlOMM9b0/GDDZOodFREZVUz7GNLY0uAKXYM7zYL8ZvoEeVP4Bd7j4NfOztEpt7
         fHoicreLkL4DMB1EsQNGugcmTyITbb66gYBI6oygYwxz3f5DdsjSv8d/zQfHlEG7gy7m
         GUWPM8KUkCGcy0LC1OG13Wm5b8pJGZ/HSoEJ8GGh9A7O+F8tEkbbceBC0eg1VqQERajh
         faMC0DNpyVkK/8OkkN3BjaSo9Xidti58lwqgILvR0m4LImWYGASOXn3E4kRLWksPfN4D
         2z1LGR10VSuHE/vW7Gh3nhKUZELQSbPC+Ebh5NvFLUYR5dFubo+6hRBcR2Eof3uTHv8E
         EUqw==
X-Gm-Message-State: AOAM530BImy6at3qsXwW44XQPxEn63j0Q7OfTU0eBCCUaXc0Gzybgvpm
        si48c+opILpftvB4Su0DkzHHVl4xOd6BI+MeVrSrxh8mI/EqIdhrjc9SRiBIn2TWSaPWlzrfY0b
        KY3AotOlW0K4m4DPDOWxSWerVmIpMIQwVsYNInMA=
X-Received: by 2002:ac2:4d34:: with SMTP id h20mr16342045lfk.617.1640629977856;
        Mon, 27 Dec 2021 10:32:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxw2ascN7H6LYQsbejqKJs7k+yaXgGe30MRDmj5xMYPmLPKoxgkmpwR4T2jbxwJKJSp1I0tQg==
X-Received: by 2002:ac2:4d34:: with SMTP id h20mr16342015lfk.617.1640629977677;
        Mon, 27 Dec 2021 10:32:57 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:32:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        Tony Lindgren <tony@atomide.com>, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
Subject: [PATCH 2/8] dt-bindings: rng: atmel,at91-trng: convert Atmel TRNG to dtschema
Date:   Mon, 27 Dec 2021 19:32:45 +0100
Message-Id: <20211227183251.132525-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Atmel TRNG bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/rng/atmel,at91-trng.yaml         | 46 +++++++++++++++++++
 .../devicetree/bindings/rng/atmel-trng.txt    | 16 -------
 2 files changed, 46 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
 delete mode 100644 Documentation/devicetree/bindings/rng/atmel-trng.txt

diff --git a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
new file mode 100644
index 000000000000..0324e863dab8
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/atmel,at91-trng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91 True Random Number Generator
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+  - Ludovic Desroches <ludovic.desroches@microchip.com>
+
+properties:
+  compatible:
+    enum:
+      - atmel,at91sam9g45-trng
+      - microchip,sam9x60-trng
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    rng@fffcc000 {
+        compatible = "atmel,at91sam9g45-trng";
+        reg = <0xfffcc000 0x4000>;
+        interrupts = <6 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&trng_clk>;
+    };
diff --git a/Documentation/devicetree/bindings/rng/atmel-trng.txt b/Documentation/devicetree/bindings/rng/atmel-trng.txt
deleted file mode 100644
index 3900ee4f3532..000000000000
--- a/Documentation/devicetree/bindings/rng/atmel-trng.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Atmel TRNG (True Random Number Generator) block
-
-Required properties:
-- compatible : Should be "atmel,at91sam9g45-trng" or "microchip,sam9x60-trng"
-- reg : Offset and length of the register set of this block
-- interrupts : the interrupt number for the TRNG block
-- clocks: should contain the TRNG clk source
-
-Example:
-
-trng@fffcc000 {
-	compatible = "atmel,at91sam9g45-trng";
-	reg = <0xfffcc000 0x4000>;
-	interrupts = <6 IRQ_TYPE_LEVEL_HIGH 0>;
-	clocks = <&trng_clk>;
-};
-- 
2.32.0

