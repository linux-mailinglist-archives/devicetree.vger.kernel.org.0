Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 292FF691AC2
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 10:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbjBJJG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 04:06:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbjBJJGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 04:06:01 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49335643DA
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 01:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1676019931; x=1707555931;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=x1ueiwval8cl8Z4+kb9IAqIUc/rwrhIv8nwOqAkA6ys=;
  b=fC65Ii6yTNHHjjCKSYhgod/6KiS80sCE14huZg+VZC+LrrD0WkhkOEbz
   H5ZfIH4mB7CkkmTqKmuDoSi1LLpak+DF11Vg4yw+TorucayDNg8kuOuj+
   EdwP2u2ILYeXzE/RaeqjLuMhzGvZzr/SMqovAB+1gVPIgJ4Vig3wYTY8Z
   SiEmxIkNPsv1o+4NASLlFu2+iUJauajLbe1iStO4Qam3W3mm5EGC8JkAJ
   big3oHwHuDCPgaKsJXeM28ThwTGBLdx4+hTVWXaQ7nlNucHo0JP2DVTXn
   BEtZwNFxk7PQaNEAAOtzQVX9R6bo/73P0+tcOGTpxwiqUq7JrEwicuiLf
   A==;
X-IronPort-AV: E=Sophos;i="5.97,286,1669100400"; 
   d="asc'?scan'208";a="136513523"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 10 Feb 2023 02:05:30 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 02:05:26 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Fri, 10 Feb 2023 02:05:24 -0700
Date:   Fri, 10 Feb 2023 09:04:59 +0000
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Andrew Jones <ajones@ventanamicro.com>
CC:     Conor Dooley <conor@kernel.org>, <linux-riscv@lists.infradead.org>,
        <kvm-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Message-ID: <Y+YIu0tqF4N3SA4d@wendy>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
 <Y+VFAUZ2smkKO0EZ@spud>
 <20230210080515.lbguxxg4efxudjzg@orel>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="XCPAK6ABA6EgBiz8"
Content-Disposition: inline
In-Reply-To: <20230210080515.lbguxxg4efxudjzg@orel>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--XCPAK6ABA6EgBiz8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 10, 2023 at 09:05:15AM +0100, Andrew Jones wrote:
> On Thu, Feb 09, 2023 at 07:09:53PM +0000, Conor Dooley wrote:
> > On Thu, Feb 09, 2023 at 04:26:26PM +0100, Andrew Jones wrote:
> > > Using memset() to zero a 4K page takes 563 total instructions, where
> > > 20 are branches. clear_page(), with Zicboz and a 64 byte block size,
> > > takes 169 total instructions, where 4 are branches and 33 are nops.
> > > Even though the block size is a variable, thanks to alternatives, we
> > > can still implement a Duff device without having to do any preliminary
> > > calculations. This is achieved by taking advantage of 'vendor_id'
> > > being used as application-specific data for alternatives, enabling us
> > > to stop patching / unrolling when 4K bytes have been zeroed (we would
> > > loop and continue after 4K if the page size would be larger)
> > >=20
> > > For 4K pages, unrolling 16 times allows block sizes of 64 and 128 to
> > > only loop a few times and larger block sizes to not loop at all. Since
> > > cbo.zero doesn't take an offset, we also need an 'add' after each
> > > instruction, making the loop body 112 to 160 bytes. Hopefully this
> > > is small enough to not cause icache misses.
> > >=20
> > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufe=
ature.c
> > > index 74736b4f0624..42246bbfa532 100644
> > > --- a/arch/riscv/kernel/cpufeature.c
> > > +++ b/arch/riscv/kernel/cpufeature.c
> > > @@ -280,6 +280,17 @@ void __init riscv_fill_hwcap(void)
> > >  #ifdef CONFIG_RISCV_ALTERNATIVE
> > >  static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> > >  {
> > > +	switch (feature) {
> > > +	case RISCV_ISA_EXT_ZICBOZ:
> > > +		/*
> > > +		 * Zicboz alternative applications provide the maximum
> >=20
> > I like the comment, rather than this being some wizardry.
> > I find the word "applications" to be a little unclear, perhaps, iff this
> > series needs a respin, this would work better as "Users of the Zicboz
> > alternative provide..." (or s/Users/Callers)?
>=20
> Right, "applications" is an overloaded word. "users" is probably a better
> choice. "callers" isn't quite right, to me, since it's a code patching
> "application" / "use". Do you think the function name should change as
> well?

I was initially going to suggest that too, but then couldn't really
think of something better. s/application_check/check_applies/ maybe?

> > > +		 * supported block size order, or zero when it doesn't
> > > +		 * matter. If the current block size exceeds the maximum,
> > > +		 * then the alternative cannot be applied.
> > > +		 */
> > > +		return data =3D=3D 0 || riscv_cboz_block_size <=3D (1U << data);
> > > +	}
> > > +
> > >  	return data =3D=3D 0;
> > >  }

--XCPAK6ABA6EgBiz8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+YItwAKCRB4tDGHoIJi
0uV0AQCvfYqTdTBqVQEowccSoNd1jnp/XZ69WO+ZxI1VngaakgD/VRfoZf7v+r2v
3HJcny3VbnNGQ/lJRRCl4xoxpn41vgg=
=mwIz
-----END PGP SIGNATURE-----

--XCPAK6ABA6EgBiz8--
