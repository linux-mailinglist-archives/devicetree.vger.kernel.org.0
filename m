Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0454E700F61
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 21:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238542AbjELTkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 15:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239368AbjELTk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 15:40:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 475C3DC5F
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 12:40:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AE58965842
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 19:40:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A58FCC433EF;
        Fri, 12 May 2023 19:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683920415;
        bh=aaBkrNcAI9Fks2KrLSk/4P+BUcq6lmzh4CQnyOGX0GU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WLQT/OsO9npOonIhubdvh80A8klVtrNwL/7QyHD/Iz8uREPjWWwUhB7yEm6LJOjNf
         D683SZJQedUBF7xsXr4EmEfiV2JC0D+QjahaFj1pHEsl2xmnur6y7nWu196TbDbCWN
         TSuPVusY7xmO0ZfPoyTF9A+jN72W21eNfUFct1cQ+xFk9+/VGZY3FaOdi/1sBALVEi
         RHeNAW7aLrb3AWgdnUQhce6qSGZ+pTWjT53xeEiE2me403l5mxOkUclceNMUG83JG2
         4GENn0cRgNPSyOiJr9wD3rBgj5NArIUoH6+7a6KV8SCAwdLsCT4tzEySunlBHCSEhv
         TuQP6Jl3twH4Q==
Date:   Fri, 12 May 2023 20:40:10 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     atishp@atishpatra.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
        cyy@cyyself.name, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230512-streak-camper-08a68afb5897@spud>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Hlry0DBSFS6pLHzF"
Content-Disposition: inline
In-Reply-To: <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Hlry0DBSFS6pLHzF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
> On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> > > On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@kernel.or=
g> wrote:
> > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
> >=20
> > > > That's more than last year at this point, and nothing has changed i=
n the
> > > > documentation! Talk's cheap, ehh?
> > > >
> > >=20
> > > Yup. I will poke RVI folks to check if it still is the plan or change=
d !!
> >=20
> > Sounds good, thanks!

There has been some movement on that front, shall see where it goes
:upsidedown_smile:

> > > We will likely have a vendor specific string parsing logic.
> >=20
> > Complicating the parsing logic is the exact sort of crap that I want
> > to avoid.
>=20
> Ya, I think we're reallly overcomplicating things with the ISA strings.
> Let's just deprecate them and move to something that doesn't need all the
> bespoke string parsing.

Versioning aside, although that removes a large part of the motivation,
the interface becomes quite nice:
of_property_present(node, "riscv,isa-extension-zicbom")

That also gives us the ability to define what supported vendor
extensions actually mean in a dt-binding, which to me is a big win in
terms of the aforementioned "wild west".

--Hlry0DBSFS6pLHzF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF6WGgAKCRB4tDGHoIJi
0tSDAP0Uy884EZU8ra/A9tMZDF/H8y6sKV2j3Y/tSxG8um8DlwD/Zeg0BjmIdXDU
se8CYwnqhCmDITzPbAm4T5pb4tKnyAA=
=07sr
-----END PGP SIGNATURE-----

--Hlry0DBSFS6pLHzF--
