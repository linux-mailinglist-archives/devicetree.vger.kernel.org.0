Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 418042D5EBF
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 15:57:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387552AbgLJO4Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:56:16 -0500
Received: from mail.kernel.org ([198.145.29.99]:55134 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2391840AbgLJOvm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Dec 2020 09:51:42 -0500
X-Gm-Message-State: AOAM530YTYjqZTKT2OgGaksoYYpTF3naqd4qpE60lGNil64SrUQVWUDy
        78jjGqZUed5s/XoDoYlxfRl2IYXL99+dI6nmYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1607611861;
        bh=/yJL2XtGwSU5PLDnEBhw8CuGjZz0b27Lf552FH3cY9o=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=MelyhOjirphp8xHOkadlt3guObvY1cWorDEQ/Y0MpAzLP3lZJQdlyuzPPvQRNmbzE
         TyFimkAEy8Zqhpwdp3P4EwQROY07SfsPNp/eg1biHMrwUEo8DyZj8z3e0my5vD8dzx
         TC/CCpTZaA9aW4WGNw7XeYIM8F9hlV+It44ZZZIJHydWF2kXu20rVyX6s92Dxpq2qD
         Q8334m5Ih6a0xPgJDELE68F31RjH7/7TqFcwHhurR3HBiTKDBPwGljglyNWci0p5bF
         bRMcoiuGQWBMVFTaU5d0m4nKBPuosUFedyxYZpdb8TrF6aLKDDyd0O9jgwIgkkJaAz
         VS+Eqg55FGEOA==
X-Google-Smtp-Source: ABdhPJxFntTBbjQcTkZjtBbLwqptirtFflL7rJWKT+YYc2AUp12rD5fz4aDqZfQY8+1ACdPdUfn5nVmnfxXXP+Lv3es=
X-Received: by 2002:a17:906:c20f:: with SMTP id d15mr6715467ejz.341.1607611859661;
 Thu, 10 Dec 2020 06:50:59 -0800 (PST)
MIME-Version: 1.0
References: <20201209130235.7505-1-zajec5@gmail.com> <20201210024840.GA1510718@robh.at.kernel.org>
 <daa204cc-c736-8eab-7740-00c4ba457bcb@gmail.com>
In-Reply-To: <daa204cc-c736-8eab-7740-00c4ba457bcb@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 10 Dec 2020 08:50:47 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLZv7RCW80mjq7RX9+JhCMBSOL6HC3fmgDD0gmLtKtHpw@mail.gmail.com>
Message-ID: <CAL_JsqLZv7RCW80mjq7RX9+JhCMBSOL6HC3fmgDD0gmLtKtHpw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: convert "fixed-partitions" to the json-schema
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        MTD Maling List <linux-mtd@lists.infradead.org>,
        devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 10, 2020 at 7:56 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:
>
> On 10.12.2020 03:48, Rob Herring wrote:
> > On Wed, Dec 09, 2020 at 02:02:35PM +0100, Rafa=C5=82 Mi=C5=82ecki wrote=
:
> >> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >>
> >> This standardizes its documentation, allows validating with Makefile
> >> checks and helps writing DTS files.
> >>
> >> Noticeable changes:
> >> 1. Dropped "Partitions can be represented by sub-nodes of a flash
> >>     device." as we also support subpartitions (don't have to be part o=
f
> >>     flash device node)
> >> 2. Dropped "to Linux" as bindings are meant to be os agnostic.
> >>
> >> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >> ---
> >>   .../devicetree/bindings/mtd/partition.txt     | 131 +---------------
> >>   .../mtd/partitions/fixed-partitions.yaml      | 146 ++++++++++++++++=
++
> >>   2 files changed, 148 insertions(+), 129 deletions(-)
> >>   create mode 100644 Documentation/devicetree/bindings/mtd/partitions/=
fixed-partitions.yaml

> >> diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-pa=
rtitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-part=
itions.yaml
> >> new file mode 100644
> >> index 000000000000..c5e509e08f31
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partition=
s.yaml
> >> @@ -0,0 +1,146 @@
> >> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mtd/partitions/fixed-partitions.ya=
ml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Fixed partitions
> >> +
> >> +description: |
> >> +  This binding can be used on platforms which have strong conventions=
 about
> >> +  which portions of a flash are used for what purposes, but which don=
't use an
> >> +  on-flash partition table such as RedBoot.
> >> +
> >> +  The partition table should be a node named "partitions". Partitions=
 are then
> >> +  defined as subnodes.
> >> +
> >> +maintainers:
> >> +  - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: fixed-partitions
> >> +
> >> +patternProperties:
> >> +  "^.*@[0-9a-f]+$":
> >
> > You can drop '^.*'.
> >
> > This needs to recurse to nested nodes.
> >
> > I think here you can do just:
> >
> > $ref: #/
> >
> > And drop 'compatible' as required. It's redundant anyways because the
> > schema will only be applied if compatible matches.
>
> I managed to implement recursive schema but then I run dt_binding_check a=
nd
> realized it may be not what we really want.
>
> The error I got was:
> Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example=
.dt.yaml: partitions: firmware@100000:compatible:0: 'fixed-partitions' was =
expected
>          From schema: Documentation/devicetree/bindings/mtd/partitions/fi=
xed-partitions.yaml
>
> and was caused by the following example:
> partitions {
>         compatible =3D "fixed-partitions";
>         #address-cells =3D <1>;
>         #size-cells =3D <1>;
>
>         (...)
>
>         firmware@100000 {
>                 label =3D "firmware";
>                 reg =3D <0x100000 0xe00000>;
>                 compatible =3D "brcm,trx";
>         };
>
>         (...)
> }
>
> As you can see a single partition can use any available parser, so we can=
't
> require only "fixed-partitions" to be nested in the "fixed-partitions".
>
> In this situation I think this commit may be OK after all if I just fix r=
egex
> and required (drop "compatible").
>
> What do you think?

You're still going to have the above error with the schema below.

I completely missed that the nested example has "fixed-partitions"
compatible in it. So what you had is actually fine in that regard. Let
me start over reviewing.

> FWIW:
>
> properties:
>    compatible:
>      const: fixed-partitions
>
> patternProperties:
>    "@[0-9a-f]+$":
>      allOf:
>        - $ref: "#"
>        - properties:
>            reg:
>              maxItems: 1
>              description: partition's offset and size within the flash
>
>            label:
>              description: The label / name for this partition. If omitted=
, the label
>                is taken from the node name (excluding the unit address).
>
>            read-only:
>              description: This parameter, if present, is a hint that this=
 partition
>                should only be mounted read-only. This is usually used for=
 flash
>                partitions containing early-boot firmware images or data w=
hich should
>                not be clobbered.
>              type: boolean
>
>            lock:
>              description: Do not unlock the partition at initialization t=
ime (not
>                supported on all devices)
>              type: boolean
>
>            slc-mode:
>              description: This parameter, if present, allows one to emula=
te SLC mode
>                on a partition attached to an MLC NAND thus making this pa=
rtition
>                immune to paired-pages corruptions
>              type: boolean
>
>          required:
>            - reg
