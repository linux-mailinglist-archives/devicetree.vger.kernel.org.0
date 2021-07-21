Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4B83D10AF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237925AbhGUNZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:01 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:58393 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239113AbhGUNY7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:59 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 568915C0180;
        Wed, 21 Jul 2021 10:05:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=ek5HS3nQ/RuZh
        fgQ5+6HJrhdTA+wAC8ee43xik5MWYg=; b=yQIuPsinww8Wu5A5SXdUliGNykwD7
        HN9issrBaOg9JUty+AOFJVxJ/0t4krJDgY69nSQSoqiJgpnoWm4VwfznL9B/TMn4
        sw4EeE860/Be4Fe74BTMNfp0YsqSQxlEXqOBd30w39ApwDFZRS+8V2HLzdoHQdmc
        pjleiWXLhYVPSO1LowlC9Sx5+scLsKZf9MnemAxCdn2XewARFXUzul0OGjugd7WF
        Y0FWC7jUSR9u44qzmifOuYuqKTc/m6axQ99S5lflos9xpk8TAbEF3ZlKEdZcLSeM
        5Nmiv9Fi1sf9EAFkTtBJ+h/ZrF/NxRCwkadjmHngP6QIQK55Gh+RzncZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=ek5HS3nQ/RuZhfgQ5+6HJrhdTA+wAC8ee43xik5MWYg=; b=k0b/ZQWz
        klgeFi32hRwz/MKnmpGTIJplXbiGuTSmjXr3nFvy8Qw5F2yBMFU4k6aCVTI2Ob1m
        SZYqGxLdbtFOp6OXqFGpyuT7Lz0hR1N9lBd4chJKBwY9lWCLkS+J46V7Cao8Hv5U
        v9ppRgsnqaD25qZT1kCjmY8hxE15maVAvNr/F4erewy56Z/+8xqn3Eu25dy4mMYu
        Omd4tBxomXpTQLo9VVeJ3BXKy4Dcl179J2EnxpiOHDNsSwwIs4vQILlmbDpGDY5c
        pL1Pn0wF0c20sOLEtJPxuoqS7sQ4fgQxQ0aRW7IkRh2RwZWtiTM2tfRbaJEBoFJm
        KvFTSi3oAhAi0A==
X-ME-Sender: <xms:rin4YDhmvehF3N77qwd8s0BubkYvyY-PuTfHIKAAq89w9c8xkK_J-g>
    <xme:rin4YADyEFYycCWRRNaijLHjbieM84UF5veSlTpDAx9NTqzdFWBJb-fGnvj5Atowc
    d708Vy7H-5XTT2Ah70>
X-ME-Received: <xmr:rin4YDFiA-5e6nQKDvS9XJzm23ebLbykTI6W3YRaa8YfDD3tAiYn6boDRMPOPuZwOKySwxviJgXGzll6l558y-_HAg9-szI9zJZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpeehnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rin4YARBuKkTZOjfE7uUq2OIFoEcvJGx0nVkWB2lLVVzv8H5P4zHhA>
    <xmx:rin4YAwL0XGvHeOgzQrV-DSkRPLGOPFmSD2NGQFBxTsbNT0Qa7XDuw>
    <xmx:rin4YG4Y5V0lbYXRONrXTgzttQEWBcg6bSg2rfNyPvUSH74nkyUWJQ>
    <xmx:rin4YHnJsI-Gsyfg9DQlp1mLocixmaNn6TsId5hRCYeuY8rbFICAoA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:33 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 32/54] dt-bindings: sunxi: Add Allwinner A80 PRCM Binding
Date:   Wed, 21 Jul 2021 16:04:02 +0200
Message-Id: <20210721140424.725744-33-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we've used the A80 PRCM driver for some time and a number of
boards using it already, we never had a binding for it. Let's add it
based on what the driver expects and the boards are providing.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../arm/sunxi/allwinner,sun9i-a80-prcm.yaml   | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun9i-a80-prcm.yaml

diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun9i-a80-prcm.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun9i-a80-prcm.yaml
new file mode 100644
index 000000000000..668aadbfe4c0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun9i-a80-prcm.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/sunxi/allwinner,sun9i-a80-prcm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 PRCM Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    const: allwinner,sun9i-a80-prcm
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
+      prcm@8001400 {
+          compatible = "allwinner,sun9i-a80-prcm";
+          reg = <0x08001400 0x200>;
+      };
+
+...
-- 
2.31.1

