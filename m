Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBA217351DF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 12:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjFSKU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 06:20:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232141AbjFSKUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 06:20:05 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C5E89B
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 03:20:04 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687170002;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Hg+K4d2jDSwwiixqHu5EqrqQOP4nXsBOoXnSsdurUUc=;
        b=dFpI8o5ZvNWrcq6sHs3oK0UhfZxicdHbXDLdw6MLJZ2JdOwPNevFOO8SbSpkF/oSwMm9dL
        diwtUVn+fCX2IR8atatsmRcvRwCOXxn7A07LtDdpBoPbrD1p7SR7ZcY2AzqwDbGPA8Nf+b
        qa8lZrhD6XO5oXSla9hYqBr2LCvg2vR2RTrhsF+HhhOtfq+fdpf2j7AfHMQNJwGjyLw+eR
        0pU4I6xL+2qNbdrPNZ6LCqzypUB5bLUbNyaMHyvczBTuk8GwLqoS5N4cL94OpPInJ75v5C
        vONzdsHFQJLhneb4aVJx6EzIVJoyZAVWmppHbiSo6EiBbl+sJYGuV3T/IcNCBQ==
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
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9C9911C0007;
        Mon, 19 Jun 2023 10:20:00 +0000 (UTC)
Date:   Mon, 19 Jun 2023 12:19:58 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v2 2/6] dt-bindings: display: st7789v: bound the number
 of Rx data lines
Message-ID: <20230619121958.2e4a7c95@xps-13>
In-Reply-To: <wgi4wtewth3xwtl5updyg5et3roiqp4h5kz6oyevd4uxjveboq@gff42fefym7m>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
        <20230616163255.2804163-3-miquel.raynal@bootlin.com>
        <tcxifa7ol3fukfsdw7hh3kl25dhpviu6lasdc6xasz4dvhjedx@mo2vae6smtok>
        <20230618193732.04fc1909@xps-13>
        <wgi4wtewth3xwtl5updyg5et3roiqp4h5kz6oyevd4uxjveboq@gff42fefym7m>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

maxime@cerno.tech wrote on Mon, 19 Jun 2023 11:39:56 +0200:

> On Sun, Jun 18, 2023 at 07:37:32PM +0200, Miquel Raynal wrote:
> > Hello Maxime,
> >=20
> > maxime@cerno.tech wrote on Sun, 18 Jun 2023 16:37:58 +0200:
> >  =20
> > > Hi,
> > >=20
> > > On Fri, Jun 16, 2023 at 06:32:51PM +0200, Miquel Raynal wrote: =20
> > > > The ST7789V LCD controller supports regular SPI wiring, as well as =
no Rx
> > > > data line at all. The operating system needs to know whether it can=
 read
> > > > registers from the device or not. Let's detail this specific design
> > > > possibility by bounding the spi-rx-bus-width property.
> > > >=20
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  .../devicetree/bindings/display/panel/sitronix,st7789v.yaml   | 4 =
++++
> > > >  1 file changed, 4 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/display/panel/sitron=
ix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,=
st7789v.yaml
> > > > index 0ccf0487fd8e..a25df7e1df88 100644
> > > > --- a/Documentation/devicetree/bindings/display/panel/sitronix,st77=
89v.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/panel/sitronix,st77=
89v.yaml
> > > > @@ -29,6 +29,10 @@ properties:
> > > >    spi-cpha: true
> > > >    spi-cpol: true
> > > > =20
> > > > +  spi-rx-bus-width:
> > > > +    minimum: 0
> > > > +    maximum: 1
> > > > +   =20
> > >=20
> > > It's not clear to me what the default would be? =20
> >=20
> > This binding references spi-peripheral-props.yaml which sets the
> > default to 1, I believe it is sane to keep it that way? =20
>=20
> I'm not sure.
>=20
> The driver didn't need RX before, and we didn't have any property that
> was expressing whether we had MISO in the device tree.
>=20
> That means we had both devices with and without MISO expressed in the
> same way, the driver handling both (by ignoring MISO entirely).
>=20
> With this patch, you now introduce a property that specifies whether
> MISO is connected or not, and defaults to MISO being there. And a later
> patch will use MISO if it's available.
>=20
> This means that, while it's working fine for devices that had MISO
> connected, devices that didn't are assumed to have it, and the driver
> makes use of it.

Ah yes, I get your concern. I thought you wanted to talk about the fact
that it was not constrained in the yaml description. Your concern is
about breaking existing devices.

Your concern is real, designs not wiring the MISO line which do not
describe this in the device tree will no longer succeed to probe with
the current implementation. Technically speaking, they're broken since
2021:

c476d430bfc0 ("dt-bindings: display: Add SPI peripheral schema to SPI based=
 displays")

We actually discussed this with Sebastian, right there:
https://lore.kernel.org/all/20230609145951.853533-6-miquel.raynal@bootlin.c=
om/T/#m9286cdb4d617c5efc29052b552e981ecfa2628e4

And the conclusion was that we decided not to care about the broken
descriptions (because, let's agree on this, not wiring the MISO line is
not a standard spi design). But I don't have a strong opinion TBH, so
if you think it's best to prevent these probes from failing (note that
I already added a debug line explicitly saying why the probe would
fail, "easy" to identify) I'm fine turning the check as a warning and
ignoring the error to avoid failing.

Thanks,
Miqu=C3=A8l
