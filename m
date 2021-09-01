Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1CD3FD680
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243528AbhIAJUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:38 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:40361 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243336AbhIAJUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:37 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 2628D5C022D;
        Wed,  1 Sep 2021 05:19:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=oWUr+ukmr3ZdV
        ly4N4yS2Jb/w1IGVsWDxdY2ZINwCro=; b=GwSthef8/aRBPQhVJQ9dUfQxsdxAS
        K598IrxEhszprO7ku+BJmK9+QeaOxALV2E6uYUOxbUPulNGnpQ04BBBQuzwu+H+y
        1UFp/9262F/1B71wRiDFs6WsGUFVGko/TGQgMgBNpx3OYD3bZvKBVWTCD6X0ZZHp
        hK0f/bY9YZ/9IWmT2RBkzi4WEMlxwj2J6MJJlWkLeQjOw0oPxX/ejgEeuTzwqP7W
        Gvh7B/qwSO2Qwnm2fuyi6BcCBMwKkfqwBIHMnm2YyA+3MyY2PM5EPqbODxzCNUp/
        Bc2OQWwhKuWK7L72IvxDDJXSRuo/EA8X02UGDID4SVtDpgqHO5LrlnQyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=oWUr+ukmr3ZdVly4N4yS2Jb/w1IGVsWDxdY2ZINwCro=; b=f7oioiJW
        o2zdCPluntq/zSIsSQbahxztf+sOHGsropj2YSVUwHjmLXrhdoMuHcQk1M7Zq6D5
        CnRQvPmlGkjdeqjuVeRjbNBapTxLaKGbLBcxgK4aUhUrSsyjcc3zD86neHf0Aogg
        oV0SlCWxlEvQnNGMM/8ZIYBNv9xmDKkDU21d4boiXzo44gmNIJ3eTE76eEzSFdz1
        co0Os3S9B35ffA275FfeFO0OBqawY8d8l1lTrlnszT3Iq71WqGoNHQQSMasxHmCM
        yaY3ZTWHuXcdPu5tl8KdT/yRTS59mfS/7YQbgV8Lousel+MphSVuuVlkvGVpK7wN
        QlRd4i3j8rTEmQ==
X-ME-Sender: <xms:rEUvYWX_yH1qf_-u_Jf2DKt7HCkSmmynP6NmvdANZuBqQkt3FZguXQ>
    <xme:rEUvYSmYG3NuKphX2LX9Mfl2KlNw6cj6zshdQ5YKuFBTWvWhg89YDLwQ96zDLZAqY
    royqaoenRKhx9IEdDM>
X-ME-Received: <xmr:rEUvYab3oJjyRXMkqzqgu_2-VX5l2cwpdHsPbX-A0pwiRwfdiiRQyQjoscYu6Mgg1XYcULXMxnhe6DJYlBPF0dlOEv6tdlLXLPVd>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rUUvYdUB9CCkWiMNLX6qrKf4LTlo1xjxvz0ygPizr8HIeWpo4NlKFA>
    <xmx:rUUvYQnqKeQ5G-L744iL9jcepLWl5PtaA17TDeqYAOi4m-n299GjXw>
    <xmx:rUUvYSdYT91OZ93zIh0sLNUnzegW7DyGkSBAz6MWY76FBXAEiL2kUw>
    <xmx:rUUvYaV-L7bN1HD3qgALCSDJC7Udzxh0bXZ8d3czDwx1qWCke8Jfqg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:40 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 25/52] dt-bindings: interconnect: sunxi: Add R40 MBUS compatible
Date:   Wed,  1 Sep 2021 11:18:25 +0200
Message-Id: <20210901091852.479202-26-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The R40 MBUS compatible was introduced recently but it was never
documented.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
index e713a6fe4cf7..29c9961ee2d8 100644
--- a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
@@ -30,6 +30,7 @@ properties:
     enum:
       - allwinner,sun5i-a13-mbus
       - allwinner,sun8i-h3-mbus
+      - allwinner,sun8i-r40-mbus
       - allwinner,sun50i-a64-mbus
 
   reg:
-- 
2.31.1

