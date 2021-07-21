Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92E973D1088
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239063AbhGUNYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:17 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:45107 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239047AbhGUNYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:16 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 25AE55C0211;
        Wed, 21 Jul 2021 10:04:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:04:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=jlhcm8eaPYQZt
        iKdBXOJHc6jhab187whDJ7yb0XbDwM=; b=yHWfsVq1awzocyaKnbKqxeD7JVnpk
        efj6G8lRPCF1+LeERliEZqLh+dQUdQAWXHwV905behrZUn9K8xjNm4XViQjNEnl3
        Av0tPoqBBtHhdiArcNrwbFj9nvtH2R+CVZ+nzsBZex8ZMt6F4yewEQmi7SJbwHZb
        u3BAYvftlkYr4R4wh0VIh+P/A+QINDduBPkmnr30TQhaZLtmIznYv35FEqeWwT4J
        d4Adrsnz4OzYThxcbuD+CPPy20dAKzsTKGtbGFxkagxHlDSbypxBtsujghtiiYKK
        CUtWxAf+ZicesFDifkmbPHIX4YwmvINMo9a4t3n6fEyGyNGtE11BCcWJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=jlhcm8eaPYQZtiKdBXOJHc6jhab187whDJ7yb0XbDwM=; b=b5ktYydm
        hXzsE6lPplwat41uTI5maH2DsE9uJwH/xtzzZ15plZ9R1glypSh0a6BRv0PYdHpe
        U+xbSXEfMHmCWc10eYFe7UJSb+SlkyRSbhvQKAjSjSMIDGhKjNZU0xwDDvPn6TNu
        jbZYBScBdqrDYeEd/4d4SZExy96GJceEavH+GEC6by+m51kGpvJmG1C9aiZWt8qb
        HJJww7ZT6IcDbeEdOGhFQmKw8DE/zrNxcQ65p+3J/eTwwUJy7mu5YkMDRHhpzTN9
        SSSrNR9By+y8MTZxLFPkY0n0Ha3Rc6QpHHBgzT254Ao1TWIZLsFQPVW4qzEeuFvj
        j+TfnNtBiVKn6Q==
X-ME-Sender: <xms:gyn4YFKBf70677kmVkRTvw2BOUIuxaQUGyoA9isT4bsxa-4cSl2XHA>
    <xme:gyn4YBLYB9ncFQSMDbCqb7bx5AMA2Xxc_-aakDO-3L34BLm_eo2T34ekpfAVjCEB_
    d4jUCZbH4amn4YzxT8>
X-ME-Received: <xmr:gyn4YNuDbzi3HWhkEEnsMSRjJAl1hxEe2tpcUms3XqYRYx4LCAW5r_fpfNrwpM2M0SlS8BtPu03-WxWJylJjyAPNq-bDPnfCqIr9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:gyn4YGZSufTjfrq0cQpO5BK5WAxlN9KAtV0fON4au21Fa6GCJoH77w>
    <xmx:gyn4YMZ9O1lkccOXHNrVaVbBKIFcbQ8kHfMGHteqM8UXioHpA6Af3g>
    <xmx:gyn4YKANw5iBQGfAnyBR0gQ1LnatNCsLXMUvLhutKVKwbROAE8qfUg>
    <xmx:hSn4YCMZQ0q1AbjKrpAy_6JRI2h5124ptpQkoXRkvwnO7hdSGJR7PQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:51 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 11/54] dt-bindings: display: simple-bridge: Add corpro,gm7123 compatible
Date:   Wed, 21 Jul 2021 16:03:41 +0200
Message-Id: <20210721140424.725744-12-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The corpro,gm7123 was in use in a DT but was never properly documented,
let's add it.

Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Removed the dumb-vga-dac compatible from the list
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 6c7b577fd471..43cf4df9811a 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -22,6 +22,9 @@ properties:
               - ti,ths8134a
               - ti,ths8134b
           - const: ti,ths8134
+      - items:
+          - const: corpro,gm7123
+          - const: adi,adv7123
       - enum:
           - adi,adv7123
           - dumb-vga-dac
-- 
2.31.1

