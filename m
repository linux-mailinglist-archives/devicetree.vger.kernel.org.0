Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E12443D10C2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239140AbhGUNZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:22 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:49865 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239096AbhGUNZW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:22 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 92AE85C0161;
        Wed, 21 Jul 2021 10:05:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:05:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=mM2cPEOynY67g
        f+68NmpZKfnHaPn+PjsYcgzUFY3KnU=; b=t6jZkWeJvg74+wM26NdexN5rC8NHK
        GaNbU7PBcCh8UslAlWjPZwHnrX5rI6DBolgxX5Kd1E0tOCq6c/qOjpgxSZyn0huD
        4zb6fo320BGswwZIRpDcyox6xdOa7lGo+ihYoygChvEsuP3ff/jqzta1WC/W/hWG
        keH7xeWsdC+S3KgsdAdIqxQjNPXOIEG4BWCbmhO2oBe8WorBBS5U7MXBVPvaLmzi
        teq9wym8Za6cThQrByJFHAu0d31Dhbvfx34qZD+sUQPsug6zvKB9i2nIgJ4qjt8Y
        KSrxDximJe7Dedh6b2TJ2dCC6VST4PRjl4XQG04ziIqAebJ4vUN2y4KrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=mM2cPEOynY67gf+68NmpZKfnHaPn+PjsYcgzUFY3KnU=; b=wS9pWsqV
        g/y4vgyewzcivMBz/7qKIRaIRfdMXsBsljOp7LWy3e6WvveIUOIVz/GB/UJ/aFPE
        NnNI1ResDC3LOhc3wy150OBNu8yENJC97dzvxsHHQf2Rd1WbIxBkKDEGq9eycRCo
        X28XrSVp27NCpjSD6VtPklfTZ90Kj+diav9o2q1691FCHrqRJwEq4sSMqMJzrYG8
        zni/CV+Z1avFv7hFm/FIKCMZBlPPEHt1cFl9t6eVGRCibyVtHxDX5e8DVGNRIXV+
        tnp/KONI+6oJsmwxCKKkqvHdGTOvYj6R0DAkqtJF6y503Le9WvnW9cEyIeUi+1dq
        qP5p6gcs7Ez5Eg==
X-ME-Sender: <xms:xin4YKGrwvz7THRirFT0v6Cp_iSmzJVBFSpP3yLlskfgo-AP3KQmeg>
    <xme:xin4YLXVd6NF09dfnVjuSSIBVydgZr0aMmIR-6q7lzB3g7fU7DddVzMb0Mc6LDbN7
    _4-jZRuWVYhdh2Bq9Q>
X-ME-Received: <xmr:xin4YEL0QjQFqoe0IfKWSIAVLXaKiUPHiR6lymCucsvsaZZi0mQNvYkeOJx6XuXdXfkwF1NPZjqKlWQMu13sZMc2dwKvEMrdS99K>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:xin4YEG4sBUdU37DDybfwNL1zSgpRJzqu0t02iQlSWE_NC6VIJQN9A>
    <xmx:xin4YAWe-HdduFBEGsOty0wne9azriIxGkfgF24u86IWQk2nvNeLLw>
    <xmx:xin4YHNiVvbBNnZ7m9UgFONINJ7xpCjopWDEhOGiqAm5FWWuiqtyHQ>
    <xmx:xin4YCI7JoPNYM6P2d28xHyBsl37SI1IBhmfyOUwdhOzQAaUULCJYw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:58 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 44/54] ARM: dts: v3s: Remove useless DMA properties
Date:   Wed, 21 Jul 2021 16:04:14 +0200
Message-Id: <20210721140424.725744-45-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
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

