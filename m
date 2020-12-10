Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 251022D5EC1
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 15:57:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728235AbgLJO47 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:56:59 -0500
Received: from mail.kernel.org ([198.145.29.99]:58420 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727249AbgLJO4t (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Dec 2020 09:56:49 -0500
X-Gm-Message-State: AOAM531cEdo6YoYe1MDcP8FUiRK9JohDAX5eGuYWxUoeg14RDI08Y8No
        2SaUrLMQcGR86hpk/9czblF/oMMLVO7E1+DL3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1607612168;
        bh=qmdAO9Uknca/JN1YLovwYMHGqiZDO64II1wFIz+U8tA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=FCE/AqgENm1IvyUBd0F3JBXGyfHCL7I8jewRvhpHUCJ5eqF2jUj+wycOJSDIYnqRd
         qKuanMybabjOdGyTpf32psXxAG+D2yuUm96OEA1R58fi4wW5kc7HTTa9aejF7fnMcR
         1bsRn3aSIxOzlpjgSza/QVlogzIg++HT5KW+lAoHGUpkywamR8UNOAJGSOjqGnl0YY
         9D8d2iu24yE7TKd9lyaJA83jmMStjhTpHYOcaGmwxM/+qabsozVeyOtgIxJrBAwH5o
         yszWhKeLk0L4I4NKMTqSE2NRCuyAaQidtZQuafc9xNVK+NvL2cN/osiW/9C3aQujJy
         ELzed4UKhL1cw==
X-Google-Smtp-Source: ABdhPJyETCb3UM1pARADZZYNsligViTdKWwYtB5l6ZLoWhz8W4PTW3q+7kjXMAWVsNjqiWOJ16u0pxnm6quqCH25XYU=
X-Received: by 2002:a50:e78b:: with SMTP id b11mr7066773edn.165.1607612166369;
 Thu, 10 Dec 2020 06:56:06 -0800 (PST)
MIME-Version: 1.0
References: <20201209130235.7505-1-zajec5@gmail.com>
In-Reply-To: <20201209130235.7505-1-zajec5@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 10 Dec 2020 08:55:51 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+88ann56FoM2PatYnR8GsqcF1cP9aL6R5oaM+K-rmQFg@mail.gmail.com>
Message-ID: <CAL_Jsq+88ann56FoM2PatYnR8GsqcF1cP9aL6R5oaM+K-rmQFg@mail.gmail.com>
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

On Wed, Dec 9, 2020 at 7:02 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> w=
rote:
>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> This standardizes its documentation, allows validating with Makefile
> checks and helps writing DTS files.
>
> Noticeable changes:
> 1. Dropped "Partitions can be represented by sub-nodes of a flash
>    device." as we also support subpartitions (don't have to be part of
>    flash device node)
> 2. Dropped "to Linux" as bindings are meant to be os agnostic.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/mtd/partition.txt     | 131 +---------------
>  .../mtd/partitions/fixed-partitions.yaml      | 146 ++++++++++++++++++
>  2 files changed, 148 insertions(+), 129 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/fixe=
d-partitions.yaml

> diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-parti=
tions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partiti=
ons.yaml
> new file mode 100644
> index 000000000000..c5e509e08f31
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.y=
aml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/fixed-partitions.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Fixed partitions
> +
> +description: |
> +  This binding can be used on platforms which have strong conventions ab=
out
> +  which portions of a flash are used for what purposes, but which don't =
use an
> +  on-flash partition table such as RedBoot.
> +
> +  The partition table should be a node named "partitions". Partitions ar=
e then
> +  defined as subnodes.
> +
> +maintainers:
> +  - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> +
> +properties:
> +  compatible:
> +    const: fixed-partitions

You need to add #size-cells and #address-cells and make them required.

> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":
> +    description: node describing a single flash partition
> +    type: object
> +
> +    properties:
> +      reg:
> +        description: partition's offset and size within the flash
> +
> +      label:
> +        description: The label / name for this partition. If omitted, th=
e label
> +          is taken from the node name (excluding the unit address).
> +
> +      read-only:
> +        description: This parameter, if present, is a hint that this par=
tition
> +          should only be mounted read-only. This is usually used for fla=
sh
> +          partitions containing early-boot firmware images or data which=
 should
> +          not be clobbered.
> +        type: boolean
> +
> +      lock:
> +        description: Do not unlock the partition at initialization time =
(not
> +          supported on all devices)
> +        type: boolean
> +
> +      slc-mode:
> +        description: This parameter, if present, allows one to emulate S=
LC mode
> +          on a partition attached to an MLC NAND thus making this partit=
ion
> +          immune to paired-pages corruptions
> +        type: boolean
> +
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    partitions {
> +        compatible =3D "fixed-partitions";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        partition@0 {
> +            label =3D "u-boot";
> +            reg =3D <0x0000000 0x100000>;
> +            read-only;
> +        };
> +
> +        uimage@100000 {
> +            reg =3D <0x0100000 0x200000>;
> +        };
> +    };
> +  - |
> +    partitions {
> +        compatible =3D "fixed-partitions";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <2>;
> +
> +        /* a 4 GiB partition */
> +        partition@0 {
> +            label =3D "filesystem";
> +            reg =3D <0x00000000 0x1 0x00000000>;
> +        };
> +    };
> +  - |
> +    partitions {
> +        compatible =3D "fixed-partitions";
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        /* an 8 GiB partition */
> +        partition@0 {
> +            label =3D "filesystem #1";
> +            reg =3D <0x0 0x00000000 0x2 0x00000000>;
> +        };
> +
> +        /* a 4 GiB partition */
> +        partition@200000000 {
> +            label =3D "filesystem #2";
> +            reg =3D <0x2 0x00000000 0x1 0x00000000>;
> +        };
> +    };
> +  - |
> +    partitions {
> +        compatible =3D "fixed-partitions";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        partition@0 {
> +            label =3D "bootloader";
> +            reg =3D <0x000000 0x100000>;
> +            read-only;
> +        };
> +
> +        firmware@100000 {
> +            label =3D "firmware";
> +            reg =3D <0x100000 0xe00000>;
> +            compatible =3D "brcm,trx";

Can you move compatible to be the first property which is informal conventi=
on.

> +        };
> +
> +        calibration@f00000 {
> +            label =3D "calibration";
> +            reg =3D <0xf00000 0x100000>;
> +            compatible =3D "fixed-partitions";
> +            ranges =3D <0 0xf00000 0x100000>;
> +            #address-cells =3D <1>;
> +            #size-cells =3D <1>;
> +
> +            partition@0 {
> +                label =3D "wifi0";
> +                reg =3D <0x000000 0x080000>;
> +            };
> +
> +            partition@80000 {
> +                label =3D "wifi1";
> +                reg =3D <0x080000 0x080000>;
> +            };
> +        };
> +    };
> --
> 2.26.2
>
