Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB67F48C46A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 14:08:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353359AbiALNH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 08:07:58 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:53981 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353356AbiALNH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 08:07:57 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 7C8685C015A;
        Wed, 12 Jan 2022 08:07:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 12 Jan 2022 08:07:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=k5qOYb4gv65bUVQbw6txdgLOrCo
        DvBsr7+HOXKrchvg=; b=XTZBthyR57pnpig384MDAgFQO+22SSvo7DU6VKxAOCR
        tpuHHVCGBZBrmuX3FAVk09zwzoSrZncPcscGo2z3j94riDf3sRC9eKlmnavO/cEC
        42nRG8pLaDy7TOZ1ShePoY2Kiu10FIv5fWPQV7CZcy2U5HMZlEcZB5TZL9kxHUeX
        AnfA6Q1r3JuwZERBVGP1pyLpWPT239iRJnKItnS9rSAzvXqWvB+IpcLX0tQ6mUfj
        xfh46Zh9BkARhkh+d4inX+rXVjEiTEAlloZhYO1p998BlTGrV2W0YsP4OsZFep8r
        H+ZSUpKEvLxSFTKwx7ZcVUpXACjIUa/FfimzHhmWloA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=k5qOYb
        4gv65bUVQbw6txdgLOrCoDvBsr7+HOXKrchvg=; b=R4ww2vVWcIHQnLN3VRlATu
        kx4eA1/+2pc+ApBodOru00rsFF53raifDPVAANDwX1qvRojSjPPsUDMil295vXNg
        zXaSylUPFbSEQfhEzGmtugbtbXkeXDm0LgmfH3ji9HEzuXBJZuAAgMiBQp8yU7ch
        pazllc7kEghxNtusIBgS3vD4Qdpirq7G8U/nig0CfGl76XADfQAOVHLUBUWkoJMG
        Vgng1CRZlxj1RaiP9rjapSNzqpxbSUfN9oABC+uumkwZarDEPEUXlq8WUe1Pee5V
        RkY2Q6NOoKCdd2XbiXAVtVbkLpZBRPCDn5fHG0FdhX0/HdA7h3s+hwVXVdzIm/Gg
        ==
X-ME-Sender: <xms:rdLeYXDD-0kTDKwxTK2LdBvITAvR70B62isgPxIBR37vSGs3uobXZQ>
    <xme:rdLeYdjy_kQKL8cUu3nR0FjKHjAHKapdSCb_M6Bj-8URmJTqUvy2RHxnynZW3KLZL
    J0FdAIw4hfQmAFZIhc>
X-ME-Received: <xmr:rdLeYSnOO5VXr1uS4AKf_aFN8n7OuNIM0ArPWHnbIgmUu624WNNLDCjjNUOwylL1Mokmg7GPkIJD-2tp1LAJbQN_Vb8IJhaLWVydcG0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrtddugddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rdLeYZwJXya4A381_UEy6_0QzjBEdT8w6HHPw7NsF-0NMm6OXaakTQ>
    <xmx:rdLeYcQDLRnZmkLx66XUXYbiN1_oqRdIF_0kT0jt23eGuF2tMixOmQ>
    <xmx:rdLeYcZOIxv_iWMd_xF0qoe7PDNddVE3ahdlNcFobd4BRqzE4dfuFw>
    <xmx:rdLeYRTj6n5eKTrYGzI7EEWYcBsH5-bT7_z0cOROsOpgrqfpfbeebg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jan 2022 08:07:56 -0500 (EST)
Date:   Wed, 12 Jan 2022 14:07:54 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andrzej Hajda <andrzej.hajda@intel.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v3] drm: of: Lookup if child node has panel or bridge
Message-ID: <20220112130754.kuiqqggpjagwa5ng@houat>
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
 <20220112100338.alaaggidlydoiiso@houat>
 <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
 <08b61950-3830-5ca0-8b8a-7be3daec322c@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7y4ecuzjvavn56hr"
Content-Disposition: inline
In-Reply-To: <08b61950-3830-5ca0-8b8a-7be3daec322c@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7y4ecuzjvavn56hr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 12:45:23PM +0100, Andrzej Hajda wrote:
>=20
> On 12.01.2022 11:14, Jagan Teki wrote:
> > On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> > > > Some OF graphs don't require 'port' or 'ports' to represent the
> > > > downstream panel or bridge; instead it simply adds a child node
> > > > on a given parent node.
> > > All bindings using OF graph nodes require either port or ports.
> > >=20
> > > DSI Host however don't have to use the OF graph, and that's what you'=
re
> > > talking about.
> > Yes, right now I can see DSI but this change is generic to any OF graph.
> >=20
> > > > drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> > > > node based on the OF graph port and endpoint and it fails to use
> > > > if the given node has a child panel or bridge.
> > > >=20
> > > > This patch add support to lookup that given node has child panel
> > > > or bridge however that child node is neither a 'port' nor a 'ports'
> > > > node.
> > > >=20
> > > > Example OF graph representation of DSI host, which has 'port'
> > > > but not has 'ports' and has child panel node.
> > > >=20
> > > > dsi {
> > > >        compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > > >        #address-cells =3D <1>;
> > > >        #size-cells =3D <0>;
> > > >=20
> > > >        port {
> > > >                dsi_in_tcon0: endpoint {
> > > >                        remote-endpoint =3D <tcon0_out_dsi>;
> > > >        };
> > > >=20
> > > >        panel@0 {
> > > >                reg =3D <0>;
> > > >        };
> > > > };
> > > >=20
> > > > Example OF graph representation of DSI host, which has 'ports'
> > > > but not has 'port' and has child panel node.
> > > >=20
> > > > dsi {
> > > >          compatible =3D "samsung,exynos5433-mipi-dsi";
> > > >          #address-cells =3D <1>;
> > > >          #size-cells =3D <0>;
> > > >=20
> > > >        ports {
> > > >                #address-cells =3D <1>;
> > > >                #size-cells =3D <0>;
> > > >=20
> > > >                port@0 {
> > > >                        reg =3D <0>;
> > > >=20
> > > >                        dsi_to_mic: endpoint {
> > > >                                remote-endpoint =3D <&mic_to_dsi>;
> > > >                        };
> > > >                  };
> > > >          };
> > > >=20
> > > >          panel@0 {
> > > >                  reg =3D <0>;
> > > >          };
> > > > };
> > > I can't see how that one makes sense. The endpoint seems to have a
> > > single output, yet you also have a panel under it which is also an
> > > output? You should have at least the virtual channel of that endpoint
> > > somewhere to differentiate data between the panel and whatever is
> > > connected on the other side of that endpoint.
> > Same that I understood so far (based on v2 change), However we have
> > exynos5433 has this pipeline and Andrzej mentioned it is valid
> > pipeline on other thread.
> >=20
> > May be Andrzej, can give more conclusive evidence for it.
>=20
>=20
> Hmm, this is DSI bridge (or encoder), which has one input (connected to m=
ic,
> described by port 0) and one output (connected to DSI panel described by
> child relationship).
>=20
> It looks for me quite natural.

Yeah, the dsi_to_mic feels weird if DSI is the receiver here, but it
makes sense, thanks

Maxime

--7y4ecuzjvavn56hr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYd7SqgAKCRDj7w1vZxhR
xY4FAQC1Z0F0GmhmoI7Bz033oVZpZqZsvdA6Sv1pVgIzM8hW/AD9Gbah5u6ap4ZR
UXIy1IVZOdPQvnGfrLlYcXXn6AO3xgc=
=2bwQ
-----END PGP SIGNATURE-----

--7y4ecuzjvavn56hr--
