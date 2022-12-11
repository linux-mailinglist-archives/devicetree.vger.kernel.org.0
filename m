Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B55649223
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 03:57:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbiLKC5X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 21:57:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiLKC5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 21:57:21 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33E8913FB3
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 18:57:18 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AD0D285254;
        Sun, 11 Dec 2022 03:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670727437;
        bh=pBpfjlVlmoATMEK74U5czx03p5Yb70UkffH2+D4EWZc=;
        h=From:To:Cc:Subject:Date:From;
        b=w9WNcFPy+qLMUbqCNL5X12aS/PTh236dCGbzh2PYUiZcqy9icYKi/qNBgReIhgDh8
         EXLeTw0TNbYjNiSvp5/O8d+ObX6NKW5WMl1SAJzkU8ArXiVVjw8tUj5RYd3BFBGK0O
         dn0oC1jvy1LoTLp5iYESH8v5cYn8PFyU8GGa65NlRhyBN860hcJqAwyOeS1PuicUha
         7Ndcohnt2OAkitN2berU6UxbRt4djkefic0K/bxqV73ca8fkSxj+sO5ZR6VD9YIyUf
         LKMdPRp7Lax4SV+J092IAm/JK2PDziOZFUM0ezg8IsTMQ5B4hx4ONzjxYvGTGSUIxy
         bRpNNPgCmdnIQ==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: mxsfb: Document i.MX8M power-domains property
Date:   Sun, 11 Dec 2022 03:57:02 +0100
Message-Id: <20221211025702.672364-1-marex@denx.de>
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

The power-domains property is mandatory on i.MX8M Mini, Nano, Plus.
Document the property and mark it as required on the aforementioned
variants of the IP, present in those SoCs.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
To: devicetree@vger.kernel.org
---
 .../devicetree/bindings/display/fsl,lcdif.yaml     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 876015a44a1e6..31847efedd8f9 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -52,6 +52,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: The LCDIF output port
@@ -87,6 +90,17 @@ allOf:
           maxItems: 1
         clock-names:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8mm-lcdif
+              - fsl,imx8mn-lcdif
+              - fsl,imx8mp-lcdif
+    then:
+      required:
+        - power-domains
 
 examples:
   - |
-- 
2.35.1

