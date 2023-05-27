Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F8A071365F
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjE0UNA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0UM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:12:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 707CFC9
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:12:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 010FA60AEA
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 20:12:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6253AC433D2;
        Sat, 27 May 2023 20:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685218377;
        bh=hrkscgJW7fYG6BnGiHjw77s/Zd7apm2Q2G6qAEixJ1o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Vd0WcxE+cpl81jEynRS0jzASLO6AS8u4ifjxI1hLXlSCZRxfRQ2CAPsqWzfPbstfv
         UcN4SKOU8/LA1Os+UaW2ltr9aAWGUgGr23zy3QNP7ky8ymU4UrR2o0bVR/pTwyB0lC
         Qav9fo95L/zR9U+4Hec456tvrIZ9xCrAKpYXaRzoSsHVaZSEm5VMajxkYPCzmX5R20
         332LanykN8CVvgkpivnuef1RGI2W6d8XkglzL317bsIxvHo98G+duXHpfzgfE5wNRF
         sffzdrqEi1TfbM77na7VutbM7C+vPF6fZB7CmuHfVlNPwPV3VevzB0a1KPIzdqaNW7
         fzfeq1BxyXmMA==
Date:   Sat, 27 May 2023 21:12:52 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 3/3] ARM: dts: imx6ul-ccimx6ulsom: Remove unexisting PMIC
 supply
Message-ID: <20230527-shakily-marrow-b18e2ac3a467@spud>
References: <20230527195005.398815-1-festevam@gmail.com>
 <20230527195005.398815-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="O2e+OukADteWaHdJ"
Content-Disposition: inline
In-Reply-To: <20230527195005.398815-3-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--O2e+OukADteWaHdJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Fabio,

On Sat, May 27, 2023 at 04:50:05PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> There is no "vcoin" supply output provided by the PFUZE100 PMIC.
>=20
> Remove it to fix the following DT check warning:
>=20
> imx6ul-ccimx6ulsbcexpress.dtb: pmic@8: regulators: 'vcoin' does not match=
 any of the regexes:

Dumb question, did you spot this only because of dtbs_check, or is this
something you know to be true?
I had the datasheet open to check the interrupt thing, so I figured I
may as well look for coin cell chargers too.
Seemly there is a "licell" pin that is an input/output. Is this what the
vcoin_chg was referring to, or is that something else entirely?

I know nothing about the hardware at all, so was just something that
piqued my curiosity.

Thanks,
Conor.

>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi b/arch/arm/boot/dt=
s/imx6ul-ccimx6ulsom.dtsi
> index b5781c3656d1..fe82f0b6bbda 100644
> --- a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
> @@ -157,11 +157,6 @@ ldo4_ext: vldo4 {
>  				regulator-min-microvolt =3D <1800000>;
>  				regulator-max-microvolt =3D <3300000>;
>  			};
> -
> -			vcoin_chg: vcoin {
> -				regulator-min-microvolt =3D <2500000>;
> -				regulator-max-microvolt =3D <3300000>;
> -			};
>  		};
>  	};
>  };
> --=20
> 2.34.1
>=20

--O2e+OukADteWaHdJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHJkRAAKCRB4tDGHoIJi
0tc/AQCdt0wNnfXPQ+mV+bETNuLr4tHFOvZbzYeVBwzAL/t+agD6AgdFNrTUC2rb
sxsuorORFVFhPbi4wd6/dSQfe4j+2gQ=
=P609
-----END PGP SIGNATURE-----

--O2e+OukADteWaHdJ--
