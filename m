Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34563750E62
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 18:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233554AbjGLQYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 12:24:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232984AbjGLQX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 12:23:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 752E82D50
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:23:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1366061830
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 16:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B45DC433C8;
        Wed, 12 Jul 2023 16:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689179007;
        bh=nP0kTFEzVGID4WJotsstb9GIh2dmb5GIqR/6xgOaqr0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tBGbEOrDGNBhQJNOnloI2fTTfkYFnqnJrln+pqy6lCpNyh1RNAh98UOUWIfTFcAzD
         dHPTSiRLGH5C34jyfdwGnbq6QGlRJj3h4OGVyBjpIR+8xNicVtM3/T449rQrITY9Dv
         XMDKJo2MUJruLN1ffYPbiEYTW2yR3x2sCw3L6HSrKxaQh8rVESVE4YiDvTMfO+VHHc
         3qx076iFNqyAfdgXja2zDT1HGZhKgqNve9mQ1GoSXOAlmim9Ms89oYsXQIGlrgx6Zz
         VCG4ruh64MdRHMEZGkS45BVpDqq3tf4bJlNXrL9QBC/GMZEaOPJHVW6hOsjeOklMAf
         en4nlRmU+hdUw==
Date:   Wed, 12 Jul 2023 17:23:23 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc:     Felix Moessbauer <felix.moessbauer@siemens.com>,
        Walker Chen <walker.chen@starfivetech.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for
 starfive devices
Message-ID: <20230712-single-crestless-93bf57c09773@spud>
References: <20230627080620.329873-1-felix.moessbauer@siemens.com>
 <20230710-villain-dainty-d1a90ce57a27@spud>
 <CAJM55Z_0X+UT1s9s4kqKuyg4hF2JooTMXe4RYTAzoEgY=+8A1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6yhNlt3iEraEviEJ"
Content-Disposition: inline
In-Reply-To: <CAJM55Z_0X+UT1s9s4kqKuyg4hF2JooTMXe4RYTAzoEgY=+8A1Q@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--6yhNlt3iEraEviEJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 12, 2023 at 06:17:19PM +0200, Emil Renner Berthing wrote:
> On Mon, 10 Jul 2023 at 20:29, Conor Dooley <conor@kernel.org> wrote:
> >
> >
> > Emil, Walker,
> >
> > On Tue, Jun 27, 2023 at 04:06:20PM +0800, Felix Moessbauer wrote:
> > > Add the '-@' DTC option for the starfive devices. This option
> > > populates the '__symbols__' node that contains all the necessary symb=
ols
> > > for supporting device-tree overlays (for instance from the firmware or
> > > the bootloader) on these devices.
> > >
> > > The starfive devices allow various modules to be connected and this
> > > enables users to create out-of-tree device-tree overlays for these mo=
dules.
> > >
> > > Please note that this change does increase the size of the resulting =
DTB
> > > by ~20%. For example, with v6.4 increase in size is as follows:
> >
> > Whatcha think?
>=20
> I'm fine with it. I just wonder why it's only the Nvidia Tegra boards
> and the VisionFive's that need this. Surely other boards have pins for
> expansion cards.

It's totally not just these two - there's been a flurry of similar
patches recently. The RPi stuff got it - I think I Acked that one from
the DT side while Rob and Krzysztof were out of office, partially on the
basis that the Nvidia stuff had it (and IIRC Renesas).
Since then there's been a couple other ones that got the same treatment,
including 32-bit ARM Microchip stuff. I've been avoiding doing it for the
RISC-V Microchip to see if Rob decides that what I Acked was a problem.

It seems generally helpful, so I've been a little suspicious as to why
it was not done already...

--6yhNlt3iEraEviEJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZK7TewAKCRB4tDGHoIJi
0nFMAP4z0kyCJ9bo9NdV1fEaEaWPTMD3SWgash90+nz8lEEzgAD/Yp90Wvv/78Va
3OsBKHedafWudPyyGbZWiAK2dfxTmwQ=
=13KF
-----END PGP SIGNATURE-----

--6yhNlt3iEraEviEJ--
