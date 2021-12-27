Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2A8480363
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231941AbhL0SdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59688
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231848AbhL0SdO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:14 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BAB9B402E0
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629991;
        bh=YNz7bZBCirgiUqMV90mDMcfWLPuTB2AJTgAPIRcxfBU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=btzvXmGPQPdonqNGtkLAHm0bTibuGRJ5R4zvR2fIolKjYRCzQ5LJa4X7M1/ouPKqm
         2NPuQPWfdj3c/0OWTeyWqZL/L6bQTpo3rdmO3agrx73g8lN+Jf6WqdsKNT3zkvuuPt
         FDFndyTxizOSHNyf4o+SgC9Y0lADQRWOYBgFaihCHMR9VApy48AsIBW6GjkfBsXelX
         tMMYjfJezJ+af6Wjd91iY59FimvIO897hfaweW0YIoDA2t1YvywU9T9qhSt7lOeeUD
         8EKO3xWGSX+sUuKDirXZlmHFQNOq+opyqh6XFpS9WEZQCs4pwEZiC6kERpco/MBXwH
         ufBt+Uink7kvA==
Received: by mail-wm1-f69.google.com with SMTP id 144-20020a1c0496000000b003305ac0e03aso10195418wme.8
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:33:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YNz7bZBCirgiUqMV90mDMcfWLPuTB2AJTgAPIRcxfBU=;
        b=mXMkk7dWB89JigpuxDZeq2ilJYrR7rU7m2WpxvCDoYh7hkrQI7yzmRFEwjYDt/+PPZ
         yNSiRr4Z+J7mqp9cu1t5qpTNhrsw8fXwbw6/Ml3/pWwXs8XufR7C9OBuy0nuTTABEa/b
         JkldmVCxb8kHJp6EqPEE7/i61tx21vOb1U9vsHF3oLHYspR1tmlUnmdVVijSyvRM4cZH
         GREsz8ZWhyj8F1MKFihMGWRtYVpU8j/LOQ+j8eD2ZhIF5MHIAqM14iVpAbWMzJP9SbYj
         DrUaVL+C58HBo247UKLJGQHmbGnYnkcqwlrocEXlRcQWEpsl446DHh7lACP9jJlwhgmB
         PEYQ==
X-Gm-Message-State: AOAM532b0QIlIP+659DieGOi72vVLq+kcZRPXl0fRaUGVJA7xsH+ZoR8
        XsJN8SwxhRWWVhqNzLOf1ri/mHiXIa2iYvdekG4tzphTZYXVyzE+LzJFZfoPYcyS1WioMhLBKzV
        vgF9agweajBRnutCmoj2BBeFDLQBLyfGClAviv5Q=
X-Received: by 2002:a05:6512:228d:: with SMTP id f13mr10245769lfu.6.1640629980937;
        Mon, 27 Dec 2021 10:33:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2MVFgtxVXl9dkYylvm3W8Z0PJf+NtYNzVtH9LFtR6/thbbsYTREB34HF4sYqA19ZCqZuMBw==
X-Received: by 2002:a05:6512:228d:: with SMTP id f13mr10245747lfu.6.1640629980747;
        Mon, 27 Dec 2021 10:33:00 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:33:00 -0800 (PST)
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
Subject: [PATCH 4/8] dt-bindings: rng: ti,keystone-rng: convert TI Keystone RNG to dtschema
Date:   Mon, 27 Dec 2021 19:32:47 +0100
Message-Id: <20211227183251.132525-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the TI Keystone RNG bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/rng/ks-sa-rng.txt     | 21 --------
 .../bindings/rng/ti,keystone-rng.yaml         | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/ks-sa-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/ti,keystone-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/ks-sa-rng.txt b/Documentation/devicetree/bindings/rng/ks-sa-rng.txt
deleted file mode 100644
index b7a65b487901..000000000000
--- a/Documentation/devicetree/bindings/rng/ks-sa-rng.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Keystone SoC Hardware Random Number Generator(HWRNG) Module
-
-On Keystone SoCs HWRNG module is a submodule of the Security Accelerator.
-
-- compatible: should be "ti,keystone-rng"
-- ti,syscon-sa-cfg: phandle to syscon node of the SA configuration registers.
-		    This registers are shared between hwrng and crypto drivers.
-- clocks: phandle to the reference clocks for the subsystem
-- clock-names: functional clock name. Should be set to "fck"
-- reg: HWRNG module register space
-
-Example:
-/* K2HK */
-
-rng@24000 {
-	compatible = "ti,keystone-rng";
-	ti,syscon-sa-cfg = <&sa_config>;
-	clocks = <&clksa>;
-	clock-names = "fck";
-	reg = <0x24000 0x1000>;
-};
diff --git a/Documentation/devicetree/bindings/rng/ti,keystone-rng.yaml b/Documentation/devicetree/bindings/rng/ti,keystone-rng.yaml
new file mode 100644
index 000000000000..e749818fc193
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/ti,keystone-rng.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/ti,keystone-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Keystone SoC Hardware Random Number Generator
+
+maintainers:
+  - Nishanth Menon <nm@ti.com>
+  - Santosh Shilimkar <ssantosh@kernel.org>
+
+properties:
+  compatible:
+    const: ti,keystone-rng
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: fck
+
+  reg:
+    maxItems: 1
+
+  ti,syscon-sa-cfg:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: |
+      Phandle to syscon node of the SA configuration registers.  These
+      registers are shared between HWRNG and crypto drivers.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - ti,syscon-sa-cfg
+
+additionalProperties: false
+
+examples:
+  - |
+    rng@24000 {
+        compatible = "ti,keystone-rng";
+        ti,syscon-sa-cfg = <&sa_config>;
+        clocks = <&clksa>;
+        clock-names = "fck";
+        reg = <0x24000 0x1000>;
+    };
-- 
2.32.0

