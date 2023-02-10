Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95EC169284E
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 21:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233486AbjBJU3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 15:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233192AbjBJU3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 15:29:22 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E7BDD8
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 12:29:21 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DD82C61E71
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 20:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88680C433D2;
        Fri, 10 Feb 2023 20:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676060960;
        bh=awvndo+mybz2kVTD7nD6CvCPAo8Dbu9CN95oGBexSLY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Yfzs0irKw93PU4uYAGv0q1twSy1cKOM+IrcBYBoUhYBztneR8QwGMdlF5JEyykIo4
         xN+Z2ISKx4AokaV7XTPOJ8iIQ9+eCaIYnEFCtP0rYEkoYQM7EgzCV+6glS5t0xtU7h
         fAeYN+MS2liBp/SKFZnx/B8JLwhA3cbqlNxLyKjlNDk3365RPp3IEdMdhrMsQUDTqu
         FfNC/V9G7VQ8p/TW5bTP7WkpeAfrBjwZIYeXYDkVYsG0AFcDL7WvKGWGcW3PCx0wQV
         zI9/fgID6QrHWuUQZZcu0AWaeiMRp+zXYd0fhvM0hFrRW8oJ/kmw3/f9ZQwnsx3DWn
         wGgmO3SWThSQg==
Date:   Fri, 10 Feb 2023 20:29:15 +0000
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
Message-ID: <Y+apG/nVSLJY8nsN@spud>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-6-ajones@ventanamicro.com>
 <Y+VD2/owMIvqzOx8@spud>
 <20230210075818.chh5myc2tmcvjplc@orel>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7xsCUnNAv8LreRDc"
Content-Disposition: inline
In-Reply-To: <20230210075818.chh5myc2tmcvjplc@orel>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7xsCUnNAv8LreRDc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 10, 2023 at 08:58:18AM +0100, Andrew Jones wrote:
> On Thu, Feb 09, 2023 at 07:04:59PM +0000, Conor Dooley wrote:
> > On Thu, Feb 09, 2023 at 04:26:25PM +0100, Andrew Jones wrote:

> > > +static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> > > +{
> > > +	return data =3D=3D 0;
> > > +}
> > > +
> > >  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *=
begin,
> > >  						  struct alt_entry *end,
> > >  						  unsigned int stage)
> > > @@ -289,8 +294,6 @@ void __init_or_module riscv_cpufeature_patch_func=
(struct alt_entry *begin,
> > >  		return;
> > > =20
> > >  	for (alt =3D begin; alt < end; alt++) {
> > > -		if (alt->vendor_id !=3D 0)
> > > -			continue;
> >=20
> > Can you remind me what makes this "safe"?
> > My understanding was that a vendor_id of zero was safe, as zero is
> > reserved in JEDEC.
> > What is stopping someone stuffing this with a given value and
> > colliding with a real vendor's errata?
> >=20
> > 	for (alt =3D begin; alt < end; alt++) {
> > 		if (alt->vendor_id !=3D A_VENDOR_ID)
> > 			continue;
> > 		if (alt->errata_id >=3D ERRATA_A_NUMBER)
> > 			continue;
> >=20
> > 		tmp =3D (1U << alt->errata_id);
> > 		if (cpu_req_errata & tmp) {
> > 			oldptr =3D ALT_OLD_PTR(alt);
> > 			altptr =3D ALT_ALT_PTR(alt);
> >=20
> > 			/* On vm-alternatives, the mmu isn't running yet */
> > 			if (stage =3D=3D RISCV_ALTERNATIVES_EARLY_BOOT)
> > 				memcpy((void *)__pa_symbol(oldptr),
> > 				       (void *)__pa_symbol(altptr),
> > 				       alt->alt_len);
> > 			else
> > 				patch_text_nosync(oldptr, altptr, alt->alt_len);
> > 		}
> > 	}
> >=20
> > I've probably just missing something, my brain swapped out alternatives
> > the other week. Hopefully whatever I missed isn't embarrassingly obviou=
s!
>=20
> You're right. I was assuming the errata_id space for errata didn't overlap
> with the errata_id space for cpufeatures. It doesn't, atm, but by luck,
> not design. I could try to ensure that somehow, but probably the better
> approach would be to use the upper bits of errata_id for the application
> data and to leave vendor_id alone. Thanks for catching my oversight!

Sounds like a better idea at least.
I suppose the ideal would be to add another arg and not abuse things,
but maybe that's one for the future, idk.
Is this somewhere that an assertion should be used to make sure that
we don't grow the list of extensions such that the regions collide?


--7xsCUnNAv8LreRDc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY+apGgAKCRB4tDGHoIJi
0vyLAQDpS9n7LVVJt8LlcNnOTLvjLUeaZrmjq28+8ehSZqXxqQEAwHeXU7iYR7dU
mYzMTnLj5cqwE5sI2nPAqz70mM6LJww=
=Xv4r
-----END PGP SIGNATURE-----

--7xsCUnNAv8LreRDc--
