Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA5A36FFC11
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 23:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233312AbjEKVrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 17:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231376AbjEKVrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 17:47:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753133A93
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 14:47:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F1F6E65212
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 21:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF5E4C433D2;
        Thu, 11 May 2023 21:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683841663;
        bh=N6lJFJqzV7ytXV6+rKvzLTpx6yPBkX401wQ/wXQJiW4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Wl4jlKhfsue4/c+zHUnLXabF7cR1b91X+0Z0SohLoB3xQfCNIeKpkTEOtl58tmT95
         XIkYw3V6b9NROUr+rjpt7DpTXeftAsRn6BXaKbVCcmaehEZQ7wO8E6bg/a029tcowQ
         ey72wKPZEURG+TG+Bek/PzhY95qLydEe0IMV+wfQFl5MREW0QwxfgjLY5dTia0zvUq
         PT+HOLs0/U/1tt+5HbqigcHs1eBKPKs8RbOPEwi1U1fEDKJUTNNdJU/dmRgV3dv10Z
         0ShNuEBMu+Ch/Mzy6wcYT89wFiyS3xf0PhQCuS7YXemz/SnOJdJ0tui/ENxsLKrL4L
         Ac774mfOgQwAQ==
Date:   Thu, 11 May 2023 22:47:38 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Atish Patra <atishp@atishpatra.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Yangyu Chen <cyy@cyyself.name>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230511-punctuate-dinghy-0dd9be94270c@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
 <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="KNnUOQ8SfmCZhf4A"
Content-Disposition: inline
In-Reply-To: <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--KNnUOQ8SfmCZhf4A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:

> > The other thought I had was that perhaps some software may choose not to
> > implement version x.y.0 of an extension and only support x.z.0, z > y
> > for some reason. We'd want to refuse that extension if the extension is
> > found, but the version is not listed as being something compatible with
> > x.z.0, and while the ISA spec does say that the default assumption is
> > 2p0 for unversioned extensions in its current form, I struggle to
> > extrapolate that to extensions not currently part of the unpriv spec,
> > but rather defined on their own.
> >
>=20
> That's a fair point. However, any new RVI ISA extension will only have v1=
=2E0
> as per my knowledge. Any new feature will have to be part of a
> different extension.
> At least that was the plan discussed last year.

That's more than last year at this point, and nothing has changed in the
documentation! Talk's cheap, ehh?

> https://github.com/riscv/riscv-isa-manual/issues/781#issuecomment-9832226=
55
>=20
> Are you aware of any discussion that changes this ?

It's called "trust issues". I am far less worried about the addition of
new features though than the removal of existing ones.
Part of me fears for fence.i-less systems for example, but there would
be other ways to bodge around the mess if it comes to pass.
If we are *sure* that no extensions will modify features additively or
subtractively, then this may not be needed at all & I can avoid having
to bend dt-validate to my will.
We have no guarantees for vendor extensions on that front either,
they're free to do what they like w.r.t. versioning, no?

--KNnUOQ8SfmCZhf4A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF1iegAKCRB4tDGHoIJi
0kU0AQDe4wPkJbvFunY7Hd7tVeEqB9Nx4RBMWPuYxZW9CGVh0wEA201Uii1iRlaK
nSvwRBXu5EKO8fs96wDjwGzDo9UlRAQ=
=BbjJ
-----END PGP SIGNATURE-----

--KNnUOQ8SfmCZhf4A--
