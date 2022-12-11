Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D35764920C
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 03:49:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbiLKCtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 21:49:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiLKCtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 21:49:20 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9315013F2F
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 18:49:19 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C790285334;
        Sun, 11 Dec 2022 03:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670726957;
        bh=9EDrUk/FXDakhvKu4hHdaikk6s+VBFhmtOLNXsXsZyw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=iiA5JGjZ6RnX8qiYt1GGhY07KQ+9wE5EKMg+sPYdhRMOtGzDtxXvsK/okWUbV+fFz
         lTrp/NmKDrnoUfOYgBHIgjJA4+Vi2IwmLJ1zkqkl2f6QrvE6kvDn0Ds08irdf/36d+
         fC4mudgIAHhguK9JE+OfTBXvUqMKT/y++iQUGhZN/EexflAfypOa5gvnAUfAwYWzsG
         aEGw5ic4m7ROaan2XaLW/vvsygopOoqgtwEfpYpk03FKlPy7i2Y+pZ9dcXrgwgIglN
         D84TMx+ZnxOy2V0H4uqQmxagLv1hTFuT8h+TfHplw5IoOjFXe2v2ezMCrpK9SA1+tq
         In0eMunElxN8g==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v6 3/3] dt-bindings: imx6q-pcie: Handle more resets on legacy platforms
Date:   Sun, 11 Dec 2022 03:48:59 +0100
Message-Id: <20221211024859.672076-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221211024859.672076-1-marex@denx.de>
References: <20221211024859.672076-1-marex@denx.de>
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
V6: - Add RB from Krzysztof
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 35 ++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index b434a1949b9ae..1a0ea9d3eaa43 100644
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
@@ -324,6 +323,34 @@ allOf:
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

