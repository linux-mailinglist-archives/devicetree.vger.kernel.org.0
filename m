Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E12DA0237
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 14:52:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbfH1MwT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 08:52:19 -0400
Received: from mail.kernel.org ([198.145.29.99]:54094 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726270AbfH1MwT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 08:52:19 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F0C7B22CF5;
        Wed, 28 Aug 2019 12:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566996738;
        bh=3e7gHni99nwSUnp2CZ88bKew4+kna+vhgl/WHKgEs/A=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=oWwZEFNHKzB7hvnP0fqdesJCgvh+YMMtWrxDECi9Yb3GRj8pR7+qvNqZ8xKYBRdkA
         p9lS/u+1cQXYQyMDEdyAjM9hcWpeQXoA3LEgWKsCEHlCm/ng+ppEbrJxgKxJfuoJxX
         qzC1HOGvD8kGZlEqhh7viTQiIAXGlIzG8PGtiTdQ=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/5] ASoC: dt-bindings: Convert Allwinner A23 analog codec to a schema
Date:   Wed, 28 Aug 2019 14:52:08 +0200
Message-Id: <20190828125209.28173-4-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828125209.28173-1-mripard@kernel.org>
References: <20190828125209.28173-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner A23 SoC and later have an embedded audio codec that uses a
separate controller to drive its analog part, which is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Fix subject prefix
---
 .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
 .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
 2 files changed, 38 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
new file mode 100644
index 000000000000..832779389cbd
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
+    oneOf:
+      # FIXME: This is documented in the PRCM binding, but needs to be
+      # migrated here at some point
+      # - const: allwinner,sun8i-a23-codec-analog
+      - const: allwinner,sun8i-h3-codec-analog
+      - const: allwinner,sun8i-v3s-codec-analog
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
2.21.0

