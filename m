Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E226472DA3
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233445AbhLMNnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:43:00 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:52027 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231224AbhLMNm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 08:42:59 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 97BAA58015F;
        Mon, 13 Dec 2021 08:42:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 13 Dec 2021 08:42:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=l1keudBbcYflHzA+VfV7wDY95Z2
        RSHR8BtlJIbIdBoc=; b=RJiuV9UFBq5vSb/7l8DbUaU72uLQuQVaxA3n8lN4q5a
        1iS6BbDBXobi3/14XXUycDCxPbPBigW+VaUYlFeOtINd7wkSgYIV20wbGjGc9ZLP
        tDqDQGzVrZGicgaiOL5t5Tb6scQgKhrLyJ9GnZZWK6FOt311p6v3kfjTr0urflFG
        dh2zkhLQxNb/k+1xbOQ54LqhhblmnFGcaBm9+PiN9N7oYoIp4hyekBVmKbjs8NC9
        8Y3+4LNsVgBjWuYiylvbFyiE+PqZbkurcMW4hOKBT0dV1cvKKlLvs+k/Eurhzhki
        igG9A4z8K5TslK1lVy6hzTcrWtXFZXxax4QXR/huEdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=l1keud
        BbcYflHzA+VfV7wDY95Z2RSHR8BtlJIbIdBoc=; b=QXDAT5tBrVj4mCXb7kWKhc
        nvM3VRpgH21pDkbkBoLwlI74yUB/JX0gYPBwieCRV1nzJpJ6j8meODq6x27gawhh
        GTvteb4fewjSG0h3d3AqSCVvw8Z2EikpcdVeU/J74ek55fFDVKlTt5zJ52ib6Eev
        Z7ME7r5d/JVXe88pKKfORO0T+GmfuiuEIw//2YOd7VayqtojT0tTGx5em0qfAez2
        UcsTDTq+aBohIZ6lY9rSRh2+606VGL92gIKd1peDyxFfXiQGrSxU/vcc00/uELl4
        9u9Ct4k8fIWRD9z5fkunlDOETEbRNwRtdY83CvI0QuVn8guM1jcz5XMNcIV2jSvA
        ==
X-ME-Sender: <xms:4U23Ycze2LhRmwrb5dUmMpqJ26-KKkXNP3RFLbz7mzm4bclvwC034g>
    <xme:4U23YQRBiCA2CBtPPIt0qClYn2ecDx58eqB3tIlR5e6MtTWCPggNdpW1RObQ0kABz
    -PMMBPIwjrfoXiuEzk>
X-ME-Received: <xmr:4U23YeWefaM1Nadd6GAvPhqlKJJT-LF8959G5bT-R-fi4IZl1tO9waLfjkToGCk22cwn-XSOUaDxegbn86SM-nqmZMqJQhnKWXp-jkP2>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeekgdehhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeejkeekffdtfffhhfevvddutefgtdeljeevffevvddvteegledtgfeghfehvdei
    ffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4U23YajRPc-HlalMws3LYtaKCzrJJZvlDPPCFrU6wMVRfJTdY_xc6g>
    <xmx:4U23YeD40voCHZ7CmjsRaEvAxlbKfd4bXauKhXxRlhc7tzpbluOjpg>
    <xmx:4U23YbLT04Z9xwzW6BMj37XhsdL_uSW7eOINHf4q1NdJ0qaV90HAVg>
    <xmx:4k23YWusijdcyXYn3-hvKIaq6wUFTSV3d_UpyAsZDfnggaOJfdXhCQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Dec 2021 08:42:57 -0500 (EST)
Date:   Mon, 13 Dec 2021 14:42:55 +0100
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
Message-ID: <20211213134255.g7xjtvladqaipnl6@houat>
References: <20211213121613.3377432-1-jagan@amarulasolutions.com>
 <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
 <20211213130936.oz2qywi773dhh3cr@houat>
 <YbdMFNpRYWew+kth@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ap4jkcfwkjpuihhz"
Content-Disposition: inline
In-Reply-To: <YbdMFNpRYWew+kth@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ap4jkcfwkjpuihhz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2021 at 03:35:16PM +0200, Laurent Pinchart wrote:
> Hi Maxime,
>=20
> On Mon, Dec 13, 2021 at 02:09:36PM +0100, Maxime Ripard wrote:
> > On Mon, Dec 13, 2021 at 02:28:39PM +0200, Laurent Pinchart wrote:
> > > On Mon, Dec 13, 2021 at 05:46:13PM +0530, Jagan Teki wrote:
> > > > Some OF graphs don't require 'ports' to represent the
> > > > downstream panel or bridge; instead it simply adds a child
> > > > node on a given parent node.
> > > >=20
> > > > drm_of_find_panel_or_bridge can lookup panel or bridge for
> > > > a given node based on the OF graph port and endpoint and it
> > > > fails to use if the given node has a child panel or bridge.
> > > >=20
> > > > This patch add support to lookup that given node has child
> > > > panel or bridge however=A0that child node cannot be a 'port'
> > > > alone or it cannot be a 'port' node too.
> > > >=20
> > > > Example OF graph representation of DSI host, which doesn't
> > > > have 'ports' and has child panel.
> > > >=20
> > > > dsi {
> > > > 	compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > > > 	#address-cells =3D <1>;
> > > > 	#size-cells =3D <0>;
> > > >=20
> > > > 	port {
> > > > 		dsi_in_tcon0: endpoint {
> > > > 			remote-endpoint =3D <tcon0_out_dsi>;
> > > > 	};
> > > >=20
> > > > 	panel@0 {
> > > > 		reg =3D <0>;
> > > > 	};
> > > > };
> > > >=20
> > > > Example OF graph representation of DSI host, which doesn't
> > > > have 'ports' and has child bridge.
> > > >=20
> > > > dsi {
> > > > 	compatible =3D "allwinner,sun6i-a31-mipi-dsi";
> > > > 	#address-cells =3D <1>;
> > > > 	#size-cells =3D <0>;
> > > >=20
> > > > 	port {
> > > > 		dsi_in_tcon0: endpoint {
> > > > 			remote-endpoint =3D <tcon0_out_dsi>;
> > > > 	};
> > > >=20
> > > > 	bridge@0 {
> > > > 		reg =3D <0>;
> > > >=20
> > > > 		ports {
> > > > 			#address-cells =3D <1>;
> > > > 			#size-cells =3D <0>;
> > > >=20
> > > > 			bridge_out: port@1 {
> > > > 				reg =3D <1>;
> > > >=20
> > > > 				bridge_out_panel: endpoint {
> > > > 					remote-endpoint =3D <&panel_out_bridge>;
> > > > 				};
> > > > 			};
> > > > 		};
> > > > 	};
> > > > };
> > > >=20
> > > > Example OF graph representation of DSI host, which doesn't
> > > > have 'ports' or 'port' and has child panel.
> > > >=20
> > > > dsi0 {
> > > > 	compatible =3D "ste,mcde-dsi";
> > > > 	#address-cells =3D <1>;
> > > > 	#size-cells =3D <0>;
> > > >=20
> > > > 	panel@0 {
> > > > 		reg =3D <0>;
> > > > 	};
> > > > };
> > > >=20
> > > > Example OF graph representation of LTDC host, which doesn't
> > > > have 'ports' or child panel/bridge and has 'port'.
> > > >=20
> > > > ltdc {
> > > > 	compatible =3D "st,stm32-ltdc";
> > > > 	#address-cells =3D <1>;
> > > > 	#size-cells =3D <0>;
> > > >=20
> > > > 	port {
> > > > 	};
> > > > };
> > > >=20
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v2:
> > > > - drop of helper
> > > > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747=
=2E461029-1-jagan@amarulasolutions.com/
> > > > - support 'port' alone OF graph
> > > > - updated comments
> > > > - added simple code
> > > >=20
> > > >  drivers/gpu/drm/drm_of.c | 23 +++++++++++++++++++++++
> > > >  1 file changed, 23 insertions(+)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > > index 59d368ea006b..7d018ff8bc83 100644
> > > > --- a/drivers/gpu/drm/drm_of.c
> > > > +++ b/drivers/gpu/drm/drm_of.c
> > > > @@ -249,6 +249,27 @@ int drm_of_find_panel_or_bridge(const struct d=
evice_node *np,
> > > >  	if (panel)
> > > >  		*panel =3D NULL;
> > > > =20
> > > > +	/**
> > > > +	 * Some OF graphs don't require 'ports' to represent the downstre=
am
> > > > +	 * panel or bridge; instead it simply adds a child node on a given
> > > > +	 * parent node.
> > > > +	 *
> > > > +	 * Lookup that child node for a given parent however that child
> > > > +	 * cannot be a 'port' alone or it cannot be a 'port' node too.
> > > > +	 */
> > > > +	if (!of_get_child_by_name(np, "ports")) {
> > > > +		if (of_get_child_by_name(np, "port") && (of_get_child_count(np) =
=3D=3D 1))
> > >=20
> > > This messes up reference counting of device_node.
> > >=20
> > > > +			goto of_graph_get_remote;
> > > > +
> > > > +		for_each_available_child_of_node(np, remote) {
> > > > +			if (of_node_name_eq(remote, "port"))
> > > > +				continue;
> > > > +
> > > > +			goto of_find_panel_or_bridge;
> > > > +		}
> > > > +	}
> > >=20
> > > This really looks like a hack to me, I'm worried it may cause issues.=
 It
> > > would be better, I think, to split the drm_of_find_panel_or_bridge()
> > > function in two, with the of_graph_get_remote_node() call moved to a
> > > wrapper function, calling an inner function that takes the remote
> > > device_node pointer. For the DSI use case, you could either look up t=
he
> > > panel DT node in the display driver and call the inner function
> > > directly, or implement a DSI-specific wrapper.
> >=20
> > I disagree. The whole point of drm_of_find_panel_or_bridge was that it
> > was a helper for the encoder / upstream bridge to retrieve whatever is
> > there next. It's useful and removes boilerplate.
> >=20
> > We definitely want to have something just as convenient for DSI.
>=20
> That could ba a drm_of_find_dsi_panel_or_bridge() :-) My point is that
> I'd like to avoid making assumptions on node names in the lower layers.
>=20
> I also have a different use case for a drm_of_find_panel_or_bridge()
> function ta would take a device_node pointer, so moving the
> of_graph_get_remote_node() lookup out would be useful there. We could
> have (names to be bikeshedded)
>=20
> - __drm_of_find_panel_or_bridge() without of_graph_get_remote_node()
> - drm_of_find_panel_or_bridge() calling of_graph_get_remote_node() and
>   __drm_of_find_panel_or_bridge()
> - drm_of_find_dsi_panel_or_bridge() getting the device_node pointer in a
>   way specific to DSI devices and calling
>   __drm_of_find_panel_or_bridge()

I don't really like the idea of a DSI helper either. Those node names
are reserved so I'm not sure we'll ever find a conflict, but can we base
our decision on remote-endpoint (for ports/endpoints) or reg (for DSI
devices)?

> Ideally, though, the case where we have no port node should die out
> slowly, even when DSI devices are children of the DSI controller, there
> should be ports modelling the data connection.

I'm not really in favor of that either, it looks like making the DT more
complex than it needs to be for no particular reason, but I guess it's a
very subjective matter :)

Maxime

--ap4jkcfwkjpuihhz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYbdN3wAKCRDj7w1vZxhR
xcBPAP9FXmsssZ7BD2jby3ILLGKIpJnusEzwgLStgDac+/BzvwD+IDJOjcO3nIhQ
NctFmpZEEl1f/r1c4aWk/3+Kf22B8AY=
=iRB1
-----END PGP SIGNATURE-----

--ap4jkcfwkjpuihhz--
