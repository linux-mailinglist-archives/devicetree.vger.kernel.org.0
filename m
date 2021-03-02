Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62AE632AB58
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:30:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349443AbhCBUXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:23:42 -0500
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:36251 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1378635AbhCBPSe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:18:34 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 813A8146A;
        Tue,  2 Mar 2021 10:17:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 02 Mar 2021 10:17:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=BQHWoKM9ZU5z9dtiVSLkkjEwxQO
        KmXt2WXguBWKeAPU=; b=i/Cs2PPc0WS1tgHRPVsAxjmD+bxswcuRrbRtNZQcqS9
        iHmyq/vNSj8uqv626/38wzGFRb9aSj36C3A1gk9VQWuX3nNzTAifD/uKiYiEW7wr
        +u7GGlPl/EHO6jvn6bx/2CYpPRqixhPgG2yS/3DPnijZIu6j5/t6StIInK2ExKog
        xW6zAOj68+bdIx4Mkw9BvD/e0FixDF2EEaGFjGAJKK/4IxTydNxk1N+cfFm3WLQt
        gM+PlxttfSt692EiFPmhrb4Y1tfHCpB0gBFqWqj0cnhdDPJ39v6pEgbhF5dRMPSs
        Wm2IAjZcIOQcj/Ivs9J1gGO21qtjJJa22+xt/vK2oJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=BQHWoK
        M9ZU5z9dtiVSLkkjEwxQOKmXt2WXguBWKeAPU=; b=ZzshfSJbZ+B/YQ3/ZToIZf
        kIBuDGta//uVWRYkR9FHHF2/2N0w4kxKS0Mg+cIr17uZ/S3IloSFVE5Mnanc80Wa
        T7Ewoy7+rWKd7NV+xavhb8pFFUavEiu6cyqvnCIc3w0VJpAmBqnrLteJGQpSG5xj
        wnLr0nZAq0a4JjxxF9FbpXn7KLOnQ/88z+2NzQ4XS6Jsv1zx0GfnP4dwI0X6jwLK
        4pdixO6hHgtd7E5bDeENtyGMq7DzaV5mA5sNB17sjXJp0fRCeI4uU76sSaotJNkp
        ZWJUAKHoU5jGamlO18O8LLjpPKROTvDcKtcIlktZxvom/zgDF1qKYfPDi4VWclJw
        ==
X-ME-Sender: <xms:8lY-YHqX8Ytri0JNWySq_F_ppWb3g1D9a3OPFNbOZJ1HIsGXEpRLVg>
    <xme:8lY-YBo3Y1zVmMB3VK4NbILPvAuHO0icWak2hxZNYBckGdGdG9qqGi_oUY7-mFM6m
    GASxiQd_BMo_uMQ6nA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddttddgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
    rhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeethfetveehgeekgeduteefieevte
    ejkeekffejueduudelkeejtdduhefhkefgffenucffohhmrghinheprggtkhdrthhfnecu
    kfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:8lY-YEMqGMlg6RUZMG24O4smQ4e4_UpBCj7OezqxpbZgdChGUGVYlg>
    <xmx:8lY-YK6c6anEY1PlwLKfFQw_MXg_C0hGlrByJhSkxDohGB0jmnMi4g>
    <xmx:8lY-YG7O58sEWWBV81EULnWzjSSxZGWdqm2kJvL0W5Pm3uscwIBjsA>
    <xmx:81Y-YLgsWc-FI3VXD-W4du3yHNuk84oLbkXg7rqTdp1T1O0j3Lr9ug>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 7A07A1080066;
        Tue,  2 Mar 2021 10:17:06 -0500 (EST)
Date:   Tue, 2 Mar 2021 16:17:03 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: led-gpios binding reporting a weird error
Message-ID: <20210302151703.hkwm5xd35v7gsvn4@gilmour>
References: <20210114111504.2adz4a7tfm3edmul@gilmour>
 <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour>
 <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
 <20210224095439.rl6ublxl55nyvxs4@gilmour>
 <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
 <20210302102543.logemybkzqhebzxa@gilmour>
 <CAL_Jsq+bqrvJ6MkLeutsjHX3+Qpah99mGhCOqR8rxwgcz=9aiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cdoqvc3v6absxdrm"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+bqrvJ6MkLeutsjHX3+Qpah99mGhCOqR8rxwgcz=9aiQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cdoqvc3v6absxdrm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 02, 2021 at 08:19:16AM -0600, Rob Herring wrote:
> On Tue, Mar 2, 2021 at 4:25 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Mon, Mar 01, 2021 at 04:29:10PM -0600, Rob Herring wrote:
> > > On Wed, Feb 24, 2021 at 3:54 AM Maxime Ripard <maxime@cerno.tech> wro=
te:
> > > >
> > > > Hi Rob,
> > > >
> > > > On Fri, Feb 19, 2021 at 05:21:49PM -0600, Rob Herring wrote:
> > > > > On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech>=
 wrote:
> > > > > >
> > > > > > On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > > > > > > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > > > > > > Hi Rob,
> > > > > > > >
> > > > > > > > I just encountered a weird error with the led-gpios binding=
s.
> > > > >
> > > > > Sorry lost in the ether...
> > > > >
> > > > > > > >
> > > > > > > > Indeed, if we run, on today's next and the current master o=
f the
> > > > > > > > dt-schema tools:
> > > > > > > >
> > > > > > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/le=
ds-gpio.yaml make -j18 dt_binding_check
> > > > > > > >
> > > > > > > > we end up with:
> > > > > > > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.=
example.dt.yaml
> > > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetr=
ee/bindings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'k=
eep' is not of type 'array'
> > > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/d=
evicetree/bindings/leds/leds-gpio.yaml
> > > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetr=
ee/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-stat=
e:0: 'off' is not of type 'array'
> > > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/d=
evicetree/bindings/leds/leds-gpio.yaml
> > > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetr=
ee/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-stat=
e:0: 'on' is not of type 'array'
> > > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/d=
evicetree/bindings/leds/leds-gpio.yaml
> > > > > > > >
> > > > > > > > What's being especially weird is that linux,default-trigger=
 has the
> > > > > > > > exact same definition than default-state in leds/common.yam=
l (aside from
> > > > > > > > the set of valid values), and just works fine.
> > > > > > > >
> > > > > > > > Changing the name of default-state to something else also d=
oesn't change
> > > > > > > > anything, so it doesn't look like this is some other schema=
 interfering.
> > > > > > > > Do you have an idea?
> > > > >
> > > > > What does processed-schema-examples.json (run thru json_pp) look =
like
> > > > > for 'default-state'?
> > > >
> > > > The whole file is here: https://paste.ack.tf/fd7597@raw
> > > >
> > > > But the default-state schema itself is:
> > > >
> > > >          "default-state" : {
> > > >             "additionalItems" : false,
> > > >             "allOf" : [
> > > >                {
> > > >                   "$ref" : "/schemas/types.yaml#/definitions/string"
> > > >                }
> > > >             ],
> > > >             "default" : false,
> > > >             "items" : [
> > > >                {
> > > >                   "additionalItems" : false,
> > > >                   "items" : [
> > > >                      {
> > > >                         "enum" : [
> > > >                            true,
> > > >                            false,
> > > >                            "keep"
> > > >                         ]
> > > >                      }
> > > >                   ],
> > > >                   "maxItems" : 1,
> > > >                   "minItems" : 1,
> > > >                   "type" : "array"
> > > >                }
> > > >             ],
> > > >             "maxItems" : 1,
> > > >             "minItems" : 1,
> > > >             "type" : "array"
> > > >          },
> > > >
> > > > It looks like the error comes from on and off being expanded to tru=
e and
> > > > false for some reason, instead of being considered as string
> > >
> > > on/off was treated as boolean in YAML 1.1. While the files say 1.2,
> > > dtschema changes them to 1.1 because ruamel.yaml at one point didn't
> > > support 1.2 with the C parser. It looks like the C and python parsers
> > > have different behavior, and I think you don't have the C based parser
> > > installed. The patch below fixes the problem for me if I force using
> > > the Python parser. Really, we should probably ensure the C parser is
> > > installed.
> > >
> > > I am confused now why I added this code a year ago, but 1.2 support
> > > was added back in 2018.
> > >
> > > 8<---------------------------------------------------
> > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > index b18eda43fb12..d51ace7fe14f 100644
> > > --- a/dtschema/lib.py
> > > +++ b/dtschema/lib.py
> > > @@ -107,9 +107,7 @@ def do_load(filename):
> > >          if filename.endswith('.json'):
> > >              return json.load(f)
> > >
> > > -        # ruamel C loader doesn't support 1.2, but 1.1 is good enoug=
h for us
> > > -        tmp =3D f.read().replace('YAML 1.2', 'YAML 1.1')
> > > -        return yaml.load(tmp)
> > > +        return yaml.load(f.read())
> >
> > Yeah, that fixes things for me too (together with installing the C
> > version of ruamel)
>=20
> I'm curious how do you not have it? It's a dependency for ruamel at
> least with pip and ubuntu/debian.

I don't remember (and history doesn't either) how I installed ruamel in
the first place. I'm using fedora and the package wasn't installed, but
I think I installed all the dt-schema dependencies through pip. So I
might have had it all along

Maxime

--cdoqvc3v6absxdrm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYD5W7wAKCRDj7w1vZxhR
xbjkAQCmCe3LoyJ89dfCEmi24L9rgT8JD/6c5yEk1hJOLpO9TwEAoU1agYrOP8Gp
JVlwagG9oub7vM/M/AvIt0uRU2yqSQE=
=2FSd
-----END PGP SIGNATURE-----

--cdoqvc3v6absxdrm--
