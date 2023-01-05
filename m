Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9679965EEFC
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:42:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232541AbjAEOmF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233426AbjAEOmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:42:04 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D124B15F00
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:42:02 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0835E85248;
        Thu,  5 Jan 2023 15:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672929720;
        bh=P+0Qo4nN3rJriPnghe4osYRl64VJHMO2uLo+zGykihY=;
        h=From:To:Cc:Subject:Date:From;
        b=xQKP2ZUzr1dKjnQVQBshOI+e3BJCLgZaoQCaRuJLOjiqP0CsNoY318VqU3z9guiNb
         U0hYFpxTsyvyh/orYPWwo8QRFUAxzmNdW7e66VdPEoMhHga7yVXJdQbT9lw4SoUfPB
         flPn9IWUyFMhv4zCW67dw4QxAJMevtENvAItv4s0p2y8ue3t9x/bYSXY0wbrnxxnR7
         JxL4LT64cAMDfohdlE4HD9SdyQxqmA6cv3g2NQs2Ua6j0bP1g48Jv5b8R1pJtCIA5X
         k4fyjNdvfotxDaVZ4rvDUhXcfdFMosBUofHA5+dS70q7ahceoe4RlMY0p+Qn1OI/sK
         3jP+VjYsrH0Mg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] ASoC: dt-bindings: fsl-sai: Simplify the VFxxx dmas binding
Date:   Thu,  5 Jan 2023 15:41:44 +0100
Message-Id: <20230105144145.165010-1-marex@denx.de>
X-Mailer: git-send-email 2.39.0
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

Get rid of the vf610 sai special case, instead update the vfxxx.dtsi
DT to use the same DMA channel ordering as all the other devices. The
sai DMA channel ordering has not been aligned with other IP DMA channel
ordering in the vfxxx.dtsi anyway.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Joakim Zhang <qiangqing.zhang@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: Mark Brown <broonie@kernel.org>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 .../devicetree/bindings/sound/fsl,sai.yaml    | 38 ++++---------------
 1 file changed, 8 insertions(+), 30 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
index 7e56337d8edc1..088c26b001cc0 100644
--- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
@@ -76,10 +76,14 @@ properties:
         minItems: 4
 
   dmas:
-    maxItems: 2
+    items:
+      - description: DMA controller phandle and request line for RX
+      - description: DMA controller phandle and request line for TX
 
   dma-names:
-    maxItems: 2
+    items:
+      - const: rx
+      - const: tx
 
   interrupts:
     items:
@@ -142,31 +146,6 @@ properties:
 
 allOf:
   - $ref: dai-common.yaml#
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: fsl,vf610-sai
-    then:
-      properties:
-        dmas:
-          items:
-            - description: DMA controller phandle and request line for TX
-            - description: DMA controller phandle and request line for RX
-        dma-names:
-          items:
-            - const: tx
-            - const: rx
-    else:
-      properties:
-        dmas:
-          items:
-            - description: DMA controller phandle and request line for RX
-            - description: DMA controller phandle and request line for TX
-        dma-names:
-          items:
-            - const: rx
-            - const: tx
   - if:
       required:
         - fsl,sai-asynchronous
@@ -199,9 +178,8 @@ examples:
                  <&clks VF610_CLK_SAI2>,
                  <&clks 0>, <&clks 0>;
         clock-names = "bus", "mclk1", "mclk2", "mclk3";
-        dma-names = "tx", "rx";
-        dmas = <&edma0 0 21>,
-               <&edma0 0 20>;
+        dma-names = "rx", "tx";
+        dmas = <&edma0 0 20>, <&edma0 0 21>;
         big-endian;
         lsb-first;
     };
-- 
2.39.0

