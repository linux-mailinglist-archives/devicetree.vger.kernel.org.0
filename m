Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 660173D1F74
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 09:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbhGVHRe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 03:17:34 -0400
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:59053 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230090AbhGVHRc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 03:17:32 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailnew.nyi.internal (Postfix) with ESMTP id 5141A5817AC;
        Thu, 22 Jul 2021 03:58:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 22 Jul 2021 03:58:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=k
        kCGDZ4mp1QSn53GXPFjfkumzgPnIst+r1z4DaNYle4=; b=B+Jms/YWtvM00vl0i
        OoWuB6C0ciNyzgWCcoNJUtnwcDf5VFK1VBULqZoUANTA27vz85OCuH++4UJHpcZX
        Yv5+u4Y44uPCcaxFVce8usaw2p7rbjTni2+NhFkdtLZackes5zi1IpLxHG109CoI
        RRGUDvqnvtkmIsWsI2Iv5qUICnDEPwcGXB9UOe2+cD0zzUh8+b6KMzs3Z6/UtZTx
        bJAig6IKmnQy8hR9fX+AjZUcvG6JzZf6h2/NrBTJi7jjryJNI0Y5EpREwOxlf3tT
        jkXp8tWOGgaN+QrOgxUJylKW7XaYCbOOwxHYbQjWdygmdm8BTqU/MJtSSv/ERFp0
        bHy5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=kkCGDZ4mp1QSn53GXPFjfkumzgPnIst+r1z4DaNYl
        e4=; b=Qa8nY2a7JffMOPw2c0BYaZKyr8/OeYJempoB3LGboH6v1yBXBaWe+dyCb
        iCGFe5jZEifVHPglag1E/KYgbsqazUbXmdtkZ+7zAGG5C7vXe6zJrW7eeOgc7viW
        anrl3Gn1iAtjrVKVPYBoBGmaItRgcYQ5KePqIHfuN18rIiGW/+upOyOQYGqA22ov
        MjXnlF+bRh+8QJiUOkZxSeVsggBo084f8mAtGw8NMPHNDnxyF72BbUhGaovgldmA
        T3sHDxNhz/a+4NrFEYGYknsO7t3bxc1EPpZEMMViQj+JK1RRkNvMXCr8YPGVVz6r
        x5vBP5D3e3lBM8bdQANGGXFAiHLGg==
X-ME-Sender: <xms:DSX5YJDEpAmvebqbeILbgCdPpZx8ci5VTrquEzvYiV18lq2MSn_ChQ>
    <xme:DSX5YHgtd4CEzuGAMozP6H5hNpiXTLAgPLMbSqK7xsMLYBu-KP6ljHPbbzkq7vol6
    UfyqmsIP9AaQkxzNzQ>
X-ME-Received: <xmr:DSX5YEmEmLf4SKIX_p3RgpaLSwKgFeNbrJ-KQJ41sReOM5NNiUIEtxpqpoE4JNfhftpVeeu-rQrqgOl2LcYJUb7M5Tv4NW1oXJdD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdduvdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
    gedvudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:DSX5YDxV-biFnyhZ0cdJzMEBe-4L-IBxRZd8a2yfWu_hVRbGBFgS3g>
    <xmx:DSX5YOT2UJzaKny3oOH3FsR3gkqLh35ZN5eMTgHe0huUYXrF8nl5aQ>
    <xmx:DSX5YGaTYB9ZzlGPjT_Xzt349DXY5Lkse68Kvc8Bvj1OQMQugjgsEw>
    <xmx:DiX5YP88PibDkgB6g3y_bHYTNuq3nOhQTuvvnUK4hi-VdNBEZaKYgw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 03:58:04 -0400 (EDT)
Date:   Thu, 22 Jul 2021 09:58:03 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 02/54] ASoC: dt-bindings: Convert Bluetooth SCO Link
 binding to a schema
Message-ID: <20210722075803.42ltzog3sltbeivh@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-3-maxime@cerno.tech>
 <e0ba4dab-abe9-9f4b-2795-e85041efa451@sholland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e0ba4dab-abe9-9f4b-2795-e85041efa451@sholland.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Samuel,

On Thu, Jul 22, 2021 at 12:35:33AM -0500, Samuel Holland wrote:
> On 7/21/21 9:03 AM, Maxime Ripard wrote:
> > Bluetooth SCO Link are supported by Linux with a matching device tree
> > binding.
> >=20
> > Now that we have the DT validation in place, let's convert the device
> > tree bindings for that driver over to a YAML schema.
> >=20
> > The value expected for #sound-dai-cells wasn't documented though, and
> > the users were inconsistent. The example didn't list it, and across the
> > 4 users we have in tree:
> >   - 1 had a cells value of 1, but using only 0 as argument
> >   - 1 had a cells value of 0,
> >   - 2 didn't have this property at all, behaving as if it was 0,
> >=20
> > It seems like the consensus seems to be that it should be 0, so let's
> > enforce it.
>=20
> The driver has two DAIs: "bt-sco-pcm" and "bt-sco-pcm-wb". If
> #sound-dai-cells is 0, only the first DAI can be referenced from a
> device tree. So to declare support for wideband PCM, or explicitly
> declare a lack of support for it, #sound-dai-cells must be 1.

Yeah, I knew there was something else to it :)

I'll fix it for the next iteration.

Thanks!
Maxime
