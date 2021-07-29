Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC3FB3DA2CA
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 14:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235799AbhG2MDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 08:03:50 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:56977 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236712AbhG2MDu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Jul 2021 08:03:50 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id B14245C011C;
        Thu, 29 Jul 2021 08:03:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 29 Jul 2021 08:03:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=Y
        NjUjuKrFMqVuoUSE4kiwVk/MGuHpjlgf6oi8ECgA44=; b=AgwvSgyny45yq6AE/
        +Z5cCd1U6/oIgYRRdAXFIK4htTC45nJf2lquNcikQX66PK6v7ue+8IEvI08B1z/K
        XSjgAsf0cVpyOVMwtDjuXFVRYt1LEqlK7PUb/IqoUyqG7FqsKFZ+WvKILkuzQk7T
        PeO6ME8p+Z6SOOoJA9Cm0k02TDGHlQ2NL47UCnRP82IS46YyZnQgEzVMpXHe6HqU
        rvmov0WEdcP6zN4tn4oCFu1xBUK6ovw59F61qYPbUXyXYN92Orv2A6DjFJDAGp7x
        ZMwax2tLhCe1deVAbrWFIXB687vBamDu4yo3JnZcX6K3h40CIcuM/Nu+6/yf12se
        d3egA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=YNjUjuKrFMqVuoUSE4kiwVk/MGuHpjlgf6oi8ECgA
        44=; b=Au5nnhC5iugDqTc0gqMH2SkdEAR0TipfbtQzacCm0kvjD3IdiZ81sWlGe
        rPipc3JUy063fLYawYpYM4fLAd7q0U0OsvLzoBxR4OyQp7tn+aM85bjgClbRCSqW
        dfRPdAJtbixPMF8cX4AWMNyb7/USqSFCu4TWWNWab8Y+2ennUZL3Ww/Ld9JEeUcX
        qn1qUIB78nVBW1JrGjZRXdmYlWkHQ7QO2AdO7xLzeVEb3rGRTe4R46RRTegnsmyN
        Uh/Gbci1C4xmTy3gjhZvqqTeWhm9jPHiJ1IM94POpfV/os72geIgBn+vIcp3+4en
        3QZsSQAI0lof/rJSxCduPGf8rTM+Q==
X-ME-Sender: <xms:IZkCYUpk7IVPHlIaJyRjKSDCOsd7R1-_7zQ04aWTWg0RsNbZuQyBow>
    <xme:IZkCYapL70-fdL_RpRU9bQxyC0eJHHWw_kOAX_LlmOMmMkCtYxdOkQGf9LOnLVCg1
    bX0bZQHmE0A3ZYkgX8>
X-ME-Received: <xmr:IZkCYZNL9iorf6nYzgQR2C4N16z4WOXhg6zvgpsUTFVPgzAUtPJxXGbGIzY3FT7ecZ8myaqgTsMEzFunq58RmT7U76B0cImgjGYR>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrheefgddutdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepgfejtedtjefggfffvdetuedthedtheegheeuteekfeeghfdtteejkeeludeg
    vddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IZkCYb6rK_2tCkVfLjbNkWSB2qcGHrLaoa4SBSmoSPCh33be3pojsw>
    <xmx:IZkCYT6YUFsEuafhicxvInn9ZYfYPAzK1U769jB18r5OPxZf7xoWtQ>
    <xmx:IZkCYbgiJ-gaOUdZGQAsvl0gci0Ws0ErXOd7qyNggv_Ln_SPvveuCA>
    <xmx:IpkCYZSwDQz0ySYiSCmLmA4C2IcDtyP3ZGUwoLfCLc_Xgms15TrnCw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Jul 2021 08:03:45 -0400 (EDT)
Date:   Thu, 29 Jul 2021 14:03:42 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh@kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 00/54] ARM: dts: Last round of DT schema fixes
Message-ID: <20210729120342.p67ksrxinlr4zwyb@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721164826.GA2405162@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210721164826.GA2405162@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 10:48:26AM -0600, Rob Herring wrote:
> On Wed, Jul 21, 2021 at 04:03:30PM +0200, Maxime Ripard wrote:
> > Hi,
> >=20
> > Here's another round of schema warnings fixes for the Allwinner platfor=
m.
> >=20
> > There's a fair share of new schemas in there since the schema tools now=
 warn
> > when a compatible is not documented in a schema.
> >=20
> > We don't have any warning anymore if we use the OPP binding Rob submitt=
ed, and
> > since that means we have all our devices properly validated I don't exp=
ect more
> > fixes now, aside from the usual bunch of regressions.
>=20
> Great! You deserve a prize.=20
>=20
> I want to start enabling the schema checks by default. (Though then I'd=
=20
> have to worry about new warnings.) This should be pretty easy to do=20
> where we have subdirs per family, but for arm32 we'd need to move dts=20
> files to subdirs if we don't want a flag per dts file.

That's definitely something that I'd be interested in. It's very easy
for a warning / error to slip through during review, so having some
builders somewhere reporting new issues would be awesome.

On arm32 though, we have per-family defconfig so maybe we can opt-in by
defconfig? It should work in most case

Maxime
