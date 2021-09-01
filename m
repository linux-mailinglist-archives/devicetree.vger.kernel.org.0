Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D87813FD6A3
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243604AbhIAJV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:26 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:46943 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243606AbhIAJVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:23 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 07C695C0148;
        Wed,  1 Sep 2021 05:20:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 01 Sep 2021 05:20:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=x6SUnwSnvns1I
        4/Jm4QVOiC34JWxlJNEVjfzxm0kOew=; b=Kw2ECOIv4uuW/sTdrzyHq+84qcUX8
        D5KdE7vD6bNxJP7q5PEnI7imrzLkSNs2n/YBsGapZQ76KROYPhKFu09YyoJjWDJp
        /6t5HMESx02Iza0uqAWU3MsZ/Zw6fkgiXQmP5TcmUgShAVq0Cj4Iurh7/OSvZunr
        JM5q5NpYhK2i7cwXLo/+SLkLSpYsQoUhTnxKNlQRiiOk+thpRrnxzUq/7GrWStPM
        rTep3iIFyO9KsDOAh8W8+qYF/bUfbW5s3pFKZGp2GmbBFRaR32truS80vLJe0vHR
        NTG2cTUFS2eWjCxgY8BT8BWI26PwU7tYL80amkYVG8wUNZVFkiG8HSzag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=x6SUnwSnvns1I4/Jm4QVOiC34JWxlJNEVjfzxm0kOew=; b=P1fxlueA
        MF/pSPLt0/h8ZQDuNTjYo8RP/PhOBta7551e8PeKMxRd2oNFJxWXlybvTEzie7DW
        tRosF9XerwIycCbI8+Zo6GW1vpSiOqIac6keuq/tuOMTuDolY6tTYghWDiZB2XDo
        znX69hhJQjE0L86VCKJWUrCiXwILM9K6c9m9M/JCNIo1jNjnKXvpqLoTUE63V0VD
        9N48JjnvlMJA0hQ3stTgYWSnpPQBDb/eL3VoVbBoAhwgHfm0Tyy7UTDcAFxEirNF
        MyGiQ5vyVabaHMO3Fq1DVskyyV1H4v78AN5Efgv95bYQdZ66q3hiArPrnHjZMxuz
        0h719NAuZXwYyw==
X-ME-Sender: <xms:2kUvYTxvufAWbCBd1yeCJrQ-McPYi-WLw_hzJ2SLHbtsRiSRoEFeHg>
    <xme:2kUvYbRgKvT-fgDfQRbTT0HIRgtJmXJjB9mmkO54fAAGFEQkg-nAiBxwaNRr7FBAv
    FLbE0Kku-J2Dy-4-tw>
X-ME-Received: <xmr:2kUvYdU8PT5kKw7aaXwOkCCY9PbwM-6jQgFLR7dvw3nHhXkdup0QC8AQiJRNqJQlL8MwBi87dGsLqWlnsuWAia7nQ9Eg3dyhsjww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:2kUvYdiw-ZMbNPusP3mD2Z-p6Bd_ES4uh9GGbEBDLtDcIz1pPyYOIw>
    <xmx:2kUvYVAglumirEhbp51cNDPG9PC9pu1_56VydMgUtoWOuHlFFrzjVg>
    <xmx:2kUvYWI-mgDSry4aBYXGZpNl2pGRmBqVRE5ddE4YrJ_rHMKMgNJ_wQ>
    <xmx:20UvYX0bkSSx_vE31qq0LqPoU52-iiDoDO8KVE1MCAXlo22qnXzG2g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:26 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 52/52] arm64: dts: allwinner: teres-i: Remove wakekup-source from the PMIC
Date:   Wed,  1 Sep 2021 11:18:52 +0200
Message-Id: <20210901091852.479202-53-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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

