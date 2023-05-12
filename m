Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9960701202
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 00:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232231AbjELWFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 18:05:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231325AbjELWFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 18:05:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB5810C9
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 15:05:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A17FB63CB5
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 22:05:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE6AC433D2;
        Fri, 12 May 2023 22:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683929130;
        bh=ApJ9Qb4Gro11DEKs8nfF0r47PFHsphmqYBvK21zTLf4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=U+p0Lpj2nU/h5/tl4sQmISJVp/W/6yiSGwtC5yv+TrVUIuFqxAW8uQVXO2OzEW1zc
         SMQw5cG5hkMmdScekZWrpqQ7ybed+ThUXFfNSXkYkisbB3Ok83WPD6/jS7vRrAz/8J
         wlcaR44y3LB2jLM1qSk21K272gX7EMEfxEl2VDZ8q5+V9dNtpmOIXb/zM706OQ7BkM
         dTclZuJFC2ebWInAKtgIddgWEUAbmhcmm442XpwHYapZcwyo9sSkybWro29wvVdKTf
         H65eMvseq/TuINFBgOFbo8YJ7XfmIrCnYGbsS3lUgZXdYhDsjOt4aJYROOpE3u99ZL
         WnFtlQaVTc5/w==
Date:   Fri, 12 May 2023 23:05:24 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     atishp@atishpatra.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
        cyy@cyyself.name, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230512-exhume-unfold-f104dd4c4cbf@spud>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pD0yAV/sPNy+VSlC"
Content-Disposition: inline
In-Reply-To: <20230512-streak-camper-08a68afb5897@spud>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--pD0yAV/sPNy+VSlC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

+CC Greg, Mark, Krste, Philipp, Andrew,

(this is LKML now, no top posting or html replies)

On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
> On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
> > On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> > > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> > > > On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
> > >=20
> > > > > That's more than last year at this point, and nothing has changed=
 in the
> > > > > documentation! Talk's cheap, ehh?
> > > > >
> > > >=20
> > > > Yup. I will poke RVI folks to check if it still is the plan or chan=
ged !!
> > >=20
> > > Sounds good, thanks!
>=20
> There has been some movement on that front, shall see where it goes
> :upsidedown_smile:

There's been some off-list discussion prompted by Atish with some of the
RVI spec folk, from which the upshot __appears__ to be an understanding
that using version numbering to indicate removal of ISA features is a bad
idea.
I'm hoping that this results in the enshrinement of this in the ISA
specs, so that we have something concrete to point to as the basis for
not needing to handle version numbering.=20
Certainly that'd be great for ACPI and remove concerns there.

> > > > We will likely have a vendor specific string parsing logic.
> > >=20
> > > Complicating the parsing logic is the exact sort of crap that I want
> > > to avoid.
> >=20
> > Ya, I think we're reallly overcomplicating things with the ISA strings.
> > Let's just deprecate them and move to something that doesn't need all t=
he
> > bespoke string parsing.
>=20
> Versioning aside, although that removes a large part of the motivation,
> the interface becomes quite nice:
> of_property_present(node, "riscv,isa-extension-zicbom")

My current feeling is that, rather than introducing a key-value type of
property, adding boolean properties for extensions is the way to go
here. The "riscv,isa" part of the DT ABI pre-dates even the ratification
of the base extensions (and thus the removal of some features...).
Starting again with a new property would allow us to define extensions
as per their ratified state, rather than the intermediate & incompatible
states that we have currently got with "riscv,isa".
Such a model does rely on the strengthening of the wording in the
specification.

This had the advantage of being, as I mention above, even easier to
parse in software than the key-value pair business - but also is
trivially implemented in a dt-binding. What I have been trying to do
with the validation of the key-value stuff does not appear to be readily
doable!

(Another drawback that has come to mind is that we have no way to
validate whether mutually exclusive extensions have been added with
"riscv,isa")

> That also gives us the ability to define what supported vendor
> extensions actually mean in a dt-binding, which to me is a big win in
> terms of the aforementioned "wild west".

Vendor extensions etc are oft quoted as one of the strengths of RISC-V,
and my feeling is that "riscv,isa" is not a mechanism where we can
easily handle meanings - especially for vendor stuff where there is
otherwise no centralised location for _xfoo -> feature mappings.

Cheers,
Conor.

--pD0yAV/sPNy+VSlC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF64JAAKCRB4tDGHoIJi
0uEQAQD0lEiQVpTPAZLb4JIc6zKJZt383lZ8qO42lIGHhyFkfwEApmNL/4VzHCA0
NRGWyAGbcXWSmiRUKkVBHQRXTFnosQc=
=yDPz
-----END PGP SIGNATURE-----

--pD0yAV/sPNy+VSlC--
