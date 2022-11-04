Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA52D619E0E
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 18:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbiKDREn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 13:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231642AbiKDREh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 13:04:37 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD7B73E0A9
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 10:04:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DFE2C85104;
        Fri,  4 Nov 2022 18:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667581472;
        bh=geN+wVjcBPzFeAfG5gw1RT6bEJ7JCjypfMmhfOAcuUY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=WoM7+BX89eMEn/o32idgpgXJcT3RqEPxHPuCQIwB6SsKtF8gko+z//M/3lloaEOac
         69/+k6ErvbhTnk8kpW+MFaY1LQ6kmV07pdhYYjarPME5dQhsolOvhlgR47Fs55z0Yy
         DVIQOrtUfrgkWXBuCMSMyyuSrQd/THDb7jXhKhceyOhh8i32EksYgoYIqImu//l1i5
         GYbk5S7r86tLWmDMJS72EyeJ1DIYZ+59APEs3RQdTjYM7Sm0ERQtLDKzkf53qSmNa+
         CH52Uo/CybvOGYzysxrdmIrfDYdl7u/1PwN8T0dzwhLb2cZL8bJPUc8lWDfbRSpgBZ
         s6d+08xDPc9rg==
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
Subject: [RFC][PATCH v3 2/3] dt-bindings: imx6q-pcie: Handle various PD configurations
Date:   Fri,  4 Nov 2022 18:04:16 +0100
Message-Id: <20221104170417.232132-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104170417.232132-1-marex@denx.de>
References: <20221104170417.232132-1-marex@denx.de>
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
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 44c65d3ec07b9..5d731aca34b4d 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -67,13 +67,13 @@ properties:
       required properties for imx7d-pcie and imx8mq-pcie.
 
   power-domains:
+    minItems: 1
     items:
       - description: The phandle pointing to the DISPLAY domain for
           imx6sx-pcie, to PCIE_PHY power domain for imx7d-pcie and
           imx8mq-pcie.
       - description: The phandle pointing to the PCIE_PHY power domains
           for imx6sx-pcie.
-
   power-domain-names:
     items:
       - const: pcie
@@ -222,6 +222,35 @@ allOf:
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
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - fsl,imx6q-pcie
+                - fsl,imx6qp-pcie
+    then:
+      properties:
+        power-domains:
+          minItems: 1
+          maxItems: 1
+        power-domain-names: false
+
 examples:
   - |
     #include <dt-bindings/clock/imx6qdl-clock.h>
-- 
2.35.1

