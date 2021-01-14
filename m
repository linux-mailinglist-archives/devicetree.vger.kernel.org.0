Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BBCD2F6035
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728794AbhANLg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:36:56 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:54841 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728792AbhANLgz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:36:55 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 3D7241612;
        Thu, 14 Jan 2021 06:35:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=C7T4xwiasrrOp
        sGxvsi367sJDHi88iuvAqSOrhTDqPA=; b=oXOrbFucMFqcYS00JD8Vp1BsKbXZe
        yFWcUWTjAUnbK9GTzzkcI7peqMmwv4+8ajyvFvHlBMopSJcaEN7B1+g3OYf3N045
        FDBkYd8aX4+zWqu53e98423nJBJ++LRSzmq+8ujt4NNnduSf1yi334VZAIYajl9Y
        qPmZ5nDqGpE/Yzbe5aJHmw+le7cAbVmaMUhnLf+71RrP1nf0S6zgiQSG7L8HGJTg
        SKlLpjziSSOYWl3Ugl2S6KpwQt8qoelkugzjcUGLp2qB5ZvxS3MSbGYMfvvE7yGH
        kxzR76k3F8bAMjnNj7R50KO0b9fOeFRL/hkX0SKWYVSPJXRgIT35Zy37A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=C7T4xwiasrrOpsGxvsi367sJDHi88iuvAqSOrhTDqPA=; b=ZiUK5h+5
        DHYgcDEvrPTjE77xWxP/lP30S5T6Q3EkJfv4AvfxngeSMkQuOOQsRfSvh1e4e1QY
        nJejX8qu8BET2inTDpJ4CY41Q9c3BamKudFqbQx7gxy7xBb2flAxprjo8ISALVWb
        NWrCtzNVk85I8rwvKKKNopVMOkXSVSNr5bkw0zQzKeKRhKqlJOvzgsKDjnaO550j
        XCQhGZTzGkn9Fa4bKEO1lG6U6HHEXxbvHzk0jXgLIaYINGBGEwe4qNXJ4n1U3ISI
        S/Hw04ZfU9cZT3Xe11rs5o6/v7ivp29WccmTe1pJK5OxVeW/I4JaiBMts4ZtzHN+
        vnlFjkClybCNkw==
X-ME-Sender: <xms:lCwAYAm0OKmc75I75Jm-FueN7ef3ixoTHQj9BVvMH_1mBtHbK_Wn8Q>
    <xme:lCwAYJTzcXIcRzlIjoRRlW6zir0ATWZNvZF7M89FGhSqYhZm_QreAcDG2pMz98O5l
    xK7bBQ_K02aVmxuJYU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:lCwAYOP7YU6lfAlHvILlYB8yCOb6S_fWhR_E2BH8gepFk7aquWuF2g>
    <xmx:lCwAYCVFNf8M61XreZy_Rk_7tN1gxqdsa_YO5iNlHDzTajJyaPZIuQ>
    <xmx:lCwAYFeVFnWMm2dZ8ZBEKJR_esRVz3Jg3g4T4IWMyc9AGoHY4Y2X6g>
    <xmx:lCwAYMNB9emdC3fdN0qVA0K5pL8C9fIZSrdw3PsN_fZQcry9PyjKew>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 7A0E7108005F;
        Thu, 14 Jan 2021 06:35:48 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Alistair Francis <alistair@alistair23.me>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to unevaluatedProperties
Date:   Thu, 14 Jan 2021 12:35:24 +0100
Message-Id: <20210114113538.1233933-5-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

additionalProperties prevent any property not explicitly defined in the
binding to be used. Yet, some serial properties like max-speed are valid
and validated through the serial/serial.yaml binding.

Let's change additionalProperties to unevaluatedProperties to avoid
spurious warnings.

Cc: Alistair Francis <alistair@alistair23.me>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 4f485df69ac3..f4d4969d87f4 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -37,7 +37,7 @@ properties:
 required:
   - compatible
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.29.2

