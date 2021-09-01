Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E8773FD69F
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243583AbhIAJVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:17 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:51459 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243573AbhIAJVQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:16 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id A0AF05C0220;
        Wed,  1 Sep 2021 05:20:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:20:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=2xUo/8Fgl3CzG
        XcU5k1nWG2oOC4ubGLej74LpMbV+qM=; b=bn2zhoIEDjSPhMBu/RZMoNAXwOi+9
        CP9/MdtKu2ia69YYVSAsSVJRc8yD0k0t+6wenemHHJIoci87XPI7jwz+xsF6ZKZJ
        zGVQWgdVVrhorCqzb5bOygSqQ05SWbgPFmSzD9BWuyidFvgEsZDwXIQMaZ1TxAa5
        ZQgZPWAcZjRGClwKNC8xs5q3cmMW3Srj5tvYPbTkbqgJGoro0l3A8lnQ2wDP1zET
        1K3ytdA+ltcFvrsY22kD9+vpazCjXAwBlolzgiaaxONDWOOy5FCwsBqNUS3uEuTb
        7+Lu+mxeFWGRobvrUmj1KW9AAGMr3RfrLiIl4DyH1Wn4hh2QXN6Eu46xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=2xUo/8Fgl3CzGXcU5k1nWG2oOC4ubGLej74LpMbV+qM=; b=wjtiFNK6
        DIgO2zCE4dscNHiXJx6kFxYv/4vbWaC/Ur27eakcNbUnYl6V0pFI84dBjEJGVX4U
        YHklD9vaqcnslljOhrmKciHYqoztOnvsN8/xVklbLDyNqdLRga3Vwuav3QUesdfO
        rVkaPWsN1wxU7h3L4qSoDwjhhuzluNE2HW6wTmbSjXSP3+h1EUAGtT0yP6/8R5mm
        xIBuPbg5VsSNkaSF/1yFsQzKa808vbyIhN9apwnoaru0i2YBI7/PvvlpoqY8gg2O
        Plt3Dl9lofzV8EuU3MIHVk4rBugrF7kIQIZcp+0dJSVIAZQmOKt7z2t6lcKSVhe6
        5aEaHdzJYVZGrg==
X-ME-Sender: <xms:00UvYbj1_Rb0h0xzLi10vNaebyc7NGGfEmmsx4_ncli7V3OC5OiV5g>
    <xme:00UvYYALe1JsjyEgROF-Dd6PnNAt8U5dVMAWJ0cOBchYlv8fbP6Q4gmuru0NKnGW5
    15JOAkhEtvZSPM94ck>
X-ME-Received: <xmr:00UvYbE9GTzx8hXPJod7yaIKU-0KCnBRBKk-alVuCTX_s6OP5npmbIFVdyIZjvVpiFOLDHXL9LMROWrOC85jukqAH30Ria31aPWv>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepieenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:00UvYYS2O-a49I549SLODegmPrgEgWdRlkkdF_dKPO82EojtZu0I4w>
    <xmx:00UvYYwSW6NOLkd8cel9w4hof3akMPo956zPYm11kGi0ewDX7KHSsw>
    <xmx:00UvYe5JZ2KeWTHsamjm3BlRbkJG1m5cX7arZhyhWspyjURaXdP2QA>
    <xmx:00UvYfk4NNVe3YwnJxGyuus3cS7BuHUIuoyzTmCtmkR9MV-dXWfRHQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:19 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 48/52] arm64: dts: allwinner: h6: Fix de3 parent clocks ordering
Date:   Wed,  1 Sep 2021 11:18:48 +0200
Message-Id: <20210901091852.479202-49-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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

