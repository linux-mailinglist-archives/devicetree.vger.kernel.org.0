Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 385F56EF690
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:38:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240968AbjDZOiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240794AbjDZOiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:38:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 198DD59FB
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:38:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A8A5562C4C
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 14:38:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA709C433D2;
        Wed, 26 Apr 2023 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682519883;
        bh=dr0cteJtfRf944fSh9DIHS+31fvUAvv7+UGLnnA5V7Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dgQokHmmQ0CtrnRZKCnswWsOXGxUJtp46PY1mb6jUc1ZaYuv7vZYdbNFYUabDaW+b
         2hE1KDBHNxzQNiHb+pXQVN6ylNr75F27HH7T3sqpK8GcwOw1KeoEAxtBTfQnfPPazl
         849rV3yU7cNU6Mv3eQqhVBopcOQnTwdcz2UY1Fpk73Lidn/Haqc6GeAEyoBU8ZlaZD
         lrwIPOqMtz+gu0SgdaC5JAPFaHZdRx9xmUzVRFmBKUAfeKusQWzJLJghlW9FDdhxfw
         0DelwlQ/SQlOIr1LrVzXMdpFy/Y5S3M5s1iwft8+C/6mc9pPOZ+1wPAQ+nZq2WAiSF
         gu0kE7ELvFZRA==
Date:   Wed, 26 Apr 2023 15:37:58 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>, palmer@dabbelt.com,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions
 starting with caps
Message-ID: <20230426-getting-tactile-e6cee2cdf870@spud>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
 <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
 <2pqjxrn7cj6lvlw5ulzgewvnswwocibufkzrh43jftsrboeuxp@efiwrvukn33v>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Ord/D1S6y8Zth5Bw"
Content-Disposition: inline
In-Reply-To: <2pqjxrn7cj6lvlw5ulzgewvnswwocibufkzrh43jftsrboeuxp@efiwrvukn33v>
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Ord/D1S6y8Zth5Bw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 26, 2023 at 03:54:55PM +0200, Andrew Jones wrote:
> On Wed, Apr 26, 2023 at 03:08:25PM +0200, Andrew Jones wrote:
> > On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> > > On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > > > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > > > Yangyu Chen reported that if an multi-letter extension begins wit=
h a
> > > > > capital letter the parser will treat the remainder of that multi-=
letter
> > > > > extension as single-letter extensions.
> > > >=20
> > > > I think the problem is that the parser doesn't completely abort when
> > > > it sees something it doesn't understand. Continuing is risky since
> > > > it may be possible to compose an invalid string that gets the parser
> > > > to run off the rails.
> > >=20
> > > Usually I am of the opinion that we should not seek the validate the =
dt
> > > in the kernel, since there are tools for doing so *cough* dt-validate
> > > *cough*. This one seemed like low hanging fruit though, since the par=
ser
> > > handles having capital letters in any of the other places after the
> > > rv##, but falls over pretty badly for this particular issue.
> > >=20
> > > In general, I don't think we need to be concerned about anything that
> > > fails dt-validate though, you kinda need to trust that that is correc=
t.
> > > I'd argue that we might even do too much validation in the parser at
> > > present.
> > > Is there some attack vector, or ACPI related consideration, that I am
> > > unaware of that makes this risky?
>=20
> A bit unrelated to this, but your mention of ACPI made me go look at the
> approved ECR[1] again for the ISA string. It says "Null-terminated ASCII
> Instruction Set Architecture (ISA) string for this hart. The format of the
> ISA string is defined in the RISC-V unprivileged specification." I suppose
> we can still add additional requirements to an ACPI ISA string which the
> Linux kernel will parse, but it'll be odd to point people at the DT
> binding to do that. Maybe we should consider making the parser more
> complete, possibly by importing it from some reference implementation or
> something.

Heh, I wonder are we heading for some divergence here then. riscv,isa in
a DT is explicitly *not* a match for that due to the
backwards-incompatible changes made by RVI to extension definitions
since riscv,isa was added to the dt-binding. Clarifying that one is the
next patch in my todo list..

ACPI naively saying "it matches the spec" is asking for trouble, since
there does not actually appear to be any sort of clarification about
which *version* of the spec that may be. At least in the dt-binding, we
have a format there, what happens to the ACPI spec if RVI decides that -
is a suitable alternative to _ in some future edition? I don't think
such a thing is all that likely, but surely you'd like to insulate the
ABI from that sort of eventuality?

Perhaps the thing to do is to actually take Yangyu's first patch and my
second one, since the problem with backwards compatibility doesn't stop
the kernel from being more permissive?

Cheers,
Conor.

>=20
> [1] https://drive.google.com/file/d/1nP3nFiH4jkPMp6COOxP6123DCZKR-tia/view
>=20
> Thanks,
> drew
>=20
> >=20
> > C language + string processing =3D=3D potential attack vector
> >=20
> > >=20
> > > > How about completely aborting, noisily, when the string doesn't mat=
ch
> > > > expectations, falling back to a default string such as rv64ima inst=
ead.
> > > > That also ought to get faster corrections of device trees.
> > >=20
> > > I did this first actually, but I was afraid that it would cause
> > > regressions?
> > >=20
> > > If you have riscv,isa =3D "rv64imafdc_Zifencei_zicbom", yes that is
> > > invalid and dt-validate would have told you so, but at present that
> > > would be parsed as "rv64imafdc_zicbom" which is a perfect description=
 of
> > > the hardware in question (since the meaning of i was set before RVI m=
ade
> > > a hames of things).
> > >=20
> > > So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
> > > try to keep processing the string. I'm happy to abort entirely on
> > > reaching a capital if people feel there's unlikely to be a fallout fr=
om
> > > that.
> >=20
> > There might be fallout, but the kernel needs to defend itself. IMO, if
> > the kernel doesn't know how to parse something, then it should stop
> > trying to immediately, either with a BUG(), refusing to accept any
> > part of it, by fallbacking back to a default, or by only accepting what
> > it believes it parsed correctly.
> >=20
> > The third option is probably a reasonable choice in this case.
> >=20
> > Thanks,
> > drew

--Ord/D1S6y8Zth5Bw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZEk3RgAKCRB4tDGHoIJi
0uM8AQCibCv7WrTPZ1J0u+thunBCTol3UzmrJkAjCwdOi2qSxQD/ed3gnl6zmwFO
BZbYYXJmaxipAZgFkr+5I177BHgoowE=
=eqgS
-----END PGP SIGNATURE-----

--Ord/D1S6y8Zth5Bw--
