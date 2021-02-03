Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10D4E30D659
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 10:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233168AbhBCJbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 04:31:17 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:56025 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233021AbhBCJaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 04:30:21 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 3B46E412;
        Wed,  3 Feb 2021 04:29:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 03 Feb 2021 04:29:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=8AjUspHyp0dbrktgZY3EO9Adu8x
        YOO4AaFkBqwyzX3M=; b=n6tFp02TSvVYyxU+VgrVy8lQQRrC5gF0cf0xHXnXjv5
        +gBTCmDTrQDA5kbm2s0v6fpPLC82udGuKSrT4ZhAgCH3IkO/cbrxfazuXFO+qaNc
        eywqOg0k+n9qCqEEvEVB/61C/00AXTGDyZaBbufFVP2FFrx61/cesYLgA+bj3hAy
        bts5yWoMufXSpTd0A1xSESxhEIfsfmn8/Xs2mXvexPo0KyOb/GVvlivhnJwr/ZrN
        +DA+zdiAbAvdKqiJX1+UxIbn0/wkty1qLqWrTMSxcZDF8+vxzYLlG9Y2vy6KvUt7
        BGjm24hsBEgDA1NDlH68GKlPIZgZGR0SUHi0SgBQDNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8AjUsp
        Hyp0dbrktgZY3EO9Adu8xYOO4AaFkBqwyzX3M=; b=MvveJqXOewWPMwME4s2J3p
        7rkepCp5UGXMwVK8iCJQNIhANIgJMG7ue/Mz/Ml7tKizEGFxgXiLkA253d/Ilal5
        lzfgqocheqhe8tqxXbTJtMjn+EShXG4r1FmCaudFvqel6N2s8HDESd42eiCskIvV
        iyCOkPTRuD3iAWyJ3z+Qhxm9afgp6zasMZMIkUOcfgezg+GAtzGR2SXTgdRKGfRl
        FODXqse5r+/rFo5EtRaLy1wCpxMdMMYdnMhSxNPN4FVWfmQF0zH4VheYWrlaUXhx
        QMenk/YFzegMG757JbtdGa9y3nO1IPD4ftyrPkxOzhHVqBMw+0JzMzHHQxxfiLkw
        ==
X-ME-Sender: <xms:6mwaYNe0q9BibGr-ClfUWxxwZWx7-vgYcIwspKVTzwWJBoHM_vFSrw>
    <xme:6mwaYE3cXSFumvUOdzQsOjFoU4t3rChP_WG9jR7wsIIfbClH7-CVlyJl20dCZk2io
    EgyU9L2tURcOSiim4U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrgedvgddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6mwaYGjysRcM91lE3gpMv-4KGAVwhm-vxRdxYeC_th0f-VP9K8HbqA>
    <xmx:6mwaYKSu69KJ14UqHni8yqU5tkjF7QaKstEvdVeu5q5cUCYQEBjnxQ>
    <xmx:6mwaYHg3O61-f4Ffmro2N3P-N38gFHs54uShMNkLd_Bi3wuvpep5MA>
    <xmx:6mwaYFpBpoBR-ZsEeCvggn6atEJKZn8IttbQcUvrAhHA9-JdPsyjnw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 0C62324005A;
        Wed,  3 Feb 2021 04:29:13 -0500 (EST)
Date:   Wed, 3 Feb 2021 10:29:12 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Sergey Matyukevich <geomatsi@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/1] ARM: dts: orange-pi-zero-plus2: use fixed mmc indexes
Message-ID: <20210203092912.s3wm3y5hfptwirqy@gilmour>
References: <20210127054620.510912-1-geomatsi@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ucvf4xd5cjciklr2"
Content-Disposition: inline
In-Reply-To: <20210127054620.510912-1-geomatsi@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ucvf4xd5cjciklr2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 27, 2021 at 08:46:20AM +0300, Sergey Matyukevich wrote:
> Driver sunxi-mmc has recently been switched to asynchronous probe.
> As a result, mmc indexes can be shuffled breaking existing setups
> where UUIDs are not used for boot devices. Pin mmc indexes to keep
> running the systems where fixed MMC or eMMC are specified,
> e.g. root=3D/dev/mmcblk0p2.
>=20
> Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>

I'm not sure, really.

That would change the indices once again, and you shouldn't really rely
on them anyway, there's never been any guarantee on the order of any
device.

And whatever the outcome of that discussion, it definitely shouldn't be
done for a single board.

Maxime

--ucvf4xd5cjciklr2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYBps6AAKCRDj7w1vZxhR
xe5VAP44lPCgURhSraPUihHo7puqYSKmyf1kIxJXnFuFPaKnPAEA2ECDGQCBEjXk
5pj7fvmQs8unx0xHrt35KPy7vJlA0Qs=
=eJw/
-----END PGP SIGNATURE-----

--ucvf4xd5cjciklr2--
