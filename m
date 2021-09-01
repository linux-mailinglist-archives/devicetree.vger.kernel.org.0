Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F02E63FD698
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243570AbhIAJVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:07 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:51937 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243559AbhIAJVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:03 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 2B04C5C023F;
        Wed,  1 Sep 2021 05:20:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Qn/Zbizt4ls3U
        cBrGJh3y/JemcHv6Ik7moOZ4Ylhzxg=; b=EiHnh6mkeqSnG7RV/w2wNv32XYTR3
        IYdV/gAHsg+VjDBEjror+FMRkk0imNiDeqIJZzxeYdaCv3fIHfWggG/IHg3GhpWk
        BTJ94NVK4rpiOMdOZIVFgzeiXkWFWKuIJNv0iY9GclT63/PQCX8CXQ7KWZgmnH9f
        MRk7cMF1XlbUVmtqErlS+TtnRBgkZ/+4nCpUbwAXbNsI+BJ8D8pu+6IyWe0tVRF2
        KBKAQidr/7XkYKw/3Wm8gaCgQGN4JBT22KXdfSe9d3HSRTATywMyeOidTPCDjWw0
        IYyC+XgjiYEt2aLpUgtflEG+K9+sU3R7y9+19HG6sTBFKP+tn2fUpvVlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Qn/Zbizt4ls3UcBrGJh3y/JemcHv6Ik7moOZ4Ylhzxg=; b=spMrOD6l
        TWMG+cWQJVE0ETVPdbAoHcFc0RDDjHn0swyu15s9NPo2RIxmCcpCts24JaGRML7X
        gPvbFXGqrDtp6HxonbEgoAE2wI8a+gKhFxK4xW35YlIEplQKZXmuiTJaNsiNGjrn
        R+cKrTUK5dk3xWU36kXYu1HiPpCrSju4+/eM/yzSBEEzsEx2E1DkWzcfuECGbg+s
        heN5oJh7Z8iX9AV0LITpvqu8kHkDzAq2SNqRNieVGMw1r2gtnPkQEjS1V8n3krUG
        W7qje+YzEVW9i/Ue+o4VqrcYyypXCH9IgE2pKSiOLShSHCCzcZkE1SEPn4wyZ+Gy
        LDZbmUV4ekUYTw==
X-ME-Sender: <xms:x0UvYdym1pR0s9PSMLupEUUoXS8wbh87Auf9ShhirBeCO-5kxHHF1w>
    <xme:x0UvYdTPFBwC1HdQBDMyy9yx0pgGDvuH98qVBcpZ2uoFFp0XgqypjmxdB49_5uOQ9
    08dWDvA2h5zQvU5FAU>
X-ME-Received: <xmr:x0UvYXVNZQ6pLBTP4nFMbk7G_Dh2L5Q0FxbFUbCdcz4SRqocDH9rx6E-XhQGi8EnSBgYbKfNDBa30udBjNMbQod2rDHd7-mlT6kl>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:x0UvYfiEeEfu4wCqyJGDgv3OfNSoUnniz-S1WY4BK7Qgj4yip18djw>
    <xmx:x0UvYfAxq5bC3CH2QcbjnYu6-nS6L6ViBG6vsEKEcE0v_VEnX5aLAw>
    <xmx:x0UvYYJ_6J-8_yGuPLS4lYhj7nUswmxuInv8zqn5hv28GbMhzxc93A>
    <xmx:x0UvYR176z7vGpub_62Ox_89FGmpbZBs8NXknOv5NdsebYQLvp5BDQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:06 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 40/52] ARM: dts: sunxi: Rename gpio pinctrl names
Date:   Wed,  1 Sep 2021 11:18:40 +0200
Message-Id: <20210901091852.479202-41-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We've had a pinctrl node name convention for a while now, let's follow
it for the AXP pinctrl nodes as well.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/axp81x.dtsi             | 4 ++--
 arch/arm64/boot/dts/allwinner/axp803.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/axp81x.dtsi b/arch/arm/boot/dts/axp81x.dtsi
index 63fb9811b453..b93387b0c1c3 100644
--- a/arch/arm/boot/dts/axp81x.dtsi
+++ b/arch/arm/boot/dts/axp81x.dtsi
@@ -63,12 +63,12 @@ axp_gpio: gpio {
 		gpio-controller;
 		#gpio-cells = <2>;
 
-		gpio0_ldo: gpio0-ldo {
+		gpio0_ldo: gpio0-ldo-pin {
 			pins = "GPIO0";
 			function = "ldo";
 		};
 
-		gpio1_ldo: gpio1-ldo {
+		gpio1_ldo: gpio1-ldo-pin {
 			pins = "GPIO1";
 			function = "ldo";
 		};
diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/boot/dts/allwinner/axp803.dtsi
index 61402057e107..578ef368e2b4 100644
--- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
+++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
@@ -26,12 +26,12 @@ axp_gpio: gpio {
 		gpio-controller;
 		#gpio-cells = <2>;
 
-		gpio0_ldo: gpio0-ldo {
+		gpio0_ldo: gpio0-ldo-pin {
 			pins = "GPIO0";
 			function = "ldo";
 		};
 
-		gpio1_ldo: gpio1-ldo {
+		gpio1_ldo: gpio1-ldo-pin {
 			pins = "GPIO1";
 			function = "ldo";
 		};
-- 
2.31.1

