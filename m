Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 071753FD69B
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243564AbhIAJVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:10 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:53813 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243578AbhIAJVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:10 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 663335C023C;
        Wed,  1 Sep 2021 05:20:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=mM2cPEOynY67g
        f+68NmpZKfnHaPn+PjsYcgzUFY3KnU=; b=p6h7tZ3wwlm2qJnlVrxwURLdWJj9g
        RNeIHtEM/7UwRaZQCqX6bDBu5sw/ZOg4ZoLyLYy5AAbWihjVbyR5WGSqKH4c3k4d
        N0An+MZswbQsCK5yJV+X5tMDhx35sKrWa1WMV6/t9W70/m1CsXi+D5Zfp6yGKWVK
        qSTjJce9e1fwKZBFtL+15vNBZWBtxUTL2iZ3Egi+957Ts1eTPYmU+F6ziCjT0xZE
        xahfrVG9Hreq3OLODMCNBxhLjVfv3tDK+3oW5cPBrxu72IlbVmOnS/tc0Z3seeB9
        o5ymYj5uYLnrvDW/cCeTlF0xAeS/zAXZ7O6DmQGFHhNzKSaDIDG9MtQsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=mM2cPEOynY67gf+68NmpZKfnHaPn+PjsYcgzUFY3KnU=; b=AdQXNaM3
        wNF6eKPf8622p84s0b1d+N5AR06p5VHmXcGJBoSbFPqT6SIa9mtf//DeCw1tAzxz
        OuqHU2lZLgiyFF9oHyu2rpvYqQj4/79zpGb+0YfqfsD60yLxSebJCtFc8wFvsURp
        6/dLlLkNqlGJZRGVgJEILEiqL3V3LqOgBKupn0M/Ed+xKu7IPk5qqsTSaEYTqfbJ
        n/GrRHubzt6kGiJXKBN5mFob2OZXx44O9uac7tfx/0gDdSXU240z71kN6IqBZEeh
        smkpXneNgty3zRKDW7zMpG54sgKZcfHBlNxFGfVafZGYVhmSSRZMYC7HWed6B+Us
        tFqvMoLme4w0Uw==
X-ME-Sender: <xms:zUUvYVRZcG03gRXIhO9LELIvSLkteTNjXXGLOMqtxvwHwmt7TbQRTQ>
    <xme:zUUvYeycfQKN6tXOcxow_RIhrtnhY9RayzpvmN54g7t2KErdXRAfghgLckcspntkN
    MPN-68lwr077ygUuH8>
X-ME-Received: <xmr:zUUvYa0waDNxZxiNxpMsZpgh9EQGg5eJHPuGk505Or250SjowiL-11uJ9g-k3h217crEVBqdMk9BLqDR4WSbL0tvD5FW_hhHeozd>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:zUUvYdCTd6n2rbWDQBZvcWa9jQxx0ucLSUO_xxn_Rz4Gei307H4B3Q>
    <xmx:zUUvYeiTuna7Eufj93C6NLQVYcEmSSBG4EUBrIGbV6Q1Aa4KeeSEzQ>
    <xmx:zUUvYRoGGjmtrFMti0m2utPITToIS7Uow44ktQf2rNHfbCoTSJbVcA>
    <xmx:zUUvYZW7tk_B7r-htJJCiWYK3c1RL8kIZxxZfT6WPpsqGRKueIJFJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:12 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 44/52] ARM: dts: v3s: Remove useless DMA properties
Date:   Wed,  1 Sep 2021 11:18:44 +0200
Message-Id: <20210901091852.479202-45-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The crypto engine binding doesn't allow for any DMA property, yet the
v3s define some. Remove them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index b30bc1a25ebb..44382e36e825 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -285,8 +285,6 @@ crypto@1c15000 {
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
 			clock-names = "ahb", "mod";
-			dmas = <&dma 16>, <&dma 16>;
-			dma-names = "rx", "tx";
 			resets = <&ccu RST_BUS_CE>;
 			reset-names = "ahb";
 		};
-- 
2.31.1

