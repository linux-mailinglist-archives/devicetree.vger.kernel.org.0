Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22DE46910E7
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 20:05:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbjBITFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 14:05:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjBITFH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 14:05:07 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3324D5ACE2
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 11:05:06 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C23BA61B5C
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 19:05:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C169C433EF;
        Thu,  9 Feb 2023 19:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675969505;
        bh=buvYIsrhn1oB7B2jLvbD4S8NrUtc03iq+TFR/uY3GJA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pBa/7OssRr955SL08GKrYJ1lJqn20kDxi4Epp1Quie+ePadJ8xGcxMq/lUgfrBb3x
         D9gxfY7MHPZpXMHAn9lY+hA7qX82n4RCS57ExKNVvKcf5fhXiAKE7J6n2Z4Cm1ks3E
         lPcHEXYS74mevTl76d7oNnLFUowtNOABEd3TAuIGYGRWJFgRd4kxs3IwEyzH8fgaHS
         DxVp7xPWw/N03j+hxgYdPRDcFmXaEpCJwtLw5ODpGV3Yfl1oaEt2uwhSuQZAucCPP7
         Bc0NrM/bMSXe+0i4GFBoumIDJNO6ffz0+kWL72SZ5CqgIfyOPitN8OtM6paLRbxzuK
         I90rhe4vM02eQ==
Date:   Thu, 9 Feb 2023 19:04:59 +0000
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
Subject: Re: [PATCH v4 5/8] RISC-V: cpufeature: Put vendor_id to work
Message-ID: <Y+VD2/owMIvqzOx8@spud>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-6-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="f0wBqtZLHXrhN6vM"
Content-Disposition: inline
In-Reply-To: <20230209152628.129914-6-ajones@ventanamicro.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--f0wBqtZLHXrhN6vM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Drew,

On Thu, Feb 09, 2023 at 04:26:25PM +0100, Andrew Jones wrote:
> When [ab]using alternatives as cpufeature "static keys", which can
> be used in assembly, also put vendor_id to work as application-
> specific data. This will be initially used in Zicboz's application to
> clear_page(), as Zicboz's block size must also be considered. In that
> case, vendor_id's role will be to convey the maximum block size which
> the Zicboz clear_page() implementation supports.
>=20
> cpufeature alternative applications which need to check for the
> existence or absence of other cpufeatures may also be able to make
> use of this.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  arch/riscv/kernel/cpufeature.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 0d2db03cf167..74736b4f0624 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -278,6 +278,11 @@ void __init riscv_fill_hwcap(void)
>  }
> =20
>  #ifdef CONFIG_RISCV_ALTERNATIVE

I think a comment here about what "application check" means would be
nice.
That wording just feels clunky & the meaning is not immediately
graspable?

/*
 * riscv_cpufeature_application_check() - Check if a cpufeature applies.
 * The presence of a cpufeature does not mean it is necessarily
 * useable. This function is used to apply the alternative on a
 * case-by-case basis.
 */

Dunno, does something like that convey the intent?

> +static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> +{
> +	return data =3D=3D 0;
> +}
> +
>  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begi=
n,
>  						  struct alt_entry *end,
>  						  unsigned int stage)
> @@ -289,8 +294,6 @@ void __init_or_module riscv_cpufeature_patch_func(str=
uct alt_entry *begin,
>  		return;
> =20
>  	for (alt =3D begin; alt < end; alt++) {
> -		if (alt->vendor_id !=3D 0)
> -			continue;

Can you remind me what makes this "safe"?
My understanding was that a vendor_id of zero was safe, as zero is
reserved in JEDEC.
What is stopping someone stuffing this with a given value and
colliding with a real vendor's errata?

	for (alt =3D begin; alt < end; alt++) {
		if (alt->vendor_id !=3D A_VENDOR_ID)
			continue;
		if (alt->errata_id >=3D ERRATA_A_NUMBER)
			continue;

		tmp =3D (1U << alt->errata_id);
		if (cpu_req_errata & tmp) {
			oldptr =3D ALT_OLD_PTR(alt);
			altptr =3D ALT_ALT_PTR(alt);

			/* On vm-alternatives, the mmu isn't running yet */
			if (stage =3D=3D RISCV_ALTERNATIVES_EARLY_BOOT)
				memcpy((void *)__pa_symbol(oldptr),
				       (void *)__pa_symbol(altptr),
				       alt->alt_len);
			else
				patch_text_nosync(oldptr, altptr, alt->alt_len);
		}
	}

I've probably just missing something, my brain swapped out alternatives
the other week. Hopefully whatever I missed isn't embarrassingly obvious!

Cheers,
Conor.

>  		if (alt->errata_id >=3D RISCV_ISA_EXT_MAX) {
>  			WARN(1, "This extension id:%d is not in ISA extension list",
>  				alt->errata_id);
> @@ -300,6 +303,9 @@ void __init_or_module riscv_cpufeature_patch_func(str=
uct alt_entry *begin,
>  		if (!__riscv_isa_extension_available(NULL, alt->errata_id))
>  			continue;
> =20
> +		if (!riscv_cpufeature_application_check(alt->errata_id, alt->vendor_id=
))
> +			continue;
> +
>  		oldptr =3D ALT_OLD_PTR(alt);
>  		altptr =3D ALT_ALT_PTR(alt);
>  		patch_text_nosync(oldptr, altptr, alt->alt_len);
> --=20
> 2.39.1
>=20

--f0wBqtZLHXrhN6vM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+VD2wAKCRB4tDGHoIJi
0tdiAP4kOYMLH3byXTeESx+WKaoDFDZ+WqWL6KuJR0lPG7+/NAD+K/lQRdCtXEIy
6baWI5c3148YvFzQA5sN3KeX/j3CtQM=
=sV7f
-----END PGP SIGNATURE-----

--f0wBqtZLHXrhN6vM--
