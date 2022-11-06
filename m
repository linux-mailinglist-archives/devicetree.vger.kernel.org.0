Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB8C61E6DC
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 23:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbiKFWZt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 17:25:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbiKFWZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 17:25:47 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4A4FAE6
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 14:25:45 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7609184576;
        Sun,  6 Nov 2022 23:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667773543;
        bh=Qf7Wpy7mcQmFNB1qxVFd1OuH0ex9tOqpQ8RTnF6DU1Q=;
        h=From:To:Cc:Subject:Date:From;
        b=y56ortILIhoVhdvsJ37YM00tXjnoLcp0tijpT9NkbtwU/Izj8K74FO+7msGoDzR8t
         5aECHyyZOv+GIg0Xgph2sYGYjADFxTAEoHNJ+bSX2ZzeGhrR2O44lmuzrjmA4cvX/n
         rrqQzJafaooEw6HURb3eYOw2JKCr4rSIhtC4SoMa8nEhSjAd4xS4Yva+ZWVoSzJIKg
         EgdKm2Y9g03nDnpKrDYnww7NTLDnvxWQ+cgSoZX9B0rXSCMJF5bW3RaEwJZQwDjlLc
         Q4NDBObvLu2nNRCtDPsMaI9/DIZi+0AMSUgCMD6YhRgvC5HornkEtBBHR+ng64tnEP
         ZmaDLAoH3sKwQ==
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
Subject: [PATCH v4 1/3] dt-bindings: imx6q-pcie: Handle various clock configurations
Date:   Sun,  6 Nov 2022 23:25:22 +0100
Message-Id: <20221106222524.223188-1-marex@denx.de>
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
V4: - Reinstate minItems: for clock-names in main section, turn the
      last two clock-names items into enums to cover all IP variants.
    - Add another allOf entry for mx6q/mx6qp/mx7d clock-names list.
    - Adjust clock maxItems in the allOf section.
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 73 +++++++++++++++++--
 1 file changed, 68 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 376e739bcad40..2df73be0ffbea 100644
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
@@ -60,8 +57,8 @@ properties:
     items:
       - const: pcie
       - const: pcie_bus
-      - const: pcie_phy
-      - const: pcie_inbound_axi for imx6sx-pcie, pcie_aux for imx8mq-pcie
+      - enum: [ pcie_phy, pcie_aux ]
+      - enum: [ pcie_aux, pcie_inbound_axi ]
 
   num-lanes:
     const: 1
@@ -177,6 +174,72 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6q-pcie
+              - fsl,imx6qp-pcie
+              - fsl,imx7d-pcie
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
+          contains:
+            const: fsl,imx6sx-pcie
+    then:
+      properties:
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
+        clocks:
+          maxItems: 3
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

