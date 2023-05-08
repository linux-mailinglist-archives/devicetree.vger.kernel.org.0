Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249906FA0D4
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 09:18:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233006AbjEHHS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 03:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbjEHHSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 03:18:55 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF14F2109
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 00:18:52 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50bd875398dso6351274a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 00:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683530331; x=1686122331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=atNqsPfvueqsAUm0TF0GYTPzaWFE9LO4Ocq/fPwoUP0=;
        b=rtUKOFD3zXkx04nVHJaMe8Nz1n4dCY7pCxoYRo1LElU3wMXyCfGcRho7g6S3BLGX9V
         tFoTYFP2Lw7KdddWnLxZPFpJWPDMGCmk+SyZBFUogdVQAW0xOo7yZ+r6GJSyPM2ydhpP
         tazBvCT6Y3rMH2bN22A7Z0r2adAkn366U/A7BBss61XPryfoKrPd7/4hal95G6EkzE9n
         4I3Phk1tgr4RFuM3vb91kyqvHfq0Ae2fnZvXKXDdbC5teS2g8FgX1QzF/Whz7KoGidCm
         s3iuzSzddUUSAxfUiL24E/J77ZyrxZVKKxPH/rtrzjrSR1OdDUaV13Bkrvg1cvc/IPps
         fuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683530331; x=1686122331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=atNqsPfvueqsAUm0TF0GYTPzaWFE9LO4Ocq/fPwoUP0=;
        b=QZTPZbzROYpnlBrovzycMbsIXXUcqoCSvSR7+Q+WT7dlLfnZlVjU8H3TlstLBFrxZX
         TYS1dB+BFHBF0ZpZzijJGN4u5YnjI1JEfSRBh33MgS8lJobfLKL4hCd9V/7vSxIEYGG6
         uDCGhyG49U9izgUfhTltk2x5czGceH2TaIeQepw+bBLVyL9qVQpkN8xT8+asAuOM//3Q
         0vLKY1WdBOn7eoLjeQ/z2Kc2iJWO/T8r2iJb6yGqWQpmOpQAUMtqLJbeHLyysH2nm0wd
         cp6hMDCvAZ3iraYEQFgs+QBZzUi9spSB4MGaBi5xpzzKf86AZy5mattjikPhF+WdtMuw
         bWPw==
X-Gm-Message-State: AC+VfDzCsDQtUDnPCssPNThu4xExoaVRk67Hl0Yz7U8cgR7mwsH8scq0
        5YQ3RD5Q1Uh8IFvELlXMIYEiAg==
X-Google-Smtp-Source: ACHHUZ7I/dUC6NleCsonItpf6sLSEd41SmA/IpXRCHKlckud85DsLnKIOoqGY08YSNFfSgyngMsAjw==
X-Received: by 2002:a17:907:9716:b0:966:350f:f43b with SMTP id jg22-20020a170907971600b00966350ff43bmr4348396ejc.9.1683530331332;
        Mon, 08 May 2023 00:18:51 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id hx8-20020a170906846800b009659ecdf29fsm4597015ejc.1.2023.05.08.00.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 00:18:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH fixes] dt-bindings: PCI: fsl,imx6q: fix assigned-clocks warning
Date:   Mon,  8 May 2023 09:18:37 +0200
Message-Id: <20230508071837.68552-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

assigned-clocks are a dependency of clocks, however the dtschema has
limitation and expects clocks to be present in the binding using
assigned-clocks, not in other referenced bindings.  The clocks were
defined in common fsl,imx6q-pcie-common.yaml, which is referenced by fsl,imx6q-pcie-ep.yaml.  The fsl,imx6q-pcie-ep.yaml used assigned-clocks thus leading to warnings:

  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.example.dtb: pcie-ep@33800000:
    Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
  From schema: Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml

Fix this by moving clocks to each specific schema from the common one
and narrowing them to strictly match what is expected for given device.

Fixes: b10f82380eeb ("dt-bindings: imx6q-pcie: Restruct i.MX PCIe schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Patch for current cycle (v6.4-rc).   Please take directly as fixes or
let me know, so I will send it to Linus.
---
 .../bindings/pci/fsl,imx6q-pcie-common.yaml   | 13 +---
 .../bindings/pci/fsl,imx6q-pcie-ep.yaml       | 38 +++++++++
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 77 +++++++++++++++++++
 3 files changed, 117 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
index 9bff8ecb653c..d91b639ae7ae 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
@@ -17,20 +17,11 @@ description:
 properties:
   clocks:
     minItems: 3
-    items:
-      - description: PCIe bridge clock.
-      - description: PCIe bus clock.
-      - description: PCIe PHY clock.
-      - description: Additional required clock entry for imx6sx-pcie,
-           imx6sx-pcie-ep, imx8mq-pcie, imx8mq-pcie-ep.
+    maxItems: 4
 
   clock-names:
     minItems: 3
-    items:
-      - const: pcie
-      - const: pcie_bus
-      - enum: [ pcie_phy, pcie_aux ]
-      - enum: [ pcie_inbound_axi, pcie_aux ]
+    maxItems: 4
 
   num-lanes:
     const: 1
diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
index f4a328ec1daa..ee155ed5f181 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
@@ -31,6 +31,19 @@ properties:
       - const: dbi
       - const: addr_space
 
+  clocks:
+    minItems: 3
+    items:
+      - description: PCIe bridge clock.
+      - description: PCIe bus clock.
+      - description: PCIe PHY clock.
+      - description: Additional required clock entry for imx6sx-pcie,
+           imx6sx-pcie-ep, imx8mq-pcie, imx8mq-pcie-ep.
+
+  clock-names:
+    minItems: 3
+    maxItems: 4
+
   interrupts:
     items:
       - description: builtin eDMA interrupter.
@@ -49,6 +62,31 @@ required:
 allOf:
   - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
   - $ref: /schemas/pci/fsl,imx6q-pcie-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx8mq-pcie-ep
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_phy
+            - const: pcie_aux
+    else:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_aux
+
 
 unevaluatedProperties: false
 
diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 2443641754d3..81bbb8728f0f 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -40,6 +40,19 @@ properties:
       - const: dbi
       - const: config
 
+  clocks:
+    minItems: 3
+    items:
+      - description: PCIe bridge clock.
+      - description: PCIe bus clock.
+      - description: PCIe PHY clock.
+      - description: Additional required clock entry for imx6sx-pcie,
+           imx6sx-pcie-ep, imx8mq-pcie, imx8mq-pcie-ep.
+
+  clock-names:
+    minItems: 3
+    maxItems: 4
+
   interrupts:
     items:
       - description: builtin MSI controller.
@@ -77,6 +90,70 @@ required:
 allOf:
   - $ref: /schemas/pci/snps,dw-pcie.yaml#
   - $ref: /schemas/pci/fsl,imx6q-pcie-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx6sx-pcie
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_phy
+            - const: pcie_inbound_axi
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx8mq-pcie
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_phy
+            - const: pcie_aux
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx6q-pcie
+            - fsl,imx6qp-pcie
+            - fsl,imx7d-pcie
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_phy
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx8mm-pcie
+            - fsl,imx8mp-pcie
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_aux
 
 unevaluatedProperties: false
 
-- 
2.34.1

