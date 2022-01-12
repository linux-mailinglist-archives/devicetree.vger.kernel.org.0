Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EEA448C467
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 14:07:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353377AbiALNHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 08:07:25 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:35521 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353359AbiALNHL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 08:07:11 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 4E4D45C0132;
        Wed, 12 Jan 2022 08:07:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 12 Jan 2022 08:07:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=4J14Ye1df+3ihdzfdtLMkS70EeP
        9K7FEaSjQIiOFDXc=; b=Sao1ZwhyRx2fQAJAXWHqVx9Ihl1DgRbmTut4nQOyYjT
        YaB/Gk5YbmgS3ITBSF3VW3x15s36OHuaGT4tP5EMN+P2RPUI47+xz9iE8kuvuL7i
        tP2cWejaFVZjJFsrRf+TknmEVn8QvpfgahBTwIgnJqMZoFQCkq+M+b0WkDpfxBTC
        u9efEbjiG/mWGhVbtW5905oorueBhOOzYycznfuLmy9PeigQMwuuNbjuFIEt6tcj
        py1i1kTVeL0L2gf9Mm5M0+ItPabauSWhKXxvX7HxNGIhjUjfvlSD90JMgqujb5KJ
        cjTqbngX80NJ4i4n4+rncU74vyYITkA7Qwb+pUdFEjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=4J14Ye
        1df+3ihdzfdtLMkS70EeP9K7FEaSjQIiOFDXc=; b=G+ynTFgSgRHmulcngrYkZg
        wl4DkpYuyquVRousDwFXAZid3Ufal/VATY7jHID/UXv1kguf8FUvNhFl/O/uY47V
        GxqKbIWPQoRM3dz2PK31DYaN5WuomftK0oJp0RAiD8udki5h8lfUcUQm0KsuF5HD
        5bvbgBjUWuinmoo6NInGw9Bu7V9i0W4b6u5UaOexBWvUEEf6qWipiiKbcTxHu2D8
        qHszLrptam5P/90vndgtG5Sn84gAwUDksW77PTsaMK1/jXkfLtJeMmRmcRwwc5Rp
        SgjwJQbDLzKnAziB9S7MKdz3v4DY+xtOwAKbt1vNJZ4DPpLMlbO+SLzO6O9OLwiQ
        ==
X-ME-Sender: <xms:e9LeYYzXA_dbdST9GCnH4yIOj5JinpgXnAEgew6L2dVu3xFG-n5tgw>
    <xme:e9LeYcSqUAURgl_v7tS4dKWalTrsqTLGQrZHFKQJLtvETZzKKErEQVJTCrvHC0hf1
    LNJDOIcBpoVG4L3DfA>
X-ME-Received: <xmr:e9LeYaUl1RiaLZPJPECXgy3CfXz7N85CEQikSWwsPZCF0WcQN7FiPMw1WZXOJUUetilfQRCrem_Xj84Igi5GLPxF9RHPrG2MVHUgPc4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrtddugddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeevveefffduveeitdegtefhhfetueffteefffdvheevvdehteethedvleffgfej
    vdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:fNLeYWixkiHinseF-WAO_rbvjmJIDoZLgqRA2Ga-6Dx5_8oWNbhNlQ>
    <xmx:fNLeYaC9_A4zvwnpAXhSkangUTqC25VPNNdAVdT5a1idAR_BwvEFdQ>
    <xmx:fNLeYXIZYYRyS8VMWDYKOc7i4gn_-v_RfOqNpTmPy3dfsoJiSRzEgw>
    <xmx:fdLeYQBuCs7lL7gM6-0it0nn-q02RIfqqmTpseUSOAZ6xSf_SgllYg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jan 2022 08:07:07 -0500 (EST)
Date:   Wed, 12 Jan 2022 14:07:05 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v3] drm: of: Lookup if child node has panel or bridge
Message-ID: <20220112130705.zevbywvp5i63ixrf@houat>
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
 <20220112100338.alaaggidlydoiiso@houat>
 <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2id7lbm3gc3inb3i"
Content-Disposition: inline
In-Reply-To: <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--2id7lbm3gc3inb3i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 03:44:00PM +0530, Jagan Teki wrote:
> On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> > > Some OF graphs don't require 'port' or 'ports' to represent the
> > > downstream panel or bridge; instead it simply adds a child node
> > > on a given parent node.
> >
> > All bindings using OF graph nodes require either port or ports.
> >
> > DSI Host however don't have to use the OF graph, and that's what you're
> > talking about.
>=20
> Yes, right now I can see DSI but this change is generic to any OF graph.

Not really? Generic to all users of drm_of_find_panel_or_bridge sure,
but DSI is the only use case where we could have bridges or panels that
would be child of the user.

> > > drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> > > node based on the OF graph port and endpoint and it fails to use
> > > if the given node has a child panel or bridge.
> > >
> > > This patch add support to lookup that given node has child panel
> > > or bridge however that child node is neither a 'port' nor a 'ports'
> > > node.
> > >
> > > Example OF graph representation of DSI host, which has 'port'
> > > but not has 'ports' and has child panel node.
> > >
> > > dsi {
> > >       compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > >       #address-cells =3D <1>;
> > >       #size-cells =3D <0>;
> > >
> > >       port {
> > >               dsi_in_tcon0: endpoint {
> > >                       remote-endpoint =3D <tcon0_out_dsi>;
> > >       };
> > >
> > >       panel@0 {
> > >               reg =3D <0>;
> > >       };
> > > };
> > >
> > > Example OF graph representation of DSI host, which has 'ports'
> > > but not has 'port' and has child panel node.
> > >
> > > dsi {
> > >         compatible =3D "samsung,exynos5433-mipi-dsi";
> > >         #address-cells =3D <1>;
> > >         #size-cells =3D <0>;
> > >
> > >       ports {
> > >               #address-cells =3D <1>;
> > >               #size-cells =3D <0>;
> > >
> > >               port@0 {
> > >                       reg =3D <0>;
> > >
> > >                       dsi_to_mic: endpoint {
> > >                               remote-endpoint =3D <&mic_to_dsi>;
> > >                       };
> > >                 };
> > >         };
> > >
> > >         panel@0 {
> > >                 reg =3D <0>;
> > >         };
> > > };
> >
> > I can't see how that one makes sense. The endpoint seems to have a
> > single output, yet you also have a panel under it which is also an
> > output? You should have at least the virtual channel of that endpoint
> > somewhere to differentiate data between the panel and whatever is
> > connected on the other side of that endpoint.
>=20
> Same that I understood so far (based on v2 change), However we have
> exynos5433 has this pipeline and Andrzej mentioned it is valid
> pipeline on other thread.
>=20
> May be Andrzej, can give more conclusive evidence for it.
>=20
> >
> > > Example OF graph representation of DSI host, which has neither
> > > a 'port' nor a 'ports' but has child panel node.
> > >
> > > dsi0 {
> > >       compatible =3D "ste,mcde-dsi";
> > >       #address-cells =3D <1>;
> > >       #size-cells =3D <0>;
> > >
> > >       panel@0 {
> > >               reg =3D <0>;
> > >       };
> > > };
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > Changes for v3:
> > > - updated based on other usecase where 'ports' used along with child
> > > Changes for v2:
> > > - drop of helper
> > > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.4=
61029-1-jagan@amarulasolutions.com/
> > > - support 'port' alone OF graph
> > > - updated comments
> > > - added simple code
> > >
> > >  drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
> > >  1 file changed, 18 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > index 59d368ea006b..aeddd39b8df6 100644
> > > --- a/drivers/gpu/drm/drm_of.c
> > > +++ b/drivers/gpu/drm/drm_of.c
> > > @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct dev=
ice_node *np,
> > >       if (panel)
> > >               *panel =3D NULL;
> > >
> > > +     /**
> > > +      * Some OF graphs don't require 'port' or 'ports' to represent =
the
> > > +      * downstream panel or bridge; instead it simply adds a child n=
ode
> > > +      * on a given parent node.
> >
> > All OF graphs require either port or ports. DSI hosts can just have a
> > child node.
>=20
> As commented above, it can be DSI or any host which has child nodes
> and are looking to find panel/bridge.

DSI is the only case in this situation, but ok. It still has nothing to
do with OF graph. All bindings using OF graph will require either port
or ports, and the DSI binding doesn't mandate to use OF graph. So the
comment above is misleading at best.

Maxime

--2id7lbm3gc3inb3i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYd7SeQAKCRDj7w1vZxhR
xbs2AP0V6jAGXlpHa0j0IpVYj5IeTtTaHBdswo7e9jkcw82CnwEA9lAJlNhpEN+N
asTBoeZmALb8adlRtGh/O8+P8YpoIAY=
=U89X
-----END PGP SIGNATURE-----

--2id7lbm3gc3inb3i--
