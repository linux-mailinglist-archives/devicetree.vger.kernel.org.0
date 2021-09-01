Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0E783FD68F
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243558AbhIAJVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:01 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:37157 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243556AbhIAJU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:56 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id BD6875C023E;
        Wed,  1 Sep 2021 05:19:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=PXAZ+OT3+840q
        yLgIOZkmblg/hq4r5L5A2T9KeRY+Ho=; b=dAZBer1HW0Z96KPoQr0TTjHloDED1
        bfAUtxeEFG9dK2fBimhBcvQ7LsJPszecPbS4/mVEGdW2z9kkHz7n0pdbT41a2oNM
        Fq8E/yYiq0Ke/5MRo3WS3NbZYu9XAySxQtpOCyxKehAPb7zt6Uxb0P9mJQvS5Ppf
        60KTun6FqD07POFBVpEL7PKO6JGbatqd7v13Moy8Ty0rbB6lTEjykxYURzWITMqj
        Sh6qPWEpccUcqvOX2ty7U7jhaNxAt7kAGankU4Y2N/bJ8uM591U/6/QRcMbvg+9I
        s5UJCgid4TsYPWAlSI4YtG2PVQlX8UL+Iy7qDDikijPmRCobdOl/oeofg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=PXAZ+OT3+840qyLgIOZkmblg/hq4r5L5A2T9KeRY+Ho=; b=aA+1leIj
        EhUk7BYRnJ9/PFNUE+O1u0gDJK1yyyD+V2j3Nkb5q7DlzJe/0Ov9G7UmDpzuFTOV
        wvELOtqpWAlIPK2q7b4LJmbDqYeSWPo9j01R0Kw9x+2MirjlqNW/ehcOC7myucss
        252utKHct54uOqmT8mu5uY/QZLij0CjzcEiMvz8DmoBscu+nLQsV4ocAxD4c6J2t
        qf3PmRLXH1NlnnMzWap8A5rtYfNBH1UhrTIEb2v+7hzk7i0uNyZqaWDXXjYhKWq/
        ehZMZQnNcpB8vUJUA3SD4aIJ+nOWLOh8LE+VJfEKCxNrUlrAebjslyH4Qh0zGfbz
        E30ZakfcAs6fcQ==
X-ME-Sender: <xms:vkUvYTXtApldRV1rJfUEJlLZLMSEv0tfI1mvQ_IDuMrMv7rL-LETGg>
    <xme:vkUvYbm5LrIaVLVLVQJKUvqFc9ZNHa882JrJYR_-e9WryYD42kBgUTL42Wwzc9X9o
    mwQ6D6YGgL3Td3X0d0>
X-ME-Received: <xmr:vkUvYfahrXQSPokWfDa4YwbWHAJS0lbcXNLQo-um2pKibN_cvPiQRyKkMU8RPsPDMFC5R5cl6SG6IxBJhQrrgUt52Aps-TwBnDFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:vkUvYeVlHJWqEaDWd9PJRPlhW69m3d9oygFJ__B9pBOWDgmnU3k3HQ>
    <xmx:vkUvYdnkAsJg_HKcAWkEZ9Py2X3k06P7TzCKJEl41r8iFA99Lv9gcA>
    <xmx:vkUvYbcCydsbG0dnk-BkHWYtFMXSzCoSTHAaOovtMEkxsKi7x3WRqg>
    <xmx:vkUvYTUkjhU9SalnxNEnP5zJYTJ-6iFk3CuzjMC9bKN4YhGipK2kJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:58 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 35/52] dt-bindings: sunxi: Add Allwinner A80 PRCM Binding
Date:   Wed,  1 Sep 2021 11:18:35 +0200
Message-Id: <20210901091852.479202-36-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we've used the A80 PRCM driver for some time and a number of
boards using it already, we never had a binding for it. Let's add it
based on what the driver expects and the boards are providing.

Reviewed-by: Rob Herring <robh@kernel.org>
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

