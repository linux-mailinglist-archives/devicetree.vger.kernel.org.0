Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D131E64920A
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 03:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbiLKCtU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 21:49:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbiLKCtT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 21:49:19 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D77B13F27
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 18:49:18 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id BA7AE852FB;
        Sun, 11 Dec 2022 03:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670726956;
        bh=ufeeitNOLFjVu+vM04bIPjIkphSFWPOp3r4kp9kg0+g=;
        h=From:To:Cc:Subject:Date:From;
        b=geIjLOEBAImxGGw9oXDbBrW0V+2L+BYRMxj9EFTwgjXyaLxZov4bQcgF3qqEyaqYC
         S19bFl9UvDToE54RgyVkR1IbJHN0ZlhWW8n1YcLCXlLbGliamX7CEHjLb/FRCjSa1g
         jjvpJk4pYXlLhVWMD5+XpBWC9cbI/5z2RuFJtB0UM859T7lo7cxlSw0+1uuRcwxx3J
         ySB3g6/YXfZ/C/CyuZ9WUayyW+1gqFYkKEm3LJPvQXsMGqlidTSwBdjdVzAMDi9Mur
         A4tqEBkya8NrWQFZk01XU1POWR4asrxZSe3z3U66pPDcxzz76RX6VNxC4gSHildDaa
         zLOK2jsxGRcCA==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v6 1/3] dt-bindings: imx6q-pcie: Handle various clock configurations
Date:   Sun, 11 Dec 2022 03:48:57 +0100
Message-Id: <20221211024859.672076-1-marex@denx.de>
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

Reviewed-by: Rob Herring <robh@kernel.org>
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
V5: - No change
V6: - Add RB from Rob
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 70 ++++++++++++++++++-
 1 file changed, 68 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 49b4f7a32e71e..bfb9502d9fc0b 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -57,8 +57,8 @@ properties:
     items:
       - const: pcie
       - const: pcie_bus
-      - const: pcie_phy
-      - enum: [ pcie_inbound_axi, pcie_aux ]
+      - enum: [ pcie_phy, pcie_aux ]
+      - enum: [ pcie_aux, pcie_inbound_axi ]
 
   num-lanes:
     const: 1
@@ -215,6 +215,72 @@ allOf:
 
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

