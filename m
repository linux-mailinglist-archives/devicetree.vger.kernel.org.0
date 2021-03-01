Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D37F329948
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 11:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234754AbhCBADg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 19:03:36 -0500
Received: from mail.kernel.org ([198.145.29.99]:40256 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1343602AbhCAWhF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Mar 2021 17:37:05 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F1A560202
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 22:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1614637763;
        bh=pB5wTMYfhSp9TOmeud0a0P2vbOUHab5Jn0zbF+13oYs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=HYpKjNDQRss/KncUOOm4OPgMiGsIHiL9H7n9HmM9UduOwWDdrzZVCBZ0ej/W0pi8B
         mCU71kDrJ5Ky+unAZqKTnYYbIpySyJWvtdqYA87YTrI0Rz0MEQHnsjwsn42TWVcu+i
         eDU8EFBaHwR1+VRUjOoMBCblQ25LM4f6fC6WTP5aRMthX6YRkX+VFr8uVL2xKXvOhv
         LJdTqiMhnoaryEWKHhed+UIuLuIeSqItwAQ0nBiPUCCJu8EE9vpRYiA663EOilHTOh
         R444XNyerMEhHWudw2gQK0iSRiQFYLsa4sfPHTVc5TAos7Yfvs/oBWLI3hg3HITor0
         wAqW6B9fEcO3w==
Received: by mail-qv1-f49.google.com with SMTP id 15so8964053qvp.13
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 14:29:23 -0800 (PST)
X-Gm-Message-State: AOAM533k1noQeaAhD0mPq9TFxdFOb9m4CVQ+rCI08/mjPusmU73zBTt9
        sbsiAuPWCZ8pDY9g16/tz2T1VN4U7ehoLkbcIQ==
X-Google-Smtp-Source: ABdhPJyOhJOrH5ir9TJ7YIrgjzyEzxcz9b59pC9cnP/b3K8seuUmwHfJ2xdXMfYiiesgJnUD77UGxgODlqvEyEMnhZ8=
X-Received: by 2002:a0c:f092:: with SMTP id g18mr15916355qvk.11.1614637762418;
 Mon, 01 Mar 2021 14:29:22 -0800 (PST)
MIME-Version: 1.0
References: <20210114111504.2adz4a7tfm3edmul@gilmour> <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour> <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
 <20210224095439.rl6ublxl55nyvxs4@gilmour>
In-Reply-To: <20210224095439.rl6ublxl55nyvxs4@gilmour>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 1 Mar 2021 16:29:10 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
Message-ID: <CAL_Jsq+wR6zov2FmEqjDFnydmoZd9WFqdbAqR-Tew3b3w50=HQ@mail.gmail.com>
Subject: Re: led-gpios binding reporting a weird error
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 24, 2021 at 3:54 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob,
>
> On Fri, Feb 19, 2021 at 05:21:49PM -0600, Rob Herring wrote:
> > On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > > > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > > > Hi Rob,
> > > > >
> > > > > I just encountered a weird error with the led-gpios bindings.
> >
> > Sorry lost in the ether...
> >
> > > > >
> > > > > Indeed, if we run, on today's next and the current master of the
> > > > > dt-schema tools:
> > > > >
> > > > > DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml make -j18 dt_binding_check
> > > > >
> > > > > we end up with:
> > > > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml
> > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not of type 'array'
> > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' is not of type 'array'
> > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is not of type 'array'
> > > > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > > >
> > > > > What's being especially weird is that linux,default-trigger has the
> > > > > exact same definition than default-state in leds/common.yaml (aside from
> > > > > the set of valid values), and just works fine.
> > > > >
> > > > > Changing the name of default-state to something else also doesn't change
> > > > > anything, so it doesn't look like this is some other schema interfering.
> > > > > Do you have an idea?
> >
> > What does processed-schema-examples.json (run thru json_pp) look like
> > for 'default-state'?
>
> The whole file is here: https://paste.ack.tf/fd7597@raw
>
> But the default-state schema itself is:
>
>          "default-state" : {
>             "additionalItems" : false,
>             "allOf" : [
>                {
>                   "$ref" : "/schemas/types.yaml#/definitions/string"
>                }
>             ],
>             "default" : false,
>             "items" : [
>                {
>                   "additionalItems" : false,
>                   "items" : [
>                      {
>                         "enum" : [
>                            true,
>                            false,
>                            "keep"
>                         ]
>                      }
>                   ],
>                   "maxItems" : 1,
>                   "minItems" : 1,
>                   "type" : "array"
>                }
>             ],
>             "maxItems" : 1,
>             "minItems" : 1,
>             "type" : "array"
>          },
>
> It looks like the error comes from on and off being expanded to true and
> false for some reason, instead of being considered as string

on/off was treated as boolean in YAML 1.1. While the files say 1.2,
dtschema changes them to 1.1 because ruamel.yaml at one point didn't
support 1.2 with the C parser. It looks like the C and python parsers
have different behavior, and I think you don't have the C based parser
installed. The patch below fixes the problem for me if I force using
the Python parser. Really, we should probably ensure the C parser is
installed.

I am confused now why I added this code a year ago, but 1.2 support
was added back in 2018.

8<---------------------------------------------------
diff --git a/dtschema/lib.py b/dtschema/lib.py
index b18eda43fb12..d51ace7fe14f 100644
--- a/dtschema/lib.py
+++ b/dtschema/lib.py
@@ -107,9 +107,7 @@ def do_load(filename):
         if filename.endswith('.json'):
             return json.load(f)

-        # ruamel C loader doesn't support 1.2, but 1.1 is good enough for us
-        tmp = f.read().replace('YAML 1.2', 'YAML 1.1')
-        return yaml.load(tmp)
+        return yaml.load(f.read())

 def load_schema(schema):
     for path in schema_user_paths:
