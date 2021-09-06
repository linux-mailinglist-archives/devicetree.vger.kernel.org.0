Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F940401C6B
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:37:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242564AbhIFNio (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:38:44 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:37939 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242597AbhIFNim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:38:42 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.west.internal (Postfix) with ESMTP id 65C0D3200921;
        Mon,  6 Sep 2021 09:37:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 06 Sep 2021 09:37:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=AYpfu6aNmuW+1E3KqhGQbWy2Wl9
        D41r5HD33jA7jiBM=; b=zHOn3P5aQrOHCB1SGx5zn1wQ+Y5DIYDx71899zGHhim
        fQKiwowOapF09vM5Ndr5hGfBgQpgSg8t6yqIk/Sy6EMnXL1vT6S5hYb6xt2vrDEi
        Lt8skDCXq6AnFMEgAUga4ZrrSwECKLFqI4sk/AYaISFQ/iwG8uBpQX/nmRu9RPSI
        Z89sJm9w3nz361VPGvPgmtnYlBkGf/vbIosxlUfheY0XGna0UvIB77wbRPzUc24Q
        mbmlqWKcBbG6Bi/dXzvqcPJHHrLh7wO5J5q4j5oNEv9gdxCKIPqfnOQtU4qIpFCw
        fIOa068RznJuJGCWxOoCuUt5TgsTLlTmjk8V8/BaqJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=AYpfu6
        aNmuW+1E3KqhGQbWy2Wl9D41r5HD33jA7jiBM=; b=WExbLdZp7Oa0DtY+0WkKS8
        27xhTDJ2jhZdapXnzBsIPJm1LTHh44nwtImOBYVH0sgGWGs0nmEX8Ba325laSeoQ
        /BigSsn1p3GRRZX5O4Yq+0IHT23Jl+x4eIEQo62+ZjMB3ksnE1WPEIUhqVvuZqFb
        VuCIhtDrFGaQgT+wah10mNNp/VuUfxR31bpdPlDNwtrA8RlbYeURm+nRDFFsZDpW
        OzZdr8rs1Omje/qu59qMdNWsmlCrj7sOKWOYfLJmvEWSrks5j6lEF/Vmg0yeC5Q0
        qMVhd1chugxq8GF/SnouZSkXfhhsWFQpyA/H3jkG4VIXFFENEKJrTjrs75TJkVNQ
        ==
X-ME-Sender: <xms:oBk2YasFz0OJweEMchZxCYjxXqvECa4eJhj5va7hXK4DkUbVH2M1mA>
    <xme:oBk2Yfcn16m-TMa09qThDJB9euyrHiWEQSuo7Fn-lWhpyCuNbkPdfb4yAUtEBP8Jp
    sQW9ZorlDd4l9WZ4dY>
X-ME-Received: <xmr:oBk2YVxGmJ_F0zVKSqyIY9ZgOlYHR05V6ACC7JyzXlnbtL0Ad7mk5qyF_NLK5SA0TTZYQ71M5holAfDziVl4-ctmCYWdQJkLXFfo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:oBk2YVMJwKxfHuXs0ipcenI31SUtxLAGKQ1novrt5XVpFjFkpHlZ8g>
    <xmx:oBk2Ya9O7OSYUDjshIXZKQfgE87MR6zfIspSi4mBmELh1ctxwYew6Q>
    <xmx:oBk2YdVWiZMLp10prJ-j6yp0hkwf2uVdBSc-JUpBEMd-dYc5EvZclg>
    <xmx:oRk2YRmqFETyeznFI1JCaUCSZsAKXt9QG4TbOtOpbxz8kWARSzYNjw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:37:35 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:37:34 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 41/52] ARM: dts: sunxi: Fix OPP arrays
Message-ID: <20210906133734.eonud3qgzgpmhc24@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-42-maxime@cerno.tech>
 <1707026.1T6aL4z3T8@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gfkyvhvyyhmybuw5"
Content-Disposition: inline
In-Reply-To: <1707026.1T6aL4z3T8@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gfkyvhvyyhmybuw5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:04:59PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:41 CEST je Maxime Ripard napisal(a=
):
> > Even though it translates to the same thing down to the binary level, we
> > should have an array of 2 number cells to describe each OPP, which in
> > turns create a validation warning.
> >=20
> > Let's fix this.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks

--gfkyvhvyyhmybuw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZngAKCRDj7w1vZxhR
xa7eAQChqj1VDPKKXUyNPdqkDN71oeMZfFlKrneWXasV8EYmowD/arzhSXyLg8lh
xW3etFjhx0sJN7jZeFXGVA2fczte8Q4=
=yAAn
-----END PGP SIGNATURE-----

--gfkyvhvyyhmybuw5--
