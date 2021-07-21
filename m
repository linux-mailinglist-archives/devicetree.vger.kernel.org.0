Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5301E3D10C7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239147AbhGUNZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:34 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:44111 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239045AbhGUNZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:31 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id A71A05C01E1;
        Wed, 21 Jul 2021 10:06:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:06:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=aaXXdzYbymxje
        EkP7346zCSc5zXoLr7WGI9cdcAtp44=; b=cUi48HonGcf8jSWXv+71z7QiESmpu
        2c7eQu1rjKsuwGp3JImvN/8oR23Jjr5GECkc8sNQkjuStB31gjxafT1Tns4Esl8s
        n8YevSWRnQNxU/I/DFSiRfJL4qF27S+7LH109c1beGieYZxWiJ0WJJwkMJ55hhkd
        b5THtwEn5jxklLPBfel/jbgD3VZOtRO08e3JkEId8yHSCsSSwr8GFrpYh2Y680YY
        55nxsZn2Z1F8s2KhdSoahNVo+tfrTv+qq/d/r7LTC85ezu/kHhTCBsKtszPM3Cu0
        UQ9+HEpgpf7hpmsz5ebAHCrMKHYhAefhWrG+9sQVftGntmduMAV6W3cSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=aaXXdzYbymxjeEkP7346zCSc5zXoLr7WGI9cdcAtp44=; b=fA0oHnz4
        DWzjmnVwM2DkosSRyIdZbgIONNhrlGG8Me2TW+ZrALbF9baRAdjYDfjLueAJxVbP
        kHR/lT+Ku4+a+P5kTfUzvPqTYV/BVE7RQZzAKjxynSDMIoQgdLY314/rvY0R7nC/
        X4Vx97nZkMYlwfYWq5tusmCsf1JJ2M+AYcJOjwnlq/05tKUwfQFQ48zGrU4NZQXG
        9ml/+iDXoQPM9TwckyZEsOxlpgqfQajS3Z0DJ7WlGwlr+EkoKPPS8XIVuawsAVob
        mL1SUKdyFdfaCsiw+0gONApNL6ny3X23mePCRMhiyePxHM+1ofj2ZLrO1KToaAZG
        XLQLm54gX6k1ew==
X-ME-Sender: <xms:zyn4YIzbthDvf38t63onBQOa_OfOUGjnMPOKJU0UsetpXJNdaX3ySw>
    <xme:zyn4YMReIXxgSR8gad__eWA9f8HVhd6U7dGhrqDLJOUixusg1FJnrvVS2tX4T3lxu
    xBZtC1PUd43sZoGiWw>
X-ME-Received: <xmr:zyn4YKXJaSEEV0XLyfqTCtckkpUBIyTDXjqInRDnu5ix5N0IUjwocPyHf_29gPoGuepPGpOmv6knEhS5rVyASWxAHO1H1gWQQsoZ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:zyn4YGiFNITqKHpCuG3_7QmMjcn0LQ-Tun-x6B_0IXMIB7HwnU_t5Q>
    <xmx:zyn4YKABXOKpPrzblQ8yJ1bXcnXmDOJ1KfC6Ozb5b_m9VgYNzO70kA>
    <xmx:zyn4YHINCctYIzH9G733TO7oRLo0VVk8g1L0ENhdr9ZPm_b446clmw>
    <xmx:zyn4YM07AlOJtdQG3qPedWAdyE4v7QD7x0E8BDp2prI5Spvk4ZMihQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:07 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 49/54] arm64: dts: allwinner: a100: Fix thermal zone node name
Date:   Wed, 21 Jul 2021 16:04:19 +0200
Message-Id: <20210721140424.725744-50-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The thermal zones one the A100 are called $device-thermal-zone.

However, the thermal zone binding explicitly requires that zones are
called *-thermal. Let's fix it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index cc321c04f121..f6d7d7f7fdab 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -343,19 +343,19 @@ r_i2c1: i2c@7081800 {
 	};
 
 	thermal-zones {
-		cpu-thermal-zone {
+		cpu-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 0>;
 		};
 
-		ddr-thermal-zone {
+		ddr-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 2>;
 		};
 
-		gpu-thermal-zone {
+		gpu-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 1>;
-- 
2.31.1

