Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5477691105
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 20:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjBITKQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 14:10:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbjBITKP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 14:10:15 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8841C66FAF
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 11:10:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 30F78B822D7
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 19:10:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1152EC433D2;
        Thu,  9 Feb 2023 19:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675969798;
        bh=D15Kq849woOVI1YLNhoXChEYCGgOX9FUI/uMUN08w9o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ixjIUr/4Aunsg+LKNcYh3mSpOoSfkqUSQNFRrqSzbrhQ0TqW58+KIWNRRrDvZp0ke
         6xt+R4X9+q98VLEQcUqr1VpRie9hmfFANT+quUBv/2kZT48vCBYhBE6dbKp55tNU2I
         EE0fK/T/C8loHbHKct78AeJo+kKK9OuEVnqRYLkhLux6sI4t5ar7Hd0nsBmD9zG3nd
         9rDalPUVjgV1HrlGHPdwXySYm3lXIEcZThSR4GoJWP72nZCZ6AGA9GfvhnPLvgHDWY
         fjjZdUEZgTXzLkVZiMAUnNDEhFSDlo2F3pXV3SQ+m/2BVhXiKdsjiICsPW0So+qbSB
         jzk4eCB4452Sg==
Date:   Thu, 9 Feb 2023 19:09:53 +0000
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
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Message-ID: <Y+VFAUZ2smkKO0EZ@spud>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="veppz8gDaqvg02hq"
Content-Disposition: inline
In-Reply-To: <20230209152628.129914-7-ajones@ventanamicro.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--veppz8gDaqvg02hq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 09, 2023 at 04:26:26PM +0100, Andrew Jones wrote:
> Using memset() to zero a 4K page takes 563 total instructions, where
> 20 are branches. clear_page(), with Zicboz and a 64 byte block size,
> takes 169 total instructions, where 4 are branches and 33 are nops.
> Even though the block size is a variable, thanks to alternatives, we
> can still implement a Duff device without having to do any preliminary
> calculations. This is achieved by taking advantage of 'vendor_id'
> being used as application-specific data for alternatives, enabling us
> to stop patching / unrolling when 4K bytes have been zeroed (we would
> loop and continue after 4K if the page size would be larger)
>=20
> For 4K pages, unrolling 16 times allows block sizes of 64 and 128 to
> only loop a few times and larger block sizes to not loop at all. Since
> cbo.zero doesn't take an offset, we also need an 'add' after each
> instruction, making the loop body 112 to 160 bytes. Hopefully this
> is small enough to not cause icache misses.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 74736b4f0624..42246bbfa532 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -280,6 +280,17 @@ void __init riscv_fill_hwcap(void)
>  #ifdef CONFIG_RISCV_ALTERNATIVE
>  static bool riscv_cpufeature_application_check(u32 feature, u16 data)
>  {
> +	switch (feature) {
> +	case RISCV_ISA_EXT_ZICBOZ:
> +		/*
> +		 * Zicboz alternative applications provide the maximum

I like the comment, rather than this being some wizardry.
I find the word "applications" to be a little unclear, perhaps, iff this
series needs a respin, this would work better as "Users of the Zicboz
alternative provide..." (or s/Users/Callers)?

> +		 * supported block size order, or zero when it doesn't
> +		 * matter. If the current block size exceeds the maximum,
> +		 * then the alternative cannot be applied.
> +		 */
> +		return data =3D=3D 0 || riscv_cboz_block_size <=3D (1U << data);
> +	}
> +
>  	return data =3D=3D 0;
>  }

--veppz8gDaqvg02hq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+VFAQAKCRB4tDGHoIJi
0mviAP4rLh2m+MLdM3RrIndb+WmlOQSSSRoaFx36yjj37BnHaAD/dhvxfhFkKQ6r
UZR4CNvcoA4Bf0uG3ag4YsqP3yI2iAw=
=6AcS
-----END PGP SIGNATURE-----

--veppz8gDaqvg02hq--
