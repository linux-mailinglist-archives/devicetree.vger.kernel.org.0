Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A913401C7A
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242129AbhIFNkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:40:07 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:50319 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236164AbhIFNkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:40:06 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.west.internal (Postfix) with ESMTP id 002833200945;
        Mon,  6 Sep 2021 09:39:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 06 Sep 2021 09:39:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=gRv5khc5IhgF52df1qOyzbjHX9V
        JDpXEQXWB72e6jzI=; b=F6wX279CMj/3PkfMIKUoqkQjNWccOFbU2qxyQoWkxw9
        EcZrs4mVppfNimeiOsjOl3OhC5I4c9YQFVXKYXy7KPbn8s5R6jp0nO6G3aAqtNz/
        s93goIo6Dx7ueIcEU9BA574e9ULqXhixlhRrOrWeA+8jr4TLN+dVscqUgzAX97R9
        OuS8bqaaCP2dQ1FixfU7I6PC91TMMIZEmOAfbXFEAkQZMN4FokEL8I38ybhm3die
        +8D/HwCK9ywZK5Iv2jJ7hc/E1Ho7gvotyLUI+EdO0L6O+G9ONIkDXMPQLUDx3vO3
        0pSk6A6RnIrlMSjLLt/0k8fiYqTrb/dIk25LjBSHaLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=gRv5kh
        c5IhgF52df1qOyzbjHX9VJDpXEQXWB72e6jzI=; b=T6CzaJ9wkQI0b9bInDP7n0
        mltXCrgwya4bOgU/6fK5WWo0TWbQehhIefup6IC9rc+aU4duBXc/AC/Aj/1WBciw
        sS/9SMcGocZWzBh5f1LEGaLq0wcvmzlP/taEIp64JT/YXPRwbP1XO8l2YJZzYx5t
        g0cln0NCxoq8iFx1+7gY4a2M3Brfs1zGRWhqzVt70stKtBgVZ1y8siayXi/eFz1p
        bT7Yt5Op/bopZ1DrJ+b/9txPsrJo2ksq5/Ii/FH9MQVfr5f3GgkSD/JagZhcR9U9
        9h2TclxqcUpYhgv0pHQ7RimTse3LMTw0vk3n8vDrgQCmSUVTts4pW7QiigKcRyhw
        ==
X-ME-Sender: <xms:8xk2YdXYO9H4S_DIH2_xpCiLBuFHbCd6F9OwqzZJpnSD1OLUHpq5vA>
    <xme:8xk2YdnMnL3B4hDkiGqbBBKGFUw-CR9GRiY63JDW5tiEAkpXIvutatDGBK-Sn9qmO
    HOrWUdbs2mczMMBIWA>
X-ME-Received: <xmr:8xk2YZaGOplhDtOObYm-V40FplvmpZ4uyITesbddTNAJY7VOJoK33JxxrY8xy2x4Ixsn2fUc8VmFi0N7a95TEg9ZDx60oZSU5avL>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:8xk2YQV-AT4_JwWl_LLmEGT5hIZEVIPS5pa7fgCtFIuvUduce_KmcQ>
    <xmx:8xk2YXnqunz2LvOW0r3k993DqgDG_E2yfOCnZpUm1bKnRReICq1hyQ>
    <xmx:8xk2YdcnsaA2qCKqPMFGCEM730zxPyry79PpRch2lI5xt3oHtPHq7Q>
    <xmx:9Bk2YSugXLd_4uc8pEnMnn3O5w2gokTf2ZbtdImDRrj_G3Q0lR6-oA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:38:59 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:38:58 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 45/52] ARM: dts: tbs711: Fix touchscreen compatible
Message-ID: <20210906133858.rxf226hoiqwmm27a@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-46-maxime@cerno.tech>
 <4008156.BEkMtpGRWe@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m5yhlxebte2iq5jz"
Content-Disposition: inline
In-Reply-To: <4008156.BEkMtpGRWe@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--m5yhlxebte2iq5jz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:11:58PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:45 CEST je Maxime Ripard napisal(a=
):
> > The edt,edt-ft5x06 compatible has never been a valid compatible
> > according to the binding. Let's change for one that is.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--m5yhlxebte2iq5jz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZ8gAKCRDj7w1vZxhR
xYxuAP9TbubHiD8QrDMypTYJNUuaMoySAPRM1++zRF0x61luNAEAxDjJWLXD0vog
AYcguP8IlPKNzmk9QS/04GPLjvjlRAU=
=bp33
-----END PGP SIGNATURE-----

--m5yhlxebte2iq5jz--
