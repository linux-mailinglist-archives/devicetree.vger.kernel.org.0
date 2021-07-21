Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7813C3D10BD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239134AbhGUNZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:15 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:52839 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234757AbhGUNZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:14 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id DE5CB5C0226;
        Wed, 21 Jul 2021 10:05:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:05:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Qn/Zbizt4ls3U
        cBrGJh3y/JemcHv6Ik7moOZ4Ylhzxg=; b=vqbs7kEgq24xY8EchWWWbOQvAkYpL
        NS/8yAtMJPtZKfZhuuRxcvawAQ/Yr1nWevsR/vI4ZmdduWmyspWqQPH75OWYKh9Y
        L6DRUnhGGrIuV1Lu5Ky13JtjNnt0Yx9y/Xeo/cdX4Gv2Z0v7D/lkhP1z4HoH44sK
        NhBVHXSskwZt71B/z4lZkLur7w7WxPK9jeJj6rR9jXuWBo4eWr9jiMBAq/rRDEOe
        c0TwxEmlTCxFaHTLy3iEwzrmCPajtfz0/JXmsezMLod5vUPNi1xsUyOXw0dpklWI
        cOtQQlETpu61i13nwa9XnSGzIkbKZpvECfRpqbJ+cIZJ+nm7OTw8E40HQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Qn/Zbizt4ls3UcBrGJh3y/JemcHv6Ik7moOZ4Ylhzxg=; b=Y/mzSDgT
        ibFpWs+JXHuilohKCqOuEbPhZFYPgwn5EU1O+imaDUdhbn/0IKwiiRsRIERNquh0
        hOL3OAn64waMLzRdz61WGsP23mHxy4K4YXJuiVfU39FQcyBPORpPc//BS1pOWJU3
        EIN3gD6pN1RQu6rjHUn8vWTC1xsSAXRdkXFoGKbvsPuWpyP83Xqo5/+zg1zSMkFf
        A3zc95UC0mkQFgpxABB8T2ynQneh9Mhdno2125ZDGpra20TVhsQXcMKtO232j6cj
        jL7mg4BaBM3kudnRaoVNTvMU1sbJSrzzZIiuvX5uN55DXQTpUgVtUnIG1gjMbD+F
        Cn305vGVVNss8A==
X-ME-Sender: <xms:vin4YGqHhEVMSAjzRbUz0U8R9aPbFwPWW7AmCbHsy-meGwU10k8QVw>
    <xme:vin4YEoAxbSwGII7zX2wVl8wtOqp8c2cswqrThTYv5OdsWY4-eW3ySiSNNNVgY9C8
    T1-PMQCu9r0r80veXQ>
X-ME-Received: <xmr:vin4YLPzu13hr8zG97m7aGY90nHYmTZtpaZuV51Uor64kO4ayQ_lLQxstgEOkcKW3tXac81-fc_4-AJr3LMo68T9tpYHHV1BZ2oO>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vin4YF4B4e1XhxJdfe_HYW7X4nKP5pX0SAVdr_VP3lYtkrRdtVLmTg>
    <xmx:vin4YF7N83Iro9Kc6BHLPrdrdR8Pg05XDN-VqbI97diRGLvr5fEfeg>
    <xmx:vin4YFiB31NHjk208hNzwFJUNkKRBMQlWEMPUWWa82mY3lY5mg5sRQ>
    <xmx:vin4YCubKndZ5pnvabzOTR1VTIWdOoAlISGxnH40luvW2JnCuEYs_Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:50 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 40/54] ARM: dts: sunxi: Rename gpio pinctrl names
Date:   Wed, 21 Jul 2021 16:04:10 +0200
Message-Id: <20210721140424.725744-41-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
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

