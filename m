Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9D212C04D1
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 12:44:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728852AbgKWLnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 06:43:51 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:50009 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728696AbgKWLnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Nov 2020 06:43:50 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 6E5965C00D7;
        Mon, 23 Nov 2020 06:43:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 23 Nov 2020 06:43:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=6CLGdeqjnHV36lsaSjeQCo3gngo
        +lV3FUJ/1d+tqsmk=; b=iaH5gmB5KwY5lOeaGoPNwd5dLSCr165R01SggCKKONc
        9RMOHt9EiGXGSOOtVZg15MT6rsmdWs/HykPQw+s/HUySuffWvWfVxtTnz/pB2RgP
        SaRRAVgrdp5rpALBnClY0jczvSNqQ1XPwLSXUS18znFmM2vlx2BZGBplVwYv+zrB
        NzQNTT1x2wTo/foBs8hiM2RD1Cj4zJJSoTlGSpybxnBv4IZoNXhr0hA2QIMO0fIy
        R24QRJG73ckcvlyRHWiHLul3u9Au5iJy+kifvLZpRaB7PLuIMsooTjuXe7JtufuT
        amGJfVAniBlTJ54w11D/cj7qDnL5e2Vh4T6snQb6xaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=6CLGde
        qjnHV36lsaSjeQCo3gngo+lV3FUJ/1d+tqsmk=; b=oATBxzTsNeD5dkJRA0EAr0
        4WwP7CYwmKTFEtD32vZVg7X5FHjgVPv2pJQWoe8T9gL36L7UG3kvo7FDhqnH3k/s
        XNdI4+GtwUB1OZWuOW6zJIV0Va9qi1kXuhQ/605RMqvPmWAkh6VyDWmrqPKQE9hi
        FgfhqVsilt5cHDSFZ9TrhbICOkR9oBcrtWq5F6sc5Y8KuxGozfWEp5dTjanjsxzi
        +efTs2b4hOrlkIuFnrydwTrGbYBdSaTMHm8c6ux70Z6bv/Bnz2yigeVNRNummhDS
        l1ViuOnETaVpynt/Ve9x4WVI38OFjkpg++gh2n+exSTcMaHmU6zw9z0LBJOgIMTw
        ==
X-ME-Sender: <xms:dKC7X0lBznZ6lhDDeLj9IVkRJ4UzhFFrpXcXlzG-DINFkRByzXelKA>
    <xme:dKC7Xz1-u6nzb53_pOqxgOpnyjWRLd1_9RJOUOeBOy59bEpE29PBsYVBoLxArTBRQ
    c5_L0JxQi3SJnaRdr4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudegiedgfedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:dKC7Xyrm2_X6tKu-A9VDe6CQNAAUTX_YIk1jQ-_LXsFDHE6s_eGVxQ>
    <xmx:dKC7XwkoBh8__phFFpzZeoBWi2gaPMFVJmM3MawTMSOZOFlqtnDQug>
    <xmx:dKC7Xy3mJrBKu6dyLq5JB_2mVe9FPZWGDiAFYO3vZbnrSmvOJnx7dQ>
    <xmx:daC7X1SdSxs-f5PMtLGznkobrIn2BActM5u7op10w1VdzVhX3dybDQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6C7CC3280059;
        Mon, 23 Nov 2020 06:43:48 -0500 (EST)
Date:   Mon, 23 Nov 2020 12:43:47 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        inux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: s3: switch PineCube to use
 OHCI/EHCI only
Message-ID: <20201123114347.attmmi3sipgxnnhc@gilmour>
References: <20201122003841.1957034-1-icenowy@aosc.io>
 <20201122004011.1957325-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4u5dpl4he57zcb5w"
Content-Disposition: inline
In-Reply-To: <20201122004011.1957325-2-icenowy@aosc.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4u5dpl4he57zcb5w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 22, 2020 at 08:40:11AM +0800, Icenowy Zheng wrote:
> The PineCube board features a USB Type-A connector connected to the
> SoC's USB pins.
>=20
> As this is not designed for being used as a USB device, disable OTG
> controller and route USB to OHCI/EHCI fixedly.

It's not designed to be used as one, but does it work? We've had a
number of boards where this happened in the past, and it was usable for
FEL, or any peripheral really.

If it did work, then this is a regression.

Also, you should explain why this is a good idea: if both can act as a
host, then why should we switch to the HCI controllers?

> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  arch/arm/boot/dts/sun8i-s3-pinecube.dts | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/sun8i-s3-pinecube.dts b/arch/arm/boot/dts/=
sun8i-s3-pinecube.dts
> index 4aa0ee897a0a..c4177c54ef29 100644
> --- a/arch/arm/boot/dts/sun8i-s3-pinecube.dts
> +++ b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
> @@ -78,6 +78,12 @@ csi1_ep: endpoint {
>  	};
>  };
> =20
> +&ehci0 {
> +	phys =3D <&usbphy 0>;
> +	phy-names =3D "usb";

This is weird to me to have the PHY set in the DTSI for musb, but not
for the USB controllers.

Maxime

--4u5dpl4he57zcb5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX7ugcgAKCRDj7w1vZxhR
xUHVAQCd/QWHNNMhWUg/VyvE0Iql6ijEeov8DgTMJmqPcUj0LQD9EseqPI6QWtcb
bnTd7LL8h1YV319A2+fgZqM9IZvz4AY=
=0BZB
-----END PGP SIGNATURE-----

--4u5dpl4he57zcb5w--
