Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 778F764B5F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:20:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235168AbiLMNUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:20:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbiLMNUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:20:17 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FDCFCE5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:20:17 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 77E84830FA;
        Tue, 13 Dec 2022 14:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670937615;
        bh=Na3UR+OCkTF7xCKnVTZCtpUk8C7PMPrwfu/gPFvMoN4=;
        h=From:To:Cc:Subject:Date:From;
        b=O2MkF7JGwmOnuG1kvposuhwQEsBSqM9LZRaRU+Y3zGDYgVpyBWOP9jWDZip9aC7B2
         xlC8UeX8sGnoeMvEYoO7Iv04FK/wQG4CJK4FXEKEXH6kujI4RaTar3LRcMoWpnaRBg
         sJrt2RLL0mNUE2aTEtdg+pr+CUB1rnnlOKKR8Pm5gwIIignXOFpi68HvTOBSWCiuB6
         IbIRGLV+2w3zTXZ7wj0HNX0lwzGNOUdvGcv5j81e58qm6+siqHaWegpgtZQrj2/fFY
         PQUuYpmtaufRjgZndXsKumPHMmq4jn5y7gGTVQdNxpuanAToIO8OoLYC03ty1lFFWv
         dTobmRHPxrFPQ==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL power-domains property
Date:   Tue, 13 Dec 2022 14:20:06 +0100
Message-Id: <20221213132006.6446-1-marex@denx.de>
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
V4: - Drop ack from Krzysztof
    - Rebase on next 20221213 instead of previous 20221208, which now
      contains power-domains: part of this patch
V5: - Drop power-domains from MX8MP/MX6SX entry
---
 .../devicetree/bindings/display/fsl,lcdif.yaml    | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index f449cfc767899..75b4efd70ba85 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -99,7 +99,6 @@ allOf:
           maxItems: 3
       required:
         - clock-names
-        - power-domains
   - if:
       not:
         properties:
@@ -114,6 +113,19 @@ allOf:
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
@@ -128,6 +140,7 @@ examples:
                  <&clks IMX6SX_CLK_LCDIF_APB>,
                  <&clks IMX6SX_CLK_DISPLAY_AXI>;
         clock-names = "pix", "axi", "disp_axi";
+        power-domains = <&pd_disp>;
 
         port {
             endpoint {
-- 
2.35.1

