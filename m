Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16D5D351284
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 11:41:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233504AbhDAJkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 05:40:15 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:57027 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233496AbhDAJjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 05:39:46 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 9C6255C013B;
        Thu,  1 Apr 2021 05:39:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 01 Apr 2021 05:39:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=Jh7GAglKxgu24BeyL8g2v89x9+v
        EG7q1BQAQdFTbIdg=; b=FJwjnPEoEk7OtRuNdFgeS9A5GaSKwNo3HVRMBScXMWQ
        8HzOHkLyUaOXU5n6LydyiZ1b/lXBr1zjSAldzbVaylAHsOhWeKpn4e5PW9ExQpc6
        m8Ko3k7oLLqQKRLzqQyxOCKoBOD+C7/2VEmOZg46gPwFwgPdWODrt+yGvWT4xhqJ
        x59syf4pX9vOu0iMgRBJjvE86xVK/toNNJfAlBWvBITQH38zLPN0NceT1mctOp+d
        2KZKU3Ttfb7dHhKZRPApNSSQHW1YMcQWSDHE7PDDZqk8877GOStY4vq8OJn12mbY
        1+nym+rIftVnZLoiPiCN6T3RmK1cefppQ58nYs6GKsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Jh7GAg
        lKxgu24BeyL8g2v89x9+vEG7q1BQAQdFTbIdg=; b=koRGjhPIbR/RNueJ7IsKW6
        e8HioXkB3Z+eA578dfrqQOXQfLuabqqrMYcAUrTYGID66nsSMi9zZtowA8qK89Ck
        Zym38aEPJqr8B2Bq11ynIjKOLsaLmXmRh7P8PReEbWFZr8zf0E6Hu3Yf5K6C5QgK
        FBHLtkR0QiahB94jX7gpKNE0QSNWK1ZhhJeWQqSdH1r+pv4RfPB7bvhbEiAKTUQp
        A3xagzn4Hzok/nHXYuy1HIQdBCUdDv+lLuTBxt/RZbCjCmvPjRGHE5f08z9kTz+4
        9v/Bc8akRVwYtk5Sjx4OuuG7dWaKCOmWXTiEeqp4HO5ag840RQDOiXcsfvMLLmUQ
        ==
X-ME-Sender: <xms:3pRlYAHBzBikPU0uGQR7YuAC8TTmBl9yCkLGnGZzn5O0OtRBbGSfig>
    <xme:3pRlYJUvd5f4QRKHu9Rc0tdf02UWTzPylLqNIwT5Ra5Sro9evYkenzwMGuzlR2d0n
    ajwWeAAvqpBfwTYNxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeigedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:3pRlYKJ4O52o9IEUhhUqdb5JaUH71tbBSreZZhLS7V_7Ps1XfP-f6w>
    <xmx:3pRlYCFV71bV8kP_fuH1V0aQaIprKJT_-p7WDqMb5dG4e8FuzlfG5Q>
    <xmx:3pRlYGWpEl-iWFS4qvSnN4M8iSUCx5zBBUYj5MaJ14BmJ2xCiAjWiQ>
    <xmx:35RlYIeMyelRhBur6vJ77qEi8xr1WleVykcu9eXszyUsdN4vhyerUA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 53CA5240057;
        Thu,  1 Apr 2021 05:39:42 -0400 (EDT)
Date:   Thu, 1 Apr 2021 11:39:39 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 2/4] ARM: dts: sun8i: r40: add pinmux settings for
 MMC3 and UARTs 2,4,5&7
Message-ID: <20210401093939.b7i3h75kdtk5f7uj@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-3-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vkg6gvt6ubspthm5"
Content-Disposition: inline
In-Reply-To: <20210331155616.793550-3-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vkg6gvt6ubspthm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 31, 2021 at 06:56:14PM +0300, Ivan Uvarov wrote:
> The Forlinx OKA40i-C devboard makes use of UARTs 0,2,3,4,5 and 7 of the R=
40
> SoC, of which UART 0 is connected to an RS232 converter, UART 5 routed to
> an RS485 converter, and the rest broken out directly via labeled headers.
> The board also contains a micro-SD slot connected to SDC3.
>=20
> This patch adds settings to R40's pinmux node for those UARTs that were n=
ot
> already mapped, which would allow us to make use of all available UARTs a=
nd
> the micro-SD slot on this board in a further patch.
>=20
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
>=20
>  1 file changed, 40 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r=
40.dtsi
> index 0b257a0779..51031a0e59 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -357,6 +357,8 @@ mmc3: mmc@1c12000 {
>  			clock-names =3D "ahb", "mmc";
>  			resets =3D <&ccu RST_BUS_MMC3>;
>  			reset-names =3D "ahb";
> +			pinctrl-0 =3D <&mmc3_pins>;
> +			pinctrl-names =3D "default";
>  			interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>  			status =3D "disabled";
>  			#address-cells =3D <1>;
> @@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
>  				bias-pull-up;
>  			};
> =20
> +			mmc3_pins: mmc3-pins {
> +				pins =3D "PI4", "PI5", "PI6",
> +				       "PI7", "PI8", "PI9";
> +				function =3D "mmc3";
> +				drive-strength =3D <30>;
> +				bias-pull-up;
> +			};

I'd put omit-if-no-ref there too

Maxime

--vkg6gvt6ubspthm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYGWU2wAKCRDj7w1vZxhR
xbryAQD8jmUthDjVy89wOpbnFcMMT2y5Wc1E6Eo+JpMjcBywJgEA+I6j69EhIgpi
3C3VXIMgARdfazFJs3I90aW6W2ZT3wA=
=pC8L
-----END PGP SIGNATURE-----

--vkg6gvt6ubspthm5--
