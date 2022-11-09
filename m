Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D566220B3
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 01:25:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbiKIAZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 19:25:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiKIAZK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 19:25:10 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E396524F14
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 16:25:08 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 159EC84DE8;
        Wed,  9 Nov 2022 01:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667953507;
        bh=arF2B5xrX7p9DkE0BfZr5UJuQ7U3WT2ORvkKxa69bi4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=aT9JlYwiM9RPP0ioij6bU53Knb/mvkSB3OZmPQEwmQH4yJv6bpip5E0sWyL/BVSku
         wI7vdME9nxXMU/v+SqxNORXbDR3qp8leNL+b8LR+H3/oNcFgudg5Xcy4ZAhFEQ55Nn
         K/9L/igUYcbO6ci0dGs0SHWjOGL8lNC+6/FSsT2JhqduCSI6gmSoH0eQc9SU/kQ48n
         tEu/aptwUDGmlsPCDmtJUJMDBcc4gTwnfMdgytYGa6wfdf1XSuYFUDfLFltaN6VffA
         YNL8JCk+kFhmmgIaKh+36KL9FYYov7yb9DuXIZeOTUENXrFCkZ+V1pAKtHyfqq79SO
         3+vPp7dV3vK0w==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v5 3/3] dt-bindings: imx6q-pcie: Handle more resets on legacy platforms
Date:   Wed,  9 Nov 2022 01:24:49 +0100
Message-Id: <20221109002449.35936-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221109002449.35936-1-marex@denx.de>
References: <20221109002449.35936-1-marex@denx.de>
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

The i.MX6 and i.MX7D does not use block controller to toggle PCIe
reset, hence the PCIe DT description contains three reset entries
on these older SoCs. Add this exception into the binding document.

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
V2: - Add mx8mq to 3-reset PCIe core variant
    - Handle the resets in allOf section
V3: - Reinstate reset: maxItems:3 and add minItems:2
    - Move reset-names back to main section
    - The validation no longer works and introduces errors like these:
      arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: reset-names:0: 'pciephy' was expected
V4: - Reinstate reset minItems and maxItems
    - Turn the first two reset-names items into enums to cover all
      the various name combinations, sort the rest in allOf section
V5: - Drop items from main section reset-names and add maxItems:3
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 35 ++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index b14c12a47cc1c..b6c2c87d00712 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -84,15 +84,14 @@ properties:
       - const: pcie_phy
 
   resets:
+    minItems: 2
     maxItems: 3
     description: Phandles to PCIe-related reset lines exposed by SRC
       IP block. Additional required by imx7d-pcie and imx8mq-pcie.
 
   reset-names:
-    items:
-      - const: pciephy
-      - const: apps
-      - const: turnoff
+    minItems: 2
+    maxItems: 3
 
   fsl,tx-deemph-gen1:
     description: Gen1 De-emphasis value (optional required).
@@ -283,6 +282,34 @@ allOf:
           maxItems: 1
         power-domain-names: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6q-pcie
+              - fsl,imx6sx-pcie
+              - fsl,imx6qp-pcie
+              - fsl,imx7d-pcie
+              - fsl,imx8mq-pcie
+    then:
+      properties:
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: pciephy
+            - const: apps
+            - const: turnoff
+    else:
+      properties:
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: apps
+            - const: turnoff
+
 examples:
   - |
     #include <dt-bindings/clock/imx6qdl-clock.h>
-- 
2.35.1

