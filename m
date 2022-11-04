Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98AB6619728
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232007AbiKDNLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231856AbiKDNLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:11:00 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F932EF1E
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:10:57 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 48E1385257;
        Fri,  4 Nov 2022 14:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667567455;
        bh=IaHDSmq+yS0i1fvikq744Z4F1ikkf/U8WfGkfOAf/Yo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CvH/g6GhaTCFinzTZoB22lfYv1A91BAfJjD59zRZQLlvh7XT791oFWTKPtBETIlsL
         4oxxILKk1Px6dfqFe+FlKEQ4Zph5vfx7aj0MjHhMnuvtz3XneP5bdvXtUeeGiRQh7V
         iJ+UCAoOBI2nNk+Lh3vQmcBZwopF4v70rN3ugkEryYXZvArBA7f0TIsHIjTi1doZHr
         5ct1jr7VGzXub4OzKmWD7siCWu3OTyUFVySPLpAhXuelVutzoU+650fisfyn9qgpvA
         UKoaPmigBvVRfkDHasFkltRB2LByCo6N+Oi33kk19THM/UG5yTXnPGSu4sIefqNNzx
         uUImhjKXBbAiQ==
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
Subject: [PATCH v2 3/3] dt-bindings: imx6q-pcie: Handle more resets on legacy platforms
Date:   Fri,  4 Nov 2022 14:10:44 +0100
Message-Id: <20221104131044.103241-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104131044.103241-1-marex@denx.de>
References: <20221104131044.103241-1-marex@denx.de>
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
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 35 +++++++++++++++----
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 2087dab95d679..f461ee2cd5c84 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -69,16 +69,9 @@ properties:
       required properties for imx7d-pcie and imx8mq-pcie.
 
   resets:
-    maxItems: 3
     description: Phandles to PCIe-related reset lines exposed by SRC
       IP block. Additional required by imx7d-pcie and imx8mq-pcie.
 
-  reset-names:
-    items:
-      - const: pciephy
-      - const: apps
-      - const: turnoff
-
   fsl,tx-deemph-gen1:
     description: Gen1 De-emphasis value (optional required).
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -270,6 +263,34 @@ allOf:
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
+          maxItems: 3
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

