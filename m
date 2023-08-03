Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE9476E79B
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 14:02:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231926AbjHCMCk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 08:02:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbjHCMCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 08:02:40 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53858134
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 05:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1691064159; x=1722600159;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=aMtDvkkThoSLeILYJB44dM6LSzvz/cqPa1KYyjStjvY=;
  b=lXFjpDureq/i4lBGXJib/zaeoyb8o/Km8wcoNBuYZnbl3vSnglU8pF1p
   JvWXIGFih9+W+BP+jnNQWStku/cxk0xXalBuYSIgLZOkBV0JJjyieilVH
   0uO3CmJZS8w/eiF5KPjAlNMJkzD4/wYYl+aoqSazgb2qSp1dndKG1qyel
   uqujiqj6AZ70fQxkjIvjr89m19lNw6gj96RnysTbRT0lVrTpeOkmR0Akt
   zMt6oB1up+FBHdeillC4RUMvmdVpVNyIzH8TSUmgsIZMoAz2fber0O05O
   wUU3TOp/Wv6+/UWcmhus+BlQM0NV/AY4xKAayf/kqjNvutGH5v/GDEy2j
   g==;
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; 
   d="asc'?scan'208";a="227996472"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 03 Aug 2023 05:02:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 3 Aug 2023 05:02:36 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 3 Aug 2023 05:02:33 -0700
Date:   Thu, 3 Aug 2023 13:01:57 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Mayuresh Chitale <mchitale@ventanamicro.com>
CC:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <kvm-riscv@lists.infradead.org>,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 1/7] RISC-V: Detect Smstateen extension
Message-ID: <20230803-till-rented-b4546a9b868c@wendy>
References: <20230726084352.2136377-1-mchitale@ventanamicro.com>
 <20230726084352.2136377-2-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rG9uLjivbYWQzDHh"
Content-Disposition: inline
In-Reply-To: <20230726084352.2136377-2-mchitale@ventanamicro.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--rG9uLjivbYWQzDHh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Palmer, Anup,

On Wed, Jul 26, 2023 at 02:13:46PM +0530, Mayuresh Chitale wrote:
> Extend the ISA string parsing to detect the Smstateen extension. If the
> extension is enabled then access to certain 'state' such as AIA CSRs in
> VS mode is controlled by *stateen0 registers.
>=20
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

While I think of it, this patch may have to be shared with the riscv
tree to avoid generating a conflict with the reworking going in this
area.
I ran into a similar one during one of my rebases that was not too
difficult to solve, but generated a horrible looking confict.

Cheers,
Conor.

> ---
>  arch/riscv/include/asm/hwcap.h | 1 +
>  arch/riscv/kernel/cpu.c        | 1 +
>  arch/riscv/kernel/cpufeature.c | 1 +
>  3 files changed, 3 insertions(+)
>=20
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwca=
p.h
> index f041bfa7f6a0..fad1fd1fcd05 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -53,6 +53,7 @@
>  #define RISCV_ISA_EXT_ZICSR		40
>  #define RISCV_ISA_EXT_ZIFENCEI		41
>  #define RISCV_ISA_EXT_ZIHPM		42
> +#define RISCV_ISA_EXT_SMSTATEEN		43
> =20
>  #define RISCV_ISA_EXT_MAX		64
>  #define RISCV_ISA_EXT_NAME_LEN_MAX	32
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index a2fc952318e9..fb0df651bc48 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -217,6 +217,7 @@ static struct riscv_isa_ext_data isa_ext_arr[] =3D {
>  	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
>  	__RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
> +	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
>  	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
>  	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
>  	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index a8f66c015229..c3742a765f8b 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -301,6 +301,7 @@ void __init riscv_fill_hwcap(void)
>  			} else {
>  				/* sorted alphabetically */
>  				SET_ISA_EXT_MAP("smaia", RISCV_ISA_EXT_SMAIA);
> +				SET_ISA_EXT_MAP("smstateen", RISCV_ISA_EXT_SMSTATEEN);
>  				SET_ISA_EXT_MAP("ssaia", RISCV_ISA_EXT_SSAIA);
>  				SET_ISA_EXT_MAP("sscofpmf", RISCV_ISA_EXT_SSCOFPMF);
>  				SET_ISA_EXT_MAP("sstc", RISCV_ISA_EXT_SSTC);
> --=20
> 2.34.1
>=20

--rG9uLjivbYWQzDHh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMuXNQAKCRB4tDGHoIJi
0mZJAP94GLPaEObBTZka8JnAh+Y2+i36/nr6M7zDycWn8FK3hgEAxtJPPErBwR6N
KxtNugvKX0suZ9P4K7i7HRukiYZ/fQ0=
=NJwv
-----END PGP SIGNATURE-----

--rG9uLjivbYWQzDHh--
