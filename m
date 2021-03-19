Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 424DE341E16
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 14:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbhCSNZR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 09:25:17 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:42885 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229875AbhCSNYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Mar 2021 09:24:51 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 1EC815C0121;
        Fri, 19 Mar 2021 09:24:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 19 Mar 2021 09:24:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=0bP+/vtqMulrERf3nTjboUPtRyf
        YlagwooXEYoalfso=; b=bXh1/xlrdVVukMOD+dU/IZKKeRgmFej7tsZKkIv4+0f
        /R38MA2fuglwsCxTn3r5s4YKkubrOIpj/TecSQOqTI4LT9Yg2h0boFa/5oW8ZsQD
        a2S0a1t790an6F4tUPAg+WsrCW3JjsZ6L00BPgxTd7dJVaUAHeULKqPfozP5Vbkn
        UNWRUBnO3AIOm03zKWWfKONLjM6faQ74XmxXHhcW5FBDaRUR+c2z6wsO3boTRH9f
        8IpIjyLFwTS6STmdgT8BaiU8rh2WFOqlZAYGiw/FlyxHImv3euuBd168seYsOywe
        GM13g8KwS5fdX5U43Mw4XEis1VfEUFLE5K8AI9YxHwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0bP+/v
        tqMulrERf3nTjboUPtRyfYlagwooXEYoalfso=; b=iXFvhbtNroi0apzkdVam/c
        C7P7N61bzI0IGnhVa4nFqOOLm7bScDwc8mmVu6ntTsY/0sOPFgKzx63HVpfsUTSs
        TVljF0EloyG1qGkJa698t3Wt8l7pDtwPh8osqXS6AwwlQPqqAnsmrwiqM4oO+ITf
        MoNc0ETZixZw1sPbvl8HnbUUock7LUoSqyi96YoV/p/FOWqzS+dnq5B++SbQF5kf
        Th3c8uV+nt95IKhxgJKqOUXVfdM2+v300SEB/hltJELwLQ0xXG2G/jFCm7Eg8yw6
        OmUTi5KXdjDrd40odePnTiZksFfL2xXf/kz7YjjinJny7nEhLQfs4tdBTpVd5GHw
        ==
X-ME-Sender: <xms:IqZUYINP1Og-tjL1Pu7DO8G9GUF7icmJDj89UyN5JhegKK2AW9RZGg>
    <xme:IqZUYK-KUanvuz54X8XdnT8yOITGZ6QyeQn90DW9LPnpFXJ-UB0I0ht7E7gt1gfAK
    Cg2oGBP84QXlflvf9U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefkedghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnheptdfggfelgeehieeuieegfefgueduudefheffhfejleekheefjeevveegueel
    ueefnecuffhomhgrihhnpehlihhnuhigqdhsuhhngihirdhorhhgnecukfhppeeltddrke
    elrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IqZUYBeXaHh9QM52-Sdqk-1BisKZ7l6MRXhlhMGwab90skmlXQ_DSA>
    <xmx:IqZUYBzfLqp95F5tVitvoghVxGrRFBv6PpEz_byKa4Q92hft_kspjg>
    <xmx:IqZUYOL7VQ94PgZ4wAyNdp2x21UIyokUsmU20vkjxonKZdvC5Hao3Q>
    <xmx:I6ZUYJ44YT3FMwuo1wuqKHV86jla0XwCC14ag0sL4Rh371a75lqAPw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 27CF1240065;
        Fri, 19 Mar 2021 09:24:50 -0400 (EDT)
Date:   Fri, 19 Mar 2021 14:24:48 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1] ARM: dts: sun8i: r40: add dts for Forlinx FETA40i-C &
 OKA40i-C
Message-ID: <20210319132448.eahe4zaqt6gi4oao@gilmour>
References: <20210311153056.69337f0a@NervousEnergy>
 <20210315152904.gqwie3xnmizvid3w@gilmour>
 <20210316184858.77c48315@NervousEnergy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5bsna74ict33n54x"
Content-Disposition: inline
In-Reply-To: <20210316184858.77c48315@NervousEnergy>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5bsna74ict33n54x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 16, 2021 at 06:48:58PM +0300, Ivan Uvarov wrote:
> > There's also a bunch of checkpatch --strict issues you want to get rid
> > of.
>=20
> Thanks for pointing this out.
> Besides the style warnings, which I've fixed, there are also warnings per=
taining to
> documentation. Should I add the compatible strings to
> Documentation/devicetree/bindings/, and/or myself to the MAINTAINERS file?

You can ignore the one about the MAINTAINERS file, but you should address t=
he rest

> If so, would you suggest that I do so in a separate patch, or as part
> of another patch that adds the relevant files?=20

In general, bindings patches should be separate indeed

> > On Thu, Mar 11, 2021 at 03:30:56PM +0300, Ivan Uvarov wrote:
> > > Add support for the Forlinx FETA40i-C SoM and OKA40i-C devboard[1]
> > > based on it. The DT is split into a .dtsi, which (hopefully)
> > > corresponds to the functions of the SoM itself, and a .dts for the
> > > devboard.
> > >=20
> > > [1]:https://linux-sunxi.org/Forlinx_OKA40i-C =20
> >=20
> > Instead of a URL that might be dead at some point, it would be better
> > to have a proper commit log explaining why you did your patch that way
>=20
> I'm not sure I understand.=20
>=20
> By "that way" do you mean that I should explain why I've split up the
> devicetree, or something else?
>=20
> The linked page is just a collection of information about the device;=20
> should I describe the SoM and/or devboard in my commit log instead?

Yep. Essentially the git commit should be freestanding: if we look back
at this commit in 5 years, will we able to tell without any context what
this is about. Just pointing to an URL is risky, since the link might
change or the website gone, and then you have no idea what it's about
anymore.

> > > @@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
> > >  				bias-pull-up;
> > >  			};
> > > =20
> > > +			mmc3_pins: mmc3-pins {
> > > +				pins =3D "PI4", "PI5", "PI6",
> > > +				       "PI7", "PI8", "PI9";
> > > +				function =3D "mmc3";
> > > +				drive-strength =3D <30>;
> > > +				bias-pull-up;
> > > +			};
> > > + =20
> >=20
> > This should be in a separate patch
> >=20
> > >  			/omit-if-no-ref/
> > >  			spi0_pc_pins: spi0-pc-pins {
> > >  				pins =3D "PC0", "PC1", "PC2";
> > > @@ -636,6 +646,16 @@ uart0_pb_pins: uart0-pb-pins {
> > >  				function =3D "uart0";
> > >  			};
> > > =20
> > > +			uart2_pi_pins: uart2-pi-pins {
> > > +				pins =3D "PI18", "PI19";
> > > +				function =3D "uart2";
> > > +			};
> > > +
> > > +			uart2_rts_cts_pi_pins:
> > > uart2-rts-cts-pi-pins{
> > > +				pins =3D "PI16", "PI17";
> > > +				function =3D "uart2";
> > > +			};
> > > + =20
> >=20
> > Ditto, and it should have /omit-if-no-ref/
>=20
> Should the MMC pins be in the same patch as the UART pins?

Yep

> Also, would it be a good idea to add /omit-if-no-ref/ to the uart3
> pins as well while I'm here?

To all the nodes honestly. If you want to make a preliminary patch doing
this, go ahead :)

> > >  			uart3_pg_pins: uart3-pg-pins {
> > >  				pins =3D "PG6", "PG7";
> > >  				function =3D "uart3";
> > > @@ -645,6 +665,21 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
> > >  				pins =3D "PG8", "PG9";
> > >  				function =3D "uart3";
> > >  			};
> > > +
> > > +			uart4_pg_pins: uart4-pg-pins {
> > > +				pins =3D "PG10", "PG11";
> > > +				function =3D "uart4";
> > > +			};
> > > +
> > > +			uart5_ph_pins: uart5-ph-pins {
> > > +				pins =3D "PH6", "PH7";
> > > +				function =3D "uart5";
> > > +			};
> > > +
> > > +			uart7_pi_pins: uart7-pi-pins {
> > > +				pins =3D "PI20", "PI21";
> > > +				function =3D "uart7";
> > > +			}; =20
> >=20
> > Ditto
>=20
> Since this won't be a monolithic patch anymore, would it make more
> sense to make this a three+-patch series:
>=20
> 1. add board+SOM DT without mmc3 or extra uarts;=20
> 2+. add pins to r40.dtsi;=20
> 3. add mmc3&uarts to the devboard DT,
>=20
> or to make only two(+) patches:
>=20
> 1+. add pins to r40;
> 2. add board+SOM DT?

The latter would be more natural indeed

Maxime

--5bsna74ict33n54x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYFSmIAAKCRDj7w1vZxhR
xasBAP4uAlOPLq8eoRA5qne7FJyS9IBfeU3LLEdCmYwjQkxDVwD+PIcjDPZ8QNeB
splqgvD6GtJYyTBcnWNJEKjuZDi5OwU=
=1xgq
-----END PGP SIGNATURE-----

--5bsna74ict33n54x--
