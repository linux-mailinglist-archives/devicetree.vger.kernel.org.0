Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9658A6498B1
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 06:51:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230427AbiLLFvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 00:51:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiLLFvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 00:51:53 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BCA626C7
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 21:51:51 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C2BDB852C4;
        Mon, 12 Dec 2022 06:51:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670824309;
        bh=ZndLeltJuiFs8Zg4ydab+sBTWMIECwKCK9FzMcCrjLA=;
        h=From:To:Cc:Subject:Date:From;
        b=x3zSgRkxyEYjI5Y5sfi/Pntd28byV61Q9UZ6ikfIp9zA4eTQpZGP+xwsy0Ob0ZKww
         zr48YFD2jzeDpoNlMV/tMrDL9MS/8p+JnaVSVBbByl60oQVqY+RfsGXcJGnaYLu2lK
         e+VfqeniKVe3txfC914fFSfk1zSbKqmDmJ8e0aX6mUHlyzHoSv+RJQCFqLNuqHjce4
         x9W0rq/TEagotEc1omnslmImRa+ODefhYKueTujEaVUksRbINZHS2TaWzJ/VfPHUKr
         TnXPqIaTUPmSQLnlA1+u8llmUvRoVS60iBdkFWMGvrBEJRKbXMCvvT4SnDrIPAGA7o
         +BLumOBQ2oG0w==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL power-domains property
Date:   Mon, 12 Dec 2022 06:51:37 +0100
Message-Id: <20221212055137.270638-1-marex@denx.de>
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

The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
and i.MX6SX, i.MX6SL. Document the property and mark it as required
on the aforementioned variants of the IP, present in those SoCs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liu Ying <victor.liu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
To: devicetree@vger.kernel.org
---
V2: - Add AB from Krzysztof
    - Add mx6sx power domain into the list
V3: - Update commit message
    - Add i.MX6SL
    - Update example
---
 .../devicetree/bindings/display/fsl,lcdif.yaml  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 876015a44a1e6..1f17be501749b 100644
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
@@ -87,6 +90,19 @@ allOf:
           maxItems: 1
         clock-names:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sx-lcdif
+              - fsl,imx8mm-lcdif
+              - fsl,imx8mn-lcdif
+              - fsl,imx8mp-lcdif
+    then:
+      required:
+        - power-domains
 
 examples:
   - |
@@ -101,6 +117,7 @@ examples:
                  <&clks IMX6SX_CLK_LCDIF_APB>,
                  <&clks IMX6SX_CLK_DISPLAY_AXI>;
         clock-names = "pix", "axi", "disp_axi";
+        power-domains = <&pd_disp>;
 
         port {
             endpoint {
-- 
2.35.1

