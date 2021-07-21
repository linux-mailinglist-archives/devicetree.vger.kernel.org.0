Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1AB3D10C8
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239145AbhGUNZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:35 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:35441 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239160AbhGUNZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:35 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 4BF305C0003;
        Wed, 21 Jul 2021 10:06:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 21 Jul 2021 10:06:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=UY4GXbLCewh4D
        KtrIt8fcoRGgLltwC/w1F48If2t4dM=; b=x4Cvz0PQe3JfhndNMSaUFE0w6EE01
        MUw/lXyXrG1eDBiHuah+9vwrTrOXKsDGyL/ukC7IzWS0t+ZclDkwy9ue2dYuF0h7
        fuA8Na9prelcP6A9LscXIlrbtZatbmmGWNeC1OgDG5sRvDzxA2BXHribm4q0DQ9Y
        j0IlAWerS4sAwCR2xDlHFzHyoxDsvou5GETHvVYHGHdNVC8OXtZZx6E51D8WPAfy
        1xWZR2hQgHduyzwAGRdzbkGqmYOMVVxnNqSS4N63w5VUfD4gOHe1isWlPxxfVSQx
        qY7T+lyGM7TytvNf7Q/dANgqb1pYhJRHfvFiuFN2N8pLUR064eQNHhd1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=UY4GXbLCewh4DKtrIt8fcoRGgLltwC/w1F48If2t4dM=; b=DZUF2oZn
        9Zg/124+RrwglVuJXu9Mhroaqpt4q1XPiYHejK7e4pOPTTjrch61Jc84W+12RkPh
        6saJy8FOG03v91ZkAL0mdqcvvWm6woB+SYEBxQApTSFiJfZgfDsFtWHL7Rri7CYJ
        v/ArPvNMksf3zRI+npESgMxd5gmfu/a8rGWUkK5HHNIR+aBSNtF2cihlzYjytA8f
        sEhqK1/251DQmKrzex4mdVXhrMJ7fzrXKNLyEDPflUGkwHw4gatyQngfiGu0IWue
        dmmkNTjgK5aF0/CZG6Bmyn6hAGQw4Jncz6pzwV+qFAsBYFxqX4lqi2fHqG5iDnwp
        YYfB5M6IfqwcPg==
X-ME-Sender: <xms:0Sn4YBSb7BAuit7PU7rq50sVuA3XqvPj6r1mrITtBOTkhm9lMH_0IQ>
    <xme:0Sn4YKwbeF7bZs3X8cCDyAl79OpjMEDabywmt4IuvJYpfmUWxgfN_i8fRmhBpNRlD
    93ADTfFNN9_rnIqHfI>
X-ME-Received: <xmr:0Sn4YG2o8MPxZUpGshzAmLfmupjV6eYDFAC_P6qt2TJCFcW-2eSRcfz8hyu7z3PWhT7tlIlEkTuJY7fT_o6Jez5QRf45eCGyrPLc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0Sn4YJAQKbSm76DRC9xr9cyAeP4Df-b9FuSJVVONDLKWOWoO2xareQ>
    <xmx:0Sn4YKgxYfuHCgOwU6cD0Z1jrlB8cqOb13BzoV0tLMG3p2A6KSMMeQ>
    <xmx:0Sn4YNqwxVLinJuf_Gnuk-68meJ1UIfBZs6fI6s97EovoIqdAYaeLw>
    <xmx:0yn4YFXtxpWXSFUECtQSKjL_yrfj2b8ZqtIy8svoJM44mc36-24hnA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:08 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 50/54] arm64: dts: allwinner: pinetab: Change regulator node name to avoid warning
Date:   Wed, 21 Jul 2021 16:04:20 +0200
Message-Id: <20210721140424.725744-51-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fixed regulator clock name has a unit address, but no reg property,
which generates a warning in DTC. Change its name to remove its useless
unit address.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
index 7ef96f9ff7ae..6a4af14718f5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
@@ -77,7 +77,7 @@ speaker_amp: audio-amplifier {
 		sound-name-prefix = "Speaker Amp";
 	};
 
-	vdd_bl: regulator@0 {
+	vdd_bl: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "bl-3v3";
 		regulator-min-microvolt = <3300000>;
-- 
2.31.1

