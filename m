Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E68893D10C4
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239057AbhGUNZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:26 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:57111 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239147AbhGUNZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:25 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 113DA5C014F;
        Wed, 21 Jul 2021 10:06:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:06:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=DVIrmLS06XEu6
        HqiH2CJYHIBIuW8l/oCJ44XtiS+Zz0=; b=y6cLBj9pOFuY05E33KTUyexl48ONb
        zb+1jx8uOlqtrkWfXUmcvDi7aMPeJnwojIHPMWOv5v1IA91WFjN4Zrw15mQpWyYU
        L6OB0BccMkHR2VUUDZLkmjUEA6BY7izExJR90oCbnUsPJJbss4m/N8a1xZLS3JHf
        iE8gJ/FpIJaR+6ZB5iNng/kOWazM2hHfWOtZv2XhAaAxI+oXjuG8eJbX5DUxolxA
        PLrg6Bt/8+jVKtX7oki//FlF7Brz6Gu3tnIkovUbn5krzLlIxlfp1G7l+4j3ca7L
        1SLlbyrpPgvJXd1TXkm4jmRxDkoDLfmySIlx1ITCMUtDRDigXB8+hKs9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=DVIrmLS06XEu6HqiH2CJYHIBIuW8l/oCJ44XtiS+Zz0=; b=BOwpuQuP
        icct1H/4t/S3xXfSaYzDfPA/Up7MqoijvzLmy9suKjADcOwSd2OGSLOJ9M+c7edX
        YJHkH/8fC6XdbjmkiMIzCdoXI+YN94zNa14h8ZNQvCQoV6fw2owkpRkPtyj61Riy
        PrS/gJfOl+XnTI4jv9CSqb+oAJDVKc1irP04OFz2vMOrpJorr92IEFo3NZVilCZ6
        vBYpy409ln8DSXfTQzeSvk7idpGA7pX11kks+YiX386qpjGZWMtPjB0nO9LHByXc
        jmFd+TnY6pt6xD7zpE/008AqFSl6kyObuMTd45reEhjKNbX1gShSe6qjwiSg6yQM
        ygxViH78VAXc3w==
X-ME-Sender: <xms:ySn4YLFhWl9N69BZofu764Z1CHxefTWPA1CKuL_fdPAUWc1q41n17g>
    <xme:ySn4YIW6YqL9oUbrRYYIC_DbL5Q6Rwws48d79ShIlW5oUTXbjvig3w_pCrpkGM8zU
    MXIcUaSdnY4Vbel1UE>
X-ME-Received: <xmr:ySn4YNJAmRf-JY4AsTzHzE02uROm2HVswnsn2gJ0Dw1DF6R5-dp1zUNxFtL4g3GzKUs9IZNS304zfpHAhI6IjhE4NdVKVmYR5zjc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ySn4YJGx-N7UcZ07wpr9xmG4N15czDaR68DOCBaZmcJllLb0L5T1ag>
    <xmx:ySn4YBWlWwujbPp04NkzNKnrQ3W63JhhYAZ6UyZty8BJAqUaACPcGA>
    <xmx:ySn4YEPEmBJHKldnTNgScVoMXSpqDcAbG35vJewEYjqEyGYYy5j8Ow>
    <xmx:yin4YDKVVzqpx9b6PaENH-yVaoXnNXAHvd6Dzjz5QUyXjNQtcu_XlQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:06:01 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 46/54] ARM: dts: cubieboard4: Remove the dumb-vga-dac compatible
Date:   Wed, 21 Jul 2021 16:04:16 +0200
Message-Id: <20210721140424.725744-47-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dumb-vga-dac and adi,adv7123 compatibles are not supposed to be used
together according to the binding.

Since the corpro gm7123 is a drop-in replacement for the adv7123, let's
remove dumb-vga-dac from our compatible list.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
index 1fe251ea94bc..c8ca8cb7f5c9 100644
--- a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
+++ b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
@@ -87,7 +87,7 @@ vga_con_in: endpoint {
 	};
 
 	vga-dac {
-		compatible = "corpro,gm7123", "adi,adv7123", "dumb-vga-dac";
+		compatible = "corpro,gm7123", "adi,adv7123";
 		vdd-supply = <&reg_dcdc1>;
 
 		ports {
-- 
2.31.1

