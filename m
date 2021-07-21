Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A36E3D10C9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239151AbhGUNZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:37 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:37769 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239157AbhGUNZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:36 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id F3DD45C01BB;
        Wed, 21 Jul 2021 10:06:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:06:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=VA1mIc8yNbTF2
        OIlHCjDFCpG6avOvBN47GRAdoilK7o=; b=ai/9FeQ3lUsqDKhJgTQMZAFzIVq1O
        mwc5BRdeUTLK7it6wQzPVgdZXV90ruHTz2wTdOBSVyAziSGzMq8r9YQINjBCdcYr
        DwXsR4sgKGKaLnuaU5dYuXnjBZvs5XVhw2JPgv90fLk63rrf6K25Z8Y4CUmpR7HW
        9eu1u3mcpw6QmNax3ip10XpLhZD4aGWljApNbZQGcTvb886/+hK2UeTF/DiI117T
        8MWSUrG5oYX4NQaZWKUTwOqI9rAHdlvP+h8bnbcSqQGENGmLsX/zXO5i2X2gz8wA
        FHfitLSMbnQO9RXFG1ix0fGQdgDP7nrqkk7HO6tXHFolOT7jjAhJE+4Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=VA1mIc8yNbTF2OIlHCjDFCpG6avOvBN47GRAdoilK7o=; b=Gz998iOw
        s9GQye0FA5l0t4C0C1aIwy0ksvUzs/x1r1sb6nL4P+2N0hNVoppL07V9DxxKNSNI
        rEOkGh4xlDXB0105cAWGfINGrIOc2cJzYQWqkhrr1z8zeHWiHuHwHiGSFNxIIpbE
        apxcEQBHlbOZfXpW8KAWWEedFmDQdLuJUMLlDxjSpcFcrcKcNUawi87aQ6m1rbhI
        b8zJFNkUIUSc7krt2Ctd9zD8wlfyweZtn4YH6YuSIKj2ukaISs2cv7W5nSlV1ulq
        s9aLxqCygVpjutY+SOPrOJMw50obBl7kkIclvtocejhM9KiEdS1EYsrSLHOfU63g
        w+wrwsqn4UzotQ==
X-ME-Sender: <xms:1Cn4YA5zFf9qOfVFs35WGDyd1D_xcmZgbOBQCz-QwNkGuluCrOadwA>
    <xme:1Cn4YB6tXl7i7YSoBnR9EiXSYkQ9B5wvHCT8HjNpmSJZrZ5ylo6NEMNCzjyfGvRcT
    I9NZT79buXsJxpvLyk>
X-ME-Received: <xmr:1Cn4YPcB4dAxFoQOaIrTrZyg2gUxThrksAn6-QKkxkRtoj9jMXOItAwf2FFxXlQ8LadB_VsLNrKZQ-BSb1IeuqmNEIYR_vT0IcS->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1Cn4YFIsKV6zdTv7FWNFsGcioA6D04EkbU2Fb8XZogKkCSzjGeHLdQ>
    <xmx:1Cn4YEJPNUkOKBm0Y2jk9Rv8yueJPHOYG2hI0tZ_Atlvxf9-VQuA2g>
    <xmx:1Cn4YGynpt54nwwnBtHksPYM85nZZ7eJ55iLsWa0JsullyqnjgZ4cg>
    <xmx:1Cn4YM-3Hf1uXjcmlGRfK7sOzo5adkazp2pORstX4hbp-IxVc4ctMw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:12 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 51/54] arm64: dts: allwinner: teres-i: Add missing reg
Date:   Wed, 21 Jul 2021 16:04:21 +0200
Message-Id: <20210721140424.725744-52-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The anx6345 bridge mandates that the input port is named port@0. Since
we have a unit-address, this implies that we need a reg property with
the same value, but it was found to be missing in the Teres-I device
tree. Make sure it's there.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 45e1abdf70a0..52e032f7fb68 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -139,6 +139,8 @@ ports {
 			#size-cells = <0>;
 
 			port@0 {
+				reg = <0>;
+
 				anx6345_in: endpoint {
 					remote-endpoint = <&tcon0_out_anx6345>;
 				};
-- 
2.31.1

