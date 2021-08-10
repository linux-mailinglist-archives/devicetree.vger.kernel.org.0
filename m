Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB82B3E52FB
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 07:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236404AbhHJFkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 01:40:05 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:32797 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236443AbhHJFkF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 01:40:05 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 70DFE5C0166;
        Tue, 10 Aug 2021 01:39:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 10 Aug 2021 01:39:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=BNFa4mi6ecA8w
        gppMB0/0cBEmPU86girhv2Gdx5EVx0=; b=lbro05ocr0wGxfH+bfy54q+/8rsjm
        3sCJ6mHxSyg6aUl54T8iAfHfi3L5es8bHT1eSdn7jg0sYLQw0bfBVWQxLCSIJuIH
        B+93LVVY+VBjrZONQpu85GO9E2HO4gVPUKf+AvFwDwdlKfZwHOmsELqu6sDvCjNh
        IEyC+JjoW943SA56xcURZ5Sp8jheLU89h7rHEPLNM6V17xzFoRnQHR1fbkGyEptk
        ujoKUpjbYUkjRVPsBTOQ4FtXL+z0Rd2YEayrMAIXuiSPVz2Usa1I9qV9q3CsOLOH
        FFmdq0ErG+NMDiJHdvn/XCf1p6d73Y0Dc7QHuOVUkc2tTvhLthm3GfCBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=BNFa4mi6ecA8wgppMB0/0cBEmPU86girhv2Gdx5EVx0=; b=wQJxfCcO
        3z/hvnXkS3usSBo8M8dOPUyD83PZ+/AeU9oYiULcpJGcqnY9+5nanLSVO59xayBi
        oI1OzyZOOpCPUOQO/hkHoJyIJVrfOZTiDLGucy2SDm5Js/Z7WpV+fnISpu4CQcEw
        xjr/TSzb1eMRHRWPs3vtHVTK15jbHBeZdJzH/MoIQK5LZbYGW0L4LCz7qzvoqrPD
        pMkpedFtGu2aISpdn1j8D7Am9PNBvqdoasdPPSASLdSngbOADzdxoJymfqjUqhJ7
        eljgOl4e/KGEZhDSumOVL74fSgLo0A2cUdXpZPrrQhFfpgoMKGadIdZc2vudhN9U
        QlGOXkrXg8rGug==
X-ME-Sender: <xms:HxESYTueSQjZGgBzt8A5UEQbZDxX0ApkuDJ9M58umoFGhHuPtv0eeQ>
    <xme:HxESYUd92_t73gpHGp94PuAJgbfLImL_Vwab0l8KsV1YSpszmBU5tsePmnTKY4xd7
    0y4gXW5Ux87mFSXTgg>
X-ME-Received: <xmr:HxESYWx51nX8Fz1hLAz7v5VUna2r3hmp2ViH4CpJQaIMv2IVA-JS6vKrwGTyfx-mtd-pZOXvHO0PxCD3DBhV1-_KqECEOKoPaLad8GcAAA5CxnFTxy3QwJGWs1R153Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:HxESYSMn3LmYeoUBuSL8gBe18jzzqD4-wHKl_SS-pQU7z7bfmsC1fg>
    <xmx:HxESYT_gbZgykKvFO7pGZukX3DULra_oYIa8txnBWWSywv1CrMENZQ>
    <xmx:HxESYSWxO3vzLXHk_IP2wZfLkS6sBX3RDunxieiT4ABbp09OSa-5yA>
    <xmx:HxESYTwIFyxNt9_-Zbl3LRX8b4ZGj3OmAzgZy0JqyxhoJawmp615Qg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 01:39:40 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/5] dt-bindings: vendor-prefixes: add Traverse Technologies
Date:   Tue, 10 Aug 2021 05:38:26 +0000
Message-Id: <20210810053828.4240-4-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210810053828.4240-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210810053828.4240-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Traverse Technologies is a designer and manufacturer
of networking appliances.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 07fb0d25fc15..eba2029d3ba7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1184,6 +1184,8 @@ patternProperties:
     description: TPO
   "^tq,.*":
     description: TQ-Systems GmbH
+  "^traverse,.*":
+    description: Traverse Technologies Australia Pty Ltd
   "^tronfy,.*":
     description: Tronfy
   "^tronsmart,.*":
-- 
2.30.1

