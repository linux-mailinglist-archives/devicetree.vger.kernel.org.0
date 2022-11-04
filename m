Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89A9E619C77
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 17:03:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232230AbiKDQDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 12:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232229AbiKDQDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 12:03:33 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5BDD26E0
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 09:03:30 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id CD11B85240;
        Fri,  4 Nov 2022 17:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667577809;
        bh=kiR4euSdQwIl+MZxkiOMePFGV+vs3O4ipYS8iMd8u10=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=mK/Qxp0xTisVdl9WhCqqXs3u2oCqMZ9gSDMzr0gpVgJg8FTMeqwAapL/I9wPce7Nb
         TEGhlcoRZE2lkfYy/hA+VZaVGeWpFEZYMOLtLv6y5QOTB7QrfyS37G03YmPbVdAf0j
         JEnTW79riqFYFWmEDpd762TRjQ03FcQKeZ0iMxK3b+35KIJCa2qFddcJii9WE7wIuI
         RsYLlXAZxWkladW1VFNNZxmm6D/joROKi33JS5UoCybogSxlGOWXK2oWergiLhUMX5
         jp9H3GuNN80AhtLSankfNEgcjgMhRTB5v1lfzgArK+R6LS0xQGF6JMyMmoialoFM0x
         oyzm1L9VAZ0Pw==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
Subject: [PATCH 3/3] ASoC: dt-bindings: fsl-sai: Sort main section properties
Date:   Fri,  4 Nov 2022 17:03:15 +0100
Message-Id: <20221104160315.213836-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104160315.213836-1-marex@denx.de>
References: <20221104160315.213836-1-marex@denx.de>
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

Sort main section properties, no functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Nicolin Chen <nicoleotsuka@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Xiubo Li <Xiubo.Lee@gmail.com>
Cc: alsa-devel@alsa-project.org
To: devicetree@vger.kernel.org
---
 .../devicetree/bindings/sound/fsl,sai.yaml    | 72 +++++++++----------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
index 59a13cd0887e9..022da1f4583d6 100644
--- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
@@ -43,16 +43,6 @@ properties:
   reg:
     maxItems: 1
 
-  interrupts:
-    items:
-      - description: receive and transmit interrupt
-
-  dmas:
-    maxItems: 2
-
-  dma-names:
-    maxItems: 2
-
   clocks:
     items:
       - description: The ipg clock for register access
@@ -84,19 +74,37 @@ properties:
           - const: pll11k
         minItems: 4
 
-  lsb-first:
-    description: |
-      Configures whether the LSB or the MSB is transmitted
-      first for the fifo data. If this property is absent,
-      the MSB is transmitted first as default, or the LSB
-      is transmitted first.
-    type: boolean
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    maxItems: 2
+
+  interrupts:
+    items:
+      - description: receive and transmit interrupt
 
   big-endian:
     description: |
       required if all the SAI registers are big-endian rather than little-endian.
     type: boolean
 
+  fsl,dataline:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    description: |
+      Configure the dataline. It has 3 value for each configuration
+    maxItems: 16
+    items:
+      items:
+        - description: format Default(0), I2S(1) or PDM(2)
+          enum: [0, 1, 2]
+        - description: dataline mask for 'rx'
+        - description: dataline mask for 'tx'
+
+  fsl,sai-mclk-direction-output:
+    description: SAI will output the SAI MCLK clock.
+    type: boolean
+
   fsl,sai-synchronous-rx:
     description: |
       SAI will work in the synchronous mode (sync Tx with Rx) which means
@@ -115,26 +123,18 @@ properties:
       of transmitter.
     type: boolean
 
-  fsl,dataline:
-    $ref: /schemas/types.yaml#/definitions/uint32-matrix
-    description: |
-      Configure the dataline. It has 3 value for each configuration
-    maxItems: 16
-    items:
-      items:
-        - description: format Default(0), I2S(1) or PDM(2)
-          enum: [0, 1, 2]
-        - description: dataline mask for 'rx'
-        - description: dataline mask for 'tx'
-
-  fsl,sai-mclk-direction-output:
-    description: SAI will output the SAI MCLK clock.
-    type: boolean
-
   fsl,shared-interrupt:
     description: Interrupt is shared with other modules.
     type: boolean
 
+  lsb-first:
+    description: |
+      Configures whether the LSB or the MSB is transmitted
+      first for the fifo data. If this property is absent,
+      the MSB is transmitted first as default, or the LSB
+      is transmitted first.
+    type: boolean
+
   "#sound-dai-cells":
     const: 0
     description: optional, some dts node didn't add it.
@@ -175,11 +175,11 @@ allOf:
 required:
   - compatible
   - reg
-  - interrupts
-  - dmas
-  - dma-names
   - clocks
   - clock-names
+  - dmas
+  - dma-names
+  - interrupts
 
 additionalProperties: false
 
-- 
2.35.1

