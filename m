Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7084A3FD692
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243581AbhIAJVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:02 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:54527 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243560AbhIAJU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:56 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 2CF445C0220;
        Wed,  1 Sep 2021 05:19:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 01 Sep 2021 05:19:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Ez0h4feUG7jj0
        QTMDNnuRp0Rg0fbgdk/KOZ0ow0o2AY=; b=OPzIjlK/gUUJP7muvu17wB6GXuufl
        6e/xHDO5tuxgefQ2t9UAe3idnJWarnVfsLDdEZ2OKtuEgYNAxycGnPGZA4q6UOMq
        ixuHs05Fx+YdZ9fSCcNr7rml3adfcvPNjNfNhUmoqA16gxXoB6kjtq2rjw7t+Dyc
        +vrUgg/jrUkZQYE5XXOWU3G3acENvz5Obr6c5MXstWGhj+ZeHa+0LDKMnYwfa0kD
        q+6Pxc3nq6nOapDS4y4crB7S5VRz8YPOO/Wpcuy9mHGcgeETfQt1DjQC0EmLq/CL
        hnJlx8mGip0I98pKww1EBsAwkBaH9DaByobIqg22QQFwoaQX5gMtqizcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Ez0h4feUG7jj0QTMDNnuRp0Rg0fbgdk/KOZ0ow0o2AY=; b=MoCtsjpP
        e+rP0LnG16kcaj/sAf0M4lNbyFP+9N79GCv+EpAi04gVMKI576lKDStw2K04MUJm
        FZA7UDkAJSDFdbaXMOJqEg4VrOAM6RF65d6YWDSsQTVh9Kc+U1CVW2wNXLPqV5c9
        qmFSnv6TWwrOrptuBvAaxk1qRKlekUCE8eQMaJd1Psf1IvUuVdtQnRcVtfwDJjfu
        Vd6K8ZVoWb6gDZBCvaKZxbGr0j4PimZFCDlacBwOfKMrzo111bUhFBxYu+BQ7uI0
        GL4UiZzKmEVRPI2Aw/dQiYkOVUiHSWvT2juc0pY8BP8/SiKrTQ3WGIpc8BvkeoZi
        +AC/AJ8Vhs0kpA==
X-ME-Sender: <xms:vUUvYfkaoBYUAqXTPCvQYw8Rtrd99Es7l-WtP0o4GdzXfcGQU9qXvA>
    <xme:vUUvYS1O6Y34Fpg7Px-zm5VCO--ykUxD375RwuSNisk7i9ahdju_dOZtspypHiAfN
    _JIj3WJ8w1hiq6eRpY>
X-ME-Received: <xmr:vUUvYVoPbxeT5HXqksmxDCEvTzSqNOWO7qEm6mWufVOREikK1OXVk0EaVx12DIvW9HKmx810npBX04y2l_4hj4NJR6Syg0D1Ef0I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:vUUvYXnR7znpEnGs0xnH2npGAzOoKsUBQwnmsXkcvXlrLrgw5sCvNQ>
    <xmx:vUUvYd2qHmeOKOtdKfFm5pYGjWfuddMReWybFE8ESES59uedpMzg7w>
    <xmx:vUUvYWvqMyDP3RB-hzLhy-r1c9geaBeWyRjL3nwUvkyZ0rnLZhv7gQ>
    <xmx:vUUvYam9phnj0NlxXTOKV-5-zB8TjJJoYh-DkxFbdXSg0xIOkLIrvw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:56 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 34/52] dt-bindings: sunxi: Add CPU Configuration Controller Binding
Date:   Wed,  1 Sep 2021 11:18:34 +0200
Message-Id: <20210901091852.479202-35-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we've used the CPU configuration driver for some time and a
number of boards using it already, we never had a binding for it. Let's
add it based on what the driver expects and the boards are providing.

Reviewed-by: Rob Herring <robh@kernel.org>
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

