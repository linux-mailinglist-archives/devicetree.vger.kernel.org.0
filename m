Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ACB8480365
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbhL0SdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:19 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45512
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231735AbhL0SdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:15 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8A01F407AD
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629994;
        bh=cDCEy25L+nu0jfudc7PZIQa9FUmo6Gd8digQKlJvlAs=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=FiuNEQPNdPCk+N6gVtxxvbHV+mv9caEMaoWwiuDDe6RHHR6fbm2HFJCev24h4ZGXM
         hZM0akxVJcAsYc5evOAIr9K0wLDyXxrePwtVFYCvok4IrW2DvoFPXOOylg5hcsoX5z
         r2ZzorDl7BOLG0ORp/+yFydia90CjsCwd6zkMLf5li9K39THyskjmFA3q/0ffVbH2d
         uGUfavANrqBXTwlmYfGfxLe1faYie8txTICkauJk8AtuU3YoBsaj6zAAN0KWzIqLg7
         KP9fu8fdpYL8hPtEb5y650X/2rg41ykPT3QiY9LvRyF/fqxfhVSu/zUvZdS3WlwQf6
         X6z/RcwBxPWZA==
Received: by mail-lj1-f198.google.com with SMTP id c31-20020a2ebf1f000000b0022d87a28911so5145495ljr.1
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:33:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cDCEy25L+nu0jfudc7PZIQa9FUmo6Gd8digQKlJvlAs=;
        b=Gs5gTC6toaAi6ztdgtHaMe2srA/CnIzAZyq2SkYcUcW34MkQas0SnbRqH+NVTv0O8x
         68iTQccMsBRFrZV5EEg0Ol9jrtwesUxuiJjMhmdxkaNt5GRzSRBG7EKhGe5H2Efj0FEW
         7J8cbINjV9GjwmbDs20zbmYetSmab5gGg7KZwz6zI74JJd7fPDOcrhCrwIpWdnlUhnjF
         4Y6ygu94mKn5ARWKc95jMGhyDT7uNHAODH4LfoCDthI0oXp1KxLZklEZ96IwcsNAafyv
         pc2fCJeybXJcw3q+MGtEiDV2iegHuAKDtiTYq/ata+woOQD5OK6hlVE/n/kALuPfro69
         1fgQ==
X-Gm-Message-State: AOAM530QB8Ak2hBcefX9esFrwNxnPq/2nQ5id1r4Kw36wgsVkmsvMlY+
        GwXN3ycC0Iw1a3+mHQAT9yBxJYG7dYiNPe3IabcUqrwX31Yd8wwVsS194Ys1ij2FLiFTCqS2HZo
        4nOWoX436tAVFuONAUr6fKvKMc7A969yFAfZB7DQ=
X-Received: by 2002:a05:6512:1598:: with SMTP id bp24mr16353991lfb.65.1640629985102;
        Mon, 27 Dec 2021 10:33:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy3kFMlMAdQXCxbskTEMB+R+oa2Xt/GVAXanOCHL6Mls3XVIJnedTi419+2LDz4zUcQPZRm8Q==
X-Received: by 2002:a05:6512:1598:: with SMTP id bp24mr16353985lfb.65.1640629984924;
        Mon, 27 Dec 2021 10:33:04 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:33:04 -0800 (PST)
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
Subject: [PATCH 7/8] dt-bindings: rng: st,rng: convert ST RNG to dtschema
Date:   Mon, 27 Dec 2021 19:32:50 +0100
Message-Id: <20211227183251.132525-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ST RNG bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/rng/st,rng.txt        | 15 --------
 .../devicetree/bindings/rng/st,rng.yaml       | 35 +++++++++++++++++++
 2 files changed, 35 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/st,rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/st,rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/st,rng.txt b/Documentation/devicetree/bindings/rng/st,rng.txt
deleted file mode 100644
index 35734bc282e9..000000000000
--- a/Documentation/devicetree/bindings/rng/st,rng.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-STMicroelectronics HW Random Number Generator
-----------------------------------------------
-
-Required parameters:
-compatible	: Should be "st,rng"
-reg		: Base address and size of IP's register map.
-clocks		: Phandle to device's clock (See: ../clocks/clock-bindings.txt)
-
-Example:
-
-rng@fee80000 {
-	compatible      = "st,rng";
-	reg		= <0xfee80000 0x1000>;
-	clocks          = <&clk_sysin>;
-}
diff --git a/Documentation/devicetree/bindings/rng/st,rng.yaml b/Documentation/devicetree/bindings/rng/st,rng.yaml
new file mode 100644
index 000000000000..ff1211ef9046
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/st,rng.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/st,rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics Hardware Random Number Generator
+
+maintainers:
+  - Patrice Chotard <patrice.chotard@foss.st.com>
+
+properties:
+  compatible:
+    const: st,rng
+
+  clocks:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rng@fee80000 {
+        compatible = "st,rng";
+        reg = <0xfee80000 0x1000>;
+        clocks = <&clk_sysin>;
+    };
-- 
2.32.0

