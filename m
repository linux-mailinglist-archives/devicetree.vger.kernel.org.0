Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA09472CDA
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:09:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbhLMNJn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:09:43 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:43827 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231616AbhLMNJm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 08:09:42 -0500
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailnew.nyi.internal (Postfix) with ESMTP id BB8CA58013A;
        Mon, 13 Dec 2021 08:09:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 13 Dec 2021 08:09:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=cKsNyUy8dr954NbnruRjJjWUENx
        96L9wxtsBXeD+gdo=; b=BwP4qnWBc+RSry9qfTSsbh5tXvup8sDc664FwqkPFWh
        sxct0cM156ZIiDM0yAVIm9Jlyjut0Q2bmHcYwjbBmtNowrpn9fxxbSH2Ek6Pwqu4
        3fdhuku9KgVwR8FY4ksGPj7EO2FAV5y+UfflkCTN20JtrmWqXC/3fsNeRpWIBkC/
        3EL2qUxUi2XahlE179yV6is0pjXG1Dt0qasbPAIwh15WXA/jgQicervO/FRaVUhv
        KXIkd1WzP1i1sb6wPt+c/g8+RAfM1gh/zZF+Jg4SQBZKZ88/pvdYkrSlT+RLmgnx
        iunBIX6a/i6tMQVqxitHO+yg3JBfErokm6LlmRpHYmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cKsNyU
        y8dr954NbnruRjJjWUENx96L9wxtsBXeD+gdo=; b=dWoJ5fPXJv7rLqRUZIaFWi
        IQr8lAC46V78nL21mZr+m2qNE/sfMzZiWulQqqLdxWmt9UqoLuiYtTUQWzG3syAY
        Jht7U3gZwtpjCN5pOnTkcmqxYkhjKSO6FvCUiBWguoCx3oloEKn0GabyNxxNr5zt
        AYoV2vOHtQk6B9PYgTQYClHC5/8N77qrST+1hzyJ51CS4E6m/mvlywyWwDMcjk2B
        mS6UvgppmQ4omT+bEVFUs7AdTxbYsnP3Nh1l+3wiJxzPBejn34KwjhtjgzRO6Ooe
        KEOyTYFPgSyFSzyyDjv4EJUPYNj/mHU18B3p9l1WrfNTx/OXaikoLrc8hOvGlbjA
        ==
X-ME-Sender: <xms:E0a3YZaer-yxB3-waDL2ZSdpkdXqHqo47vORRq7GX4I7jOy9gM1Xdw>
    <xme:E0a3YQZmfx2QNfeXAZXxBE_O7W5uIN9njjvmkHLvknabOn5t5PEeZiEpPA1Q0BtLc
    akdtwWQ-ANLe_qca1g>
X-ME-Received: <xmr:E0a3Yb8s0D0PCLV3IAIMzXVyyg-L8ZxX8j4LUS9Maxag9JjVofQAY7rvRLel84hJs1L6rvCNuA_LZkC2UzAcaNJ2YPByCSn__VHq_6wq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeekgdegkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeejkeekffdtfffhhfevvddutefgtdeljeevffevvddvteegledtgfeghfehvdei
    ffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:E0a3YXoTzoBodacoj4Onfweg9vSnthCQP4FPpwdIw3yfnKjQJObZIg>
    <xmx:E0a3YUqr-fmxRe73vBNRvWEv2qc5M9zTpgE0e3D1VFxhPG6-bCNqnw>
    <xmx:E0a3YdQGUVTme2ORvMbT4g-JHKyn39rRxqjBQ_vrZQgWTFsp9eVgQQ>
    <xmx:FUa3Yb0G1wCWNZdysjTtsjIjmjK1wHuPYsTDtwPDvMWzjQJcoI34tg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Dec 2021 08:09:39 -0500 (EST)
Date:   Mon, 13 Dec 2021 14:09:36 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v2] drm: of: Lookup if child node has panel or bridge
Message-ID: <20211213130936.oz2qywi773dhh3cr@houat>
References: <20211213121613.3377432-1-jagan@amarulasolutions.com>
 <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="475uyuve55jgcnsg"
Content-Disposition: inline
In-Reply-To: <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--475uyuve55jgcnsg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2021 at 02:28:39PM +0200, Laurent Pinchart wrote:
> Hi Jagan,
>=20
> Thank you for the patch.
>=20
> On Mon, Dec 13, 2021 at 05:46:13PM +0530, Jagan Teki wrote:
> > Some OF graphs don't require 'ports' to represent the
> > downstream panel or bridge; instead it simply adds a child
> > node on a given parent node.
> >=20
> > drm_of_find_panel_or_bridge can lookup panel or bridge for
> > a given node based on the OF graph port and endpoint and it
> > fails to use if the given node has a child panel or bridge.
> >=20
> > This patch add support to lookup that given node has child
> > panel or bridge however=A0that child node cannot be a 'port'
> > alone or it cannot be a 'port' node too.
> >=20
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' and has child panel.
> >=20
> > dsi {
> > 	compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > 	#address-cells =3D <1>;
> > 	#size-cells =3D <0>;
> >=20
> > 	port {
> > 		dsi_in_tcon0: endpoint {
> > 			remote-endpoint =3D <tcon0_out_dsi>;
> > 	};
> >=20
> > 	panel@0 {
> > 		reg =3D <0>;
> > 	};
> > };
> >=20
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' and has child bridge.
> >=20
> > dsi {
> > 	compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > 	#address-cells =3D <1>;
> > 	#size-cells =3D <0>;
> >=20
> > 	port {
> > 		dsi_in_tcon0: endpoint {
> > 			remote-endpoint =3D <tcon0_out_dsi>;
> > 	};
> >=20
> > 	bridge@0 {
> > 		reg =3D <0>;
> >=20
> > 		ports {
> > 			#address-cells =3D <1>;
> > 			#size-cells =3D <0>;
> >=20
> > 			bridge_out: port@1 {
> > 				reg =3D <1>;
> >=20
> > 				bridge_out_panel: endpoint {
> > 					remote-endpoint =3D <&panel_out_bridge>;
> > 				};
> > 			};
> > 		};
> > 	};
> > };
> >=20
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' or 'port' and has child panel.
> >=20
> > dsi0 {
> > 	compatible =3D "ste,mcde-dsi";
> > 	#address-cells =3D <1>;
> > 	#size-cells =3D <0>;
> >=20
> > 	panel@0 {
> > 		reg =3D <0>;
> > 	};
> > };
> >=20
> > Example OF graph representation of LTDC host, which doesn't
> > have 'ports' or child panel/bridge and has 'port'.
> >=20
> > ltdc {
> > 	compatible =3D "st,stm32-ltdc";
> > 	#address-cells =3D <1>;
> > 	#size-cells =3D <0>;
> >=20
> > 	port {
> > 	};
> > };
> >=20
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - drop of helper
> > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461=
029-1-jagan@amarulasolutions.com/
> > - support 'port' alone OF graph
> > - updated comments
> > - added simple code
> >=20
> >  drivers/gpu/drm/drm_of.c | 23 +++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 59d368ea006b..7d018ff8bc83 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -249,6 +249,27 @@ int drm_of_find_panel_or_bridge(const struct devic=
e_node *np,
> >  	if (panel)
> >  		*panel =3D NULL;
> > =20
> > +	/**
> > +	 * Some OF graphs don't require 'ports' to represent the downstream
> > +	 * panel or bridge; instead it simply adds a child node on a given
> > +	 * parent node.
> > +	 *
> > +	 * Lookup that child node for a given parent however that child
> > +	 * cannot be a 'port' alone or it cannot be a 'port' node too.
> > +	 */
> > +	if (!of_get_child_by_name(np, "ports")) {
> > +		if (of_get_child_by_name(np, "port") && (of_get_child_count(np) =3D=
=3D 1))
>=20
> This messes up reference counting of device_node.
>=20
> > +			goto of_graph_get_remote;
> > +
> > +		for_each_available_child_of_node(np, remote) {
> > +			if (of_node_name_eq(remote, "port"))
> > +				continue;
> > +
> > +			goto of_find_panel_or_bridge;
> > +		}
> > +	}
>=20
> This really looks like a hack to me, I'm worried it may cause issues. It
> would be better, I think, to split the drm_of_find_panel_or_bridge()
> function in two, with the of_graph_get_remote_node() call moved to a
> wrapper function, calling an inner function that takes the remote
> device_node pointer. For the DSI use case, you could either look up the
> panel DT node in the display driver and call the inner function
> directly, or implement a DSI-specific wrapper.

I disagree. The whole point of drm_of_find_panel_or_bridge was that it
was a helper for the encoder / upstream bridge to retrieve whatever is
there next. It's useful and removes boilerplate.

We definitely want to have something just as convenient for DSI.

Maxime

--475uyuve55jgcnsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYbdGEAAKCRDj7w1vZxhR
xewmAP4ius9W0pCs7vG2ZBSviycZHe6f5/F+XqfKHaBusKVyKQD/UbOPqMnVrxT7
gXeFkfTcHAb89qFKoFRIP6sYHkYzqAA=
=G46s
-----END PGP SIGNATURE-----

--475uyuve55jgcnsg--
