Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 631B5166602
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2020 19:15:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728224AbgBTSPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Feb 2020 13:15:22 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:46173 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728162AbgBTSPW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Feb 2020 13:15:22 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id C512463C6;
        Thu, 20 Feb 2020 13:15:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 20 Feb 2020 13:15:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm2; bh=6SinJITdD/n69
        eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=c6kpalwzeA2Vi5zAy/Bxin8/SMH7H
        yHKoqO+DHJ2tIq1qWAaea40qxAlPxndXD1s4i6jk9jgJoZKZSjp6x6E/jbRXybnW
        El8+urLpmIiJej91r3cmiiQueIyaW9iXo5TPuB3izIgl+ZYg6OIKJ24G8EPGWGO5
        NTaZ7D/F/OvmVMuAA3QJ2D7ABVshc4BZun33KqbykmlqJ/2CBdkeHJ6deiQJOsT7
        anwfty/nfdRKXz9tifKknqMU3JDTClugpzSNcu/LRtVWKCq+8b06bdcNGqA3dr/9
        TR7czPN2j8llaJb018m2UcqFcu9J3W4Ag29dMQsQYmGNlWC4rwTNdV1Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; bh=6SinJITdD/n69eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=JZGIfGvq
        bIj1g4UfTjIPXP39HHTXNAbRleEIKSjsuGOjRrhyjvTOq+ljQtDlxeLgaaG49hCs
        jIquU0T+2UHBEcJXDj39MYkrzeHRbBNrCKt2Gv9ParG+/ty8ylDxdXPddJCp6cmv
        mPlTC6QFGqIxTvXVPJXCkRCpb72XmBtR7zBZxQzAlKh1HJzgV2ohlajw0Ja7YUCS
        RB+M7XNEUUhGVxJIXkRRt/Nod41BVYuoBsAYS+dGpS21qvmgQgU4YJtasQr9hy5m
        OCuZhpCjjh+m4i9aJllByzNDqD3/IFVNWUfdaGBQwAMwUEf681y7yS0AGzr3m+Fm
        uSbivbMi+oX7Tw==
X-ME-Sender: <xms:ucxOXsZad0oVvWyM6zvihwsyzNajBTXVkc31oKVHkuYpWZDFwYJSyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggv
    rdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ucxOXkzzp-aOUA5FC1ucqNOrwNoRPJ9MEcMA_M_mkGjEyBdyCydX4Q>
    <xmx:ucxOXgfwmg6AnbM60G4kSd0eWc8au_BZJabCpiQYnByTEfiNDMAcUg>
    <xmx:ucxOXh4_jU32SUTf35-jHQ_mCAXw_RBwsEOhtukUiIrsINiLDWARpQ>
    <xmx:ucxOXuAXvzoUDH3-pjzqegpw6a_yrMr49X4n94ZRAeE7vhtre1Xo6g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6662F3060D1A;
        Thu, 20 Feb 2020 13:15:21 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/4] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Date:   Thu, 20 Feb 2020 19:15:13 +0100
Message-Id: <7b1d8b083283915befc9b9be4a92631253011a8a.1582222496.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner H6 has introduced an IOMMU. Let's add a device tree binding
for it.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
new file mode 100644
index 000000000000..5e125cf2a88b
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/allwinner,sun50i-h6-iommu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H6 IOMMU Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#iommu-cells":
+    const: 1
+    description:
+      The content of the cell is the master ID.
+
+  compatible:
+    const: allwinner,sun50i-h6-iommu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#iommu-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/interrupt-controller/arm-gic.h>
+      #include <dt-bindings/interrupt-controller/irq.h>
+
+      #include <dt-bindings/clock/sun50i-h6-ccu.h>
+      #include <dt-bindings/reset/sun50i-h6-ccu.h>
+
+      iommu: iommu@30f0000 {
+          compatible = "allwinner,sun50i-h6-iommu";
+          reg = <0x030f0000 0x10000>;
+          interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+          clocks = <&ccu CLK_BUS_IOMMU>;
+          resets = <&ccu RST_BUS_IOMMU>;
+          #iommu-cells = <1>;
+      };
+
+...
-- 
git-series 0.9.1
