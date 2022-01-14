Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26A9D48EA02
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 13:40:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241110AbiANMi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 07:38:27 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:37713 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241102AbiANMiW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jan 2022 07:38:22 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 597465C00CA;
        Fri, 14 Jan 2022 07:38:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 14 Jan 2022 07:38:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=KUORg5rk42XkqBZulVJZrPnJjTR
        Qco+ZwxrYtWh16ss=; b=IUl07jZJ67khe+F2i19Ni1dxPYxwquKJEJ1HVJCbP7U
        I8XUywSdZ3ADcc0LhGepu2hl2cANwr5uggqMgrgvDIf7VQcPV2xRfVPYyFKGPdT0
        r0L00SxD71gqzoEks45xVCTEiqpYDip8aYSWKgHAxrQtmYPQGD9s4+vpx/y7Otc6
        HatBaVmFVcMESQwY+CS08ZPqQxuME6b4rYFIQrOVzIVt0Qgy4caA+Oqn2Tks82bE
        2hJg9491aiKpLih0pdoqWLcJmUz3uMdvho1WF7X77dYmzKD+d7zI3QXgHzsUo0lj
        WN6YjgeLfXHLARY2Lw8xMF6U9uodjV30tccXHlfjA6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=KUORg5
        rk42XkqBZulVJZrPnJjTRQco+ZwxrYtWh16ss=; b=FxnJ0xikP9frbG9bf0ISh0
        nsOOue0x4o2oc9g5altqoHrxuAM9J4KpseGSRit6E7i9TzsIQp4p4pi74Sl/V3wE
        3NlspOrtPdmuCB48X4e5Dh6i59gsVRwDlsBckIIFiOi911/tEF/wnSsk8wcucHHo
        B7bbAAWbnkLjBOOObOTVt7qoXzKPYjCyTYDZAoc8Vcy8dsL2BEzcr0372HqPK4xw
        P8rt21g9Ykq+07gt05GBSzqM4rQvrdMUtrHdkQ8g8A8s5zhTae3sPbMOysWiyDut
        Nr7R3x0HP5aLZwLU7/WX/h5J50ABHI4F6YH3eH9NIROCEllt+AvqMb5DQqeUgi3A
        ==
X-ME-Sender: <xms:u27hYTUQ5BASecaGVy9bQKpErNN8V-XyTWrjYTHHJO4iLPuUyQMHPw>
    <xme:u27hYbmgfEYKp4BCFaa0x_Ij1S3rwb1wdj_HUw5BdATTEgry5HBUO5k2-xf-hGrUt
    9TpuO33NKAUO64s96M>
X-ME-Received: <xmr:u27hYfb8YosZBrp-ZIp5zCjAPGS6anU8og4j1E4MZOI2cqcBqiDM26LgFIKsL6RUU8wIOie0HGUZhT1moEgds4VXx659ahDfRS6L-ko>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrtdehgdegfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeeutdfgjeeuudehvefgvedvtedtudelfffgffekledtffekgedukeejueevieeg
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:u27hYeUkFhTSIRV-otO6W-zvMKWVxB1cAqjAIZl5BbzjL6KpEgXUIw>
    <xmx:u27hYdk380fI7fSuSCFDBSon1wxZX9pLUcuKErdcitH1ngX1GL_KQA>
    <xmx:u27hYbdZrlGr2IprJF18oG151ffrLVm61peHxF1sMygXnmrkgiGomQ>
    <xmx:vG7hYQuR5vnQWBxxkxA2wegBwcTSH14UlJfFXp7G0Et0B1dRRNpJoQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jan 2022 07:38:19 -0500 (EST)
Date:   Fri, 14 Jan 2022 13:38:17 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Andre Przywara <andre.przywara@foss.arm.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 3/3] ARM: dts: sun8i: r40: add second ethernet support
Message-ID: <20220114123817.jg6766vsfogdkzmr@houat>
References: <20220113053734.105813-1-boger@wirenboard.com>
 <20220113053734.105813-4-boger@wirenboard.com>
 <20220114094255.br6qqqgoajvhpt2x@houat>
 <20220114103750.01f95d70@donnerap.cambridge.arm.com>
 <0d62080d-e373-8b6f-699a-b7e4e84a26ce@wirenboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gxwlz26o57tp4qwq"
Content-Disposition: inline
In-Reply-To: <0d62080d-e373-8b6f-699a-b7e4e84a26ce@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gxwlz26o57tp4qwq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 14, 2022 at 03:10:34PM +0300, Evgeny Boger wrote:
> 14.01.2022 13:37, Andre Przywara =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > On Fri, 14 Jan 2022 10:42:55 +0100
> > Maxime Ripard <maxime@cerno.tech> wrote:
> >=20
> > Hi,
> >=20
> > > On Thu, Jan 13, 2022 at 08:37:34AM +0300, Evgeny Boger wrote:
> > > > R40 (aka V40, A40i, T3) has two different Ethernet IPs
> > > > called EMAC and GMAC. EMAC only support 10/100 Mbit in MII mode,
> > > > while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).
> > > >=20
> > > > In contrast to A10/A20 where GMAC and EMAC share the same pins
> > > > making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
> > > > Both EMAC (on port H) and GMAC (on port A) can be then enabled at
> > > > the same time, allowing for two ethernet ports.
> > > >=20
> > > > Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> > > > ---
> > > >   arch/arm/boot/dts/sun8i-r40.dtsi | 49 +++++++++++++++++++++++++++=
+++++
> > > >   1 file changed, 49 insertions(+)
> > > >=20
> > > > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/s=
un8i-r40.dtsi
> > > > index 03d3e5f45a09..8770b105f86e 100644
> > > > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > > > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > > > @@ -217,6 +217,19 @@ syscon: system-control@1c00000 {
> > > >   			#size-cells =3D <1>;
> > > >   			ranges;
> > > > +			sram_a: sram@0 {
> > > > +				compatible =3D "mmio-sram";
> > > > +				reg =3D <0x00000000 0xc000>;
> > > > +				#address-cells =3D <1>;
> > > > +				#size-cells =3D <1>;
> > > > +				ranges =3D <0 0x00000000 0xc000>;
> > > > +
> > > > +				emac_sram: sram-section@8000 {
> > > > +					compatible =3D "allwinner,sun4i-a10-sram-a3-a4";
> > > > +					reg =3D <0x8000 0x4000>;
> > > > +				};
> > > > +			};
> > > > +
> > > >   			sram_c: sram@1d00000 {
> > > >   				compatible =3D "mmio-sram";
> > > >   				reg =3D <0x01d00000 0xd0000>;
> > > > @@ -553,6 +566,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
> > > >   				drive-strength =3D <40>;
> > > >   			};
> > > > +			emac_pa_pins: emac-pa-pins {
> > > > +				pins =3D "PA0", "PA1", "PA2",
> > > > +				       "PA3", "PA4", "PA5", "PA6",
> > > > +				       "PA7", "PA8", "PA9", "PA10",
> > > > +				       "PA11", "PA12", "PA13", "PA14",
> > > > +				       "PA15", "PA16";
> > > > +				function =3D "emac";
> > > > +			};
> > > > +
> > > > +			emac_ph_pins: emac-ph-pins {
> > > > +				pins =3D "PH8", "PH9", "PH10", "PH11",
> > > > +				       "PH14", "PH15", "PH16", "PH17",
> > > > +				       "PH18","PH19", "PH20", "PH21",
> > > > +				       "PH22", "PH23", "PH24", "PH25",
> > > > +				       "PH26", "PH27";
> > > > +				function =3D "emac";
> > > > +			};
> > > There's 17 pins on the first group, but 18 on the second, is it inten=
tional?
> > Yeah, looks like PA17 is missing above. This pin is used for MII only, =
so
> > it is omitted from the existing gmac_rgmii_pins group.
> >=20
> > Evgeny: Did you try a 100MBit PHY on PortA? That should work with both =
the
> > GMAC and EMAC, right? I wonder if we should add a group that connects a=
ll
> > pins needed for MII to the GMAC as well, so basically the above (with P=
A17
> > added), but using 'function =3D "gmac";'? Put an "/omit-if-no-ref/" bef=
ore
> > that (also to those above?) to avoid blowing up the DTB needlessly.
>
> No, it's not intentional, thank you for noticing that!
> I haven't tried EMAC on port A with the latest patch, but it should be
> trivial to do.
> The problem with TXERR signal is that it's kind of optional, so it's hard=
 to
> notice if it doesn't work properly.

TXERR seems to be rarely used for our boards (there's only one in tree,
plus the A20-marsboard currently discussed) so having it as a separate
pinctrl node would make more sense.

> As for adding gmac_*mii*_pins node, I think it could be useful. Do you
> suggest to add it to the same series? Strictly speaking, it has nothing to
> do with R40 and second ethernet support. GMAC is ubiquitous among Allwinn=
er
> SoCs, so I think it would make sense to add to all SoCs at once.
>=20
> As for /omit-if-no-ref/ on pinctrl nodes, is there a policy on it? I mean
> there are people (ourselves included) who use device tree overlays a lot,
> both in bootloader and kernel, so it's not that harmless.

/omit-if-no-ref/ doesn't do anything if the DT is compiled with overlay
support (dtc -@)

Maxime

--gxwlz26o57tp4qwq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYeFuuQAKCRDj7w1vZxhR
xR5dAP9C/5mMR2QYcVwicTPwBBqNeW3RTPExpZ4o+p0drZ3CBgD9Hki13H2Anbj0
YzuPDieJC/VxdAS5YtFNaH80IduQkwM=
=n0Ki
-----END PGP SIGNATURE-----

--gxwlz26o57tp4qwq--
