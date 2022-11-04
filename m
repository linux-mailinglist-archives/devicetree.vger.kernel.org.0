Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A5EC619E0F
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 18:04:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbiKDREr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 13:04:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbiKDREh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 13:04:37 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD88B3E0AA
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 10:04:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 409378511D;
        Fri,  4 Nov 2022 18:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667581472;
        bh=oRSfJ+CFmuIkU4hdVYo3jr2kK1Z2N8/mcWrd9UAcLAc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=sTw3JIiBN3q+EXfQWkrZAe2NcaD5G3b+MpyRbbNAvW/lh87rnV7H/Quzbz5NuoVLF
         WGuups0aYUhPpS4B3wQITOvBuPFpXZ8QZEeRCCKRn+zOM1tT9E/Bd28ItO6qmccBfd
         EPWjRnecEQikhxzsNBsdMXKp95B8/+HZhUTZGN9+7ya8ix/Oddda7Xe1KGuOWxQYdy
         FrFA8ir+Qfv9CES3QHAtVFKA9618LDIqy74UnEwwzGh54E2V6uweo0Iv5vEPahu/mR
         blKO5sT+z63VJKDU9mS/IuESmFHRdT0HUDY9pZAKqKwFBlfMjYa6Qq43p1ledwFiLD
         ChI1fO+bBSiOA==
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
Subject: [RFC][PATCH v3 3/3] dt-bindings: imx6q-pcie: Handle more resets on legacy platforms
Date:   Fri,  4 Nov 2022 18:04:17 +0100
Message-Id: <20221104170417.232132-3-marex@denx.de>
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
---
 .../bindings/pci/fsl,imx6q-pcie.yaml          | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 5d731aca34b4d..44a1404cbc2c0 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -80,11 +80,13 @@ properties:
       - const: pcie_phy
 
   resets:
+    minItems: 2
     maxItems: 3
     description: Phandles to PCIe-related reset lines exposed by SRC
       IP block. Additional required by imx7d-pcie and imx8mq-pcie.
 
   reset-names:
+    minItems: 2
     items:
       - const: pciephy
       - const: apps
@@ -251,6 +253,29 @@ allOf:
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
+        reset-names:
+          maxItems: 3
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

