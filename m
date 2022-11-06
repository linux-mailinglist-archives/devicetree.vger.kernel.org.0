Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58BE861E6DB
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 23:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiKFWZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 17:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230112AbiKFWZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 17:25:47 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57BC2FACB
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 14:25:45 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6F0DC84CB2;
        Sun,  6 Nov 2022 23:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667773543;
        bh=6HMYLNzS6hiuEbEeV/hiMaMt4431AzHnBB/XVh36REo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=IhlEl/LS0KePNJVhCjuzGmvKAj6Rq8frOT0ub0KA4Fxo5TMp+cLbgxpbf1rhDsjOX
         BAw8Lg+qRWBRe4VmfHHOqI2vpi4MXEPeCvHH1GmIx2FsF6Qtdxf9kwpnK9s3uoCJCu
         hYk9/eB6IA+6EtsxlsosKi/P4SDejeup4xdijVjNlTx7YUORHJeMmJ5FkNLd9qTloN
         UaeIM69Z9CEW/ZXdShWWXxJn9gikJtQb6GhAei9I6pKL57reAkKbgINAIi5HwQ9lNN
         oqEn2URL58+bVUJZHuc/4e3KJlRaxmJa4HzdwQ/ZBjfHru5JId7WLrR0GvJSjGv7O/
         QeDqUXnQKzjiQ==
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
Subject: [PATCH v4 3/3] dt-bindings: imx6q-pcie: Handle more resets on legacy platforms
Date:   Sun,  6 Nov 2022 23:25:24 +0100
Message-Id: <20221106222524.223188-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221106222524.223188-1-marex@denx.de>
References: <20221106222524.223188-1-marex@denx.de>
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
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 34 +++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index b14c12a47cc1c..46fc29384ed34 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -84,14 +84,16 @@ properties:
       - const: pcie_phy
 
   resets:
+    minItems: 2
     maxItems: 3
     description: Phandles to PCIe-related reset lines exposed by SRC
       IP block. Additional required by imx7d-pcie and imx8mq-pcie.
 
   reset-names:
+    minItems: 2
     items:
-      - const: pciephy
-      - const: apps
+      - enum: [ pciephy, apps ]
+      - enum: [ apps, turnoff ]
       - const: turnoff
 
   fsl,tx-deemph-gen1:
@@ -283,6 +285,34 @@ allOf:
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

