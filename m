Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74F07A97A1
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 02:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727741AbfIEAdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 20:33:18 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:47637 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727562AbfIEAdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 20:33:18 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id DE04921BA9;
        Wed,  4 Sep 2019 20:33:16 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute4.internal (MEProxy); Wed, 04 Sep 2019 20:33:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm3; bh=XSxZnokuYXM7ODTOOBr7x1A5EQDJpxm
        e9YnqDCAPDPo=; b=Td0wmrCX2mUUrZ2ohnntJBMz6ksQbjS0QpA989K1SkQGWE4
        DiVxX5LEG/1zor/aKbqFmc5wRNneB59OXBziBCpwaGfyITin2NS+JVcMAmpUK3eA
        csnEWWkW3xuZaUDgcJDG2DjIzappwzUbbgEglvZjueu/V6deechchipUB56kXpeZ
        zBB2h7nB/XrC38jPZlQODQ49D3EUpyZvSzRyflLrIRTLpcGFmL9mFXQ5J+Hm7gFV
        0X2pONFNeUhWJxC2skNKP1NPzNbI0A2CevTdCbQR3cj7fFMjwQTN7j93jmjo3RQD
        tBEvYKBVboW0a5lDf7Lbd6zqP9p5MFBMdPU+VgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XSxZno
        kuYXM7ODTOOBr7x1A5EQDJpxme9YnqDCAPDPo=; b=SzV44kPnrkpwwcYEprOpYi
        7iS1Xk8q9l+H4peB49xMB++eD49ypVHV+AcpmLC8MklaZ7OHvnzTzVYHY7a8daa9
        A2OTxaEsj6yTEdQd7EIkkZmkV6O/jFDH5gCVUaH6wDIANm+RtCG34o9mr04YLVIr
        ix0paIDMhcr8+lLAACzs1tzt82M6er1EGaBUOiofysAFKZS/daSGZDE8hNKNWSj6
        w0XiibS873McHZpsNBppormZIZjeEoR9eG+QHhinDVQsqcE2OtqzgKQ1ZYxJLv2p
        gulmwSfge64ER+ypiJ7lxwgdCPfZsyewyZ7CXRX/oKsdt/I6KVLcjdKsdxZhCuXw
        ==
X-ME-Sender: <xms:zFdwXYt-B_3GunEpimOoNFkn86zxiPzbjLrWe6oU5iJwvAWkv7-3SA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
    rhfuihiivgeptd
X-ME-Proxy: <xmx:zFdwXftgQWSrmroUQmN24Z9jl86JEYLnOnfagaIje9qkzAxdC2L5rQ>
    <xmx:zFdwXVibXWuvfgi97BioQve0H6w9VsUnFdMvgvZXt2GTgtZ_gFGQdQ>
    <xmx:zFdwXfx5skCdwTWIAMJXGH02bD4CwyNE49GMPhuqt45rIrVj_K6iIg>
    <xmx:zFdwXZaeBvcUJmJOZbytt9DUUsqA8AA8Nzs4ID6EaRdb8tnzx6x9HQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id EB5C1E00A3; Wed,  4 Sep 2019 20:33:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-186-gf4cb3c3-fmstable-20190904v1
Mime-Version: 1.0
Message-Id: <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
In-Reply-To: <20190905000221.31445-1-joel@jms.id.au>
References: <20190905000221.31445-1-joel@jms.id.au>
Date:   Thu, 05 Sep 2019 10:03:33 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Joel Stanley" <joel@jms.id.au>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Thu, 5 Sep 2019, at 09:32, Joel Stanley wrote:
> The FMC supports five chip selects, so describe the five possible flash
> chips.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index e465cda40fe7..dffb595d30e4 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -67,6 +67,26 @@
>  				compatible = "jedec,spi-nor";
>  				status = "disabled";
>  			};
> +			flash@1 {
> +				reg = < 1 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@2 {
> +				reg = < 2 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@3 {
> +				reg = < 3 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@4 {
> +				reg = < 4 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};

The FMC supports parallel NOR and NAND interfaces too, but so far no-one has
cared for these options, so if they ever do we'll fix it then.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
