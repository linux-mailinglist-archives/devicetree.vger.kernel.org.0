Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C62B3EB6D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 16:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240698AbhHMOgt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 10:36:49 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:42674
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240844AbhHMOgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Aug 2021 10:36:49 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id A2A9640674
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 14:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628865381;
        bh=x9UCZvVc7jU0CntSkbEGlw9mwi/YjTVnEbLIpC6FvVI=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=QMKqg3WgRnLwbVAOD5gAyUgz2AUL0BWTK8l9d3GfG0VYi58S3RwUKnkihfoITP0i/
         FnbNtCVrediMeM22GkX2vFf8oaw6C+DiZD7dEXpzwI14eQhFie3+GmKWrsqPDJLHBx
         H6XDYFh/gjC1Um8zWG4HubRw4j2Qwuu3h0HZmZjybOvAT7pi1/U6OTSsFpyNBLg91E
         JMMnZTALx3b1f8zNaecQ7cfT1KQSbA63KZLEDWUiGreNoyZN/NsLYO2Im6rtwGAojF
         bhYbgwQvi8BKUG1zH3dQaskJneJlZeZV34/pB4aWTEmvR6uaJgdVktaP5WWjZ15kxY
         gyu+roCCBl3ug==
Received: by mail-ed1-f72.google.com with SMTP id b16-20020a0564022790b02903be6352006cso4955086ede.15
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 07:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x9UCZvVc7jU0CntSkbEGlw9mwi/YjTVnEbLIpC6FvVI=;
        b=ffOC6nGmwjKYE74eQrFRmp7RGVFQdO34Qx5/HhQbGzA5SvxVE3unymMpXYI0O8vLAs
         crjI82bLweSzWNxBnFZFCFjCTHPk1CJ+B5NUnHKLEG4PKH9KEtEqeSNe7ttg06J4F7A7
         UWrsWlZcSE0sz9Sxoo/hD1kQa/F1lkZIwERuJu4rQi0MwWZaHKNb1ghzBmHwZCXbnGdY
         KgyWrH+RGgBdfuK6U6Q2I4f6eiZ20El6NKYpJ47wAETIKj2S0TMG2iDEH2G/qGsjNHUV
         8OsbPFTMFOqiuOl/C11JMOxuSEYkqKUnqjZTXktR7JSyfDMXuoIXn53hYFZuZWl4HEOR
         LLTA==
X-Gm-Message-State: AOAM5305oH/c0/CDUMrqDRuY0MGJEkZG2Viuc3yNCfoweosD2Z49yoYF
        iTaPmE84yfsOSAOytCXplr/FpOHO4yPinjcielVfKMs78E9LmGNAjmmphtouUme3qUL7d4pMgDV
        fVh/zlYm6EgxZgoFYRonNLXkmhp7iqDR7MHVbx/8=
X-Received: by 2002:a05:6402:d5c:: with SMTP id ec28mr3565079edb.3.1628865379503;
        Fri, 13 Aug 2021 07:36:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuMoY4+XcabAYYpTGyWYyBxRg6Csmgkh9iJI2Xs9pb8x6z6Xqx0ACIqM/rZBFia4ZB4i5W9w==
X-Received: by 2002:a05:6402:d5c:: with SMTP id ec28mr3565051edb.3.1628865379337;
        Fri, 13 Aug 2021 07:36:19 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d26sm989219edp.90.2021.08.13.07.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 07:36:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Alban Bedel <albeu@free.fr>, Paul Burton <paul.burton@mips.com>,
        Oleksij Rempel <o.rempel@pengutronix.de>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH] dt-bindings: memory: convert Qualcomm Atheros DDR to dtschema
Date:   Fri, 13 Aug 2021 16:35:37 +0200
Message-Id: <20210813143537.130310-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Qualcomm Atheros AR7xxx/AR9xxx DDR controller to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../ath79-ddr-controller.txt                  | 35 -----------
 .../qca,ath79-ddr-controller.yaml             | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ath79-ddr-controller.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/ath79-ddr-controller.txt b/Documentation/devicetree/bindings/memory-controllers/ath79-ddr-controller.txt
deleted file mode 100644
index c81af75bcd88..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/ath79-ddr-controller.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-Binding for Qualcomm  Atheros AR7xxx/AR9xxx DDR controller
-
-The DDR controller of the AR7xxx and AR9xxx families provides an interface
-to flush the FIFO between various devices and the DDR. This is mainly used
-by the IRQ controller to flush the FIFO before running the interrupt handler
-of such devices.
-
-Required properties:
-
-- compatible: has to be "qca,<soc-type>-ddr-controller",
-  "qca,[ar7100|ar7240]-ddr-controller" as fallback.
-  On SoC with PCI support "qca,ar7100-ddr-controller" should be used as
-  fallback, otherwise "qca,ar7240-ddr-controller" should be used.
-- reg: Base address and size of the controller's memory area
-- #qca,ddr-wb-channel-cells: Specifies the number of cells needed to encode
-			     the write buffer channel index, should be 1.
-
-Example:
-
-	ddr_ctrl: memory-controller@18000000 {
-		compatible = "qca,ar9132-ddr-controller",
-				"qca,ar7240-ddr-controller";
-		reg = <0x18000000 0x100>;
-
-		#qca,ddr-wb-channel-cells = <1>;
-	};
-
-	...
-
-	interrupt-controller {
-		...
-		qca,ddr-wb-channel-interrupts = <2>, <3>, <4>, <5>;
-		qca,ddr-wb-channels = <&ddr_ctrl 3>, <&ddr_ctrl 2>,
-					<&ddr_ctrl 0>, <&ddr_ctrl 1>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml b/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
new file mode 100644
index 000000000000..9566b3421f03
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/qca,ath79-ddr-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Atheros AR7xxx/AR9xxx DDR controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  The DDR controller of the AR7xxx and AR9xxx families provides an interface to
+  flush the FIFO between various devices and the DDR. This is mainly used by
+  the IRQ controller to flush the FIFO before running the interrupt handler of
+  such devices.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: qca,ar9132-ddr-controller
+          - const: qca,ar7240-ddr-controller
+      - items:
+          - enum:
+              - qca,ar7100-ddr-controller
+              - qca,ar7240-ddr-controller
+
+  "#qca,ddr-wb-channel-cells":
+    description: |
+      Specifies the number of cells needed to encode the write buffer channel
+      index.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#qca,ddr-wb-channel-cells"
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    ddr_ctrl: memory-controller@18000000 {
+        compatible = "qca,ar9132-ddr-controller",
+                     "qca,ar7240-ddr-controller";
+        reg = <0x18000000 0x100>;
+
+        #qca,ddr-wb-channel-cells = <1>;
+    };
+
+    interrupt-controller {
+        // ...
+        qca,ddr-wb-channel-interrupts = <2>, <3>, <4>, <5>;
+        qca,ddr-wb-channels = <&ddr_ctrl 3>, <&ddr_ctrl 2>,
+                              <&ddr_ctrl 0>, <&ddr_ctrl 1>;
+    };
-- 
2.30.2

