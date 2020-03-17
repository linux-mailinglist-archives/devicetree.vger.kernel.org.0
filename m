Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA1D187B4A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2020 09:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726664AbgCQIaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Mar 2020 04:30:09 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:39360 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726019AbgCQIaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Mar 2020 04:30:08 -0400
Received: by mail-io1-f66.google.com with SMTP id c19so18983886ioo.6
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2020 01:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=antmicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jyDCPfs8KzQ6V9GNlBy3Iu/4R6G5EhS/k3t/Fwg1hEI=;
        b=c2DNi1WYbLLOwQlnk496EBc46hHCbpcGgzkJhdPeh+6ID51gwq5Jj/tOQI2UYMpf/n
         vnfERJoln5g5y2c0NWtui4fSc5SfruZjtXx0RN1rTF/T5KZCJVYq57TvhIk87PE+YaHO
         N4tzhqg/VE4XzV57jM7rqCpA6vHTAaOhnG5ZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jyDCPfs8KzQ6V9GNlBy3Iu/4R6G5EhS/k3t/Fwg1hEI=;
        b=sUhbE1ZMoZ4w6zGCftZdTN54DN3D1opQS72WkUT34llacGniLuF25/IjPz7EZFv+b8
         LOAZXswqLJK5QzsDoWirc/y0IdOQ7iq33wSouEUflugnjtiNeN64uUwRyNuv6h3TpnQH
         RFugMkmUtBlsxgokvyoOxfyVcNmfMhZF/T48/8IzJ57jI4Sh/2w9uYv+HyN7aFZGgkCf
         1os7K5tlqlzgrud65oUuwI5pF9uSJ2nVlzJIcGvmLF5TZtG+7xB2Lz4lx7aCbrW5wgvL
         7Oa1Cmeekdlo/oi0M1jAV6l8p5wH93VqhCoJru2ZESMmGTLoiG3+9kYxWG0ik7wR6Auj
         vMNg==
X-Gm-Message-State: ANhLgQ1eieVFMu0KkOLtH2wDoOGj7E6segmxUdJU54vxWANuyL4pU/M1
        nuBbJXtUQa6fxWha+JFQmdQpyw0M4qU2G1+Cswa57Q==
X-Google-Smtp-Source: ADFU+vsmUU61jePkqUhV9101lLple16cpG72xhffs/pv3VGzuG9vSytaE1R6wvK2rDvh0OMxsd/cWfOD7XaF60KVv4A=
X-Received: by 2002:a02:1d44:: with SMTP id 65mr4200166jaj.6.1584433808056;
 Tue, 17 Mar 2020 01:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200225094437.4170502-0-mholenko@antmicro.com>
 <20200225094437.4170502-2-mholenko@antmicro.com> <20200225091055.ubm5r3p6r4ydchyh@gilmour.lan>
In-Reply-To: <20200225091055.ubm5r3p6r4ydchyh@gilmour.lan>
From:   Mateusz Holenko <mholenko@antmicro.com>
Date:   Tue, 17 Mar 2020 09:29:56 +0100
Message-ID: <CAPk366ReVDbWEESC0WRBs-JD0jdG3gV9st679g-cBrzxYWd1bg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: soc: document LiteX SoC Controller bindings
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jslaby@suse.com>, devicetree@vger.kernel.org,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Stafford Horne <shorne@gmail.com>,
        Karol Gugala <kgugala@antmicro.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>,
        Filip Kokosinski <fkokosinski@antmicro.com>,
        Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
        Joel Stanley <joel@jms.id.au>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Icenowy Zheng <icenowy@aosc.io>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Tue, Feb 25, 2020 at 10:11 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Mateusz,
>
> On Tue, Feb 25, 2020 at 09:46:45AM +0100, Mateusz Holenko wrote:
> > From: Pawel Czarnecki <pczarnecki@internships.antmicro.com>
> >
> > Add documentation for LiteX SoC Controller bindings.
> >
> > Signed-off-by: Pawel Czarnecki <pczarnecki@internships.antmicro.com>
> > Signed-off-by: Mateusz Holenko <mholenko@antmicro.com>
> > ---
> >
> > Notes:
> >     This commit has been introduced in v3 of the patchset.
> >
> >  .../soc/litex/litex,soc_controller.yaml       | 46 +++++++++++++++++++
> >  MAINTAINERS                                   |  6 +++
> >  2 files changed, 52 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/litex/litex,soc_controller.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/soc/litex/litex,soc_controller.yaml b/Documentation/devicetree/bindings/soc/litex/litex,soc_controller.yaml
> > new file mode 100644
> > index 000000000000..039894265319
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/litex/litex,soc_controller.yaml
> > @@ -0,0 +1,46 @@
> > +PDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/litex/litex,soc_controller.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: LiteX SoC Controller driver
> > +
> > +description: |
> > +  This is the SoC Controller driver for the LiteX SoC Builder.
> > +  It's purpose is to verify LiteX CSR (Control&Status Register) access
> > +  operations and provide function for other drivers to read/write CSRs
> > +  and to check if those accessors are ready to use.
> > +
> > +maintainers:
> > +  - Karol Gugala <kgugala@antmicro.com>
> > +  - Mateusz Holenko <mholenko@antmicro.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: litex,soc_controller
>
> Usually compatible will use dash as separators, not underscores.
>
> > +  reg:
> > +    description: Base address and length of the register space
>
> This is usually removed since it's what's expected from the property
> anyway. However, what you should really test for in the number of
> address/size couples being set, and you can do that using maxItems: 1
>
> > +  status:
> > +    description: |
> > +      disables or enables node
> > +
> > +    const: "okay"
>
> This is added automatically by the tooling, so you can leave it out.
>
> > +required:
> > +  - compatible
> > +  - reg
> > +  - status
>
> And in general, status is not required. Leaving status out is
> equivalent to status = "okay"
>
> > +examples:
> > +  - |
> > +
> > +  soc_ctrl0: soc_controller@f0000000 {
> > +                     compatible = "litex,soc_controller";
> > +                     reg = <0x0 0xf0000000 0x0 0xC>;
> > +                     status = "okay";
> > +  };
>
> The indentation looks weird here?
>
> Maxime

Thanks for all the comments!

I'll fix this file and resubmit the whole patchset after addressing
other remarks.

--
Mateusz Holenko
Antmicro Ltd | www.antmicro.com
Roosevelta 22, 60-829 Poznan, Poland
