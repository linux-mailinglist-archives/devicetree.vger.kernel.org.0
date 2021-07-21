Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E4533D1086
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239059AbhGUNYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:12 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:35043 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239054AbhGUNYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:11 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 535D55C0228;
        Wed, 21 Jul 2021 10:04:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 21 Jul 2021 10:04:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=aJDco98FdxsTq
        1BevNFIYnkk2zPLhxTRHR/syGCAZFc=; b=p3BPfiE6Sm6HESSgdp3BGiTzZXWl0
        qtYBqvWPoUEOCms12gtpRx2ZPNrcvOETMnnlLgHaKoUmhrzLgeq5wVzzf6Dr6SyU
        S1qgsfWDsjosb9NdekvWSk4rFLQJbsNleFRJkYOl5qUsX/b8Ek2DHXEO/d4J7+CR
        ANyuljocur1Qrni4sSfU3LsMSZ2p7JQaF7vvxTHr60CLFvNfuwaVkYJ2NYgxbXO0
        2lKq/rbnrbQC+e6yBNlzHFhUigW2NpAr4s/XszhSEnvAAXlUzAZ3Lq2xNRUnH4v5
        J0k4r7j/PlUl0QisgcYL66ItDhDuPEIpAD32P/V4ry40ZkYqFsYMo8wzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=aJDco98FdxsTq1BevNFIYnkk2zPLhxTRHR/syGCAZFc=; b=qqO4LchJ
        9GhYsTIMm0wBN2rxHsFZV6bHw6XYJUUdzSuG3aUCBty00JaGWx03MhIt9OUn8JBH
        TUr9ekeLLNuvbnUyVaeyfImWSkhu0BkmVrpDhQD/ktfLnDhkfyKzE1yTxXw/dS/D
        ZFBwvUEjAaIGCuALmgNxYjYln2n+D9oURTkqAFZ0HRNU5maGG4G7LClNGsJ9jJyk
        eGZE0hC33tEcK9pJFyMgeZYAjPyJzy4qvF7EJeI+HRjF7Bww9VeEW3pAXzZ7HHCn
        oMz/kejpcvZHrsxPZ9tXjyRTeHCRqwhOE3VAOFt58HZgjLVA0Bepotoc0yDfSvfB
        JJaheAJEqsjtrw==
X-ME-Sender: <xms:fyn4YGo2vDaGPAbMqejiIjgVDXv_TrQ2wZr_pkk7-qwOZ09IX0TbZw>
    <xme:fyn4YEqDtMSO5JusqRxN1xUIQbJ2kUdewJhqAMb1bvZSzS6UH0-PbcYs3PLES3FPY
    3RoZ5RQkScJ8yHWEA0>
X-ME-Received: <xmr:fyn4YLO6aBpxIYk9_uv9FCivjvz64NVHX_qOhwPQ9k_Kn6hZTDt5jPuVPiof_KiC0ywDN70n7DpQa4MazpiX6QQyloZGa8dHGWtm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fyn4YF68O_LPVmb7TleHdIZAQhQkyAbOvO1il62CGf2JNCzKfaPZXA>
    <xmx:fyn4YF5slzVrpniSt1IsVM84EKepakrriYMYhwEErV5k5BTZf8W_tQ>
    <xmx:fyn4YFg0ZMiWZGCUJofmn1mb6hB5zFsrQAodDlzbwUkVidWOyTLAsQ>
    <xmx:fyn4YCsKrHHd5KpnyiIl1cUcYvIxgt4KG7FaGAmY_ZSsV96lX3cWRg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:46 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 09/54] dt-bindings: clocks: Fix typo in the H6 compatible
Date:   Wed, 21 Jul 2021 16:03:39 +0200
Message-Id: <20210721140424.725744-10-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though both the driver and the device trees all use the
allwinner,sun50i-h6-de3-clk, we documented the compatible as
allwinner,sun50i-h6-de2-clk in the binding. Let's fix this.

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

