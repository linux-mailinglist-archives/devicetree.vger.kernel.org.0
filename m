Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E64DA619E10
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 18:04:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231634AbiKDREs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 13:04:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbiKDREh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 13:04:37 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCDFF3E09F
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 10:04:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7799E85045;
        Fri,  4 Nov 2022 18:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667581471;
        bh=0ufUAIKGB6SLx2RNSpHBG4ZxSPKRl5BxwyxjCEvpJpw=;
        h=From:To:Cc:Subject:Date:From;
        b=Y7gVM1ynUJAHOF6kMyuzYNwqkWC/mU6sLisL2RmZs3iq9G+bUFLIjXBnzciUb6ZYH
         AkfsPwYvb44UFTa6KbJ0M9A4dcojZRGlvkAjxsAG7mwCI1caDFx+5vKmgoWjPrMsSt
         9O87Casy3fIPjkPw9hqahKJCj0vHZ4OXMXLO/IFlZqeMNvSIFWeqS7GVREH8QC9gt2
         2Z9YNkA/QWnUD6Ydv7gQfPskMp+TJ1TsrqXdocZf+QKQ1RzZPSvD8HA7nyxOmBO+kH
         FG+SqSC24NZzb5QjxA4XRwXwM46khG+ZmH5TJzG5AgpPD0AlrVGkZQydTY/eAw+OMd
         sOpNW3w7oDjJA==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [RFC][PATCH v3 1/3] dt-bindings: imx6q-pcie: Handle various clock configurations
Date:   Fri,  4 Nov 2022 18:04:15 +0100
Message-Id: <20221104170417.232132-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX SoCs have various clock configurations routed into the PCIe IP,
the list of clock is below. Document all those configurations in the DT
binding document.

All SoCs: pcie, pcie_bus
6QDL, 7D: + pcie_phy
6SX:      + pcie_phy          pcie_inbound_axi
8MQ:      + pcie_phy pcie_aux
8MM, 8MP: +          pcie_aux

Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: NXP Linux Team <linux-imx@nxp.com>
To: devicetree@vger.kernel.org
---
V2: - Add AB from Alex
V3: - Duplicate clock-names maxItems to mx6sx and mx8mq compatibles
    - Flatten the if-else structure
    - The validation no longer works and introduces errors like these:
      arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: clock-names:2: 'pcie_phy' was expected
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 55 +++++++++++++++++--
 1 file changed, 50 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 376e739bcad40..44c65d3ec07b9 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -14,9 +14,6 @@ description: |+
   This PCIe host controller is based on the Synopsys DesignWare PCIe IP
   and thus inherits all the common properties defined in snps,dw-pcie.yaml.
 
-allOf:
-  - $ref: /schemas/pci/snps,dw-pcie.yaml#
-
 properties:
   compatible:
     enum:
@@ -56,12 +53,10 @@ properties:
           imx8mq-pcie.
 
   clock-names:
-    minItems: 3
     items:
       - const: pcie
       - const: pcie_bus
       - const: pcie_phy
-      - const: pcie_inbound_axi for imx6sx-pcie, pcie_aux for imx8mq-pcie
 
   num-lanes:
     const: 1
@@ -177,6 +172,56 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-pcie
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
+          contains:
+            const: fsl,imx8mq-pcie
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
+          contains:
+            enum:
+              - fsl,imx8mm-pcie
+              - fsl,imx8mp-pcie
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+            - const: pcie_aux
+
 examples:
   - |
     #include <dt-bindings/clock/imx6qdl-clock.h>
-- 
2.35.1

