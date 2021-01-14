Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4C72F6033
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728673AbhANLgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:36:50 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:46199 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727378AbhANLgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:36:50 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 2E170160A;
        Thu, 14 Jan 2021 06:35:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm1; bh=Q49NfX5WldfxoNYJ3AWLpqrxsG
        gMnOClX69/hauP73Y=; b=WqtXkGMhm7jXgCzDISdcYBvxR5w7vNz6wRiSNY8R9M
        mz7eK2nv7WkE1wXEIyaWqvRKFVoHiVoITkaDQf410rn9SYh1qUKFBEjWhv8M7SBs
        uRYcF9CrTPSbE53NzDQK9WKVfIPhTthGf0eRgqPxc5RRKjJQptBUbD58y2dacJJU
        7jtbDkYRcF+YsgQ3Lv38/WwsFk/SnXjdosYg6R19lOiRosgCxjDWj+e9h1FWVK3v
        NxzWOJfhH6/9eWwW/XeTunMnUDZ8d5MCJjGRwfwx0hHHtr9biL5bs9B0m5Y8l3Pr
        6JkVLnjaeVCM2iinZR1ggZ7s5E0Gt4w8InlSqYVnGkJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Q49NfX5WldfxoNYJ3
        AWLpqrxsGgMnOClX69/hauP73Y=; b=BevmAGKic9b3pYTlTlAB5xPABKVZdLLHX
        53uJhZFzzWiwesj/nN49UU+JswbQ/wEFlCn0qRkZ0fu5lMWGr798N4D1upBmT11q
        /WlL388j1E1BdE3nol27Cn7l7AUOFEtK07u6fIPYSBvBtf9HnQgXInEq+fcNH10Z
        +Gfj5WqT9GIyyQlR3hJVmwU/WBH0ZIkyA0ZhAgYB/lWXeXU0ODSZOAHuMmJqSa10
        I5m0ATGQsY6QqFT3hXIdyDtm4sQC0XY5aNa5q9vmE0myrTPdt+drUf5KHS56k1vs
        etvq4HkrCoH8Geb5R3bStxOL1CfbX0w74Di+dIm9pjyfOWcFz5BCw==
X-ME-Sender: <xms:jiwAYLrw4kZHiM6EOvxnqDBf716KrRBcJDrnXTIXk9sr9a962uPI9Q>
    <xme:jiwAYFq3VZKo9LGe5dHwrxWmve5IDgw1wwK_bK_9mfpjHSqQxoy_nAo0BBRASt0RN
    N3TEmMypELBjb58JnI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
    ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jiwAYINFkltc2WE4kxbRvECQ0oPOUZgoNvFvqviiV55T86JxX8rS-w>
    <xmx:jiwAYO62YlscBm-NVDz-yJdNcQGL51eUfCGzF4Q6uirZe0B_5TUOsQ>
    <xmx:jiwAYK57Dd0PvcmnIAeWGDQKzQ_3KviHpoTVce3CC7jU7B-ZNBMwbw>
    <xmx:jywAYF0tJBQ3IcNV9HAHdJlDdRKxvPvpAc_3_MVpzixuASIA2elMRw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id AFD2524005A;
        Thu, 14 Jan 2021 06:35:42 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/19] dt-bindings: sunxi: Fix the pinecube compatible
Date:   Thu, 14 Jan 2021 12:35:20 +0100
Message-Id: <20210114113538.1233933-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property
to other S3 boards") changed the pinecube compatible to make it similar
to the other S3 boards we have, but failed to update the bindings
documentation.

Fixes: 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property to other S3 boards")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 7ea4d9645e93..08607c7ec1bf 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -657,7 +657,8 @@ properties:
       - description: Pine64 PineCube
         items:
           - const: pine64,pinecube
-          - const: allwinner,sun8i-s3
+          - const: sochip,s3
+          - const: allwinner,sun8i-v3
 
       - description: Pine64 PineH64 model A
         items:
-- 
2.29.2

