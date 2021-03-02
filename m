Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B580532AB09
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242095AbhCBUCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:02:34 -0500
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:54741 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1380040AbhCBK0e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 05:26:34 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 15B205C01BB;
        Tue,  2 Mar 2021 05:25:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 02 Mar 2021 05:25:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=QLc6nbiPerD7aqtfXpz4D0ZFFpc
        XqZ+lTmHe1Pj8FHM=; b=pTkKmXHDZlFCQZC2ui1pGcRU2YdZcZQluN4pfM5BWRi
        GwiYRgGp8ELnKqtuer+l31e9pHCXifL0iRB4Cpea+INqiHB6Hku1E5a0QVkT/j7b
        tnIKE5OuvnJZODLGUiP52HzumjYPa/CaGX0O7KE3WdtyDzAFG+HjaRMJev+CJKjF
        oaXeoxg7weQdoJcsHA+teYeEaVHO4a2K9jO/8SWYmi/cP+HDJm9vKrCDSGwcu8gD
        fFiYBx9DYWVcFPkk4bDhrETH4MH7Ma6G7Xo4mPIaf5BJHNSiPtCKROvNV68xJ5ao
        qxrsonCTyLSn5/7xafGntiKD1JJC6ETyhMVsAnVZOEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=QLc6nb
        iPerD7aqtfXpz4D0ZFFpcXqZ+lTmHe1Pj8FHM=; b=TRGwxU6ajL6B1U7JyXOA5I
        JAvTnmoxliXYIWZBt+vfax/VJMh3ryEdvsz28dGSOboQmRy7WyUweYJ6QNaoEeOO
        53dYGlCdcGrq86q+Qy/tx14bMHXTlEhvob/An4sdPi5NI45aINTigp3f7SWiUl4E
        OHdvLH7jj4PsjyLTKRaGZtbozbZORvRoUYPgg1JM9O2MQU/wvt5TgL5wwxuTmUpw
        RP4Eb/2Zz4HvTECp/GMPktoMAGV4qVuULFoB7cey+PiehZ94SMs5NSXQKGVSa6+l
        yuTPlyHyhkzgfiGnj2F1lZ9ysb5p6vjioRrH8LyNA8Qm8A/lKqyfQvUFegbal/nw
        ==
X-ME-Sender: <xms:qRI-YHgMQDfrtdPqAIXlUps-1dyjX7jTW742cPVSotKMEhIhx6qqww>
    <xme:qRI-YEA7D-g8y3y5pBscO8cAZlWIwpYQSwWx3tZqFqBq2BBKNsj45rX7-3tIT1GUL
    mje0RBtoKJX6KKydqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddttddgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
    rhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeethfetveehgeekgeduteefieevte
    ejkeekffejueduudelkeejtdduhefhkefgffenucffohhmrghinheprggtkhdrthhfnecu
    kfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qRI-YHESGJSsxWC4Ib8XXcrE6CAXmjxCBNSlgHejt1iOcCZMkIZq7w>
    <xmx:qRI-YETM4PGBtDpIZ1ElC-BheTfkzL2KZVQ3J2dBEaZh6BTxe5HgKw>
    <xmx:qRI-YEzVL3cs_5YKot9jESEJclVLprNlXplybDVyNptYIkT9sUv53g>
    <xmx:qhI-YKasMAy1tHRHftqGobAZyCMR1v-YWKeQPRlB-QQCUSSSFKbO0A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6666C240057;
        Tue,  2 Mar 2021 05:25:45 -0500 (EST)
Date:   Tue, 2 Mar 2021 11:25:43 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: led-gpios binding reporting a weird error
Message-ID: <20210302102543.logemybkzqhebzxa@gilmour>
References: <20210114111504.2adz4a7tfm3edmul@gilmour>
 <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour>
 <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
 <20210224095439.rl6ublxl55nyvxs4@gilmour>
 <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yypujip6yae4fr4q"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yypujip6yae4fr4q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 01, 2021 at 04:29:10PM -0600, Rob Herring wrote:
> On Wed, Feb 24, 2021 at 3:54 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi Rob,
> >
> > On Fri, Feb 19, 2021 at 05:21:49PM -0600, Rob Herring wrote:
> > > On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech> wro=
te:
> > > >
> > > > On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > > > > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > > > > Hi Rob,
> > > > > >
> > > > > > I just encountered a weird error with the led-gpios bindings.
> > >
> > > Sorry lost in the ether...
> > >
> > > > > >
> > > > > > Indeed, if we run, on today's next and the current master of the
> > > > > > dt-schema tools:
> > > > > >
> > > > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/leds-g=
pio.yaml make -j18 dt_binding_check
> > > > > >
> > > > > > we end up with:
> > > > > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.exam=
ple.dt.yaml
> > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/b=
indings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep'=
 is not of type 'array'
> > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devic=
etree/bindings/leds/leds-gpio.yaml
> > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/b=
indings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0:=
 'off' is not of type 'array'
> > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devic=
etree/bindings/leds/leds-gpio.yaml
> > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/b=
indings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0:=
 'on' is not of type 'array'
> > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devic=
etree/bindings/leds/leds-gpio.yaml
> > > > > >
> > > > > > What's being especially weird is that linux,default-trigger has=
 the
> > > > > > exact same definition than default-state in leds/common.yaml (a=
side from
> > > > > > the set of valid values), and just works fine.
> > > > > >
> > > > > > Changing the name of default-state to something else also doesn=
't change
> > > > > > anything, so it doesn't look like this is some other schema int=
erfering.
> > > > > > Do you have an idea?
> > >
> > > What does processed-schema-examples.json (run thru json_pp) look like
> > > for 'default-state'?
> >
> > The whole file is here: https://paste.ack.tf/fd7597@raw
> >
> > But the default-state schema itself is:
> >
> >          "default-state" : {
> >             "additionalItems" : false,
> >             "allOf" : [
> >                {
> >                   "$ref" : "/schemas/types.yaml#/definitions/string"
> >                }
> >             ],
> >             "default" : false,
> >             "items" : [
> >                {
> >                   "additionalItems" : false,
> >                   "items" : [
> >                      {
> >                         "enum" : [
> >                            true,
> >                            false,
> >                            "keep"
> >                         ]
> >                      }
> >                   ],
> >                   "maxItems" : 1,
> >                   "minItems" : 1,
> >                   "type" : "array"
> >                }
> >             ],
> >             "maxItems" : 1,
> >             "minItems" : 1,
> >             "type" : "array"
> >          },
> >
> > It looks like the error comes from on and off being expanded to true and
> > false for some reason, instead of being considered as string
>=20
> on/off was treated as boolean in YAML 1.1. While the files say 1.2,
> dtschema changes them to 1.1 because ruamel.yaml at one point didn't
> support 1.2 with the C parser. It looks like the C and python parsers
> have different behavior, and I think you don't have the C based parser
> installed. The patch below fixes the problem for me if I force using
> the Python parser. Really, we should probably ensure the C parser is
> installed.
>=20
> I am confused now why I added this code a year ago, but 1.2 support
> was added back in 2018.
>=20
> 8<---------------------------------------------------
> diff --git a/dtschema/lib.py b/dtschema/lib.py
> index b18eda43fb12..d51ace7fe14f 100644
> --- a/dtschema/lib.py
> +++ b/dtschema/lib.py
> @@ -107,9 +107,7 @@ def do_load(filename):
>          if filename.endswith('.json'):
>              return json.load(f)
>=20
> -        # ruamel C loader doesn't support 1.2, but 1.1 is good enough fo=
r us
> -        tmp =3D f.read().replace('YAML 1.2', 'YAML 1.1')
> -        return yaml.load(tmp)
> +        return yaml.load(f.read())

Yeah, that fixes things for me too (together with installing the C
version of ruamel)

Maxime

--yypujip6yae4fr4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYD4SpwAKCRDj7w1vZxhR
xYyxAP4nQAYhgqEBLccDWPunAPylBRZpLtjerefxI80m8vDzLwEA1e/LChoUQqro
lTSF/dQkCekVtAizuRb0hhb2cVhjkwo=
=I5QF
-----END PGP SIGNATURE-----

--yypujip6yae4fr4q--
