Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 296823D10BB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237527AbhGUNZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:11 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:51767 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234757AbhGUNZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:11 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 943B25C0140;
        Wed, 21 Jul 2021 10:05:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=XUFy7HGzoNamF
        DNeqWWt+O726CeLlPdzxeqVacxyPcY=; b=iywCHRDcfZcwHfUHcxF+8fCauL5gy
        ovHRvaJLyBusHk7CKPkSc/6TtxZ8SyRZAoiMxmfkDCvuPzXzN3EHuxii+++sXz/Z
        QBdXiLhUoDF7vj32HdC+TYp0ajgEIv6FdYeBG0PkUGur9MCrg/DdaWuCNKN9j/TI
        j8DJlDnsDrH4w6e4uFh1flCampgcgE5IeE2/rk/wwelYWlpcyTKoyOgtssXdP7HR
        ROmoVTd2Gq5UwkBlR0pw11MVNxo+MIfQseMMVSFBdawLBA5xYSxwAsQ5QbwH3RSM
        VkxlAI6AI/oStBYrtmAZWTgdbTYp526xsoyedOlrFOBKblvRLm4LnwSHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=XUFy7HGzoNamFDNeqWWt+O726CeLlPdzxeqVacxyPcY=; b=g+42Nr53
        WRrr93iQfVjc+y/h3x45w2rbBjCFYyPkRalC3rMiJbfvobEej/MB2RM0PfE5IsU7
        v/3PYuG7FX8OYQpXfvEUuzGkVvefmSh3qL7LKe0xb+5DMwCHdANKKM0cpG+IAg/u
        Z8qSN60Va4dXHvr6PJLwlnBUHeGZgZ5EgChkj/ksQnTLly1s2Bo7HM/mqx1QFaZV
        SFi4s5M8/xa9YyRd5CeE05tgxB6QEulxUlq2Wc1RAbmDt3Me857U+AzqadT2QMam
        1vd1bHkB85GdXBLpabWRurkG68UFDj23/rXj+61nQkaCZEVAMkMwchU1WxL/HOYN
        AT3fxlAAbauWMw==
X-ME-Sender: <xms:uin4YA2B-2hz0vVtKRJ3lKFhxPvRjOx3OlqjIR-_g3XxL-3Pyv63kA>
    <xme:uin4YLG8-S6DZp3k0JgLbGWFeLTnpPqCa_nUiu-JBjhI2PshWqYS1A_yw2njlz7Wa
    t4KnFEKZ_YeRvZNAIk>
X-ME-Received: <xmr:uin4YI61aMj4b32IQ_TBdfc-PKtLosX5XTxpIXdJX8A5gDwyxky6Lf95E2VQtruda09EUXELTSo-31PWHC9_Fw5Vd-7pMBq2X_xz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:uin4YJ1Nfi9JSwzeEOOC-mey1dCkXkDQ60m9podao8VSDHN3jVoEIw>
    <xmx:uin4YDHegaEZ0wBKdI8o9QWUtwHVCC_N3qbzlVtHKva_15PLZi6FHw>
    <xmx:uin4YC89_kUzaxEgJbkXa-Ibu1WOSjWeNQaiwepUiLRsQYFbfi7dDQ>
    <xmx:uyn4YJYdCHCTsU6cT83tEm-D514fi2-B1hxjzGd-xz3zgLIIa1OwZQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:46 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Daniel Mack <zonque@gmail.com>,
        Evgeniy Polyakov <zbr@ioremap.net>
Subject: [PATCH 38/54] dt-bindings: w1: Convert 1-Wire GPIO binding to a schema
Date:   Wed, 21 Jul 2021 16:04:08 +0200
Message-Id: <20210721140424.725744-39-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bitbanged 1-Wire buses are supported by Linux thanks to their device
tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Daniel Mack <zonque@gmail.com>
Cc: Evgeniy Polyakov <zbr@ioremap.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/w1/w1-gpio.txt        | 27 ------------
 .../devicetree/bindings/w1/w1-gpio.yaml       | 43 +++++++++++++++++++
 2 files changed, 43 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.yaml

diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.txt b/Documentation/devicetree/bindings/w1/w1-gpio.txt
deleted file mode 100644
index 3d6554eac240..000000000000
--- a/Documentation/devicetree/bindings/w1/w1-gpio.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-w1-gpio devicetree bindings
-
-Required properties:
-
- - compatible: "w1-gpio"
- - gpios: one or two GPIO specs:
-		- the first one is used as data I/O pin
-		- the second one is optional. If specified, it is used as
-		  enable pin for an external pin pullup.
-
-Optional properties:
-
- - linux,open-drain: if specified, the data pin is considered in
-		     open-drain mode.
-
-Also refer to the generic w1.txt document.
-
-Examples:
-
-	onewire {
-		compatible = "w1-gpio";
-		gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
-
-		battery {
-			// ...
-		};
-	};
diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.yaml b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
new file mode 100644
index 000000000000..4a780a988718
--- /dev/null
+++ b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/w1/w1-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bitbanged GPIO 1-Wire Bus Device Tree Bindings
+
+maintainers:
+  - Daniel Mack <zonque@gmail.com>
+
+properties:
+  compatible:
+    const: w1-gpio
+
+  gpios:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: Data I/O pin
+      - description: Enable pin for an external pull-up resistor
+
+  linux,open-drain:
+    type: boolean
+    description: >
+      If specified, the data pin is considered in open-drain mode.
+
+required:
+  - compatible
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    onewire {
+        compatible = "w1-gpio";
+        gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+    };
+
+...
-- 
2.31.1

