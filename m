Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAD263FD66F
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243525AbhIAJUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:18 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:51967 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243524AbhIAJUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:09 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 3E6425C0216;
        Wed,  1 Sep 2021 05:19:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 01 Sep 2021 05:19:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Lk+h9+NRH7GQJ
        W1+cErm9g5/AraXF0pfMKOTrwdL/6s=; b=c9KT/4qp6wJqAxjQ+rNR1ilEg/mzk
        gEbm0Rhsj9gu/x4q0djWyV5KiHWgBRqDcCw8ZSPb8QEzomDq2tLp1wj+mlCP1UWG
        j3PuJ+sqpSDV3YRm7PF7bb0Uoks2pHa+UpxyX7H0K60xds2Odpml4pRl9af5n5Lh
        A6Bi7HBdZx+fnTStMAStLxPrPDm2dKGxgBS8G9oFZS0fMtNRqT4zEr+xX5fYZDzK
        lKxxwbd45bwh3sCcdD03ZBfDxbUTyVvvsAUdgrymZpJFzcinU16pRjok5xDbgRpO
        /Y6WhtEy8r1JWaNqB6uKR7dB2H9yzzOeMjJ2136mwC4E9IYXMJfMhLIqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Lk+h9+NRH7GQJW1+cErm9g5/AraXF0pfMKOTrwdL/6s=; b=ayzizHDX
        EJR6XzgzixCwgfYWx48hlZtemscfaRwa3R2FOYb/RvJamH2vf4t53S5r47bPwINM
        0q3g2+AyNj9JcssgsRn4pOuS1gOU1erwaWOTPDeOruyOvHZvOghX7auf5uSZ8xpV
        rraDWn55qs0oWTXgxXoG3A6PswkMTnkH+bE6hH5Qaki/h/nbTi49eJRrtT8jZM4Z
        AcKpg8C40ufevQ4RuR0GwKrt9eHwe9U4X0v9GOTV4Cps31c3FIC2drd3mve5jyJf
        72LCCOLiFLLEQSOJ5rU7q6QTr+0adSPqUm6Uy9wkAQWr7qsHpt3VrpAzGKj4erVv
        M+dQDOsq42TEBA==
X-ME-Sender: <xms:kEUvYcUDchqqqubPyVsW5kQlgrrzzrNuWRtblJWFHKnXYc26EWoNKA>
    <xme:kEUvYQm1gEkyuUgyhgX0A6tZVi0px2_Cu_naJyIrWk7KDPr-0rjJk0BpkKuSiOYbf
    FEZXppRHB0zNqXqI6o>
X-ME-Received: <xmr:kEUvYQaDH5jzIFci6mGKAvqm8_1tPXZPEgmZ2pvopNCXI42qSTuzpczmdwQwbSSsvGPQTJANe3rMvr_JLJ9BvT3Icv_hzdi2Up4S>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:kEUvYbWZjVf2sV_iXEuu8b--HKJC4r0lOnN1n9GrTdRJtIhv-ps-bg>
    <xmx:kEUvYWnUgmQA9fF7BYV5Fq6BrQG9fzPutcKn3yBiTGz-Mwdc47EjCw>
    <xmx:kEUvYQdjPbbcMkaDzq225wET6x2icvbfSm58r_KLGrQYAJ2vkvdzXw>
    <xmx:kUUvYYWTlQUZOVQyLoxeHi8asBMZhICB_v1SAIKNYsS9-zU6oWcRvg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:12 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 09/52] dt-bindings: clocks: Fix typo in the H6 compatible
Date:   Wed,  1 Sep 2021 11:18:09 +0200
Message-Id: <20210901091852.479202-10-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though both the driver and the device trees all use the
allwinner,sun50i-h6-de3-clk, we documented the compatible as
allwinner,sun50i-h6-de2-clk in the binding. Let's fix this.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 3f995d2b30eb..e79eeac5f086 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -24,7 +24,7 @@ properties:
       - const: allwinner,sun8i-v3s-de2-clk
       - const: allwinner,sun50i-a64-de2-clk
       - const: allwinner,sun50i-h5-de2-clk
-      - const: allwinner,sun50i-h6-de2-clk
+      - const: allwinner,sun50i-h6-de3-clk
       - items:
           - const: allwinner,sun8i-r40-de2-clk
           - const: allwinner,sun8i-h3-de2-clk
-- 
2.31.1

