Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D784A64B5BD
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbiLMNHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:07:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234490AbiLMNHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:07:30 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B2921EADF
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:07:28 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C073285479;
        Tue, 13 Dec 2022 14:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670936847;
        bh=Lrn98CS36XrdYK3Uoa35LZcdvG9k9IkQRhoOWFlDDW8=;
        h=From:To:Cc:Subject:Date:From;
        b=YGhtVgRhyj7nVhbdWUmwbdp6JBL2dobBCi/iD98zvHvj+i9qNNinBWR7kA3MJNmdR
         kdSsovVfjJYmLGauM6ZNoKHlYchEoTMbSewjdJh6lZq13hHCGYl4vCCpzVSSyzu5Aj
         W6C8Y17Zn+p+vQqLN/e4qUWUkQeiDvNiFfO/1OwelD8HIkh+VsmSQk7qc1Gcp1dqqA
         AQMxB2BHeYumghGQXSpDctdx48NIoxq6doNlNyFxWVnSv9wzDqPRBqMpZJrHUR+dFe
         UTXMj3ArYUwVInbygbaC9ssjsEfIROXSL00PAlaKGyJcHOW2Cdu7rFHMknFSHoBAp3
         0jBbk9/xrUlSg==
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
Subject: [PATCH v4] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL power-domains property
Date:   Tue, 13 Dec 2022 14:07:18 +0100
Message-Id: <20221213130718.5899-1-marex@denx.de>
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
---
 .../devicetree/bindings/display/fsl,lcdif.yaml     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index f449cfc767899..fd5aab93dd103 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -114,6 +114,19 @@ allOf:
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
@@ -128,6 +141,7 @@ examples:
                  <&clks IMX6SX_CLK_LCDIF_APB>,
                  <&clks IMX6SX_CLK_DISPLAY_AXI>;
         clock-names = "pix", "axi", "disp_axi";
+        power-domains = <&pd_disp>;
 
         port {
             endpoint {
-- 
2.35.1

