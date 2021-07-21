Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43023D10C6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239096AbhGUNZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:30 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:58205 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239045AbhGUNZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:29 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id EA54A5C0106;
        Wed, 21 Jul 2021 10:06:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:06:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=2xUo/8Fgl3CzG
        XcU5k1nWG2oOC4ubGLej74LpMbV+qM=; b=HnrBKfP7zsQ+p3Ry/VOKSzTRzU63d
        TNqV4wJUH5XtkuQkLRH0A50OavvjZu+roW79zuGA5fybE79e1UrdbGU7LJbzVnw1
        krf9LwWqcJTpSTCHnN3byzO3iv8DgF2Rxr6Xqv/j4HJk8ncBSFuKdAiak3QuVBr8
        Neyjmsy9yPdLdAKd5PeIC/FzG3COMPWyjgDM0qcreMuB4pGQ4z5kBA9/Yqkd3CTV
        ue/enA7vwJwEkeDtACrGRFpRNcW+ZKFSRKJLuC/YEbe6vd8EWimYDNCxp7pclIZO
        vq669LVht6Ob3oHD8VppCZBSDf9YCtngvVVtgqoJNUOE4kKGmwZBUuU4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=2xUo/8Fgl3CzGXcU5k1nWG2oOC4ubGLej74LpMbV+qM=; b=gvGHKD8U
        9Q1mWfJeJ77Jc8K5O7Xt/4lAQ7E7g3OmL3NB2bsxUDftUsim8GqyZ/H1eH/8E0wq
        jZEaG2C7hed6GrHoXS/a1FWJFwUDTKd1F5+T1sUWOJSc9cSkgRRiANaVZ5ThNV+U
        zz8xt8Iz4wOLGC3l11ikhqpdsq5oDx4fJF6zTx4BjBJ7bdfSqWzQFNPk56B/00u2
        gHgJDFukLUZeXjvO7ZV6twa37tQoFnPwXI73h11ipcecEPnb2l3ihoL3ozK1Ypmb
        doYcToyagD+7Bif+D53HfNW9S4+AFqd7JDlm7XQPM9tnlH0n17FIntkGmIMwOvLe
        2gNcbh5l1KwbDA==
X-ME-Sender: <xms:zSn4YAsg0jvib3YzE5okgzE63WbcUh4fXYhMyaNd1QtfTg10kTOi1w>
    <xme:zSn4YNeiW53ARwnegfE4YGPbADxvgW-kYZwDGF24f_nHBjPM9yVSOL4qoBE8m-7ic
    veEwI74b3XMUE2ao2c>
X-ME-Received: <xmr:zSn4YLzX5du7IFo0VYFYrSlUdJ-zo9_BvhhygOglNrtUGp5U0Zz_lWEgjiBsRvvHBUbwvok3ErX4EqWp63qNQ4Nyx315A5otWBJB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:zSn4YDMv404fVl5aucr260Z4S8jtoct9to3_4TahnriNLrcfAThe6g>
    <xmx:zSn4YA-vaqyrgXdLEHXAKtjzNPEST0tFQ0IbhpSI9qckFc5H7ynRDg>
    <xmx:zSn4YLWfbietSnD0F3Le1b6u12xIw_OjuEy9Ajs5om2G7sYI9X9CFQ>
    <xmx:zSn4YAyeAyX0N8N3ecZxSOc2crMb-z7eZjCYqK2REpFnFHTjIkL1FQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:04 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 48/54] arm64: dts: allwinner: h6: Fix de3 parent clocks ordering
Date:   Wed, 21 Jul 2021 16:04:18 +0200
Message-Id: <20210721140424.725744-49-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While it doesn't really matter from a functional point of view in this
driver's case, it's usually a good practice to list the clocks in a
driver in the same driver across all its users.

The H6 is using the inverse order than all the other users, so let's
make it consistent.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 30d396e8c762..46ed529a4dc2 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -119,10 +119,10 @@ bus@1000000 {
 			display_clocks: clock@0 {
 				compatible = "allwinner,sun50i-h6-de3-clk";
 				reg = <0x0 0x10000>;
-				clocks = <&ccu CLK_DE>,
-					 <&ccu CLK_BUS_DE>;
-				clock-names = "mod",
-					      "bus";
+				clocks = <&ccu CLK_BUS_DE>,
+					 <&ccu CLK_DE>;
+				clock-names = "bus",
+					      "mod";
 				resets = <&ccu RST_BUS_DE>;
 				#clock-cells = <1>;
 				#reset-cells = <1>;
-- 
2.31.1

