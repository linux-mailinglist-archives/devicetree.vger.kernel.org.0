Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCD33A0238
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 14:52:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726326AbfH1MwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 08:52:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:54154 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726270AbfH1MwW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 08:52:22 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B1A9222CF8;
        Wed, 28 Aug 2019 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566996741;
        bh=zQw8LzDmwpIGMXLOyWCtXHZtnoi68tcriooxow7vOPc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=cz8l3NiSK4N9HDbC4FjA7phW1DNisC5pt1PSTy9OX+/Fef4OdeDiSUm3xC+hYzeu6
         6sR+1yaFAuKODKNnB6b9ZTF4vhsWj6I6Yb4TjbL7eogI29suNOKhqn5pZ3GFHQi0tb
         9gbKBAhT87orJ0VX6ecinsgR9HN0LgcoiPNtdK8Y=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/5] ASoC: dt-bindings: Convert Allwinner A64 analog codec to a schema
Date:   Wed, 28 Aug 2019 14:52:09 +0200
Message-Id: <20190828125209.28173-5-mripard@kernel.org>
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

The Allwinner A64 SoC has an embedded audio codec that uses a separate
controller to drive its analog part, which is supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Fix subject prefix
---
 .../allwinner,sun50i-a64-codec-analog.yaml    | 39 +++++++++++++++++++
 .../bindings/sound/sun50i-codec-analog.txt    | 14 -------
 2 files changed, 39 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
new file mode 100644
index 000000000000..f290eb72a878
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun50i-a64-codec-analog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 Analog Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun50i-a64-codec-analog
+
+  reg:
+    maxItems: 1
+
+  cpvdd-supply:
+    description:
+      Regulator for the headphone amplifier
+
+required:
+  - compatible
+  - reg
+  - cpvdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    codec_analog: codec-analog@1f015c0 {
+      compatible = "allwinner,sun50i-a64-codec-analog";
+      reg = <0x01f015c0 0x4>;
+      cpvdd-supply = <&reg_eldo1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt b/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt
deleted file mode 100644
index 056a098495cc..000000000000
--- a/Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-* Allwinner A64 Codec Analog Controls
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun50i-a64-codec-analog"
-- reg: must contain the registers location and length
-- cpvdd-supply: Regulator supply for the headphone amplifier
-
-Example:
-	codec_analog: codec-analog@1f015c0 {
-		compatible = "allwinner,sun50i-a64-codec-analog";
-		reg = <0x01f015c0 0x4>;
-		cpvdd-supply = <&reg_eldo1>;
-	};
-- 
2.21.0

