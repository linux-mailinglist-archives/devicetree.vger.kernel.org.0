Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D26073637E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 08:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjFTGSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 02:18:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjFTGSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 02:18:52 -0400
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B6E110DD
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 23:18:49 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687241928;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=84YU6hSy3EdQpuYks2obK2XASPM2NVmk2oESPc8gRDU=;
        b=KjfEx35GiGYR2oGYPOHgbVNgrrI1fl2nuc89ipgO3rvM8s99MZyopN64GojHg67rS1tMtf
        9Yw7UhNA4dwNpki8h2//zeemSfuUTqoAFWxHtxsjR19ltgJX9Q+qp1bWp9BfgpSz5NslZZ
        ISzr2GJbqhsnof7XwxjhSr0Lpz46ZD+Vgbu3skKfdYi+KzkhMKMR12vtrfXvUyuWVUhJV1
        ytjmE2DyU8ZMoDX57mGKI/ZuKGVtvpbIEsKuw5b0UIQQBEcZReeHSS9kr0HD2IuGkBDE/l
        dY/tQwQ+wnuP/mwmsGQDNhZEBwS1hyY31KW76YF7gGmkPz+dR4mesmUgz7LdZw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C8C7A4000A;
        Tue, 20 Jun 2023 06:18:44 +0000 (UTC)
Date:   Tue, 20 Jun 2023 08:18:43 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 02/17] dt-bindings: mtd: Create a file for raw NAND
 chip properties
Message-ID: <20230620081843.78187721@xps-13>
In-Reply-To: <20230619225038.GA1676165-robh@kernel.org>
References: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
        <20230619092916.3028470-3-miquel.raynal@bootlin.com>
        <20230619225038.GA1676165-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

robh@kernel.org wrote on Mon, 19 Jun 2023 16:50:38 -0600:

> On Mon, Jun 19, 2023 at 11:29:01AM +0200, Miquel Raynal wrote:
> > In an effort to constrain as much as we can the existing binding, we
> > want to add "unevaluatedProperties: false" in all the NAND chip
> > descriptions part of NAND controller bindings. But in order to do that
> > properly, we also need to reference a file which contains all the
> > "allowed" properties. Right now this file is nand-chip.yaml but in
> > practice raw NAND controllers may use additional properties in their
> > NAND chip children node. These properties are listed under
> > nand-controller.yaml, which makes the "unevaluatedProperties" checks
> > fail while the description are valid. We need to move these NAND chip
> > related properties into another file, because we do not want to pollute
> > nand-chip.yaml which is also referenced by eg. SPI-NAND devices.
> >=20
> > Let's create a raw-nand-chip.yaml file to reference all the properties a
> > raw NAND chip description can contain. The chain of inheritance becomes:
> >   nand-controller.yaml <- raw-nand-chip.yaml
> >   raw-nand-chip.yaml   <- nand-chip.yaml
> >   spi-nand.yaml        <- nand-chip.yaml
> >=20
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../bindings/mtd/nand-controller.yaml         |  85 +--------------
> >  .../bindings/mtd/raw-nand-chip.yaml           | 102 ++++++++++++++++++
> >  2 files changed, 104 insertions(+), 83 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/raw-nand-chip=
.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml=
 b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > index f70a32d2d9d4..83a4fe4cc29d 100644
> > --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> > @@ -16,16 +16,6 @@ description: |
> >    children nodes of the NAND controller. This representation should be
> >    enforced even for simple controllers supporting only one chip.
> > =20
> > -  The ECC strength and ECC step size properties define the user
> > -  desires in terms of correction capability of a controller. Together,
> > -  they request the ECC engine to correct {strength} bit errors per
> > -  {size} bytes.
> > -
> > -  The interpretation of these parameters is implementation-defined, so
> > -  not all implementations must support all possible
> > -  combinations. However, implementations are encouraged to further
> > -  specify the value(s) they support.
> > -
> >  properties:
> >    $nodename:
> >      pattern: "^nand-controller(@.*)?"
> > @@ -51,79 +41,8 @@ properties:
> > =20
> >  patternProperties:
> >    "^nand@[a-f0-9]$":
> > -    $ref: nand-chip.yaml#
> > -
> > -    properties:
> > -      reg:
> > -        description:
> > -          Contains the chip-select IDs.
> > -
> > -      nand-ecc-placement:
> > -        description:
> > -          Location of the ECC bytes. This location is unknown by defau=
lt
> > -          but can be explicitly set to "oob", if all ECC bytes are
> > -          known to be stored in the OOB area, or "interleaved" if ECC
> > -          bytes will be interleaved with regular data in the main area.
> > -        $ref: /schemas/types.yaml#/definitions/string
> > -        enum: [ oob, interleaved ]
> > -
> > -      nand-bus-width:
> > -        description:
> > -          Bus width to the NAND chip
> > -        $ref: /schemas/types.yaml#/definitions/uint32
> > -        enum: [8, 16]
> > -        default: 8
> > -
> > -      nand-on-flash-bbt:
> > -        description:
> > -          With this property, the OS will search the device for a Bad
> > -          Block Table (BBT). If not found, it will create one, reserve
> > -          a few blocks at the end of the device to store it and update
> > -          it as the device ages. Otherwise, the out-of-band area of a
> > -          few pages of all the blocks will be scanned at boot time to
> > -          find Bad Block Markers (BBM). These markers will help to
> > -          build a volatile BBT in RAM.
> > -        $ref: /schemas/types.yaml#/definitions/flag
> > -
> > -      nand-ecc-maximize:
> > -        description:
> > -          Whether or not the ECC strength should be maximized. The
> > -          maximum ECC strength is both controller and chip
> > -          dependent. The ECC engine has to select the ECC config
> > -          providing the best strength and taking the OOB area size
> > -          constraint into account. This is particularly useful when
> > -          only the in-band area is used by the upper layers, and you
> > -          want to make your NAND as reliable as possible.
> > -        $ref: /schemas/types.yaml#/definitions/flag
> > -
> > -      nand-is-boot-medium:
> > -        description:
> > -          Whether or not the NAND chip is a boot medium. Drivers might
> > -          use this information to select ECC algorithms supported by
> > -          the boot ROM or similar restrictions.
> > -        $ref: /schemas/types.yaml#/definitions/flag
> > -
> > -      nand-rb:
> > -        description:
> > -          Contains the native Ready/Busy IDs.
> > -        $ref: /schemas/types.yaml#/definitions/uint32-array
> > -
> > -      rb-gpios:
> > -        description:
> > -          Contains one or more GPIO descriptor (the numper of descript=
or
> > -          depends on the number of R/B pins exposed by the flash) for =
the
> > -          Ready/Busy pins. Active state refers to the NAND ready state=
 and
> > -          should be set to GPIOD_ACTIVE_HIGH unless the signal is inve=
rted.
> > -
> > -      wp-gpios:
> > -        description:
> > -          Contains one GPIO descriptor for the Write Protect pin.
> > -          Active state refers to the NAND Write Protect state and shou=
ld be
> > -          set to GPIOD_ACTIVE_LOW unless the signal is inverted.
> > -        maxItems: 1
> > -
> > -    required:
> > -      - reg
> > +    type: object
> > +    $ref: raw-nand-chip.yaml#
> > =20
> >  required:
> >    - "#address-cells"
> > diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b=
/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
> > new file mode 100644
> > index 000000000000..2caa6a9a73d3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
> > @@ -0,0 +1,102 @@
> > +# SPDX-License-Identifier: GPL-2.0 =20
>=20
> Should be dual licensed like the original.

Good catch. I'll wait a few more days, in case there is no other
comment I'll correct when applying. Otherwise I'll address this in v4.

Thanks,
Miqu=C3=A8l
