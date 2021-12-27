Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8DFB48036A
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231882AbhL0Sda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:30 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45538
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231899AbhL0SdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:17 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 64BE43FFD9
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629995;
        bh=SIUiGPqn4sHTI4wrPpQmcuGfM1myPDztAmFG+NtIpFs=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Vb4GfHcClYcRQ7fWb1wutBad1feLV0lycHrajy2I3QNHvaEYP8FEKsB9WTsbHNT/L
         mrWQdV//EzVByntWMQFqECyx6t7fG+2jCvwfA8D2jF9P61TGCdrB29HzgrhZv3AY4y
         jhLgw85xRX8CDAnhvj55Gtv9cKBobNpyIcPzQIw8WZfGPb+UC/tznNjQ1I+3g0t3oI
         VvIFw5aWu9Y3cr2DhDtdKzCTY0onEqanIobEojyqowlA2QufSKnSMtkYJQpIOS71I1
         mKLEtu8C5ABZAmMWXt5Xto30VT56IFCwbPe07LFtaYnybgm5nPfZxMPQh7hrl80Wwj
         5KUClo8jRLDNQ==
Received: by mail-lj1-f199.google.com with SMTP id n6-20020a2e82c6000000b00221698ffa68so5289604ljh.17
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:33:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SIUiGPqn4sHTI4wrPpQmcuGfM1myPDztAmFG+NtIpFs=;
        b=OcL5WykfhvTzK0lRNIu6OKruTY/wHiqA6aHo/nfuDLfT2hWX17yUtLOh2NT/oocoZ4
         ucqHADJAl5BBRPy/ZUlakAV2m/XXd1+Eg+y/U7aaUHQuQcD45nYeWSuzxE5vTCTHFjNE
         9oaH16DXLIZbXfinR2V4UyS/1W1SEKa0w3V6HvqAl5UUXEbXvNW5C0K5y8sjVUqqZu2y
         sesYkBMLfifQ1IbLRxeowQWwHQ3DIgNXzq47wI1BFSIxW9k5Fylb/4Wa7BKjGPIOxuDs
         MQppRIvLEt+R+AYm+t2yz06JQbeZvjOBV5XyS2RSWhinpLhYf1Q4fChk6bFgymDIdIKY
         iJEg==
X-Gm-Message-State: AOAM5331LsFsPBfZKMLw462xfPKpp2RXXnSo2ycFbsVM4cw9svtARsbF
        MMZ3hxej1QKwPL14jyM/vi830M9dMQA/vyWQucpOIkCdXmm/uD5JiZv1BzHMZ3pI3Yg/1mNOcUD
        enveKTxnmZN7sJiyNrBLCMAXabSAcvImtFBAZgPI=
X-Received: by 2002:a05:651c:1686:: with SMTP id bd6mr6422200ljb.144.1640629987085;
        Mon, 27 Dec 2021 10:33:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyiwYxvtGi5aBexdLaJuo+p/mJzCN8N3cW4pSt0ALzD1mYO4Fc/mOyRPmGVLkcxEc1Zn1IoqQ==
X-Received: by 2002:a05:651c:1686:: with SMTP id bd6mr6422189ljb.144.1640629986863;
        Mon, 27 Dec 2021 10:33:06 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:33:06 -0800 (PST)
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
Subject: [PATCH 8/8] dt-bindings: rng: timeriomem_rng: convert TimerIO RNG to dtschema
Date:   Mon, 27 Dec 2021 19:32:51 +0100
Message-Id: <20211227183251.132525-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the TimerIO RNG bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/rng/timeriomem_rng.txt           | 25 ----------
 .../bindings/rng/timeriomem_rng.yaml          | 48 +++++++++++++++++++
 2 files changed, 48 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/timeriomem_rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/timeriomem_rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/timeriomem_rng.txt b/Documentation/devicetree/bindings/rng/timeriomem_rng.txt
deleted file mode 100644
index fb4846160047..000000000000
--- a/Documentation/devicetree/bindings/rng/timeriomem_rng.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-HWRNG support for the timeriomem_rng driver
-
-Required properties:
-- compatible : "timeriomem_rng"
-- reg : base address to sample from
-- period : wait time in microseconds to use between samples
-
-Optional properties:
-- quality : estimated number of bits of true entropy per 1024 bits read from the
-            rng.  Defaults to zero which causes the kernel's default quality to
-            be used instead.  Note that the default quality is usually zero
-            which disables using this rng to automatically fill the kernel's
-            entropy pool.
-
-N.B. currently 'reg' must be at least four bytes wide and 32-bit aligned
-
-Example:
-
-hwrng@44 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	compatible = "timeriomem_rng";
-	reg = <0x44 0x04>;
-	period = <1000000>;
-};
diff --git a/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml b/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml
new file mode 100644
index 000000000000..84bf518a5549
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/timeriomem_rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TimerIO Random Number Generator
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    const: timeriomem_rng
+
+  period:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: wait time in microseconds to use between samples
+
+  quality:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description:
+      Estimated number of bits of true entropy per 1024 bits read from the rng.
+      Defaults to zero which causes the kernel's default quality to be used
+      instead.  Note that the default quality is usually zero which disables
+      using this rng to automatically fill the kernel's entropy pool.
+
+  reg:
+    maxItems: 1
+    description:
+      Base address to sample from. Currently 'reg' must be at least four bytes
+      wide and 32-bit aligned.
+
+required:
+  - compatible
+  - period
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rng@44 {
+        compatible = "timeriomem_rng";
+        reg = <0x44 0x04>;
+        period = <1000000>;
+    };
-- 
2.32.0

