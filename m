Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B19AF74DC9A
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 19:38:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbjGJRiW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 13:38:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbjGJRiW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 13:38:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC6FDB
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 10:38:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ECD016116C
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 17:38:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74098C433C7;
        Mon, 10 Jul 2023 17:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689010700;
        bh=6wllnkY+Lpfh/nWsl4UaepSYgq6lIJiLyMgMV9NP7vU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=N5PgZ4AZowDoVyfilkx2i1s8Fp7SCvSJA9MForSN5L4iunCkuUbSECAnnyzpC0cbc
         OPMdl9oB9U3CpfHm+ZOJUveUWMCEYWj1V/H4qG2hstrVzO1gjTNL0zkFp16oMbZbuq
         X32+q0qimCCo8Rx67iAzga+EnlgZAqWXtaUYDnTEmBFKdx1+ICGw28EQw/4Q0nm7R+
         XujwgPXdJ8IzwVPnVb0bzEQ5dTQgBCq5M34B+uaOhKytrBHoW2x9KYn9LiMG709rfK
         BzNnAlEQdXq0lx5Q7OuPoQiO2F2GdWVY6+t6DoeHH4M5+ZSk6NhxGZmrbME1NJmwow
         YFWr74L9vfyBQ==
Date:   Mon, 10 Jul 2023 18:38:16 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
Message-ID: <20230710-sublet-recolor-7d50638952ac@spud>
References: <20230707115302.3491-1-zajec5@gmail.com>
 <20230710-mahogany-unequal-91830352ffc5@spud>
 <4adfa40f-d8c1-926f-a3f2-ed8bf66a6e0f@gmail.com>
 <940e72a0-a6b9-c8c8-e724-b1d5a18a2011@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4AA7Yx1UK5qxXdR7"
Content-Disposition: inline
In-Reply-To: <940e72a0-a6b9-c8c8-e724-b1d5a18a2011@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4AA7Yx1UK5qxXdR7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 10, 2023 at 07:27:12PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> On 10.07.2023 19:24, Rafa=C5=82 Mi=C5=82ecki wrote:
> > On 10.07.2023 19:08, Conor Dooley wrote:
> > > On Fri, Jul 07, 2023 at 01:53:02PM +0200, Rafa=C5=82 Mi=C5=82ecki wro=
te:
> > > > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > > >=20
> > > > BCM53573 is a family derived from Northstar with some important
> > > > differences:
> > > > 1. Cortex-A9 replaced by Cortex-A7
> > > > 2. XHCI controller dropped
> > > > 3. Two Ethernet interfaces removed
> > > > 4. Two 802.11ac cores embedded
> > > >=20
> > > > Linux already contains DTS files for some on those devices so add a
> > > > proper binding for it.
> > > >=20
> > > > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > > > ---
> > > > =C2=A0 .../bindings/arm/bcm/brcm,bcm53573.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 39 +++++++++++++++++++
> > > > =C2=A0 1 file changed, 39 insertions(+)
> > > > =C2=A0 create mode 100644 Documentation/devicetree/bindings/arm/bcm=
/brcm,bcm53573.yaml
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm5357=
3.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
> > > > new file mode 100644
> > > > index 000000000000..6e502d718518
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
> > > > @@ -0,0 +1,39 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > >=20
> > > How come this is not dual licensed?
> >=20
> > Somehow I got inspired by other Broadocm SoCs here. I'll relicense it t=
hough.
> >=20
> > FWIW:
> > $ grep "SPDX-License-Identifier" Documentation/devicetree/bindings/arm/=
bcm/*.yaml
> > Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml:# SPDX-License-I=
dentifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml:# SPDX-Lic=
ense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml:# SPDX-Lic=
ense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml:# SPDX-Lic=
ense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml:# SPDX-Lice=
nse-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml:# SPDX-Lic=
ense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml:# SPDX-Licen=
se-Identifier: GPL-2.0 OR BSD-2-Clause
> > Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml:# SPDX-Licen=
se-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml:# SPDX-License-=
Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml:# SPDX-License-=
Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml:# SPDX-License-=
Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml:# SPDX-Lic=
ense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml:# SPDX-L=
icense-Identifier: GPL-2.0
> > Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.=
yaml:# SPDX-License-Identifier: GPL-2.0
> >=20
> >=20
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Broadcom BCM53573 SoCs family
> > >=20
> > > Title seems a little odd given the description.
> > > "Broadcom Northstar derived Wi-Fi SoCs"?
> >=20
> > Some team at Broadcom took Northstar family design, added their changes
> > and they reference those SoCs as BCM53573 family. So I thought I should
> > just stick with the name they chose.
>=20
> I'm wondering if "derived" is a correct word in this case. I'm not
> familiar with hardware design terminology. Maybe that is what causes a
> confusion here?

I dunno. It's not that important really. I just found it odd for the
title to say "XYZ family" and then have the description say "XYZ / QPR
SoCs". You don't need to change it.

--4AA7Yx1UK5qxXdR7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKxCCAAKCRB4tDGHoIJi
0uELAQCqXRjd5NUAmI/UcmxPuiI7gnsgZVJMrz3UC5aiqu0sNwEApOdnYZdoDxWs
bjvwrZLyEVvGDUZqlMPQnNe/69cbIA0=
=56rI
-----END PGP SIGNATURE-----

--4AA7Yx1UK5qxXdR7--
