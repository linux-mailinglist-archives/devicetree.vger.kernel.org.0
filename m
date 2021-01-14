Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B14D2F6047
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbhANLhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:37:38 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:46715 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727416AbhANLhh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:37 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id B48311618;
        Thu, 14 Jan 2021 06:36:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 14 Jan 2021 06:36:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=VPXyqo1s0MTQd
        CqYXl7dcAygl2dZq4W0GqRn8G43HUU=; b=rJ5thq4Q/1LDYuB/3qNqEc1qDrZQx
        cqrVTz0hSlZC3HeD3H+pN369zFz1+HDuzV0/c6Um4wyoFLZMfnnhBwVcIAQGlKLZ
        iF2SRKa4pR5meT7dliPjxV1vlCa67xBzqECphUeR7dYhBkIzzjgKcswIEHr4PxHs
        gIUuiev+T4VU3XPucicsfoh2dooSApG5aJHMqA7CUFdlme/LvOqFhp4QslFBAAMF
        psPvDJwyogQF6/paV2mmV4Nbp27pCyzFZopraPynV/lL0Sh8EFfeBpUmvmYxP0OA
        2cjOUSvQmTIs0WfF7nsseMVwucu7hH263wUhpW+kggtMe9I5+nP/9OVpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=VPXyqo1s0MTQdCqYXl7dcAygl2dZq4W0GqRn8G43HUU=; b=MTYHyQWR
        o9wG3xPSy3aMzyAdIvNkbdhZ5TAyXQZyEZxun/JAQxgR+sUxiSOU/WKwP+wT2B2D
        B0sA52f+4EQdurYFY46dOjg5VFi4VfJCk/QuEEmR+fldm9XLnkEKrSgZMNatN8/o
        snjPRQ1xTyWgWk57VXuN9iN/2qNASnbvgeKDiO6rzGRJadPUwA9gJTWS9nnc5Au9
        DhRrLQHEsIqCByuHnbyhQzvRdvYjKfSejiBlzbRVRgizehBx19KBGPPEkuePYnfv
        bZIrO98uuIwQvcho1OgXKX4LxFa/uX3xWTYGhtChKpmTshDg5aXuJKO5DBcro/bs
        Ysa8okRYKpUbnw==
X-ME-Sender: <xms:oCwAYM9QUZU1WrbzX6F9DrPF7Q2ztJ5I6TOYsXfw20nOExmSHxNjwQ>
    <xme:oCwAYOUUon6K6n8i-vhweA3uY9Pm3VeuiTfMU1uRSTCirmZvo2tsJd7Hz4PkRDY-8
    sZc3UP65BUdPCT-dz8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oCwAYCCbthTKCxXN9Dse4rFJUm4xrKXSwVc7ZnE_aiYDDOhQ-MLWAg>
    <xmx:oCwAYPzUHNcNHn44vw3cNWDA4Bt935BIadp_i7XOJumIrr2VaUJT4g>
    <xmx:oCwAYPCau0fS68T0pOjSX_Lne5a2RMjCUZE_CUIZ7ULiSaVThL5eRw>
    <xmx:oCwAYF6Ep9Wv_e30v_hK1tkgvbqn4mjEIZtztMqu0hPVg1IkyqGq3Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 232F41080059;
        Thu, 14 Jan 2021 06:36:00 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 13/19] ARM: dts: sun8i-s3: pinecube: Fix Display Engine DTC warnings
Date:   Thu, 14 Jan 2021 12:35:32 +0100
Message-Id: <20210114113538.1233933-13-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Our CSI endpoint trigger some DTC warnings due to the fact that we're
having a single endpoint that doesn't need any reg property, and since
we don't have a reg property, we don't need the address-cells and
size-cells properties anymore.

Fix those

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-s3-pinecube.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-s3-pinecube.dts b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
index 3c4bc4b0ca7f..20966e954eda 100644
--- a/arch/arm/boot/dts/sun8i-s3-pinecube.dts
+++ b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
@@ -64,9 +64,6 @@ &csi1 {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		csi1_ep: endpoint {
 			remote-endpoint = <&ov5640_ep>;
 			bus-width = <8>;
-- 
2.29.2

