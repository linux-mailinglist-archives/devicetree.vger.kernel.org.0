Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B5F4746C22
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 10:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbjGDIjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 04:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230299AbjGDIji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 04:39:38 -0400
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3320C4
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 01:39:36 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1688459975;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=yaA2+rSddJ2SEevn9A1wiLJ1xORl7llOV03jKS0VjRE=;
        b=U4IfMU3QiwiyTGIrHnsCUGK4Kjof+fXG1onUZFU6JTj9hRU3+5CwmlaE3sd8Fj4qVh5x5M
        sjUrf9sxymKT4RimABOjSs4WItlNJGaBGki+NHXDtorhGeIo6V6lysGxUgcNjTWjbpLblb
        Y9hdGHjPbxk/cyQDYrO/n2A/CubUyKCohMVWVpyvpq3fKlH/tyG8iN4dFAgOFbLzbTNar8
        9WlGjwjPf9KvhylmSb8xB6ccnqJRQibpoyNxp3gszl0Pa6ESrB8zTiCz2r6X/zdRoCKJPv
        Py+77dW00oTwVzkAWsvsC8Ek8BfLnKHuOIhHHcGNeo6OddEr+5jNXA0UuX0o6w==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DCE7EE0005;
        Tue,  4 Jul 2023 08:39:33 +0000 (UTC)
Date:   Tue, 4 Jul 2023 10:39:32 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Tudor Ambarus <tudor.ambarus@linaro.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: spi-nor: clarify the need for spi-nor
 compatibles
Message-ID: <20230704103932.748679d1@xps-13>
In-Reply-To: <cba4c06c-65ed-141a-80e4-3731c3560ae9@linaro.org>
References: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
        <cba4c06c-65ed-141a-80e4-3731c3560ae9@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tudor,

tudor.ambarus@linaro.org wrote on Fri, 30 Jun 2023 09:36:10 +0100:

> Hi, Miquel,
>=20
> On 6/16/23 15:00, Miquel Raynal wrote:
> > Most SPI NOR devices do not require a specific compatible, their ID can
> > in general be discovered with the JEDEC READ ID opcode. In this case,
> > only the "jedec,spi-nor" generic compatible is expected. Clarify this
> > information in the compatible description to (i) help device-tree
> > writers and (ii) prevent further attempts to extend this list with
> > useless information. =20
>=20
> Sounds good. If you don't mind I'll reword the description from below
> when applying.

Of course. I think you're right to further specify the exact
specification name.

>=20
> >=20
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b=
/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > index 7149784a36ac..bef071163e38 100644
> > --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> > @@ -43,8 +43,10 @@ properties:
> >            - const: jedec,spi-nor
> >        - const: jedec,spi-nor
> >      description:
> > -      Must also include "jedec,spi-nor" for any SPI NOR flash that can=
 be
> > -      identified by the JEDEC READ ID opcode (0x9F).
> > +      SPI NOR flashes compatible with the JEDEC standard or which may =
be =20
>=20
> s/JEDEC/JEDEC216, s/may/can
>=20
> > +      identified with the JEDEC READ ID opcode (0x9F) do not deserve a=
 =20
>=20
> "deserve" is a little harsh. How about "must be matched against
> the generic ...".
>=20
> For future me: 0x9f is not a JEDEC216 opcode, it just happened
> that the industry agreed on a specific opcode for reading the
> ID of the flash. JEDEC216 doesn't care about the flash's ID.
> We care because of the fixup hooks.
>=20
> Cheers,
> ta
> > +      specific compatible. They should instead only be matched against
> > +      the generic "jedec,spi-nor" compatible.
> > =20
> >    reg:
> >      minItems: 1 =20


Thanks,
Miqu=C3=A8l
