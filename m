Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17BB161E6DD
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 23:25:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbiKFWZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 17:25:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbiKFWZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 17:25:47 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 587F5FADD
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 14:25:45 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1638084C36;
        Sun,  6 Nov 2022 23:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667773543;
        bh=1xgyqXWQfpkqHvlL9c01hLqNXSCsKsA2h41m/I00J9g=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=xeaikqVUWixnDXwHPXARc0bQwkc+d3i49xMGhlLJZcwYypIsizp1RYMkLJXWYbRhe
         Gxxeb9ntg3X2y9OY6Vpi2RuReYlrhdH+LoRIbsN1qVU5ojbG9vqy582DyWyaXqar7p
         xZvFiHHyCcFVyce66+4cF3lWXKoqCWriNfE9wvmtkkqPALdPieePYXltFx9dIacUnT
         Ehl9RlR2hmXn+Jna2hxxfizwi2jIna1R901mPkV3oUU4F1+v2M8a8rvHfpicOFAYDC
         6yLXVoic4dmMjy0/2NpO+Ma3/jqPLDzFq1/rK8RCZv+dDoZremHlrtliJR26w5WK51
         WinsvNRn0QtiA==
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
Subject: [PATCH v4 2/3] dt-bindings: imx6q-pcie: Handle various PD configurations
Date:   Sun,  6 Nov 2022 23:25:23 +0100
Message-Id: <20221106222524.223188-2-marex@denx.de>
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

The i.MX SoCs have various power domain configurations routed into
the PCIe IP. MX6SX is the only one which contains 2 domains and also
uses power-domain-names. MX6QDL do not use any domains. All the rest
uses one domain and does not use power-domain-names anymore.

Document all those configurations in the DT binding document.

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
V2: - Keep the power-domains description in the main section
V3: - Move power-domains back where they were originally (fixes V2)
    - Do not use else: in allOf section
V4: - Special-case MX6Q and MX6QP in allOf section since they dont use PDs
    - Drop minItems: from power-domains main section
    - Handle anything which is not MX6SX,MX6Q,MX6QP as having one PD
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 2df73be0ffbea..b14c12a47cc1c 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -69,6 +69,7 @@ properties:
       required properties for imx7d-pcie and imx8mq-pcie.
 
   power-domains:
+    minItems: 1
     items:
       - description: The phandle pointing to the DISPLAY domain for
           imx6sx-pcie, to PCIE_PHY power domain for imx7d-pcie and
@@ -77,6 +78,7 @@ properties:
           for imx6sx-pcie.
 
   power-domain-names:
+    minItems: 1
     items:
       - const: pcie
       - const: pcie_phy
@@ -240,6 +242,47 @@ allOf:
             - const: pcie_bus
             - const: pcie_aux
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-pcie
+    then:
+      properties:
+        power-domains:
+          minItems: 2
+          maxItems: 2
+        power-domain-names:
+          minItems: 2
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6q-pcie
+              - fsl,imx6qp-pcie
+    then:
+      properties:
+        power-domains: false
+        power-domain-names: false
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - fsl,imx6sx-pcie
+                - fsl,imx6q-pcie
+                - fsl,imx6qp-pcie
+    then:
+      properties:
+        power-domains:
+          maxItems: 1
+        power-domain-names: false
+
 examples:
   - |
     #include <dt-bindings/clock/imx6qdl-clock.h>
-- 
2.35.1

