Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9DB43D109C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbhGUNYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:37 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:56903 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238964AbhGUNYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:36 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id C52DD5C0003;
        Wed, 21 Jul 2021 10:05:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:05:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=FLaV6LbGYUmRp
        MPapA/CCQjdEUPnJGfzmiiv88I4rdE=; b=xbfJWv4rCmaVnLFkfesGOcKxjO0QR
        RtO4xBrxRHAgERnPkjNLbDONxYYYrbVc1ud8hsp4seKdRTc40ga//EWgyFUt2VNg
        J7r7kmFly0BIXXZeTGHYoSdYJA9MbyqfJjPT/amEemxJF2ojZtCwx8HutO6A9J+b
        ZZDD0cyOK4QpZ2OlBKzFzSs3jr7V2pzt2QmlsSmGUU5fvBz4bLHLvbLGoU4ADs29
        UkKjIDJkc7kkCHcB2+JNXD2K4jLm61if11BxdRgvb8ZpnmhCT/MqVxAb4JC7ry+c
        20nEnlEnkelaVKu1fSlraG0+Cc9QhTNLvmwl+VsKMAYJIrc4ukRyNAqzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=FLaV6LbGYUmRpMPapA/CCQjdEUPnJGfzmiiv88I4rdE=; b=vQIiTAQn
        uxCZw344WXokLTMZvKyb6ss1ErDp98oWWCP16y4ziLWsCRoliv/Hn7fhDMoN5zXS
        bvwshTL877r8KBNl5dcwqDWgnNismtPdsGnflrEB6di/EVRqen0eim4+sk6d8nIX
        X6JuulXrq8HXCe4M5WsDL0EcVUeKgAmZ9VH4MDXliZNVFw9f5ecr+mEOz05Wuh0f
        y2NS7A2RoFDWbpH+1YboUmCT1LC/nhCV7MunqSL6EMPiONBJLQ3f/GWFIN5wnNll
        yrClsq6xuu1+h5ajLYqiqMhLG7ax6Vtd+lBwBhYcu46do7UwzhpsbhTnNGmMCpd2
        GuRNweWJtTAfWg==
X-ME-Sender: <xms:mCn4YD_i28Z26WqQZJG86uVrYtuBX1LuEWluHTB6mHsDcp1thqXA0w>
    <xme:mCn4YPsK7rRRzdWgmLvRQmF0hX931xc1ZwXDg7q5g2DywjY3yk1o7r5aj4Vi1rF7w
    ZckLGEaVq46VON8XNc>
X-ME-Received: <xmr:mCn4YBCH_KecmwzFmKYm0JmXhtjPctB-SkF3NKbAGV1Ol3Azy52jLvfLna-Gi9C-g_Ts2q2NICIdPCqNXhZwPwGTaq3NJ2DkuWZU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:mCn4YPdNgQ_WG-2cnd1GfLZKDsQ7HKnYak0QvqdipI_wO8aRqpRD4A>
    <xmx:mCn4YIPgERT51W9ln4mn8mnN4IQOSi4hbFZK7xr_42WXH0nQjHXOpg>
    <xmx:mCn4YBnm_K4Bp5sZ2N3rUSMLGiajNRcZl_t86Z39jf5AEg48L3dThw>
    <xmx:mCn4YEBVkgWBPzlrTiX8f2UnLPysy6wbOKHbj26YgL_yybukhnRpsA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:12 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 21/54] dt-bindings: interconnect: sunxi: Add R40 MBUS compatible
Date:   Wed, 21 Jul 2021 16:03:51 +0200
Message-Id: <20210721140424.725744-22-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The R40 MBUS compatible was introduced recently but it was never
documented.

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

