Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 284A23D10AE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233494AbhGUNY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:56 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:35773 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239112AbhGUNY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:56 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id A41D15C0200;
        Wed, 21 Jul 2021 10:05:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=tBX9kg4ChBJd2
        6LolknZRVV8D1D95LbezmLTAEf1Jas=; b=jgh3tsic0liVr2z+5sKNsnp8dhPd+
        iJEHI34haU5sP9RbnZ4naTUtHSBJQe6vkRsocTp6jw/W0IJWwycIgvE3RwuEGUqZ
        or3M6c/qIKfioYLG1mobhVRcp5iQhKQ9TfrFv7dpumrXsfRGRK1Tq4+Gzk3aI+g3
        /F6CHYbWb9ghI1lLORWW9mC3Pu0jcqLkzqjgGr1uh2D/2AyqvUJOep/mphhORPTd
        6UYR9GM8hiJP6vBIzPu8EOAeXMDtlGyfN2BDWK6+5Jllh5yoE/fop4kDwLtD4Gm3
        yOkE4CSKekIwSZnQRVCw7dy7Xj64yGwEc5pvZWESJPt2geue3KmANC5eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=tBX9kg4ChBJd26LolknZRVV8D1D95LbezmLTAEf1Jas=; b=qAYCyEVS
        ijZ1+M8abIqgHHY3j3pq40s3+mUuWWGOLZDt3QleppODqdO1cZC9tLXbtdYtbjv9
        7UPYprt2o4sNnT0EZAibT3pejsBX2XaUqGb0ZlXHty8vhKMgYKctKpFwvj0F0xCJ
        /ydt0ClOT54P9rYxmPtwrrK3O92imZGSMbBYwUCL2IY5AUnFQZDGT5OhdO0bK1JV
        YDpUYGTFmODR7bwM/g69RCm4DXD0nXuNMNhFOttOlF/5LGGceJVe5Bo9WkEa9CUP
        JDt0u9D2JP024sGfSa5hAQ3uZVWnREeowZ7xJw+fr+aUbwGmpeSF9h9mrsEmyBZr
        YG3Ka1BrHbAMAg==
X-ME-Sender: <xms:rCn4YIVNq_TJs5PTx0tYi2A0WSZZPlemJZeql-UHSb8zEEQ59wPTeQ>
    <xme:rCn4YMmbJymIUDUbJYatM-n3NQmZWR79RdCyOqpoHa_YCqFThWgpsb0w-85FpFZDZ
    MlIuuWH7UJRr0cAZks>
X-ME-Received: <xmr:rCn4YMZCgP7sOr_aXW4wZQvgKjbaGiSwlYPIXRhU74IDy_SNIPPmJZ6DYO_KQVipgFHz6F1h_lo6G3doynl45-a0CfrwqfiXJ7v7>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpeehnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rCn4YHW-BSBVV41HAwFx7ggwrxtDICbdG0kGb-ZLb_DSa63EZUp3wg>
    <xmx:rCn4YCn6rhEa4TUhpOgu65Ob-qiBhy2rQ8SwdwcvgspaKEzTtRJiUQ>
    <xmx:rCn4YMf182jTqRB0aIwZLZs5tuT6YHLtVgTkywjJBJEeeRwXl8OCoA>
    <xmx:rCn4YAYeyyHKBcWwIwqMIKOHp8V8o42gvOVugTm6N1n-3xUDKF8xoQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:32 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 31/54] dt-bindings: sunxi: Add CPU Configuration Controller Binding
Date:   Wed, 21 Jul 2021 16:04:01 +0200
Message-Id: <20210721140424.725744-32-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we've used the CPU configuration driver for some time and a
number of boards using it already, we never had a binding for it. Let's
add it based on what the driver expects and the boards are providing.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../sunxi/allwinner,sun6i-a31-cpuconfig.yaml  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml

diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml
new file mode 100644
index 000000000000..f3878e0b3cc4
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner CPU Configuration Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun6i-a31-cpuconfig
+      - allwinner,sun8i-a23-cpuconfig
+      - allwinner,sun8i-a83t-cpucfg
+      - allwinner,sun8i-a83t-r-cpucfg
+      - allwinner,sun9i-a80-cpucfg
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
+      cpucfg@1f01c00 {
+          compatible = "allwinner,sun6i-a31-cpuconfig";
+          reg = <0x01f01c00 0x300>;
+      };
+
+...
-- 
2.31.1

