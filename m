Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95FBF48C1E9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:03:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239179AbiALKDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:03:43 -0500
Received: from wout5-smtp.messagingengine.com ([64.147.123.21]:43841 "EHLO
        wout5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238869AbiALKDm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:03:42 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 9ACE4320046F;
        Wed, 12 Jan 2022 05:03:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 12 Jan 2022 05:03:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=YhGxnHn6M1gM7MBkS5smFTmPeAu
        hUlT/amJYfJolL6g=; b=BNZ5laT/a13Xvws3E1Z4XK5iwAcCKpaESX7G20/3Opt
        B3aKftbLVoKeEVhXvPomzGxwogY9U5PTw3/XneZXhbD1nCwQfhy4oljKfa+t+bEm
        /xMqyuKcRCSjW1fNk6Ha2XUuqstS81fOApoWY7wVCl1oigpnGXBBTPEeOVlg4QfL
        cpPI10q6L5cFJ2QkH2DRoo67SidAOvtHlV25xb9asZaYbK7gUZQH1F5MlyOUFpj9
        hAm4MFVDHr8jSv3DDV/07ImOGFAlD7CA/WAYcwhm2QvcDNg0si/7IKCP5c2MnHhg
        xUpgPgcl6KQMYwUZpVT/lbIeJK9Jy0IHuZL4NrHVhXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=YhGxnH
        n6M1gM7MBkS5smFTmPeAuhUlT/amJYfJolL6g=; b=TCEcraWwBOVfVgFHzkgBF9
        B/j2D0FChriGtQKAPjDBKJer1NPCE4UQHX9k9BjNHPf1iAUZOMNXOMMbnKthB9pW
        qym7I0qvNGkMC3lMwe6773NUVBsLY5Ae0Vt0NR5N+jEj0P3WEOekAVzI1a3nMGMv
        JXjPF1ub5454UzeAQsweC28scHrllY/YgievQo4jNwiEHolEA78sQ5VPQpEETggH
        bCpi9FP0UQamxNyoorf7hmFQVVCx3mc01Tp37Lsl0Z9yE9GomBoadgclyDbUN995
        fSwcoi0VLAglD/wr8COQV6WeqMfJkwxMR1lQLPClwqgymRwfPYjdYvTXafzPDn6g
        ==
X-ME-Sender: <xms:fKfeYesu0mba_QVKfuUmKxbWBGU96hQjIvmW9Y0Wut96ZdOoQ_-opA>
    <xme:fKfeYTc4P_CO1oNprEGUR4khhHGvewJfehFeqUft8KCKNI76FuPRQNBPysj0IqzCQ
    X2-Fg1fRMPkaZ4SfIQ>
X-ME-Received: <xmr:fKfeYZyxgJNEKON6Wl3-3GdB6vZSG3iF7_JvC-wCs40YxSmjGIICsHT1ypr9pJU2aSzxRJrOBJ0sG9v2s_XW94gSkdr0_gYy1-yxl2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrudehhedguddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepjeekkefftdffhffhvedvudetgfdtleejveffvedvvdetgeeltdfggefhhedv
    ieffnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fKfeYZMzEbbUpqDM0tJK1295S6eY7id6q6gOhXuLlTQmXizXndg3DQ>
    <xmx:fKfeYe_LcDsbImq_MB4bXqULa2Xle6_OUqgJ_z142GJJXTf55cPLTg>
    <xmx:fKfeYRUreml7BZCwhn11rsTjeZktUou_u0SB8bbmzXNv99MA6-h4lA>
    <xmx:fafeYTM-04lHMWX8CJzj6cuhJ7rhYaY_IXspFAQhJGZQJqHGpwWKtg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jan 2022 05:03:40 -0500 (EST)
Date:   Wed, 12 Jan 2022 11:03:38 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v3] drm: of: Lookup if child node has panel or bridge
Message-ID: <20220112100338.alaaggidlydoiiso@houat>
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wifeeaw45jwryhp4"
Content-Disposition: inline
In-Reply-To: <20220111183152.494923-1-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wifeeaw45jwryhp4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> Some OF graphs don't require 'port' or 'ports' to represent the
> downstream panel or bridge; instead it simply adds a child node
> on a given parent node.

All bindings using OF graph nodes require either port or ports.

DSI Host however don't have to use the OF graph, and that's what you're
talking about.

> drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> node based on the OF graph port and endpoint and it fails to use
> if the given node has a child panel or bridge.
>=20
> This patch add support to lookup that given node has child panel
> or bridge however=A0that child node is neither a 'port' nor a 'ports'
> node.
>=20
> Example OF graph representation of DSI host, which has 'port'
> but not has 'ports' and has child panel node.
>=20
> dsi {
> 	compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> 	#address-cells =3D <1>;
> 	#size-cells =3D <0>;
>=20
> 	port {
> 		dsi_in_tcon0: endpoint {
> 			remote-endpoint =3D <tcon0_out_dsi>;
> 	};
>=20
> 	panel@0 {
> 		reg =3D <0>;
> 	};
> };
>=20
> Example OF graph representation of DSI host, which has 'ports'
> but not has 'port' and has child panel node.
>=20
> dsi {
>         compatible =3D "samsung,exynos5433-mipi-dsi";
>         #address-cells =3D <1>;
>         #size-cells =3D <0>;
>=20
> 	ports {
> 		#address-cells =3D <1>;
> 		#size-cells =3D <0>;
>=20
> 		port@0 {
> 			reg =3D <0>;
>=20
>                 	dsi_to_mic: endpoint {
>                         	remote-endpoint =3D <&mic_to_dsi>;
>                 	};
>                 };
>         };
>
>         panel@0 {
>                 reg =3D <0>;
>         };
> };

I can't see how that one makes sense. The endpoint seems to have a
single output, yet you also have a panel under it which is also an
output? You should have at least the virtual channel of that endpoint
somewhere to differentiate data between the panel and whatever is
connected on the other side of that endpoint.

> Example OF graph representation of DSI host, which has neither
> a 'port' nor a 'ports' but has child panel node.
>=20
> dsi0 {
> 	compatible =3D "ste,mcde-dsi";
> 	#address-cells =3D <1>;
> 	#size-cells =3D <0>;
>=20
> 	panel@0 {
> 		reg =3D <0>;
> 	};
> };
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - updated based on other usecase where 'ports' used along with child
> Changes for v2:
> - drop of helper
> https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.46102=
9-1-jagan@amarulasolutions.com/
> - support 'port' alone OF graph
> - updated comments
> - added simple code
>=20
>  drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 59d368ea006b..aeddd39b8df6 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct device_=
node *np,
>  	if (panel)
>  		*panel =3D NULL;
> =20
> +	/**
> +	 * Some OF graphs don't require 'port' or 'ports' to represent the
> +	 * downstream panel or bridge; instead it simply adds a child node
> +	 * on a given parent node.

All OF graphs require either port or ports. DSI hosts can just have a
child node.

Maxime

--wifeeaw45jwryhp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYd6negAKCRDj7w1vZxhR
xcaNAQCbQC4QdtNFRcqLhUGny2KYc08cdZN/a3BGGecrTg47jAD/Q9sow+mP4cjW
wrajteefbbcgSmI5OAUSquRHD8ma2wE=
=aZaa
-----END PGP SIGNATURE-----

--wifeeaw45jwryhp4--
