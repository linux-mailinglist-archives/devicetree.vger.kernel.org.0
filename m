Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC1BBA0240
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 14:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726370AbfH1Mwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 08:52:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:54506 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726368AbfH1Mwu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 08:52:50 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C85D122DA7;
        Wed, 28 Aug 2019 12:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566996769;
        bh=pWrQgmISDkbqSBxXp7l8VKfrAdsJraHRh2Qj6d4vPWo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VnLmHsw/scI8JLANLRg4jxD21qcb3AVY8M5amBfOqQTwnWdHt7b0mSUhW8Sz9+kWD
         seKxiOVLboAYrylCrJfL5wNUNfLYIKOtKX3CX/9ZDesEd1klWnPUnyzB7WmewXKsRD
         8UIbnI++kdXt/YTa39V3Admt9sVNhhB3Ms2thNiQ=
Date:   Wed, 28 Aug 2019 14:52:46 +0200
From:   Maxime Ripard <mripard@kernel.org>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 3/5] dt-bindings: sound: Convert Allwinner A33 codec to a
 schema
Message-ID: <20190828125246.zy7ucra7dkiw4ia7@flea>
References: <20190827142547.14577-1-mripard@kernel.org>
 <20190827142547.14577-3-mripard@kernel.org>
 <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="asta7q4d6eqzmvrk"
Content-Disposition: inline
In-Reply-To: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--asta7q4d6eqzmvrk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 27, 2019 at 10:29:33PM +0800, Chen-Yu Tsai wrote:
> On Tue, Aug 27, 2019 at 10:25 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> > with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
> >  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
> >  2 files changed, 57 insertions(+), 63 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> >
> > diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> > new file mode 100644
> > index 000000000000..5e7cc05bbff1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A33 Codec Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +properties:
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    const: allwinner,sun8i-a33-codec
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +required:
> > +  - "#sound-dai-cells"
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    audio-codec@1c22e00 {
> > +      #sound-dai-cells = <0>;
> > +      compatible = "allwinner,sun8i-a33-codec";
> > +      reg = <0x01c22e00 0x400>;
> > +      interrupts = <0 29 4>;
> > +      clocks = <&ccu 47>, <&ccu 92>;
> > +      clock-names = "bus", "mod";
> > +    };
> > +
> > +...
> > diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> > deleted file mode 100644
> > index 7ecf6bd60d27..000000000000
> > --- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> > +++ /dev/null
> > @@ -1,63 +0,0 @@
> > -Allwinner SUN8I audio codec
> > -------------------------------------
> > -
> > -On Sun8i-A33 SoCs, the audio is separated in different parts:
> > -         - A DAI driver. It uses the "sun4i-i2s" driver which is
> > -         documented here:
> > -         Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
> > -         - An analog part of the codec which is handled as PRCM registers.
> > -         See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> > -         - An digital part of the codec which is documented in this current
> > -         binding documentation.
> > -         - And finally, an audio card which links all the above components.
> > -         The simple-audio card will be used.
> > -         See Documentation/devicetree/bindings/sound/simple-card.txt
> > -
> > -This bindings documentation exposes Sun8i codec (digital part).
> > -
> > -Required properties:
> > -- compatible: must be "allwinner,sun8i-a33-codec"
> > -- reg: must contain the registers location and length
> > -- interrupts: must contain the codec interrupt
> > -- clocks: a list of phandle + clock-specifer pairs, one for each entry
> > -  in clock-names.
> > -- clock-names: should contain followings:
> > -   - "bus": the parent APB clock for this controller
> > -   - "mod": the parent module clock
> > -
> > -Here is an example to add a sound card and the codec binding on sun8i SoCs that
> > -are similar to A33 using simple-card:
> > -
> > -       sound {
> > -               compatible = "simple-audio-card";
> > -               simple-audio-card,name = "sun8i-a33-audio";
> > -               simple-audio-card,format = "i2s";
> > -               simple-audio-card,frame-master = <&link_codec>;
> > -               simple-audio-card,bitclock-master = <&link_codec>;
> > -               simple-audio-card,mclk-fs = <512>;
> > -               simple-audio-card,aux-devs = <&codec_analog>;
> > -               simple-audio-card,routing =
> > -                               "Left DAC", "Digital Left DAC",
> > -                               "Right DAC", "Digital Right DAC";
>
> At some point we should start listing the endpoints available for routing?

Yeah, we should do that. I'm not sure how easy it would be using the
schemas though.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--asta7q4d6eqzmvrk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWZ5HgAKCRDj7w1vZxhR
xXkPAP45zvC7zUeQS2lM/nuzMIyZuUlKZcv+ZSPsCmK5nymqtQD/Zgsn1N/j/WrL
6VwTMy3hqtsI1G18kLcl6eq/vQdYsAw=
=pJOp
-----END PGP SIGNATURE-----

--asta7q4d6eqzmvrk--
