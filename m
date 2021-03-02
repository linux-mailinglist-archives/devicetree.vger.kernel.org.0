Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0B4032AB43
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:21:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1582049AbhCBUSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:18:51 -0500
Received: from mail.kernel.org ([198.145.29.99]:45694 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1448383AbhCBOUP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Mar 2021 09:20:15 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id B3A3964F0B
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 14:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1614694773;
        bh=JDQAz+I9eHAeU12zyKBtdKJChj5p222jOe4viTIAEjg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=BF4fFlkgV8NkXYt5K2KgCgDLEhKm1PSe95iGzC0p6G9J7a4b1/gwi8xsiGal+Kby9
         Pu+YHVxXc5tdK4rkGOQIdyTkoGeqHe50W8QNMjYvxZGoMWc9Q/AYWf+RLUm+Yh60gA
         3Pnh5FPaBYrl4XlYtHHuPE4ZKRvsaZc6Rk4sE67LZ0tvEHbtNVxXvwCIioVtZadJ3u
         jzNwfNlfESfDbMpBj4s28zDtNS5Du7KRxVKDFBMb+3eOQLNl+jEuUeKkWh5sxED+WE
         yUL0PvPPpsT/pWGkQdtMnwVyYv/I7uIV8VMGg7LuIBwPlTOUrkvX2x9W/R0ICvFrLX
         N3BU2A1+qbgGQ==
Received: by mail-ej1-f42.google.com with SMTP id gt32so24001249ejc.6
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 06:19:32 -0800 (PST)
X-Gm-Message-State: AOAM531oSMzGR401fE+rkWE09F91UKxqc/RB+yTZKZiP0mGae45TA6pB
        f/NRKO8uJiH8BvZ4pcGW5EJXYfBVE1ztIc0U+w==
X-Google-Smtp-Source: ABdhPJwXDbc8Rt/y5RQViqWImIKzjDkRQOw3ETP48pC5Tr87YH0R5I/nG3ZJefBWhC25JK8Wq2mo2oVp7Dp2QfpW5C4=
X-Received: by 2002:a17:906:7f84:: with SMTP id f4mr5982042ejr.525.1614694771146;
 Tue, 02 Mar 2021 06:19:31 -0800 (PST)
MIME-Version: 1.0
References: <20210114111504.2adz4a7tfm3edmul@gilmour> <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour> <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
 <20210224095439.rl6ublxl55nyvxs4@gilmour> <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
 <20210302102543.logemybkzqhebzxa@gilmour>
In-Reply-To: <20210302102543.logemybkzqhebzxa@gilmour>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 2 Mar 2021 08:19:16 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+bqrvJ6MkLeutsjHX3+Qpah99mGhCOqR8rxwgcz=9aiQ@mail.gmail.com>
Message-ID: <CAL_Jsq+bqrvJ6MkLeutsjHX3+Qpah99mGhCOqR8rxwgcz=9aiQ@mail.gmail.com>
Subject: Re: led-gpios binding reporting a weird error
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 2, 2021 at 4:25 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Mon, Mar 01, 2021 at 04:29:10PM -0600, Rob Herring wrote:
> > On Wed, Feb 24, 2021 at 3:54 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Fri, Feb 19, 2021 at 05:21:49PM -0600, Rob Herring wrote:
> > > > On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > >
> > > > > On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > > > > > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > > > > > Hi Rob,
> > > > > > >
> > > > > > > I just encountered a weird error with the led-gpios bindings.
> > > >
> > > > Sorry lost in the ether...
> > > >
> > > > > > >
> > > > > > > Indeed, if we run, on today's next and the current master of the
> > > > > > > dt-schema tools:
> > > > > > >
> > > > > > > DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml make -j18 dt_binding_check
> > > > > > >
> > > > > > > we end up with:
> > > > > > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml
> > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not of type 'array'
> > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' is not of type 'array'
> > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is not of type 'array'
> > > > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > > > >
> > > > > > > What's being especially weird is that linux,default-trigger has the
> > > > > > > exact same definition than default-state in leds/common.yaml (aside from
> > > > > > > the set of valid values), and just works fine.
> > > > > > >
> > > > > > > Changing the name of default-state to something else also doesn't change
> > > > > > > anything, so it doesn't look like this is some other schema interfering.
> > > > > > > Do you have an idea?
> > > >
> > > > What does processed-schema-examples.json (run thru json_pp) look like
> > > > for 'default-state'?
> > >
> > > The whole file is here: https://paste.ack.tf/fd7597@raw
> > >
> > > But the default-state schema itself is:
> > >
> > >          "default-state" : {
> > >             "additionalItems" : false,
> > >             "allOf" : [
> > >                {
> > >                   "$ref" : "/schemas/types.yaml#/definitions/string"
> > >                }
> > >             ],
> > >             "default" : false,
> > >             "items" : [
> > >                {
> > >                   "additionalItems" : false,
> > >                   "items" : [
> > >                      {
> > >                         "enum" : [
> > >                            true,
> > >                            false,
> > >                            "keep"
> > >                         ]
> > >                      }
> > >                   ],
> > >                   "maxItems" : 1,
> > >                   "minItems" : 1,
> > >                   "type" : "array"
> > >                }
> > >             ],
> > >             "maxItems" : 1,
> > >             "minItems" : 1,
> > >             "type" : "array"
> > >          },
> > >
> > > It looks like the error comes from on and off being expanded to true and
> > > false for some reason, instead of being considered as string
> >
> > on/off was treated as boolean in YAML 1.1. While the files say 1.2,
> > dtschema changes them to 1.1 because ruamel.yaml at one point didn't
> > support 1.2 with the C parser. It looks like the C and python parsers
> > have different behavior, and I think you don't have the C based parser
> > installed. The patch below fixes the problem for me if I force using
> > the Python parser. Really, we should probably ensure the C parser is
> > installed.
> >
> > I am confused now why I added this code a year ago, but 1.2 support
> > was added back in 2018.
> >
> > 8<---------------------------------------------------
> > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > index b18eda43fb12..d51ace7fe14f 100644
> > --- a/dtschema/lib.py
> > +++ b/dtschema/lib.py
> > @@ -107,9 +107,7 @@ def do_load(filename):
> >          if filename.endswith('.json'):
> >              return json.load(f)
> >
> > -        # ruamel C loader doesn't support 1.2, but 1.1 is good enough for us
> > -        tmp = f.read().replace('YAML 1.2', 'YAML 1.1')
> > -        return yaml.load(tmp)
> > +        return yaml.load(f.read())
>
> Yeah, that fixes things for me too (together with installing the C
> version of ruamel)

I'm curious how do you not have it? It's a dependency for ruamel at
least with pip and ubuntu/debian.

Rob
