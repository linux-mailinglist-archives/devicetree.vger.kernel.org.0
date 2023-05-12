Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5BCD7012CC
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 01:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241055AbjELXzi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 19:55:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241281AbjELXzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 19:55:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C8FDA273
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 16:54:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 24D8B65983
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 23:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3221BC433EF;
        Fri, 12 May 2023 23:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683935584;
        bh=cPl0coemi/ghFZ7iY8ma7y71sgeYm0lbEiJorq/QhiI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sXKRqzmPLpY1i9qB6EysR1hF6YbuXRB4ZJXndBneISSjgCjVS4nJ9ZkkaVIsYpvl8
         YvbQbpPzN+h3Zvr4iOcRTHctjp2Egnrnq3drvt643Nu2xiI5i31VmNyY6+XCox4NeJ
         3cAcJIxgIvkahopCSbW4RyQGsjelHwyTieq25Zn/x1uWH4e0vngC5MaljbWNfJyLaR
         JhcwsEB15cSb0jQ8SpmcseFTpKY9jMgw+kl+vR+wQ7WuLWyzB6bSRDqL1LNMkfmEGX
         cpKooXIdbU7dcZgIiUcklVKBZR/lEjDiAyTB4v1wo23/cduO9LRMZBGTl52IbA/Bz0
         KuLc6d6kDnWBw==
Date:   Sat, 13 May 2023 00:52:58 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Atish Patra <atishp@atishpatra.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        conor+dt@kernel.org, heiko@sntech.de, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230513-certainty-peso-47240789ea37@spud>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
 <20230512-exhume-unfold-f104dd4c4cbf@spud>
 <CAOnJCULTwDkWdKhJRr2ATPcLfHbDN6_VK=kJhqE3WmmrAGAB7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="OEwq3DDi7ZDjgscK"
Content-Disposition: inline
In-Reply-To: <CAOnJCULTwDkWdKhJRr2ATPcLfHbDN6_VK=kJhqE3WmmrAGAB7Q@mail.gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--OEwq3DDi7ZDjgscK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 12, 2023 at 04:20:43PM -0700, Atish Patra wrote:
> On Fri, May 12, 2023 at 3:05=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > +CC Greg, Mark, Krste, Philipp, Andrew,
> >
> > (this is LKML now, no top posting or html replies)
> >
> > On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
> > > On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
> > > > On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> > > > > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> > > > > > On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@ker=
nel.org> wrote:
> > > > > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
> > > > >
> > > > > > > That's more than last year at this point, and nothing has cha=
nged in the
> > > > > > > documentation! Talk's cheap, ehh?
> > > > > > >
> > > > > >
> > > > > > Yup. I will poke RVI folks to check if it still is the plan or =
changed !!
> > > > >
> > > > > Sounds good, thanks!
> > >
> > > There has been some movement on that front, shall see where it goes
> > > :upsidedown_smile:
> >
> > There's been some off-list discussion prompted by Atish with some of the
> > RVI spec folk, from which the upshot __appears__ to be an understanding
> > that using version numbering to indicate removal of ISA features is a b=
ad
> > idea.
> > I'm hoping that this results in the enshrinement of this in the ISA
> > specs, so that we have something concrete to point to as the basis for
> > not needing to handle version numbering.
> > Certainly that'd be great for ACPI and remove concerns there.
> >
> > > > > > We will likely have a vendor specific string parsing logic.
> > > > >
> > > > > Complicating the parsing logic is the exact sort of crap that I w=
ant
> > > > > to avoid.
> > > >
> > > > Ya, I think we're reallly overcomplicating things with the ISA stri=
ngs.
> > > > Let's just deprecate them and move to something that doesn't need a=
ll the
> > > > bespoke string parsing.
> > >
> > > Versioning aside, although that removes a large part of the motivatio=
n,
> > > the interface becomes quite nice:
> > > of_property_present(node, "riscv,isa-extension-zicbom")
> >
> > My current feeling is that, rather than introducing a key-value type of
> > property, adding boolean properties for extensions is the way to go
> > here. The "riscv,isa" part of the DT ABI pre-dates even the ratification
>=20
> The only problem with boolean properties is you lose the ability to
> add extra information
> about an ISA extension in case we require it. One of the examples is
> CMO extensions.
> The current riscv,isa string parsing scheme that doesn't have
> infrastructure to do that either.

I think that is a different problem entirely. Every extension has
totally different requirements for what information needs to be passed
via DT/ACPI to the kernel (or onwards to userspace).
I'm not sure whether creating child nodes for these things makes sense,
rather than the current scheme of having "riscv,cbom-block-size" etc.
Both are much of a muchness to me, and we have already set out on the
path of inserting these properties at the cpu node level.
I don't see all that much benefit of deviating from that course =C2=AF\_(=
=E3=83=84)_/=C2=AF

However, if you consider it a *presence* test, rather than specifically
a boolean property, the probing strategy remains the same for both
cases, and it is in the enablement stage that that aspect comes into
play.
For the sake of this discussion, the probing/detection strategy is what
I think is important to consider, IOW do we replace "riscv,isa" at all,
and whether it is a child node or boolean property is an implementation
detail.
By removing the value, I meant removing the extension version, since
that will no longer be needed.

> We had some related discussions in the past about how to extend the
> key-value pair to include
> that value.
>=20
> https://lore.kernel.org/lkml/CAOnJCUKgt1+SVXTBmGChJf74JrsqeqACXbjQAXnhFAL=
kXhPFew@mail.gmail.com/

Yeah, I had done some looking back at the previous lots of changes for
these things while trying to redo the comments on the existing parser.
I do dislike that scheme, with the

| mmu {
| 	riscv,isa-ext-foo;
| };

way of doing things, as the different node types need to be individually
probed for.
In a scheme where the riscv,isa-ext-foo properties are moved up to the
cpu node, possibly as child nodes containing extension specific
properties, doing presence detection is uniform across extension types:

| for (int k =3D 0; k < ARRAY_SIZE(riscv_isa_extensions) - 1; k++) {
| 	const char *tmp;
|=20
| 	/*
| 	 * I need to double check that of_property_present() works for
| 	 * children and "regular" properties.
| 	 */
| 	ret =3D of_property_present(node, riscv_isa_extensions[k].prop_name);
|=20
| 	if (ret && riscv_isa_extension_check(riscv_isa_extensions[k].key)) {
| 		if (!riscv_isa_extensions[k].multi_letter)
| 			this_hwcap |=3D isa2hwcap[riscv_isa_extensions[k].key];
|=20
| 		set_bit(riscv_isa_extensions[k].key, this_isa);
| 	}
| }

LMK if I missed another proposal in those threads (they mostly seemed
focused on /proc/cpuinfo), but the lack of a unified probe/detection
mechanism in the scheme I did see suggested put me off.

Thanks,
Conor.

> > of the base extensions (and thus the removal of some features...).
> > Starting again with a new property would allow us to define extensions
> > as per their ratified state, rather than the intermediate & incompatible
> > states that we have currently got with "riscv,isa".
> > Such a model does rely on the strengthening of the wording in the
> > specification.
> >
> > This had the advantage of being, as I mention above, even easier to
> > parse in software than the key-value pair business - but also is
> > trivially implemented in a dt-binding. What I have been trying to do
> > with the validation of the key-value stuff does not appear to be readily
> > doable!
> >
> > (Another drawback that has come to mind is that we have no way to
> > validate whether mutually exclusive extensions have been added with
> > "riscv,isa")
> >
> > > That also gives us the ability to define what supported vendor
> > > extensions actually mean in a dt-binding, which to me is a big win in
> > > terms of the aforementioned "wild west".
> >
> > Vendor extensions etc are oft quoted as one of the strengths of RISC-V,
> > and my feeling is that "riscv,isa" is not a mechanism where we can
> > easily handle meanings - especially for vendor stuff where there is
> > otherwise no centralised location for _xfoo -> feature mappings.


--OEwq3DDi7ZDjgscK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF7RWgAKCRB4tDGHoIJi
0tLzAPsEEjuV2/sOCaldJuebtuPJetm18CXj4u9/jUDn5CoP2AD/fvm2heBz2OLF
l1frgqu38Iz4YHfI9SHzenU3hCrP2wI=
=ps3O
-----END PGP SIGNATURE-----

--OEwq3DDi7ZDjgscK--
