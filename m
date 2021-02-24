Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 010F33239FB
	for <lists+devicetree@lfdr.de>; Wed, 24 Feb 2021 10:56:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234849AbhBXJzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Feb 2021 04:55:54 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:55283 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234812AbhBXJza (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 24 Feb 2021 04:55:30 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 4F3265C016D;
        Wed, 24 Feb 2021 04:54:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 24 Feb 2021 04:54:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=TsTWJKWvr0lcq1gX97GYLNfhT9f
        56NZFimeX6gc5XBI=; b=nSAEcXoSChwG5xm4UJELCHHHRAa1cUf2NOCZF/AbuDs
        8uJDGiwyILGaFAuOgGpuWO+3CcFtSFlOOCUDSIWYlSBobsJetXsUd7vLkXxJapQj
        PC1dQO1K1Oni0iNFxygaJCbzQLQdYwRE6zeLHAZnZ2vhdYrKgmgSVL2zr8lke1RG
        YcOh3tFAfUNZvh4LMi/5Lsp9ODfE57/Lns1KYNwWzkCkojaYbSFrWvzjxaDXcGcQ
        pgmPVx5LVITP+yNDe8uvCtdjyLX/P604deXH3/ttLZn5bLvt0SxAe15nxXbKF2b3
        1Ofasnxyx1UtGJa89CAXgP2J0hv0kbLST7YsnxwEBVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TsTWJK
        Wvr0lcq1gX97GYLNfhT9f56NZFimeX6gc5XBI=; b=dOkkTBGCWLvr/R1Wue2hcS
        oPty5hriAPpq2tKPgXDXaiaWU8ejmDSxjMbnUXA+WROAdM0igH0whDmAzH5t75UB
        viDIYJWylclBpL3E51hBWvu9jHEKQJ3so3Cx7Xkyc3VaszggYQveptLOpchzggR4
        ebzT9/wwuzKyr1vCnmdkf/yUHHFpaTTH6mcpZNqPqjLJub2L9f3kda02uuDEuBBY
        woXlqnAnsXyN4bUAu3NZb+jtb9S/G2lQ+vNiNjkOLtYEjQTJ2z+jKzjQCLNUPTSl
        iTRbLBcBtGvUkVyGrM/K0c9WEWo3I1L3YoODZT8PoJ81xqVp9OpkGPa+wJ38mJ4Q
        ==
X-ME-Sender: <xms:YSI2YJd2cOeXvhL0rMvQ1GnIlawFUPWaZb7SthWjDiqLZmYsEpU3Ow>
    <xme:YSI2YHNEmCIO5ljuL8LzmvfrCY2-32wTbcPijfo8Lum0b5HydPMOEDyBzupzEJTGP
    MUoXOhSMSvXQsDvq7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddtkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
    nhhordhtvggthheqnecuggftrfgrthhtvghrnheptefhteevheegkeegudetfeeiveetje
    ekkeffjeeuudduleekjedtudehhfekgfffnecuffhomhgrihhnpegrtghkrdhtfhenucfk
    phepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:YiI2YCjPuFPgoXPn3ivQxxXltPyIdAoY6tdBcTg5d1V6TTt8ZGwXKg>
    <xmx:YiI2YC-QkZ1YgQi1OjNcxDDnuGdeJs05eMz3x2BUj1qya65TRxsZZw>
    <xmx:YiI2YFtiHMj4ZnDXP94RCirPUYOtC_jOFtZU0nUnDavweg-ZzMNH3A>
    <xmx:YiI2YD2pkYT9iO9ULm7UwPLyW8tGW3tcz99MEO0ryJBQDx5iKkSqUQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B5F75240054;
        Wed, 24 Feb 2021 04:54:41 -0500 (EST)
Date:   Wed, 24 Feb 2021 10:54:39 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: led-gpios binding reporting a weird error
Message-ID: <20210224095439.rl6ublxl55nyvxs4@gilmour>
References: <20210114111504.2adz4a7tfm3edmul@gilmour>
 <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour>
 <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2syeczwphfifoixw"
Content-Disposition: inline
In-Reply-To: <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--2syeczwphfifoixw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, Feb 19, 2021 at 05:21:49PM -0600, Rob Herring wrote:
> On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > > Hi Rob,
> > > >
> > > > I just encountered a weird error with the led-gpios bindings.
>=20
> Sorry lost in the ether...
>=20
> > > >
> > > > Indeed, if we run, on today's next and the current master of the
> > > > dt-schema tools:
> > > >
> > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/leds-gpio.=
yaml make -j18 dt_binding_check
> > > >
> > > > we end up with:
> > > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.=
dt.yaml
> > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is =
not of type 'array'
> > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetre=
e/bindings/leds/leds-gpio.yaml
> > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'of=
f' is not of type 'array'
> > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetre=
e/bindings/leds/leds-gpio.yaml
> > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on=
' is not of type 'array'
> > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetre=
e/bindings/leds/leds-gpio.yaml
> > > >
> > > > What's being especially weird is that linux,default-trigger has the
> > > > exact same definition than default-state in leds/common.yaml (aside=
 from
> > > > the set of valid values), and just works fine.
> > > >
> > > > Changing the name of default-state to something else also doesn't c=
hange
> > > > anything, so it doesn't look like this is some other schema interfe=
ring.
> > > > Do you have an idea?
>=20
> What does processed-schema-examples.json (run thru json_pp) look like
> for 'default-state'?

The whole file is here: https://paste.ack.tf/fd7597@raw

But the default-state schema itself is:

         "default-state" : {
            "additionalItems" : false,
            "allOf" : [
               {
                  "$ref" : "/schemas/types.yaml#/definitions/string"
               }
            ],
            "default" : false,
            "items" : [
               {
                  "additionalItems" : false,
                  "items" : [
                     {
                        "enum" : [
                           true,
                           false,
                           "keep"
                        ]
                     }
                  ],
                  "maxItems" : 1,
                  "minItems" : 1,
                  "type" : "array"
               }
            ],
            "maxItems" : 1,
            "minItems" : 1,
            "type" : "array"
         },

It looks like the error comes from on and off being expanded to true and
false for some reason, instead of being considered as string

Maxime

--2syeczwphfifoixw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYDYiXwAKCRDj7w1vZxhR
xZqJAP9S3w8pOo+oViS3m2B4B+kZ9l3CFTTV5Lo4xEV7haOQnQD+Nr4h6Lr5aWjH
J2u/P4VAEiwQ1UD5PeZeS+wEPkYseQo=
=B7VK
-----END PGP SIGNATURE-----

--2syeczwphfifoixw--
