Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 022FF39C45E
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 02:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbhFEA1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 20:27:46 -0400
Received: from mail-ua1-f43.google.com ([209.85.222.43]:43778 "EHLO
        mail-ua1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbhFEA1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 20:27:46 -0400
Received: by mail-ua1-f43.google.com with SMTP id f1so6213859uaj.10
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 17:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=sUFuRMnJeUbsvj2QDdwiuwSD5F69c4BG1mDs2axqiTs=;
        b=zM5TBVEXzzTUIEFhS1qRdHVmP1tXYlBOmQd4/VjMnJ3DmdqFFU6bkbLyfrNxxnyWa9
         blKUy6wA4j4eLX6D4rq1IoWM59ghqmVMwl0PuYuzcZRjV+Q4Rjp84cUyclR0WyP4zOzG
         vsolpHhgM0Xcwpw48NzYsTtSoedzBg7VxM7QZipwYmptd21HTQy4ujjenVI1qzBiCaep
         46wgeIFWFIed9H1Mej2xxgNiZVUdtORElQoVwE5W2SHA8EKBMNh1aLhXGxm/N3ShFfzk
         c4CE/7gCakEjXeOM9aOcaOSO2Rx9LnqHKnQByJsVJfV9PXN+OTkq5V8kNAvBaboI25PF
         2FNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sUFuRMnJeUbsvj2QDdwiuwSD5F69c4BG1mDs2axqiTs=;
        b=RaVAPsGCu4Ji5OR5UddIfFoDvHn1RlSMU1+pM0svqDRCUPW7TfBEKKU9cu3nSPeNsb
         i3dHQG3Bzja1QNgBzPDir1ln1bgMDIhpjVSuK24LCjCxpSXpsysEWEsUxJvrPyrZieHT
         zrJzwF7iEfGLY3JW7eC37Cuohz0eAZRnlcDZwPZ2Q2io9itd5zXAuxMyH8y0GzCtORnQ
         hBUO545MqSbArlwFHzp+tYEACgY41jrYEvJtZqpwD/kslZdO2iKt/YwIljTr8ybZFNG1
         WN6FPBKuKajcotFsaHI5aSVaP7PVgyztRfBoGGQEbNefT8j9A1BuVLdi347clHUGh4os
         hpQw==
X-Gm-Message-State: AOAM531r0Hw8HHVBMzAdYgt0vaQOOPyKtUQixrb72lRlEGyhDmPkCDTr
        LTsCZ+F0mcg/1H1cVQT1tvaENbkH6I2rPLBI4mDm
X-Google-Smtp-Source: ABdhPJy9MkmawDbOqXM8+0aak1zP96RnH18mtJOi8a8jw6esgtXEdnoySjtaD9YwZ/eE+42Yp3tI/fy1eEBGblAJGhA=
X-Received: by 2002:a05:6122:40e:: with SMTP id e14mr4179610vkd.20.1622852699138;
 Fri, 04 Jun 2021 17:24:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210531141538.721613-1-iwamatsu@nigauri.org> <20210604214608.GA3974358@robh.at.kernel.org>
In-Reply-To: <20210604214608.GA3974358@robh.at.kernel.org>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Sat, 5 Jun 2021 09:24:32 +0900
Message-ID: <CABMQnV+waVdAcnbdYJnxt8rM2JfdcTuPBnJ+XK0Pie1Twar0Fg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: convert Cadence SPI bindings to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-spi <linux-spi@vger.kernel.org>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Harini Katakam <harinik@xilinx.com>,
        linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thanks for your review.

2021=E5=B9=B46=E6=9C=885=E6=97=A5(=E5=9C=9F) 6:46 Rob Herring <robh@kernel.=
org>:
>
> On Mon, May 31, 2021 at 11:15:38PM +0900, Nobuhiro Iwamatsu wrote:
> > Convert spi for Cadence SPI bindings documentation to YAML.
> >
> > Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > ---
> >  .../devicetree/bindings/spi/spi-cadence.txt   | 30 ---------
> >  .../devicetree/bindings/spi/spi-cadence.yaml  | 63 +++++++++++++++++++
> >  2 files changed, 63 insertions(+), 30 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/spi/spi-cadence.t=
xt
> >  create mode 100644 Documentation/devicetree/bindings/spi/spi-cadence.y=
aml
> >
> > diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.txt b/Do=
cumentation/devicetree/bindings/spi/spi-cadence.txt
> > deleted file mode 100644
> > index 05a2ef945664be..00000000000000
> > --- a/Documentation/devicetree/bindings/spi/spi-cadence.txt
> > +++ /dev/null
> > @@ -1,30 +0,0 @@
> > -Cadence SPI controller Device Tree Bindings
> > --------------------------------------------
> > -
> > -Required properties:
> > -- compatible         : Should be "cdns,spi-r1p6" or "xlnx,zynq-spi-r1p=
6".
> > -- reg                        : Physical base address and size of SPI r=
egisters map.
> > -- interrupts         : Property with a value describing the interrupt
> > -                       number.
> > -- clock-names                : List of input clock names - "ref_clk", =
"pclk"
> > -                       (See clock bindings for details).
> > -- clocks             : Clock phandles (see clock bindings for details)=
.
> > -
> > -Optional properties:
> > -- num-cs             : Number of chip selects used.
> > -                       If a decoder is used, this will be the number o=
f
> > -                       chip selects after the decoder.
> > -- is-decoded-cs              : Flag to indicate whether decoder is use=
d or not.
> > -
> > -Example:
> > -
> > -     spi@e0007000 {
> > -             compatible =3D "xlnx,zynq-spi-r1p6";
> > -             clock-names =3D "ref_clk", "pclk";
> > -             clocks =3D <&clkc 26>, <&clkc 35>;
> > -             interrupt-parent =3D <&intc>;
> > -             interrupts =3D <0 49 4>;
> > -             num-cs =3D <4>;
> > -             is-decoded-cs =3D <0>;
> > -             reg =3D <0xe0007000 0x1000>;
> > -     } ;
> > diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.yaml b/D=
ocumentation/devicetree/bindings/spi/spi-cadence.yaml
> > new file mode 100644
> > index 00000000000000..27a7121ed0f9ae
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
> > @@ -0,0 +1,63 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/spi/spi-cadence.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cadence SPI controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Michal Simek <michal.simek@xilinx.com>
> > +
> > +allOf:
> > +  - $ref: "spi-controller.yaml#"
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - cdns,spi-r1p6
> > +      - xlnx,zynq-spi-r1p6
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ref_clk
> > +      - const: pclk
> > +
> > +  clocks:
> > +    maxItems: 2
> > +
> > +  num-cs:
> > +    description: |
> > +      Number of chip selects used. If a decoder is used,
> > +      this will be the number of chip selects after the
> > +      decoder.
> > +    minimum: 1
> > +    maximum: 4
> > +    default: 4
> > +
> > +  is-decoded-cs:
>
> Needs a type ref. Despite being called a 'flag' looks like it's an
> uint32. Presumably, it also needs:
>
> enum: [ 0, 1 ]

Yeah, this is a flag, but the driver source code uses it as u32.
So, I will add ref and enum, thanks.

>
> > +    description: |
> > +      Flag to indicate whether decoder is used or not.
> > +    default: 0

Best regards,
  Nobuhiro
