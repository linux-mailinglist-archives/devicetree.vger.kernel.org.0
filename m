Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8589F2F6051
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729109AbhANLiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:07 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:54367 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729079AbhANLiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:38:05 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id F2EBE161D;
        Thu, 14 Jan 2021 06:36:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=D9byKSox2zPwP
        +6D2GfN0TVe2WfZ3MYcth3r2FoYFnI=; b=uqYpI+P8UwZaYqXngi25FBkXrMeq5
        JIu/6mY4A4YqeC6cWDw1eKOa7CaTWSUBZ17CyseQHa3oBNtMectIsh14EY+aSqBj
        hMFRp5ZyKgINko391orFgORFlapr7zTNvJfDN6I5TC0rQn3pKg8DcFdKa52N0wm4
        eldKqjChUel4cn/jZ9Sx56MTalzW4OsAbRRfLMSajdKeKfoysSjuK7oFArt/vjcb
        54rqF7+ifA8wpvisEdnk1J5q5SuwAo1Ue42LR7ll5JmgukKGJtfrSgeSqpQ9VB7E
        19hs2oj/RsdkL5L6prYMB3/u9MEgV7PzffzxXxlMG5Uwnai0wzmHGL8Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=D9byKSox2zPwP+6D2GfN0TVe2WfZ3MYcth3r2FoYFnI=; b=JLBmihtG
        B8n5bqXg3h+alEVyZcQagdL+4hUKJCzMLLkTA2Xvmz1V12TjOmU3f+ELJ/cYz2NV
        87xmFWXjFbKv6ig+/iDAkcjCnrj1baEtMcex3Y0jc+x4r+Yb0eqDHc4bOahjGgY0
        mtpa6C9W9efD8vPJ0qgEkdRqWmfhlsEY4YQCOm4l3dZLKQrToiRIKCiYjfs7ak7o
        6Hty9dUhsY44ClCz+EeEE1ySHMz5s7DJ3lfAX5Zp+Z3cOdOhhnOTCANQ/uVg1Efh
        o7Ks0yBGcJNzd1+Z50P2IgXs99oXjDzWQVnjNnFZM/jlWg2jYHT4s6MH8deka02z
        gbH+HwVIB2hCpg==
X-ME-Sender: <xms:piwAYH3x0pkjR0wNuR6T2iJwC8spUiAtE8c1AGKOwyIDrqAFj953Hg>
    <xme:piwAYGE8-VA-vQveb1lQQXEv1CsKuyO4-0TjJJJch7_E9xigquiLj2oOZNk_XrAs3
    1Y0qVx2ADJirJUArS8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedutdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:piwAYH4zKiVJRgv3qMLItiB5aF6DpBuqnQeqxBJnpF8rvs8AzFT0IQ>
    <xmx:piwAYM2MRr7eFgD1uriEECPh_YFYffa89d6u0QmM1NG5zpItioU2FQ>
    <xmx:piwAYKHlyTXwOPs5CcxkDThti6IeHfr6Njpz6nAyi_xpIhStQs1Wpg>
    <xmx:piwAYGiqfBJgDu1glUFjOMg0qZa90lD394cBP4bBC-QMCE1VRM1bPA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 3188F1080057;
        Thu, 14 Jan 2021 06:36:06 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 17/19] arm64: dts: allwinner: pinephone: Remove useless light sensor supplies
Date:   Thu, 14 Jan 2021 12:35:36 +0100
Message-Id: <20210114113538.1233933-17-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The stk3311 binding don't expect a vdd or leda power supplies. Remove
them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index bbc26abb1e10..9f69d489a81d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -183,8 +183,6 @@ light-sensor@48 {
 		reg = <0x48>;
 		interrupt-parent = <&pio>;
 		interrupts = <1 0 IRQ_TYPE_EDGE_FALLING>; /* PB0 */
-		vdd-supply = <&reg_ldo_io0>;
-		leda-supply = <&reg_dldo1>;
 	};
 
 	/* Accelerometer/gyroscope */
-- 
2.29.2

