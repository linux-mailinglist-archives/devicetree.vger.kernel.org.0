Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72CEA690FD7
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 19:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbjBISDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 13:03:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbjBISDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 13:03:10 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BF8F24112
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 10:03:05 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id CFF4DB821CF
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 18:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B49DBC433EF;
        Thu,  9 Feb 2023 18:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675965782;
        bh=mb3BOfPQcnoilVf4xiklj2I0o95L3wXIQkgHxNQd3ww=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t9cQMJj86Dw24xtTFSLjZeH+jvYUgvvPiGEI9QNOZLkrCCQeauFresJ19WVg0yV5J
         HWm588jnaa5uVa0eMSVi9qeUGrrSJ7Ui3k8n329qNgIC0kB9CqVzWjNMeSErtVBr/R
         Y6KiIRphIPLWx3vci2iV72yAXVv9N3T/8FzfbWift+8eaBz0XsYJk68meJHApPXkmf
         zsGrNoFawQ4LDzb5YDV1ZVM11u7A2GtSuvGX8o7zOrUGprXQsmbVb4EZq9ZxcCUo9J
         rmnWYcaX6OpJZ8eGatRJiSrSmtH8JvVd+3wyjdqbajfzULzFofg6yLDf48ud1MOi61
         uRcjT8HttoncA==
Date:   Thu, 9 Feb 2023 18:02:57 +0000
From:   Conor Dooley <conor@kernel.org>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 1/8] RISC-V: alternatives: Support patching multiple
 insns in assembly
Message-ID: <Y+U1UfV0oLOIHe63@spud>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-2-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mgCZ4A87WWmpAIwp"
Content-Disposition: inline
In-Reply-To: <20230209152628.129914-2-ajones@ventanamicro.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mgCZ4A87WWmpAIwp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 09, 2023 at 04:26:21PM +0100, Andrew Jones wrote:
> As pointed out in commit d374a16539b1 ("RISC-V: fix compile error
> from deduplicated __ALTERNATIVE_CFG_2"), we need quotes around
> parameters passed to macros within macros to avoid spaces being
> interpreted as separators. ALT_NEW_CONTENT was trying to handle
> this by defining new_c has a vararg, but this isn't sufficient
> for calling ALTERNATIVE() from assembly with multiple instructions
> in the new/old sequences. Remove the vararg "hack" and use quotes.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  arch/riscv/include/asm/alternative-macros.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/inc=
lude/asm/alternative-macros.h
> index 51c6867e02f3..7bc52f33f95f 100644
> --- a/arch/riscv/include/asm/alternative-macros.h
> +++ b/arch/riscv/include/asm/alternative-macros.h
> @@ -14,7 +14,7 @@
>  	.4byte \errata_id
>  .endm
> =20
> -.macro ALT_NEW_CONTENT vendor_id, errata_id, enable =3D 1, new_c : vararg
> +.macro ALT_NEW_CONTENT vendor_id, errata_id, enable =3D 1, new_c
>  	.if \enable
>  	.pushsection .alternative, "a"
>  	ALT_ENTRY 886b, 888f, \vendor_id, \errata_id, 889f - 888f
> @@ -41,13 +41,13 @@
>  	\old_c
>  	.option pop
>  887 :
> -	ALT_NEW_CONTENT \vendor_id, \errata_id, \enable, \new_c
> +	ALT_NEW_CONTENT \vendor_id, \errata_id, \enable, "\new_c"

The rationale above seems pretty reasonable to me.
My main thought is that vararg seems intentional, while the "s don't
really?
Given how much churn there is here at the moment, I think it's fairly
likely that the immediate blame will be lost quickly too.
Usually I'd err on the side of "try to explain the black magic parts of
the cosebase to mere mortals" (like me!), but this is going in with a
user & things will quickly blow up if it gets accidentally removed by
someone who doesn't see their value.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>  .endm
> =20
>  .macro ALTERNATIVE_CFG_2 old_c, new_c_1, vendor_id_1, errata_id_1, enabl=
e_1,	\
>  				new_c_2, vendor_id_2, errata_id_2, enable_2
>  	ALTERNATIVE_CFG "\old_c", "\new_c_1", \vendor_id_1, \errata_id_1, \enab=
le_1
> -	ALT_NEW_CONTENT \vendor_id_2, \errata_id_2, \enable_2, \new_c_2
> +	ALT_NEW_CONTENT \vendor_id_2, \errata_id_2, \enable_2, "\new_c_2"
>  .endm
> =20
>  #define __ALTERNATIVE_CFG(...)		ALTERNATIVE_CFG __VA_ARGS__
> --=20
> 2.39.1
>=20

--mgCZ4A87WWmpAIwp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+U1UQAKCRB4tDGHoIJi
0pYqAQC5V56D0NiVQdwWCyjcDk7m6RnBXWkD///DSI9ZOZVMPAEAwjJNxpik4szt
zCK81VZh/ZhH1aTnPr94O/1XEUYxwA0=
=Bd7B
-----END PGP SIGNATURE-----

--mgCZ4A87WWmpAIwp--
