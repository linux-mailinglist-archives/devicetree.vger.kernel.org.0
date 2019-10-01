Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8ADC3323
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 13:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387840AbfJALmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 07:42:40 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:40608 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387499AbfJALk7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 07:40:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=/3kTwXy8T4vM/KtaNYjUXPB97nmHf6ex88dQiDmOQNs=; b=xsXN6lhhmRdZ
        irRwiwpzbpVVWPh0XN7bKixiWkM6J1PSiWVyEWzOvKZw47GvL2YckER4aU6zWi8VxKhdlLWPOd41m
        zQJAfoB3ON39ZSQayEuzsec32wEQgyqZVgECz8lid/qLSplx50XedQ2ThdjGh58jOsXh3ea+oa71R
        TZG+I=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iFGWS-0004VN-Cv; Tue, 01 Oct 2019 11:40:52 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id D8C5E27429C0; Tue,  1 Oct 2019 12:40:51 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Applied "ASoC: dt-bindings: Convert Allwinner A23 analog codec to a schema" to the asoc tree
In-Reply-To: <20190906151221.3148-2-mripard@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20191001114051.D8C5E27429C0@ypsilon.sirena.org.uk>
Date:   Tue,  1 Oct 2019 12:40:51 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   ASoC: dt-bindings: Convert Allwinner A23 analog codec to a schema

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From 8735141031d7ba96f1c2b3a45ec4efbfd47ad24b Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Fri, 6 Sep 2019 18:12:21 +0300
Subject: [PATCH] ASoC: dt-bindings: Convert Allwinner A23 analog codec to a
 schema

The Allwinner A23 SoC and later have an embedded audio codec that uses a
separate controller to drive its analog part, which is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20190906151221.3148-2-mripard@kernel.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
 .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
 2 files changed, 38 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
new file mode 100644
index 000000000000..85305b4c2729
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a23-codec-analog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A23 Analog Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      # FIXME: This is documented in the PRCM binding, but needs to be
+      # migrated here at some point
+      # - allwinner,sun8i-a23-codec-analog
+      - allwinner,sun8i-h3-codec-analog
+      - allwinner,sun8i-v3s-codec-analog
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    codec_analog: codec-analog@1f015c0 {
+      compatible = "allwinner,sun8i-h3-codec-analog";
+      reg = <0x01f015c0 0x4>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt b/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
deleted file mode 100644
index 07356758bd91..000000000000
--- a/Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-* Allwinner Codec Analog Controls
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun8i-a23-codec-analog"
-		- "allwinner,sun8i-h3-codec-analog"
-		- "allwinner,sun8i-v3s-codec-analog"
-
-Required properties if not a sub-node of the PRCM node:
-- reg: must contain the registers location and length
-
-Example:
-prcm: prcm@1f01400 {
-	codec_analog: codec-analog {
-		compatible = "allwinner,sun8i-a23-codec-analog";
-	};
-};
-- 
2.20.1

