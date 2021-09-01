Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FACB3FD670
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243535AbhIAJUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:21 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:33471 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243531AbhIAJUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:16 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 7FB92580B15;
        Wed,  1 Sep 2021 05:19:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=ivwRNusf130v8
        DVR4zqFl6TgXkOLDLGG4R3kJtx6uxc=; b=vN0yaQNatfQldUuPV+xdea/1MR80d
        VwkFBmMOj+QeuHfSJvgTbQG+SYFkgAQQyNPSfzI7cz8Ad1naVYLwxG4jMWVnPw7u
        3qX0r5xiOqwLvMzMtJhU8WBeXnut7nDjKhkJuHBkMg+Eb9ha4m1iFbvPhfkvLpTx
        WZCAGSOVhWYieXm0VdzlSojUt489sceKe6BlXy05DrKv5ZtuGRaS1ICxEChwYHwz
        ///wqfZp3PckBiu7dAl29Z46IPvF72nj88p/fflXxDWxUyv1AuyyGyvmTouClxVx
        5FKrPtY0Gzb8Y6TwD2aKkNNLiqzFrxldRQ/xd01MpHhpJF539soTTvzMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=ivwRNusf130v8DVR4zqFl6TgXkOLDLGG4R3kJtx6uxc=; b=rjCY2N1k
        cPkedx2bT8tzeQrgrsjzCRFtXJ2UZULrkHuR9r2p8QeTOWMT+G5idxZD6k7Q5RYM
        ivQt3XcyCX7xGXeSd7BpQ9xJTN47ytUoIdtBzB1WEZb/s7tu7e1QlO9pjFpTm0B9
        P0cS+Mv3Ct2c7f6DmuWb02l2Jb3TAiT+r0ek3xoVKlrm32ZwMADzpdEfRMQ38myM
        yYrnGQvITt86aOJ3sXeKAYAOZjkbKPknuIvx+Fx4Mcwvvpu0B6KRwNGjRd8Je9Qz
        ZtiVQxmKxKXhSgvvdAy6EEyPXl5HB+675Iip/Jz2IPQ0lGfeKnUYhJQd9+raUjHW
        dm3lVQbGYtQhIg==
X-ME-Sender: <xms:l0UvYf7ESSO2qEvz3Jdi2zCZn2TyIQfoPNjOrWMY3koGM-XTYsSopA>
    <xme:l0UvYU4wg3NKKTdhm9uply0TrCy6RPUbyQQFmbRLR8j4QcHPUJRNQt8GPeWY6WwnO
    09f4KVz-Pa8b4VUU28>
X-ME-Received: <xmr:l0UvYWf9iS8jJxK05TyXfagaVR2KnfnHtQ9HiQyxXMH7dZVvvijS5-bWIr3fxMrs8GTD3mr_FDSsmZGOHjC9yQx4aBDfzpradnfp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:l0UvYQLbQmk4EHGlHnBAvewjXzA1GLzSPkqf1mYYVbeHWez8bWdaiA>
    <xmx:l0UvYTLQVsA2pqs8y61Mw2W-r_h95QseK0oZe1Jnw6WaPrj1Nlq9Uw>
    <xmx:l0UvYZwtAq_ksu_2JbNybTauTnCw1OhNjH4EWdUInSPZtSTM4SMP4A>
    <xmx:l0UvYQDTuSqh8SedBFC27hEX932ZMsAzmQMuOUsUS8s8StF8JZHZXw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:19 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 12/52] dt-bindings: display: Move ee101ia-01d to panel-lvds
Date:   Wed,  1 Sep 2021 11:18:12 +0200
Message-Id: <20210901091852.479202-13-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Innolux EE101IA-01D Device Tree binding doesn't really add any
useful content that is not already present in the panel-lvds binding.
Let's move it to the generic panel-lvds binding

Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../display/panel/innolux,ee101ia-01d.yaml    | 31 -------------------
 .../bindings/display/panel/lvds.yaml          |  1 +
 2 files changed, 1 insertion(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml b/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml
deleted file mode 100644
index a69681e724cb..000000000000
--- a/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml
+++ /dev/null
@@ -1,31 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/display/panel/innolux,ee101ia-01d.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Innolux Corporation 10.1" EE101IA-01D WXGA (1280x800) LVDS panel
-
-maintainers:
-  - Heiko Stuebner <heiko.stuebner@bq.com>
-  - Thierry Reding <thierry.reding@gmail.com>
-
-allOf:
-  - $ref: lvds.yaml#
-
-properties:
-  compatible:
-    items:
-      - const: innolux,ee101ia-01d
-      - {} # panel-lvds, but not listed here to avoid false select
-
-  backlight: true
-  enable-gpios: true
-  power-supply: true
-  width-mm: true
-  height-mm: true
-  panel-timing: true
-  port: true
-
-additionalProperties: false
-...
diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
index 9b3b329e4e67..91a6d97a96e0 100644
--- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
@@ -59,6 +59,7 @@ properties:
       - enum:
           - advantech,idk-1110wr
           - advantech,idk-2121wr
+          - innolux,ee101ia-01d
       - const: panel-lvds
 
   data-mapping:
-- 
2.31.1

