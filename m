Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB5AC2F604A
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727729AbhANLht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:37:49 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:52481 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727210AbhANLhm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:42 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 63D9C1629;
        Thu, 14 Jan 2021 06:36:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=4tVHNA9SlQA8B
        TpNFogrGE4lRZOYb7c5rEfw6IFZYEU=; b=eec0Qlrh5vsQdRX0LvpPjA4oHA8N9
        j7F85NVUeAg+ra/kPog+gNDVJVXitqt83OoHTdWVeqi5fESC1D17xu+UE6TjgIZp
        aV8w6Y+L9rc8HkyLdOjSalKrm/OH8gSg3l5F0mwyv13GjVz+qP6AZuwmZyjtG7U+
        iORKPF3dCrjLdo+xsC5Y2xCPONSTcOOWVvXWWViMyHdTgwdWTkFCIgEGKXCJH8cn
        b2rcRM/R55c8Sk4k0C1GB4OLyT5E5E/e9pqFAl/Dxdbx2hZqQehutZ/vYDZL7NB9
        Ax+epj6TFsjseuFqamK8ixAzcg848rnV9X3SrqG5chbnWr45SKOpCOrtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=4tVHNA9SlQA8BTpNFogrGE4lRZOYb7c5rEfw6IFZYEU=; b=eBi7vmoI
        5sTOra7lDG9iHJsJSSLZb8F+vZQOnSbO8M162ODp3TTNcRIvjw2Xf1jAq56GcR5f
        hfNEN2aBByuTglbrnlIoYTMl1qSzSQDDDTdl54WWO1XfxPP9Wu96TxHSgenIC3BW
        u12ta3w2XdjTdesRYvovaNf/Z+br4W6WnqYS9qgDFwHIu9dRHMQAhIKf096XDR5W
        kmTQ/yF3uBWUQNJBNijqjqRWs3HZk+mUsh6y0QkmivYF2OECo1SOSbEGEPZzHK64
        3W92LV0/JNO6bo4o0+oQ5NvU96DMfVGNHUCoEXL/cl1G/ZXzFWGs7uSSg3KXT64N
        OM7yMo8McDfzdg==
X-ME-Sender: <xms:pywAYIiAd0w1eo8LDH8LUqC7Ta2IP0luC63p1pn7JKHbHp78YhW0Ew>
    <xme:pywAYBAGsqHyUD3kNXsmwVlIOdSB0Hmie_Fu96qnI6bRTqQCfkSaWnrX1kRiEQ4tl
    wdT1RO69ADNwBb9Zfc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedutdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pywAYAFNXzj-Rcsq92xRqiV_7rRGw9iav2ClQg8rrh82_9tAEgFnjA>
    <xmx:pywAYJQbkr9WIblcrfwaxGc77wgw9_5EDavSFIXQbu34pAh4xjF2Ug>
    <xmx:pywAYFx6sNYj9a-Yad6bM6WGrcqrn29soaEUw_Fcf1IcxRms5A6Vow>
    <xmx:qCwAYHv8CCGa6G_HJFnhLf3BH_-DO1JtJt_xVmgsZOSzmzB-sz2Grw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 9BFE71080063;
        Thu, 14 Jan 2021 06:36:07 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 18/19] arm64: dts: allwinner: pinetab: Fix the panel compatible
Date:   Thu, 14 Jan 2021 12:35:37 +0100
Message-Id: <20210114113538.1233933-18-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 7fa40ca7ef61 ("arm64: allwinner: dts: a64: add DT for Early
Adopter's PineTab") introduced an ili9881-based panel device node but
didn't conform to the binding. Fix this.

Fixes: 7fa40ca7ef61 ("arm64: allwinner: dts: a64: add DT for Early Adopter's PineTab")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
index 652fc0cce304..6265360ce623 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
@@ -17,7 +17,7 @@ &dsi {
 	/delete-node/ panel@0;
 
 	panel@0 {
-		compatible = "feixin,k101-im2byl02";
+		compatible = "feixin,k101-im2byl02", "ilitek,ili9881c";
 		reg = <0>;
 		power-supply = <&reg_dc1sw>;
 		reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
-- 
2.29.2

