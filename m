Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14F5A38B5EF
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 20:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234395AbhETSYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 14:24:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:58564 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231544AbhETSYL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 May 2021 14:24:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4DBD9610A8
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621534969;
        bh=VmQxTpf1IGJ5EqzESn2imv8cICKZVczppj/rQDnnMYk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=M0f+W2aEZdiquRkb7CnJLminMKYR+5W4fJ8MprPn1HQdr6DgyIIYP/Zc+BKSEUNJu
         LB9W76N09JXA/6ih0bEafylEdHpnlFAkGYEYNdf9fTAySxXyhb0sW6K94M8t/NLOVq
         kmutPZSJoSa5CcpUkui7sgKpIuGaclDpD3Jxr3oPJxqvjKxgfA59rOpYGzT5diKvgk
         lV/N08M4Twfd6ixAuE/X6fFeXQSd96tqwNEq7Nmv2rc13hRXK+g+/bPWe6kUD7HPmJ
         onAUSLEK48yAh8zm9NN1C5HoIUSllAs4ZP1noxMVVfA5IotMe4ezUBsWBr0nX/ItQl
         Q4ScOKH3/eqgw==
Received: by mail-ej1-f44.google.com with SMTP id n2so26772193ejy.7
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 11:22:49 -0700 (PDT)
X-Gm-Message-State: AOAM53354AKOo2fTOv19/jpMHedcODf/QAieNwQUEWU407PB41oP5gpD
        8ldx5RMpdZBnhen67Q/VYEEWZHhOi8letdv5Eg==
X-Google-Smtp-Source: ABdhPJyUmApm8VhLJyPrb4CsqlvMDEvt+vyOSNBcwarspynx+U1/090M7NwXwy4MzcpkiXTAYALc+SNajuTUBfEAAns=
X-Received: by 2002:a17:907:76b8:: with SMTP id jw24mr5984918ejc.359.1621534967859;
 Thu, 20 May 2021 11:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210519082049.30976-1-zajec5@gmail.com> <20210519184041.563-1-zajec5@gmail.com>
In-Reply-To: <20210519184041.563-1-zajec5@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 20 May 2021 13:22:36 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
Message-ID: <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
Subject: Re: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 1:40 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:
>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Rob: would you take this patch through your dt/next?

I can't, I don't have the dependencies. It looks like 08e9fdfbb224 is
already upstream. For ac5f8197d15c, I could get a stable branch from
Linus, but I can't take some random github branch. Even if I got a
stable branch for that, that's a lot of extra work for me for 1 patch
compared to waiting til next cycle.

My suggestion is get a stable branch/tag from Linus, merge that into
the Broadcom branch and then apply this patch. Though really, Linus
needed to know the dependency when applying the patch if he doesn't
rebase his tree. (I realize the dependency probably happened because
of the review).

>
> V2: Use complete binding & change additionalProperties to false
> V3: Use clock-controller@ for clocks
>
> NOTICE: this patch is based on top of the linux-next as it requires:
> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the js=
on-schema")
> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json=
-schema")
> AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it req=
uires:
> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the jso=
n-schema")
>
> This is reworked version of the
> [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/2021030914=
2241.16259-1-zajec5@gmail.com/
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
>
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Docume=
ntation/devicetree/bindings/mfd/brcm,cru.yaml
> new file mode 100644
> index 000000000000..fc1317ab3226
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom CRU
> +
> +maintainers:
> +  - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> +
> +description: |
> +  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a =
hardware
> +  block grouping smaller blocks. On Broadcom Northstar platform it conta=
ins e.g.
> +  clocks, pinctrl, USB PHY and thermal.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - brcm,ns-cru
> +      - const: simple-mfd
> +
> +  reg:
> +    description: CRU registers
> +
> +  ranges: true
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  pinctrl:
> +    $ref: ../pinctrl/brcm,ns-pinmux.yaml
> +
> +patternProperties:
> +  '^clock-controller@[a-f0-9]+$':
> +    $ref: ../clock/brcm,iproc-clocks.yaml
> +
> +  '^thermal@[a-f0-9]+$':
> +    $ref: ../thermal/brcm,ns-thermal.yaml
> +
> +additionalProperties: false
> +
> +required:
> +  - reg
> +
> +examples:
> +  - |
> +    cru-bus@1800c100 {
> +        compatible =3D "brcm,ns-cru", "simple-mfd";
> +        reg =3D <0x1800c100 0x1d0>;
> +        ranges;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        clock-controller@100 {
> +            #clock-cells =3D <1>;
> +            compatible =3D "brcm,nsp-lcpll0";
> +            reg =3D <0x100 0x14>;
> +            clocks =3D <&osc>;
> +            clock-output-names =3D "lcpll0", "pcie_phy", "sdio", "ddr_ph=
y";
> +        };
> +
> +        clock-controller@140 {
> +            #clock-cells =3D <1>;
> +            compatible =3D "brcm,nsp-genpll";
> +            reg =3D <0x140 0x24>;
> +            clocks =3D <&osc>;
> +            clock-output-names =3D "genpll", "phy", "ethernetclk", "usbc=
lk",
> +                                 "iprocfast", "sata1", "sata2";
> +        };
> +
> +        pinctrl {
> +            compatible =3D "brcm,bcm4708-pinmux";
> +            offset =3D <0x1c0>;
> +        };
> +
> +        thermal@2c0 {
> +            compatible =3D "brcm,ns-thermal";
> +            reg =3D <0x2c0 0x10>;
> +            #thermal-sensor-cells =3D <0>;
> +        };
> +    };
> --
> 2.26.2
>
