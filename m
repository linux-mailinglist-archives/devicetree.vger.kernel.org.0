Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2C346EF5E5
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 15:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241225AbjDZN64 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 09:58:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241237AbjDZN6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 09:58:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33E846A54
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 06:58:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BDA6863358
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 13:58:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF516C43443;
        Wed, 26 Apr 2023 13:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682517530;
        bh=sWUQ78BHh8RIHp/aFdwGPmyIR47gzRupsNfExqIURTg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OImFfDWQylbIwryd7jZz/ZHjlVwfnWHRvvqijGcs2SZj61mwVHZLOpnKtfEZx3t+l
         XvkDgXiagKjBAq+aIUkJYvY+As9wdgpcBbGHzc57Yfki47ebMvRlzKDcXlme6vKWdr
         CuEwjh3T34sKYGymHhHFyb8J3t+IsBYfitJSSL2HlaXE5zRWuJLn11KPU3oHeoa7bH
         Fkm0J1WhTAx491OIdPK6/6tX6hXhf7lXQOMwKpXFtFv+zGQxuFlItRX1kjQwhQf3m/
         iB6c7DKBj4HuKU+4p5VvMhZ8WupuYGftS2LHN/94auRqZw2M39O7UPSYWbSBhhOzGv
         sxHNL0qqTCJSw==
Date:   Wed, 26 Apr 2023 14:58:45 +0100
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
Message-ID: <20230426-colonize-policy-3657c4cfd4c7@spud>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
 <20230426-slinky-preface-0f40f3fefb0f@wendy>
 <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="JUrFExJ4LZz9TRMX"
Content-Disposition: inline
In-Reply-To: <d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p>
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--JUrFExJ4LZz9TRMX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 26, 2023 at 03:08:25PM +0200, Andrew Jones wrote:
> On Wed, Apr 26, 2023 at 01:47:39PM +0100, Conor Dooley wrote:
> > On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> > > On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > > > Yangyu Chen reported that if an multi-letter extension begins with a
> > > > capital letter the parser will treat the remainder of that multi-le=
tter
> > > > extension as single-letter extensions.
> > >=20
> > > I think the problem is that the parser doesn't completely abort when
> > > it sees something it doesn't understand. Continuing is risky since
> > > it may be possible to compose an invalid string that gets the parser
> > > to run off the rails.
> >=20
> > Usually I am of the opinion that we should not seek the validate the dt
> > in the kernel, since there are tools for doing so *cough* dt-validate
> > *cough*. This one seemed like low hanging fruit though, since the parser
> > handles having capital letters in any of the other places after the
> > rv##, but falls over pretty badly for this particular issue.
> >=20
> > In general, I don't think we need to be concerned about anything that
> > fails dt-validate though, you kinda need to trust that that is correct.
> > I'd argue that we might even do too much validation in the parser at
> > present.
> > Is there some attack vector, or ACPI related consideration, that I am
> > unaware of that makes this risky?
>=20
> C language + string processing =3D=3D potential attack vector

Right. I thought there was some specific scenario that you had in mind,
rather than the "obvious" "parsing strings is bad".
What I was wondering is whether the devicetree is an attack vector you
actually have to care about? I had thought it wasn't, hence asking.

> > > How about completely aborting, noisily, when the string doesn't match
> > > expectations, falling back to a default string such as rv64ima instea=
d.
> > > That also ought to get faster corrections of device trees.
> >=20
> > I did this first actually, but I was afraid that it would cause
> > regressions?
> >=20
> > If you have riscv,isa =3D "rv64imafdc_Zifencei_zicbom", yes that is
> > invalid and dt-validate would have told you so, but at present that
> > would be parsed as "rv64imafdc_zicbom" which is a perfect description of
> > the hardware in question (since the meaning of i was set before RVI made
> > a hames of things).

After thinking about it a bit cycling home, I don't actually think that
this would be a regression. If your dt is not valid, then that's your
problem, not ours :)
Valid dt will be parsed correctly before and after such a change, so I
think that that is actually okay.
The dt-binding exists for a reason, and can be pointed to if anyone
claims this is a regression I think.

> > So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
> > try to keep processing the string. I'm happy to abort entirely on
> > reaching a capital if people feel there's unlikely to be a fallout from
> > that.
>=20
> There might be fallout, but the kernel needs to defend itself. IMO, if
> the kernel doesn't know how to parse something, then it should stop
> trying to immediately, either with a BUG(), refusing to accept any
> part of it, by fallbacking back to a default, or by only accepting what
> it believes it parsed correctly.
>=20
> The third option is probably a reasonable choice in this case.

My patch could be interpreted as meeting the criteria for option 3.
I think you instead mean "stop parsing at that point & only report the
extensions seen prior to the first bad one"?

Cheers,
Conor.

--JUrFExJ4LZz9TRMX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZEkuEQAKCRB4tDGHoIJi
0gRdAQCCe+X+9/kBQNzc/+v/9S3Ia1LwDqs18Lx4fYSrbQFokgEAvulxNBGI+lis
C5ay021tAMtHpvwc6crcrdehGjwgbgU=
=qkDV
-----END PGP SIGNATURE-----

--JUrFExJ4LZz9TRMX--
