Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAA8C4A3F82
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 10:47:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239223AbiAaJrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 04:47:02 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:32931 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232052AbiAaJrB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 04:47:01 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 85EF75C00F3;
        Mon, 31 Jan 2022 04:47:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 31 Jan 2022 04:47:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=8PooEsBVNKxO/gG3TkHXHYTVcASv4tz+akaDcs
        EfkQk=; b=jFBMFcKszn46Ho2oceSuLdmdB9sNkdkfGBPm8Zq41lntCiPFbcsLDO
        CXNzo6oNHoaeS5OrTX5DkCQD34gpNqFmlP8UmuaGj8JeDYEC92CrzXTqtdt75NcU
        GCVQTOTXr2ItFbhiKZJtCRJNoy3F8eOOuVnfUXpa0RwP34cTPN1ALZgftug4Bprl
        r4ra8FnHeCYC3TdVCNpJAJ21B32wPBPD9GyLHKZ07qVpV5EEAAYTJSkTqHryOduD
        HiEDMtIz1Iawv0b538mp6SGQnP+KtEvVYqNLgVz/xXmLLA0/DVwJFSmH69f0NzFk
        ZKE9XbfZje8XP8x8cKA8hrdylgSiUDfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8PooEsBVNKxO/gG3T
        kHXHYTVcASv4tz+akaDcsEfkQk=; b=UTuhXAtDEhWycM8IdcjPbbeiI+Gcj9zN7
        aYvFRxUjFUv3Wqku9xEdgahnKlUjfTITWHEDcy5q8CP/kMy80hsdzA/hfi+5v3XZ
        qlwoyNLBblhbWuMP55R6P0pSRvs1iPiv+cvOJqFYI1R6SshFM44VdFHWpT1bbC5E
        9pMO6Xqedg1DdIJa07A0GEnHp3oiI+RTegHKatY7laxCZRMKjhFs0KNOtY6mTeSr
        hDB2HPZLZH/3IIFI5W+KMTOPt3orpGzRgyHzeeYQwkwV697RtKkICjFKvKGilkjk
        gV4Q5Iu17y37Bk/mz64sEpUXu9syCgENKEOQQx9WfJleJqogqIG5Q==
X-ME-Sender: <xms:FbD3YUq8MnbbWXpcmlXrPe3gEORGrB_n0r5amQCcX9sKIHtAlMX0cA>
    <xme:FbD3YarD8vAVhzTEaMSllMUqKsezBL4W_xNNRCZJd1RPqkZgPi_7Qnn_RYbbs01LJ
    iN-b0MXQzYvv4jIA1w>
X-ME-Received: <xmr:FbD3YZNjQHcFX1KnDzefFsW1CUqx2cS7Hyx5pXfZ_a0RuLsaFXVtGUwaxaS_4sHQeYRtV6InmQ2tLSewcfyZP500krPFGONAWTb56sI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgedugddtkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
    nhhordhtvggthheqnecuggftrfgrthhtvghrnhepleekgeehhfdutdeljefgleejffehff
    fgieejhffgueefhfdtveetgeehieehgedunecuvehluhhsthgvrhfuihiivgeptdenucfr
    rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:FbD3Yb7jRypL9bPgCgoNzeJ_6bT-gkXSfX52QaJ_QQquXmZJwyZcHw>
    <xmx:FbD3YT5wpIr7Ce40niqe6vLsTKDQibg4xn_mbnE2RA6N42_WHwDv3A>
    <xmx:FbD3Ybga6oJrWp4aAi4N-tjaN3y1xLkfUsd_-oirOr1-V1j6-mQnTw>
    <xmx:FbD3YW3uZOwJtVIh3W8J3Dve4cXKnVS71ohpmda4Os-ByiiY7VQLTA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 31 Jan 2022 04:47:00 -0500 (EST)
Date:   Mon, 31 Jan 2022 10:46:59 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        andre.przywara@arm.com, linux-sunxi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/4] ARM: dts: suniv: Enable mmc for f1c100s.
Message-ID: <20220131094659.uarrupjd5zeu76xw@houat>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
 <20220130220325.1983918-4-Mr.Bossman075@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xluz7hayxvbnsdjm"
Content-Disposition: inline
In-Reply-To: <20220130220325.1983918-4-Mr.Bossman075@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xluz7hayxvbnsdjm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 30, 2022 at 05:03:25PM -0500, Jesse Taube wrote:
> Enable mmc0 in f1c100s-licheepi-nano device tree.
>=20
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> ---
> V1 -> V2:
> * New patch
> ---
>  arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts b/arch/arm=
/boot/dts/suniv-f1c100s-licheepi-nano.dts
> index a1154e6c7cb5..c856a6a20dc8 100644
> --- a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
> +++ b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
> @@ -24,3 +24,9 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_pe_pins>;
>  	status =3D "okay";
>  };
> +
> +&mmc0 {
> +	bus-width =3D <4>;
> +	broken-cd;
> +	status =3D "okay";
> +};

The labels are ordered alphabetically

Maxime

--xluz7hayxvbnsdjm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYfewEwAKCRDj7w1vZxhR
xQAhAQDWuP+xthxLAzSXLUxH1MwG5n6kHiynhk7abn4d74s0ZgD/djfOneld0jRd
DYMIzsvE0NLqMlAaBRy0igi15wBQlQY=
=Isag
-----END PGP SIGNATURE-----

--xluz7hayxvbnsdjm--
