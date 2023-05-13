Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6703B701A20
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 23:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjEMVyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 17:54:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjEMVyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 17:54:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA74271C
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 14:54:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E708360E84
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 21:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2A69C433D2;
        Sat, 13 May 2023 21:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684014890;
        bh=NgMrOpISNBxNvGYXPclgMXoSV7daZbwXWL5lYCVLSlg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TuTuBt7qizZijHKv+d3UKhaB+QqDJZelwwWBDdSGdO/nsR/E0paEZVGX/SOjQRsOo
         uhgwTO0vCrIz/TdoVt5BRgGQRwV8Zd12kaodlrfKL15XGifzXnAyxH+GZuOEzOmrnE
         oE11b6ehMCWZb2xazcQsoS9Q39mO9pHICK4jsiA1i1D8kGUFdR/Z1vf9T1nPjCkVe8
         Rb2BMfYJZxAk2DwmI0BINRtkx2JjuhC4ObPQl8HVO2PJjWmcKKnjGorXh/FagfSML1
         J/BhZWGg6DPWlbldhV5wN9FpQLf8IEe/T99kVwqaynE+xrN/ZEPBWiux+jfqcEj6k9
         gGtdkW6VNfCCw==
Date:   Sat, 13 May 2023 22:54:44 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Jessica Clarke <jrtc27@jrtc27.com>
Cc:     Anup Patel <apatel@ventanamicro.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, conor+dt@kernel.org,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>,
        Andrew Waterman <andrew@sifive.com>, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Atish Patra <atishp@atishpatra.org>,
        Krste Asanovic <krste@sifive.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Andrew Jones <ajones@ventanamicro.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230513-starlit-editor-058e609c10e4@spud>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
 <20230512-exhume-unfold-f104dd4c4cbf@spud>
 <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
 <12BD8A89-CC3C-4C67-A501-7BB6BAD2EF59@jrtc27.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GD9tCDTvShhz02+o"
Content-Disposition: inline
In-Reply-To: <12BD8A89-CC3C-4C67-A501-7BB6BAD2EF59@jrtc27.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--GD9tCDTvShhz02+o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 13, 2023 at 10:34:15PM +0100, Jessica Clarke wrote:
> On 13 May 2023, at 08:47, Anup Patel <apatel@ventanamicro.com> wrote:

> > For DT, users can either use "riscv,isa" DT property or use boolean
> > DT properties.
>=20
> Can we please not gratuitously have two ways of doing the same thing.

My intention, iff this goes ahead, is to deprecate that property, not
have some 'you can use "riscv,isa" or boolean, whichever you choose'
situation.
Obviously for backwards compatibility reasons parsing it as a fallback
would have be kept in Linux, so in theory a DT based Linux system "can
use either". It would be up to other platforms to decide whether they
would also like to do such a thing.

> I say this as a non-Linux OS that has to deal with whatever Linux
> decides to do with device trees. It is a total nuisance when you flip
> flop on things and we have to follow suit. Please consider the breakage
> very carefully.

I think I said it in my cover & in a later message, that I sent it here
only for first thoughts and my intention is to "send a non-RFC version
of this that also CCs the likes of QEMU, U-Boot & the BSD folk".
It's clearly not something that could be done unilaterally.


--GD9tCDTvShhz02+o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGAHJAAKCRB4tDGHoIJi
0tztAQDO35y2/lCm7w1u4RRxVzrcFsTqnIKgOhfRuGsT+pRylQEAhHIyOmwWeqSA
7qmj59rJ/EcJyqXuCxO83VxYIzLfMQg=
=qYEv
-----END PGP SIGNATURE-----

--GD9tCDTvShhz02+o--
