Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E35A69FA25
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:27:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjBVR14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:27:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbjBVR14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:27:56 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26DA86A43
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:27:54 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AAA50604EF
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 17:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B058C433D2;
        Wed, 22 Feb 2023 17:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1677086873;
        bh=GaQWt87pfqWhihgkWvN8V4jqdum+gGbBj2QXnN43Xco=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qmGVZmNf6jMCxbIEVKkOfdRYDWfmYRNqQJzVKPfG9rfKn3VOryXgjnJhTnGslNMdC
         RRf/KvBODyLsWBHMMqhO3VwsjMi/Hm9gafrXRZzPSRrBMxc+Kl5tvIMw4V9VFiQFP8
         rHSXXnfzO+dQsj01XYlOpdW63MNr1vZgIh9qrNa7nm06hA9TekwcIvkauuinyLt/RM
         ko4QAisxGK276tPWrc7ASm07tGuVxlsgmDbV8+YWMbuJp6K0tQRUnO+kqglPwuWLd9
         CWjRDeV6tpa34aHZY0qNDv7zJR6w0wRZJ6LQLPll6sewq+2emPNeDsIIxDvS+kjoNH
         yYOXOsgNx+n/g==
Date:   Wed, 22 Feb 2023 17:27:47 +0000
From:   Conor Dooley <conor@kernel.org>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org, 'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: Re: [PATCH v5 5/8] riscv: cpufeatures: Put the upper 16 bits of
 patch ID to work
Message-ID: <Y/ZQk0ifXPEnenoe@spud>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
 <20230221190916.572454-6-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GqMNVKB/GCgclQiO"
Content-Disposition: inline
In-Reply-To: <20230221190916.572454-6-ajones@ventanamicro.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--GqMNVKB/GCgclQiO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 21, 2023 at 08:09:13PM +0100, Andrew Jones wrote:
> cpufeature IDs are consecutive integers starting at 26, so a 32-bit
> patch ID allows an aircraft carrier load of feature IDs. Repurposing
> the upper 16 bits still leaves a boat load of feature IDs and gains
> 16 bits which may be used to control patching on a per patch-site
> basis.
>=20
> This will be initially used in Zicboz's application to clear_page(),
> as Zicboz's block size must also be considered. In that case, the
> upper 16-bit value's role will be to convey the maximum block size
> which the Zicboz clear_page() implementation supports.
>=20
> cpufeature patch sites which need to check for the existence or
> absence of other cpufeatures may also be able to make use of this.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  arch/riscv/include/asm/alternative.h |  3 +++
>  arch/riscv/kernel/cpufeature.c       | 37 +++++++++++++++++++++++++---
>  2 files changed, 36 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/riscv/include/asm/alternative.h b/arch/riscv/include/as=
m/alternative.h
> index 8f39d4e8598d..f2cb543b0bd2 100644
> --- a/arch/riscv/include/asm/alternative.h
> +++ b/arch/riscv/include/asm/alternative.h
> @@ -17,6 +17,9 @@
>  #include <linux/stddef.h>
>  #include <asm/hwcap.h>
> =20
> +#define PATCH_ID_CPUFEATURE_ID(p)		((u16)((u32)(p) & 0xffff))
> +#define PATCH_ID_CPUFEATURE_VALUE(p)		((u16)(((u32)(p) >> 16) & 0xffff))

I was just fiddling around a bit with macros, I think these do the same
thing:
#define PATCH_ID_CPUFEATURE_ID(p)		((p) & GENMASK(15, 0))
#define PATCH_ID_CPUFEATURE_VALUE(p)		FIELD_GET(GENMASK(31, 16), (p))
Although without the same care about types - is there a specific reason
you were casting like that?

Either way, I think I prefer this approach to the vendor_id stuffing!
If we do end up needing to fit an aircraft carrier, we can come back and
revisit another parameter in the alternatives I suppose...

I don't really know if the macros do anything to help with
understandability, so with or without trying to use macros:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>  #define RISCV_ALTERNATIVES_BOOT		0 /* alternatives applied during regula=
r boot */
>  #define RISCV_ALTERNATIVES_MODULE	1 /* alternatives applied during modul=
e-init */
>  #define RISCV_ALTERNATIVES_EARLY_BOOT	2 /* alternatives applied before m=
mu start */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 6102b6bb5db3..0594989ead63 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -273,12 +273,35 @@ void __init riscv_fill_hwcap(void)
>  }
> =20
>  #ifdef CONFIG_RISCV_ALTERNATIVE
> +/*
> + * Alternative patch sites consider 48 bits when determining when to pat=
ch
> + * the old instruction sequence with the new. These bits are broken into=
 a
> + * 16-bit vendor ID and a 32-bit patch ID. A non-zero vendor ID means the
> + * patch site is for an erratum, identified by the 32-bit patch ID. When
> + * the vendor ID is zero, the patch site is for a cpufeature. cpufeatures
> + * further break down patch ID into two 16-bit numbers. The lower 16 bits
> + * are the cpufeature ID and the upper 16 bits are used for a value spec=
ific
> + * to the cpufeature and patch site. If the upper 16 bits are zero, then=
 it
> + * implies no specific value is specified. cpufeatures that want to cont=
rol
> + * patching on a per-site basis will provide non-zero values and impleme=
nt
> + * checks here. The checks return true when patching should be done, and
> + * false otherwise.
> + */
> +static bool riscv_cpufeature_patch_check(u16 id, u16 value)
> +{
> +	if (!value)
> +		return true;
> +
> +	return false;
> +}
> +
>  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begi=
n,
>  						  struct alt_entry *end,
>  						  unsigned int stage)
>  {
>  	struct alt_entry *alt;
>  	void *oldptr, *altptr;
> +	u16 id, value;
> =20
>  	if (stage =3D=3D RISCV_ALTERNATIVES_EARLY_BOOT)
>  		return;
> @@ -286,13 +309,19 @@ void __init_or_module riscv_cpufeature_patch_func(s=
truct alt_entry *begin,
>  	for (alt =3D begin; alt < end; alt++) {
>  		if (alt->vendor_id !=3D 0)
>  			continue;
> -		if (alt->patch_id >=3D RISCV_ISA_EXT_MAX) {
> -			WARN(1, "This extension id:%d is not in ISA extension list",
> -				alt->patch_id);
> +
> +		id =3D PATCH_ID_CPUFEATURE_ID(alt->patch_id);
> +
> +		if (id >=3D RISCV_ISA_EXT_MAX) {
> +			WARN(1, "This extension id:%d is not in ISA extension list", id);
>  			continue;
>  		}
> =20
> -		if (!__riscv_isa_extension_available(NULL, alt->patch_id))
> +		if (!__riscv_isa_extension_available(NULL, id))
> +			continue;
> +
> +		value =3D PATCH_ID_CPUFEATURE_VALUE(alt->patch_id);
> +		if (!riscv_cpufeature_patch_check(id, value))
>  			continue;
> =20
>  		oldptr =3D ALT_OLD_PTR(alt);
> --=20
> 2.39.1
>=20

--GqMNVKB/GCgclQiO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY/ZQkwAKCRB4tDGHoIJi
0k+wAPwIor5ilu4B0RgPKFqm7EtX5MEeyIBYCiI+e43beFThVAD8DO/1X/a4zv0y
P04ldR+yuDJDo4G0/ySBm28E4Kbc1Ac=
=THQn
-----END PGP SIGNATURE-----

--GqMNVKB/GCgclQiO--
