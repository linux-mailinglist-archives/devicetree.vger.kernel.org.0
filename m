Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2114B3F868C
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 13:31:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242059AbhHZLcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 07:32:20 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35410
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234382AbhHZLcT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 07:32:19 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0C72A4076C
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629977491;
        bh=tm+TApaMbbdtK7AxcQH2rPkd4eahRVR0s8WdKGXUclE=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=d/2eOJjzg4czIPyqjGUT7nGCKiWiSH06IvkDmnBCIUEdE8a24vZJ4GN0ZZeu9AZSw
         RG++YJrAu2rOnoWtjgZKGcLKTBHhXTfRI1YLmMGeB3TQlpOK+/b0r/wej9ww11M6/6
         Okv9k1F61j8GXQtXUTtj2N09i+HEh2zdoTnwYwof0OlijNsmCEAQ3xIYnC+fMfrv9s
         Sgc6p6liYk3IshtgChAsw4DKr7LbbEMAQ7s/bdoL2MCla9kT+vDHWEdPkx6EnhWfox
         fN0JQDd4u9X2KOhKr1Gl03Wh1EwHJvYFXfD7sefuNF6wa9njI3mWPzRrNQUY7WpqJD
         vBYOMM2WDiNXQ==
Received: by mail-wr1-f69.google.com with SMTP id p10-20020adfce0a000000b001572d05c970so720152wrn.21
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 04:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tm+TApaMbbdtK7AxcQH2rPkd4eahRVR0s8WdKGXUclE=;
        b=QWC2yA0tMj5OYiwXlbcKpjXXeJxk6EkfRVi0CnUxgeo5waQajafG8a/g6eotftm9rj
         JyxVNKtxQBsjj8TuAEeBf62C3s9rI/3Eorqx9xchfkk7AvToLs5yy5HKJgnGg86HEz6D
         EZpbLunCS4FgdC7P0ItfnI8rI8aVhG1ExN6Udp/BfpP4vKV3DoWMvEKmobJu7VXWPjvx
         Fdu+Bw2vazMigkzmIaBvu+av2mgzHkOxce/HgespRFZmPXDVLRY+DCTATEAGS0G2i2Hu
         m/9JMwF0LR/PyzVJ1/FdwQapBvkcYhW6Qy+K33vLMONO8HRIsLx6aGO3F6wdSNBp5fe8
         SL/g==
X-Gm-Message-State: AOAM530BWrehKStXk3ThZIwbTRuuE0tZNYV5DIyNco2Cx0qHr50t4s9c
        XySMlLMhMQ2YOUe74NSwUMY2Spoc1zYnd6Eyf8/l6aTDWBd+osvAfCiWR8gW8wTIrjJVZXmixHa
        vreiZNjh+VQjyxD1So6AC3EgOJ0WipaR/T/HLshI=
X-Received: by 2002:a05:600c:4e8a:: with SMTP id f10mr3235889wmq.84.1629977490626;
        Thu, 26 Aug 2021 04:31:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/N8P+75+c7MjRhoRUtRCX5ioDyRxl1zO7CiLJw+jvClp2QzrMVI6Y/kvfatqV59zhUDZjow==
X-Received: by 2002:a05:600c:4e8a:: with SMTP id f10mr3235874wmq.84.1629977490455;
        Thu, 26 Aug 2021 04:31:30 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.63])
        by smtp.gmail.com with ESMTPSA id k25sm3082494wrd.42.2021.08.26.04.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:31:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Borislav Petkov <bp@alien8.de>, York Sun <york.sun@nxp.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: memory: fsl: convert DDR controller to dtschema
Date:   Thu, 26 Aug 2021 13:30:47 +0200
Message-Id: <20210826113049.92962-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Freescale/NXP DDR memory controller bindings to DT schema format
using json-schema.

Previous bindings were not listing all compatibles, so scan through
devicetree sources and drivers to get these.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/fsl/ddr.txt   | 29 -------
 .../memory-controllers/fsl/fsl,ddr.yaml       | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/ddr.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/fsl,ddr.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/ddr.txt b/Documentation/devicetree/bindings/memory-controllers/fsl/ddr.txt
deleted file mode 100644
index dde6d837083a..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/fsl/ddr.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Freescale DDR memory controller
-
-Properties:
-
-- compatible	: Should include "fsl,chip-memory-controller" where
-		  chip is the processor (bsc9132, mpc8572 etc.), or
-		  "fsl,qoriq-memory-controller".
-- reg		: Address and size of DDR controller registers
-- interrupts	: Error interrupt of DDR controller
-- little-endian	: Specifies little-endian access to registers
-		  If omitted, big-endian will be used.
-
-Example 1:
-
-	memory-controller@2000 {
-		compatible = "fsl,bsc9132-memory-controller";
-		reg = <0x2000 0x1000>;
-		interrupts = <16 2 1 8>;
-	};
-
-
-Example 2:
-
-	ddr1: memory-controller@8000 {
-		compatible = "fsl,qoriq-memory-controller-v4.7",
-				"fsl,qoriq-memory-controller";
-		reg = <0x8000 0x1000>;
-		interrupts = <16 2 1 23>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,ddr.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,ddr.yaml
new file mode 100644
index 000000000000..af5147f9da72
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,ddr.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/fsl/fsl,ddr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale DDR memory controller
+
+maintainers:
+  - Borislav Petkov <bp@alien8.de>
+  - York Sun <york.sun@nxp.com>
+
+properties:
+  $nodename:
+    pattern: "^memory-controller@[0-9a-f]+$"
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - fsl,qoriq-memory-controller-v4.4
+              - fsl,qoriq-memory-controller-v4.5
+              - fsl,qoriq-memory-controller-v4.7
+              - fsl,qoriq-memory-controller-v5.0
+          - const: fsl,qoriq-memory-controller
+      - enum:
+          - fsl,bsc9132-memory-controller
+          - fsl,8540-memory-controller
+          - fsl,8541-memory-controller
+          - fsl,8544-memory-controller
+          - fsl,8548-memory-controller
+          - fsl,8555-memory-controller
+          - fsl,8568-memory-controller
+          - fsl,mpc8536-memory-controller
+          - fsl,mpc8540-memory-controller
+          - fsl,mpc8541-memory-controller
+          - fsl,mpc8544-memory-controller
+          - fsl,mpc8548-memory-controller
+          - fsl,mpc8555-memory-controller
+          - fsl,mpc8560-memory-controller
+          - fsl,mpc8568-memory-controller
+          - fsl,mpc8569-memory-controller
+          - fsl,mpc8572-memory-controller
+          - fsl,mpc8349-memory-controller
+          - fsl,p1020-memory-controller
+          - fsl,p1021-memory-controller
+          - fsl,p2020-memory-controller
+          - fsl,qoriq-memory-controller
+
+  interrupts:
+    maxItems: 1
+
+  little-endian:
+    description:
+      Specifies little-endian access to registers. If omitted, big-endian will
+      be used.
+    type: boolean
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    memory-controller@2000 {
+        compatible = "fsl,bsc9132-memory-controller";
+        reg = <0x2000 0x1000>;
+        interrupts = <16 2 1 8>;
+    };
+
+  - |
+    memory-controller@8000 {
+        compatible = "fsl,qoriq-memory-controller-v4.7",
+                     "fsl,qoriq-memory-controller";
+        reg = <0x8000 0x1000>;
+        interrupts = <16 2 1 23>;
+    };
-- 
2.30.2

