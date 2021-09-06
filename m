Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52337401C81
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242303AbhIFNlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:41:55 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:49011 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233820AbhIFNly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:41:54 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id B23903200583;
        Mon,  6 Sep 2021 09:40:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 06 Sep 2021 09:40:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=tmgMZEAYB8oQ0DnnYVJ318Zu1TZ
        +Y+qmvdFAldoiOCI=; b=4QsYuOZ9o48lu487xSssLpNi6bZlF96CO+WBRPILu1i
        8Boq0G6QPvC9mCJRFOjhXgeC3i5UHjlzyngqVmad/IRysg+His6aeVThbCchkv5c
        hVxqAYE+quk8G2187E3CJ/89pVbGTvtJEIj26b+bwKAm9sxGHaq1yKrkkFgEhMV2
        Xo28TFCk+hy2GMmS9ubSP82PZLC1XHQ8dwXFrzrUlW/bavlfSLBgQnu8/H7Q08/u
        MwT84RV1vL2FB7nrojBjf5CLa8ihgjN5VF4pKHnFBKBlLAdxFFYtDAaYJ2Wdtqa0
        XdqvkYf/3BjgNVIl5O/EtXaCLA9Wm+xLRdC9RjVLtCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tmgMZE
        AYB8oQ0DnnYVJ318Zu1TZ+Y+qmvdFAldoiOCI=; b=caNbjpt0Ny7SYtrJYLYIJ/
        YH/DIMWW3gph7WkJcrBxViKXGXQ5OptJ3nvwP9RgW8FuiZIybORZAyA9ZG9yG+l/
        n7iRHctQJ/jHfwl16S2k6QBij4WVMoxoEK8LNWX2DtXRi4QA6GxQMQWQsOOOR0/y
        YzgYXQV9e22A5ejdSTsgxZg1VPdWf0Lk2W3fW8EAopB9bikyQ+rPsfOcM44GeZl1
        BoNMCkrBo1O98YbOn8KL7VU4yWbOCo2B31/lfwhXy2srVRS+/J4iNNcS/wDyeXpE
        RNubjhmxVuSPuTENNjLetClmbOCOthSp2tURKrZOL2P36Ble5m0RJIBaUprzK21w
        ==
X-ME-Sender: <xms:YBo2YQ-9fgM0XJKy2gEyTrazOfmAAUB-1od2sVnKjrAFr6nx3BwXlA>
    <xme:YBo2YYsVnO4eU17Vjk18yz2-nJ76TEnmrYkh2phVgdsk_FJ6K7-tFT1NRBE2wNBKd
    2l-l677ZdAdZOruh8w>
X-ME-Received: <xmr:YBo2YWBmVDEdH3qCHCZymdB0bWq85fykwrSK4LmOxlZaqzY4Jk4bLSSBzdy47hM6_TRvngApukilrEnsDD7c3VdDPB2TggbmXhXD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:YBo2YQdDTbpsegjmiYvfVoQazhqbS-KQnUptP3dok3S4zqql6M6RhA>
    <xmx:YBo2YVOY1dXyz5LAAOh9jA7nMaKiCUHJmYiOC_XrLDWGTV3BlfxVvw>
    <xmx:YBo2YakJN9qDzYRY2ovFp_-gc5SLzQTirMloEKw5nq14EU7CWXW2XQ>
    <xmx:YRo2YY31XpqMwcd60bu_171kVTKcJuoh0FX0OYEHZEpnHnPBAOLoXA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:40:48 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:40:47 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 49/52] arm64: dts: allwinner: a100: Fix thermal zone
 node name
Message-ID: <20210906134047.ua4qyiahml4ij7av@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-50-maxime@cerno.tech>
 <1864947.3He5opK4du@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zmcvmty57zhz63eq"
Content-Disposition: inline
In-Reply-To: <1864947.3He5opK4du@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--zmcvmty57zhz63eq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:13:46PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:49 CEST je Maxime Ripard napisal(a=
):
> > The thermal zones one the A100 are called $device-thermal-zone.
> >=20
> > However, the thermal zone binding explicitly requires that zones are
> > called *-thermal. Let's fix it.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--zmcvmty57zhz63eq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYaXwAKCRDj7w1vZxhR
xU5bAP0WJrBL6l3vW8s7le64m+9EUoZS8Xp7dhrf7qFP3msufwEAyqZ2kz9k/Rma
pCND4B+ki6+FsCqbi1NvEdN7ti1w+wc=
=n5H7
-----END PGP SIGNATURE-----

--zmcvmty57zhz63eq--
