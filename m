Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D085C3201B2
	for <lists+devicetree@lfdr.de>; Sat, 20 Feb 2021 00:23:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbhBSXWo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 18:22:44 -0500
Received: from mail.kernel.org ([198.145.29.99]:45906 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229636AbhBSXWn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Feb 2021 18:22:43 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E52E64EBD
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 23:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1613776922;
        bh=UuaIkbmfcNUf8N0SjLvwsXN/4KhcxSImFEDYNOTbYt4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=fr77RVhfr3U9+ExxKjDRg7X1rQgTOVZn8ayryKc9U/npXDXtTaJWwWNtdAnOVO8BT
         3RbaYZg7UrW/kRTz7uytUIcE/j8mrHmfhO7NyldZ5gR4LBqGEq1c2HOJ/lcGt/MS9e
         nplXmIgvreAq5DQJEq78kGbQHVA1qDdo0RLzOY9ipE60h0dytk/t9tzP9x9ns3ByX0
         LU31OtLiqUH66M95WXW/MuxCCr64oGI19zNVgBg2ONekreGp8fnbdZwwU7t7KdU+pt
         YAQMng6HT5N44apkM3fzw1NHKfJUPhSilYZS2PmJviRw6Leq0Rw3Zg2X93HnV6kcef
         HnUrEoMHy6/wg==
Received: by mail-ed1-f51.google.com with SMTP id v22so12487062edx.13
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 15:22:02 -0800 (PST)
X-Gm-Message-State: AOAM530KeWKJ+lystWUhSR0rNnrH5EOUbdIP6tVelBoTN73B7+03tQOL
        bQDCIeyMDDafuJTMh7jh4+eCiZ75dMUZptwYGw==
X-Google-Smtp-Source: ABdhPJx8A56yIMa/TRRP6DBrqMDzSTPdTfqlVBMjU9FLAnfGrfWNzIUVjr1pJfwfZ/DJIKHjgeAE5lP2Ozgs9+KlTDg=
X-Received: by 2002:a50:ee92:: with SMTP id f18mr3894721edr.373.1613776921025;
 Fri, 19 Feb 2021 15:22:01 -0800 (PST)
MIME-Version: 1.0
References: <20210114111504.2adz4a7tfm3edmul@gilmour> <20210201095235.bfj7an4m47kom45n@gilmour>
 <20210219092450.vmfqucvwbq2aq3fc@gilmour>
In-Reply-To: <20210219092450.vmfqucvwbq2aq3fc@gilmour>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 19 Feb 2021 17:21:49 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
Message-ID: <CAL_JsqL--8Bq7cRPs_BrmnCQkTF3DTeJ6nSkV6h_8dCcB0poVw@mail.gmail.com>
Subject: Re: led-gpios binding reporting a weird error
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 19, 2021 at 3:24 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> > On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > > Hi Rob,
> > >
> > > I just encountered a weird error with the led-gpios bindings.

Sorry lost in the ether...

> > >
> > > Indeed, if we run, on today's next and the current master of the
> > > dt-schema tools:
> > >
> > > DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml make -j18 dt_binding_check
> > >
> > > we end up with:
> > >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml
> > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not of type 'array'
> > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' is not of type 'array'
> > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is not of type 'array'
> > >     From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
> > >
> > > What's being especially weird is that linux,default-trigger has the
> > > exact same definition than default-state in leds/common.yaml (aside from
> > > the set of valid values), and just works fine.
> > >
> > > Changing the name of default-state to something else also doesn't change
> > > anything, so it doesn't look like this is some other schema interfering.
> > > Do you have an idea?

What does processed-schema-examples.json (run thru json_pp) look like
for 'default-state'?

> > Ping? This error is still there on today's -next
>
> and it looks like it's still there with yesterday's too

I'm not seeing it in my CI test:

https://gitlab.com/robherring/linux-dt-bindings/-/jobs/1041817756

I am seeing a change of yours causing warnings. :(

Rob
