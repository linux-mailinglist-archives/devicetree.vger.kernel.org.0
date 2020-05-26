Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9A91D1706
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 16:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388325AbgEMOHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 10:07:31 -0400
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:39611 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731192AbgEMOHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 10:07:31 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 1868858029E;
        Wed, 13 May 2020 10:07:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 13 May 2020 10:07:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm2; bh=6SinJITdD/n69
        eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=q2Zs2J1C3vt+0sLB0C3eEeX1vwe+J
        YTsf4RSQhWWuOWdA6mvA4Xx8h8wJBDFUc+DFMrlJBmpliILTDivOnQ+LHq4vSEur
        8fiZ8h7eoRTJiJyYMsfmWtqcsSs7cKPnZLNaMDQh+pYJePqYHsySV3tIOi+w0+Bm
        PEhRMswucbHVkolwIbugmnWZM/UVwV6rd2MA6j5ruOFzqhpSM27QCwp+bw37AvSF
        GtZ9uNMiqME61T796RXbarA5AM6P46OqtdZoqek1wTfD183upQmwiI7F1YdomVac
        4LGrzKwAwJOLJSvWYUynBp4/s2hJZOlcSR3Jp4PSN8Pj1W0rp5oggcsKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; bh=6SinJITdD/n69eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=q10W3mNL
        QBjvutCRM1SOZ9CAO+SBRAklOJFs9QKNbAJyowElXsm694v3KDTHVr8UFsnph+sl
        fBBFWTsbn/sF9gugx1x6gXoGyyNi0oQ230RNAEpHoG9tyKgMVNYp/U9aFhx30znU
        wLQ7X/tOrW4E+/p2ijvDpkwXWx1H17DbJDSprWH7H+a+TtcXgt5sH2QFJni1IBhJ
        HNyJ2OD7ZU5MHorEOr0VE89WDqbdPj3WCc8STBPExw/jFW5gd0qzSaWQW7Hb8hOU
        MQXHLPtw7ZNY/t+txQ3pV1ReSJF2ZJgkJmb7U0ezrO0Qor49i6siL8OEjpP4vNf8
        Llaboy1EwlAR/Q==
X-ME-Sender: <xms:If-7XjjyhbRoRkQT-mxhP0ZpgAn2fwPr7Fp50a5u2nL-BNIFPM8Dtg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
    hnohdrthgvtghh
X-ME-Proxy: <xmx:If-7XgCOPFggAk80aPF8J7bkHtUCZbHHkjtyQ5ByQopIWvbOGWlEgw>
    <xmx:If-7XjHOvNjKhsPXDWIhRZHTJadmPSzZOQcjrc3ybjVFGgGJ4IBINg>
    <xmx:If-7XgQ9s8GrS9ASmuTTgbX-PbH-bvHJXDO2WfrCwF1UwkRFiVd4Tw>
    <xmx:Iv-7XjyY5So9E1UXU5OOBX1eb400OQkWpB3UfOaM6nhiKkkv4-lbGg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 854DF3066316;
        Wed, 13 May 2020 10:07:29 -0400 (EDT)
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
Subject: [PATCH v4 1/5] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Date:   Wed, 13 May 2020 16:07:20 +0200
Message-Id: <f3e1633677a9cf9cf36fe3582f0168fae94c1b3e.1589378833.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
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
