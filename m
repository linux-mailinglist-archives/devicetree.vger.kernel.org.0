Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2C054C64DB
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232970AbiB1IcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:32:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbiB1IcT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:32:19 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B5AC6213C
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:31:41 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 451A73200754;
        Mon, 28 Feb 2022 03:31:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 28 Feb 2022 03:31:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=4kkAwjG0cq6z1J7g2KmXKSFYRjIR+/KI4qgHzc
        KL8gU=; b=PWcj7AlBv8fbMlPQbjXoFXynB+PUN6LNIPT0QSEQ/xF3jKajB/hOMC
        DJUFxdE2x/hyYyOgmsR2Tay4LsUElPjqZ/kfAmPYAj9u95BTsDj9ZdiPsIo1gPyG
        9a5XVoQxrk8UBB5UY8EghhUSu/a1cftN3wiFfoI/dlWF2cujemqt+bfc/o4ocxrh
        MmlV5SR2sx7Ai8Ggyh+5k45ym0vsT1EIKQ5cSRIWlOq52nrJZHLx4pCsOli0TG/h
        EtJCzKmjEW744vPldtet/nQX9GUmgcmdIcASuS64xkgATAtBGgJ0izkLdFszmxqD
        gLDxRvEIHl+W3osO8W3f04J2Ky4s9VlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4kkAwjG0cq6z1J7g2
        KmXKSFYRjIR+/KI4qgHzcKL8gU=; b=l4lNi0lQIvqcT7luROijunhlxY8bKfa8b
        1MV8KLrstaKQ6Fda7awqSqjj1llW4EbPx3sx/4E85ET9vgDooFPmoTG39znGA8PM
        ozLp07ns9A3xd9LO+4KMYMBqhpuRjq7nbsfxJGJCwPNAPGPH9lJEoSd0b5Q9vPLo
        SCIUmILIeBF3OtTocwbgH3xsPrBC5X3PXeo4FZbyauG21EGwP5etogrV/07SlXlC
        NGB4QsyX/FfqvXsFJKhE7eAQcHfTKyNUgrs7AKqNLfGkZq/pjYhnmAEfZ5sjlR7x
        v+8Y0gGS+hU3N8FZzPCzhPnei0sdr1xx9nQ7vZJs2AlPxiMxIp+vA==
X-ME-Sender: <xms:a4gcYvCcIzxOhqoqbidOVb_VhFVY_FIs3I2r5k8i4vUQl8OGGO09Bg>
    <xme:a4gcYliOX6-odTuW17UiV18kkYZCU-_1hjuZ-SJ2FM_FK_hgkoIv3oKYwsrKv4FdF
    Wc8VRSV4CTMN1wZWWY>
X-ME-Received: <xmr:a4gcYqkDEwan5Z7NMDMWFgdy472b5oLQXfwpgGF4nYFK3MktrtsxNgT1m5i9OQVHaJNqurc9XlpaAHL4yrbxkH0ZyArdkA3vCyUX6j8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:a4gcYhzREd7v-EYr7s2BNJRqS2pC1AhDJmOgUWu5eujimtfe2yd65A>
    <xmx:a4gcYkT1iNkZw9hhAEGRrjGBkOxDuRP7Wc3L6uFlxKxwdaeqI1k7Wg>
    <xmx:a4gcYkYiQj_2wIOg01lAVEFsfb94_derYDIF7TuPObz9TJR-G8J7jw>
    <xmx:a4gcYjEeclQ-Zj79Z0Iyn6QIoVvd4Xq_CUpK16WfAft_O52NLh_UOg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:31:39 -0500 (EST)
Date:   Mon, 28 Feb 2022 09:31:38 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        sam@ravnborg.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v6 0/5] drm/tiny: Add MIPI DBI compatible SPI driver
Message-ID: <20220228083138.bl7vbj6scpxrgmdr@houat>
References: <20220227124713.39766-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="teb5pejhh3nitfx6"
Content-Disposition: inline
In-Reply-To: <20220227124713.39766-1-noralf@tronnes.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--teb5pejhh3nitfx6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Feb 27, 2022 at 01:47:08PM +0100, Noralf Tr=F8nnes wrote:
> Hi,
>=20
> This patchset adds a driver that will work with most MIPI DBI compatible
> SPI panels out there.
>=20
> One change this time: Fix indentation in the DT binding.
>=20
> All patches are reviewed now so I will apply this after Rob's bot have
> looked at the binding.
>=20
> Thanks for reviewing!

I just merged it in drm-misc-next.

Thanks a lot for being persistent enough to get through this, it will
massively improve the situation for those displays :)

Maxime

--teb5pejhh3nitfx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYhyIagAKCRDj7w1vZxhR
xdPZAQCVm54R3ufZzoplzHjge+E26vwdzKacvX5DOE0vX4j1OgEA+2gB0HsMis+8
8S2AjyOzo+EOomgkrsaMsLVGJ5K5mQI=
=Bj1z
-----END PGP SIGNATURE-----

--teb5pejhh3nitfx6--
