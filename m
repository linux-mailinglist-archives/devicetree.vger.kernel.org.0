Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 593FD8BAD9
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 15:54:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729380AbfHMNx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 09:53:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:34514 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729421AbfHMNx7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Aug 2019 09:53:59 -0400
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E44F521744
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 13:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565704438;
        bh=mV2hMDdVWsgLNSwsnMycqNwQRfnzA2CaSgdj5JRuxek=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=2jd3dJ7BhVS+IuwYR4cGWvfqZBTp+BrrpDrZ26oHsk+KoUQi6+UTRqaZcH64CZ9bZ
         kvEmbm3gX3HFrdS3acO0Eu+JZir+KeGZXGl8mtZFmwkV3A+9Ufoc2x6AVkbz1n6g1/
         btw5XOg7pMb1wV2SxtVFny/3BJQ1I+tchm+fNhp0=
Received: by mail-qk1-f169.google.com with SMTP id r4so79565534qkm.13
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 06:53:57 -0700 (PDT)
X-Gm-Message-State: APjAAAXXXNXPmWv814F4in25Cq4aziSZiBUghk1a3QSTUU25TNAt2F8H
        lgdBP4JGgm12udGCpJ52Vzl8u0G6fkUAcRkJbw==
X-Google-Smtp-Source: APXvYqyxbaUwbmA/4Zv9EuQoRypRXf8X0Pi5SYOVGOb46NaHSbP4GIEa8rDtE5kJWBv6VjPYvmt5Pv1jZAo3jGEyFmo=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr27185024qkn.254.1565704437061;
 Tue, 13 Aug 2019 06:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
 <20190723132658.5068-2-maxime.ripard@bootlin.com> <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
 <20190813054738.ge2jdu6qn2vaoasd@flea>
In-Reply-To: <20190813054738.ge2jdu6qn2vaoasd@flea>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 13 Aug 2019 07:53:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLAA6v1BCFHGrDR7WzOE9ri6MNq6WCkvJ5NTDnhDcAqyg@mail.gmail.com>
Message-ID: <CAL_JsqLAA6v1BCFHGrDR7WzOE9ri6MNq6WCkvJ5NTDnhDcAqyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to
 a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Chen-Yu Tsai <wens@csie.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 12, 2019 at 11:47 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Tue, Jul 23, 2019 at 10:32:41AM -0600, Rob Herring wrote:
> > On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The Allwinner SoCs have an interrupt controller called NMI supported in
> > > Linux, with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
> > >  .../allwinner,sunxi-nmi.txt                   | 29 -------
> > >  2 files changed, 83 insertions(+), 29 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > > new file mode 100644
> > > index 000000000000..cb8077b0c8dd
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > > @@ -0,0 +1,83 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Chen-Yu Tsai <wens@csie.org>
> > > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/interrupt-controller.yaml#
> > > +
> > > +select:
> > > +  properties:
> > > +    compatible:
> > > +      contains:
> > > +        enum:
> > > +          - allwinner,sun6i-a31-r-intc
> > > +          - allwinner,sun7i-a20-sc-nmi
> > > +          - allwinner,sun9i-a80-sc-nmi
> >
> > This should have all the possible compatibles in case all are not
> > listed.
>
> I'm sorry, but I'm not sure I understood what you meant here :/

You are missing these from the list:
allwinner,sun8i-a83t-r-intc
allwinner,sun50i-a64-r-intc
allwinner,sun50i-h6-r-intc

We need them all to catch any DTs with only the above strings.

>
> >
> > > +
> > > +          # Deprecated
> > > +          - allwinner,sun6i-a31-sc-nmi
> >
> > I know we already did things this way before, but perhaps this should
> > be listed below with the 'deprecated' property. The tools can include
> > it in select, but then remove it from compatible property.
>
> Can we have more than just one of the choice for an enum?
>
> In this particular case, since we have oneOf it's not really too much
> of an issue, but there's a significant amount of users of enum for the
> compatibles.

I think we have to use oneOf here. There's not that many cases of
deprecated compatibles.

Rob
