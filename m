Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 531E52C98E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 17:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727237AbfE1PHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 11:07:13 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:42930 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727040AbfE1PHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 11:07:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=lD31eoku3vRt5Ge3ug74axH4Ju4xcKQdmUJ79hzhrhs=; b=T2nwxDOISSVw
        VK7Vuj3cAmMhLEtdcxylX6QuxmpngwN+NNgLiTH1jXBJSxbtS8pCWJYCA4ncsyfWMW3U8NFQK19rK
        qJhfPkNqifqtWsEBwQPkG8zksc6qhn9ab4yDX2bs6XP/Hxae2htoHgiFf+gXHtAqTwIn34eGD2L9N
        gEXa8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hVdgm-0002ni-Mb; Tue, 28 May 2019 15:06:56 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id D09C7440046; Tue, 28 May 2019 16:06:55 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Applied "dt-bindings: sound: sun4i-i2s: Document that the RX channel can be missing" to the asoc tree
In-Reply-To: <9b280f9ce894e4e2ea7259db505cbe1a3e00120e.1558702660.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190528150655.D09C7440046@finisterre.sirena.org.uk>
Date:   Tue, 28 May 2019 16:06:55 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   dt-bindings: sound: sun4i-i2s: Document that the RX channel can be missing

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From eb5b12843b067d685a8d7a191b928b07934b2d02 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Fri, 24 May 2019 14:57:59 +0200
Subject: [PATCH] dt-bindings: sound: sun4i-i2s: Document that the RX channel
 can be missing

The A83t and compatibles controllers don't have any reception capabilities
on some instances of the controllers, even though it was never documented
as such in the binding before.

Therefore, on those controllers, we don't have the option to set an RX DMA
channel.

This was already done in the DTSI, but the binding itself was never
updated. Let's add a special case in the schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../sound/allwinner,sun4i-a10-i2s.yaml        | 52 +++++++++++++++----
 1 file changed, 42 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
index 85b2d6d84055..eb3992138eec 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -41,19 +41,11 @@ properties:
       - const: apb
       - const: mod
 
-  dmas:
-    items:
-      - description: RX DMA Channel
-      - description: TX DMA Channel
-
-  dma-names:
-    items:
-      - const: rx
-      - const: tx
-
   # Even though it only applies to subschemas under the conditionals,
   # not listing them here will trigger a warning because of the
   # additionalsProperties set to false.
+  dmas: true
+  dma-names: true
   resets:
     maxItems: 1
 
@@ -72,6 +64,46 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-a83t-i2s
+
+    then:
+      properties:
+        dmas:
+          minItems: 1
+          maxItems: 2
+          items:
+            - description: RX DMA Channel
+            - description: TX DMA Channel
+          description:
+            Some controllers cannot receive but can only transmit
+            data. In such a case, the RX DMA channel is to be omitted.
+
+        dma-names:
+          oneOf:
+            - items:
+                - const: rx
+                - const: tx
+            - const: tx
+          description:
+            Some controllers cannot receive but can only transmit
+            data. In such a case, the RX name is to be omitted.
+
+    else:
+      properties:
+        dmas:
+          items:
+            - description: RX DMA Channel
+            - description: TX DMA Channel
+
+        dma-names:
+          items:
+            - const: rx
+            - const: tx
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.20.1

