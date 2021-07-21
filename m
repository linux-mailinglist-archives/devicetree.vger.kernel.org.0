Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2916C3D10CB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239165AbhGUNZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:44 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:33105 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238592AbhGUNZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:40 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 34F4F5C01EA;
        Wed, 21 Jul 2021 10:06:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:06:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=x6SUnwSnvns1I
        4/Jm4QVOiC34JWxlJNEVjfzxm0kOew=; b=gQHYh8kE2encXRSb33+5o2tySwhOC
        aNOiHwvE3hsuskjXwYC+QEIId8fdRoliGz7xzzhW5b7sF6+ukVsR6C1SKlphCLqW
        3ytLqgju70W8s+sa7RNGqejB/Hc4u4oy2lRX+7dgl6p2r8mhCfejeothMlMO4+VV
        uhS4Rf+C7SyP4kwIwDnI/1aHZDW2DJuJuJN2cdmAE174uOgWSD4dJBV+3F2jLy2Q
        tsQ/Hr2bl0fLbrpMs4aqS1KxHlqjDfoCZ9zuK4rKguSvuJadJWyAQoVaGjfQ+8B5
        BThRsak9fa/9jBAHGjebyf01Fq8Xtdw9MN74tHLX3FxPwY+ZFpeyNL3Pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=x6SUnwSnvns1I4/Jm4QVOiC34JWxlJNEVjfzxm0kOew=; b=bprPQ+v2
        a+Xou6QRTtD6XIaISqI8TgB6cDnCKIstMzoqrMF3KAUYJBjebgPsEUIXl6EGHRhQ
        iocGqYjG7rBxS3xXhUUG5OHUAadBlev2tFKax9edhjIiH3i8Rd+KkWiQGH4iwAYB
        +NEfIT5bZopoOioJw7XQqw8kXrzrUrHagXoT+0IzVb9wZnizV4FCdCYSinPwR8dd
        pWPoe46rt8TvcqGcjgy8izv4uRdnzWXhdhciLKrNwcqaveqlSl+IZ0usSJfhaEft
        kUF/jr/IfsfHk3Q5LDM/EMQoenSyCrmLdAuV2tRnZDXSJG8MljNy4+5/MhnOaMYC
        Hx87g5+0+Z6wzA==
X-ME-Sender: <xms:2Sn4YMogAQBYHGVHDpFvtZ7NhmUAY6HWCDQDi-HiFwoERD4ngUw29g>
    <xme:2Sn4YCqOHrJa5cGHxxWIrir5aLg2e1nT4QTZYoUMg32cnkwmyI3N0IlpdQLd8O5A-
    5mt5lQesaoMkCeqyGc>
X-ME-Received: <xmr:2Sn4YBOc1LzRf-bh7obYGoPAh4u4j85q_zmdQZmR71DTGD35xe0--dM2uJXEMWrqiaqaYnDjDyAdFsVqU0xT6hb42JPLVYMgRVKe>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2Sn4YD7yJgs-qIdRmUwxZLflVEbw9bhKVyhmG9u8FKZ7849wEt0Yqg>
    <xmx:2Sn4YL6cpA7RB2tSR1rWFTRf58DycuSNlINq092faK1eCvIulyTW9A>
    <xmx:2Sn4YDgN-ORtZQFlQ9QORsl-XP_hkC3U6iXvEPp-qihE23SynShYAQ>
    <xmx:2Sn4YItMgEk2QFBBO2eb6akgXprSt_qGKo46B0u7Li0YTHYSoX2NAA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:16 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 53/54] arm64: dts: allwinner: teres-i: Remove wakekup-source from the PMIC
Date:   Wed, 21 Jul 2021 16:04:23 +0200
Message-Id: <20210721140424.725744-54-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neither the binding nor the driver make any use of the wakeup-source
property for the AXP803. Remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 52e032f7fb68..aef571acd67f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -208,7 +208,6 @@ axp803: pmic@3a3 {
 		reg = <0x3a3>;
 		interrupt-parent = <&r_intc>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
-		wakeup-source;
 	};
 };
 
-- 
2.31.1

