Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626144A6D54
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 09:53:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245264AbiBBIxI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 03:53:08 -0500
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:40989 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233840AbiBBIxF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 03:53:05 -0500
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id D917E32020A8;
        Wed,  2 Feb 2022 03:53:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 02 Feb 2022 03:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=4Pv4hr0dVr9qFoAMJyTAbVVNdbNUyBamQhV43c
        B1eWc=; b=h4La0L9M7BKl1MEXHsS+B0yCTPHV0ScKv/O6McZQGyScF16yQBSM42
        qkSGknT/QKY5idbj65pzbqSDfOAyG4krG1jYOZ+u/nfmhymO+XF0jbnKc2F+EV2w
        g9YakWBJaeF337e4PmfpbzrqvclAkJ6UfHB1FTPXCsJyWGO6jKZ45fe6TEMNb/Bu
        uL7alLRyIOtpvcLMLDiRHkEjhKnQyVfAdUTF4jypt1a72DApvwtbWfUtAqeGiWfo
        LLR5yTlwIQ4oEaPyP2lY/k/WNOI+5mhDm7HnSU+strh5BcSBXzlNBkKsNek5L4TV
        8tWEnK4qzmbbJ65HCTITtcbkn4jyyN5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4Pv4hr0dVr9qFoAMJ
        yTAbVVNdbNUyBamQhV43cB1eWc=; b=TWreOwrWEIaaNysDPY3wbP6g4cJ4YQf/P
        8xjSV7WsvjX+uDzTa01Xs4+34TqjE5xYwLiJG3HIyahFCJX6CjHN1PaY2kfnNc1P
        yaQiBX5rXPrCSLHPDS5bmDzce3m9ZajKN4yPWJ/Rq/NdR5EGmyVCbjKCSewrAOLU
        BSx8iYCMPet0AG21TwQRBuJ28VPI7rbGmp+/xNlPfC0GFA3WtNX/u0eoH7lnKyIh
        NAbvm4ymgizNuDu4RwjiJGrDOztsez5BRDiuGfWSh9MrNmE9K/dy7W1S7x4zPbc2
        fIrTQm1pREcVLBvhbFvFcTQmzEvDPyyWrTmOcGbfSLtOW4Pkl3cyw==
X-ME-Sender: <xms:bkb6YY3Gynm9uMjHPeYVi79_o97h2okEBSUK0IDSrdOPaLw16uZw_w>
    <xme:bkb6YTFUq6HZad1YaO2oLamlG1M5Q5_9Oo0JXmDC1wi5GXSMWLEPet0D_cpPy97TM
    hCzwanhB0oKAHp87Xc>
X-ME-Received: <xmr:bkb6YQ43I9Zw3BWhBvkFjYwDv20-AdH0AGETIzVILLFylhEGqeJbr-VKlomb_-DEf-IQKrnKEfFMKY_fBTmiBKH7Q0Do9O_lXRKlaQE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeeggdduvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepveevfeffudeviedtgeethffhteeuffetfeffvdehvedvheetteehvdelfffg
    jedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bkb6YR1xQPo6VfUCG4y8HOZLSffX6h1vAM8Pr6VK90BIm7yK9VbtNQ>
    <xmx:bkb6YbH7DxyPeVu0Z-NhA4fVVp7R9F7pN7sx6uItuxM2i2WMMKqH0A>
    <xmx:bkb6Ya_MAVXtxlkiFFVWKNmSFsO84dQcxwiMQu9Ul08vOmxI7tcvug>
    <xmx:b0b6Ya1Mxtt0OMx1NyIuq4eSblxbRdXmjqXW4nL2r2F5__1kHt4ctg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Feb 2022 03:53:01 -0500 (EST)
Date:   Wed, 2 Feb 2022 09:52:59 +0100
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
Message-ID: <20220202085259.o5wkkdndqeyaruiy@houat>
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
 <20220112100338.alaaggidlydoiiso@houat>
 <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
 <20220112130705.zevbywvp5i63ixrf@houat>
 <CAMty3ZAz+3AcjsTZk6xmDpYueV1qNL05Gd-d7qeXEoPmiEoR_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wgk23vtaarzmlwsq"
Content-Disposition: inline
In-Reply-To: <CAMty3ZAz+3AcjsTZk6xmDpYueV1qNL05Gd-d7qeXEoPmiEoR_g@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wgk23vtaarzmlwsq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 11:03:55PM +0530, Jagan Teki wrote:
> On Wed, Jan 12, 2022 at 6:37 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Wed, Jan 12, 2022 at 03:44:00PM +0530, Jagan Teki wrote:
> > > On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wro=
te:
> > > >
> > > > On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> > > > > Some OF graphs don't require 'port' or 'ports' to represent the
> > > > > downstream panel or bridge; instead it simply adds a child node
> > > > > on a given parent node.
> > > >
> > > > All bindings using OF graph nodes require either port or ports.
> > > >
> > > > DSI Host however don't have to use the OF graph, and that's what yo=
u're
> > > > talking about.
> > >
> > > Yes, right now I can see DSI but this change is generic to any OF gra=
ph.
> >
> > Not really? Generic to all users of drm_of_find_panel_or_bridge sure,
> > but DSI is the only use case where we could have bridges or panels that
> > would be child of the user.
> >
> > > > > drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> > > > > node based on the OF graph port and endpoint and it fails to use
> > > > > if the given node has a child panel or bridge.
> > > > >
> > > > > This patch add support to lookup that given node has child panel
> > > > > or bridge however that child node is neither a 'port' nor a 'port=
s'
> > > > > node.
> > > > >
> > > > > Example OF graph representation of DSI host, which has 'port'
> > > > > but not has 'ports' and has child panel node.
> > > > >
> > > > > dsi {
> > > > >       compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > > > >       #address-cells =3D <1>;
> > > > >       #size-cells =3D <0>;
> > > > >
> > > > >       port {
> > > > >               dsi_in_tcon0: endpoint {
> > > > >                       remote-endpoint =3D <tcon0_out_dsi>;
> > > > >       };
> > > > >
> > > > >       panel@0 {
> > > > >               reg =3D <0>;
> > > > >       };
> > > > > };
> > > > >
> > > > > Example OF graph representation of DSI host, which has 'ports'
> > > > > but not has 'port' and has child panel node.
> > > > >
> > > > > dsi {
> > > > >         compatible =3D "samsung,exynos5433-mipi-dsi";
> > > > >         #address-cells =3D <1>;
> > > > >         #size-cells =3D <0>;
> > > > >
> > > > >       ports {
> > > > >               #address-cells =3D <1>;
> > > > >               #size-cells =3D <0>;
> > > > >
> > > > >               port@0 {
> > > > >                       reg =3D <0>;
> > > > >
> > > > >                       dsi_to_mic: endpoint {
> > > > >                               remote-endpoint =3D <&mic_to_dsi>;
> > > > >                       };
> > > > >                 };
> > > > >         };
> > > > >
> > > > >         panel@0 {
> > > > >                 reg =3D <0>;
> > > > >         };
> > > > > };
> > > >
> > > > I can't see how that one makes sense. The endpoint seems to have a
> > > > single output, yet you also have a panel under it which is also an
> > > > output? You should have at least the virtual channel of that endpoi=
nt
> > > > somewhere to differentiate data between the panel and whatever is
> > > > connected on the other side of that endpoint.
> > >
> > > Same that I understood so far (based on v2 change), However we have
> > > exynos5433 has this pipeline and Andrzej mentioned it is valid
> > > pipeline on other thread.
> > >
> > > May be Andrzej, can give more conclusive evidence for it.
> > >
> > > >
> > > > > Example OF graph representation of DSI host, which has neither
> > > > > a 'port' nor a 'ports' but has child panel node.
> > > > >
> > > > > dsi0 {
> > > > >       compatible =3D "ste,mcde-dsi";
> > > > >       #address-cells =3D <1>;
> > > > >       #size-cells =3D <0>;
> > > > >
> > > > >       panel@0 {
> > > > >               reg =3D <0>;
> > > > >       };
> > > > > };
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > ---
> > > > > Changes for v3:
> > > > > - updated based on other usecase where 'ports' used along with ch=
ild
> > > > > Changes for v2:
> > > > > - drop of helper
> > > > > https://patchwork.kernel.org/project/dri-devel/cover/202112070547=
47.461029-1-jagan@amarulasolutions.com/
> > > > > - support 'port' alone OF graph
> > > > > - updated comments
> > > > > - added simple code
> > > > >
> > > > >  drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
> > > > >  1 file changed, 18 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > > > index 59d368ea006b..aeddd39b8df6 100644
> > > > > --- a/drivers/gpu/drm/drm_of.c
> > > > > +++ b/drivers/gpu/drm/drm_of.c
> > > > > @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct=
 device_node *np,
> > > > >       if (panel)
> > > > >               *panel =3D NULL;
> > > > >
> > > > > +     /**
> > > > > +      * Some OF graphs don't require 'port' or 'ports' to repres=
ent the
> > > > > +      * downstream panel or bridge; instead it simply adds a chi=
ld node
> > > > > +      * on a given parent node.
> > > >
> > > > All OF graphs require either port or ports. DSI hosts can just have=
 a
> > > > child node.
> > >
> > > As commented above, it can be DSI or any host which has child nodes
> > > and are looking to find panel/bridge.
> >
> > DSI is the only case in this situation, but ok. It still has nothing to
> > do with OF graph. All bindings using OF graph will require either port
> > or ports, and the DSI binding doesn't mandate to use OF graph. So the
> > comment above is misleading at best.
>=20
> Okay. How about this updated comment?
>=20
>         /**
>          * All bindings using OF graph will require either 'port' or 'por=
ts'
>          * to represent the downstream panel or bridge however the DSI bi=
nding
>          * doesn't mandate to use OF graph; instead it simply adds a pane=
l or
>          * bridge in child node.
>          *
>          * Lookup that child node for a given parent however that child is
>          * neither a 'port' nor a 'ports' node.
>          */

That's still a bit misleading. The OF graph is here to model the data
path, while the rest of the tree is about the control path (ie, which
bus you need to use to access one of the device registers).

So there's no equivalency between OF graph and child nodes. The first
one is here to represent where you get the pixels out, and the second
how you control that device.

Having a child node makes it obvious where the data is going though, so
it would be completely redundant to have both a child node and an OF
graph endpoint.

What about something like:

/*
 * Devices can also be child nodes when we also control that device through
 * the upstream device (ie, MIPI-DCS for a MIPI-DSI device).
 *
 * Search for a child node of the given parent that isn't either port or
 * ports.
 */

Maxime

--wgk23vtaarzmlwsq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYfpGawAKCRDj7w1vZxhR
xQKyAP0UnHOcZ38esnZMc9cnC03J+9HdxB1Nf+usg/LbQOZQDAD6At4Cr6jUiFZQ
JiePfqi2WLpQ+k0G/LBNgyHb1TclOQk=
=3PUD
-----END PGP SIGNATURE-----

--wgk23vtaarzmlwsq--
