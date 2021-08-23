Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC1FA3F4E23
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 18:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbhHWQRc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 12:17:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:60730 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229477AbhHWQRb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Aug 2021 12:17:31 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3973461374
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 16:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629735409;
        bh=mG9bSaKlOrxw932jK+vYket1joC9tZNfipKkO5JpswE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Szv1/4lrm6Uhgrgb1YEstiNGfoPbF5B5izC+p/iKRZnjThxI2WiHy48cZULgTM7aY
         dMiPhL8fhEcm7i/n3RjJuc2zUVtuZTxzAf7p/eMV/LOivWFx3u03b16xnW8TPYzNVe
         Gq5lOJToPVF7s0QcjlO/1pBGsEgGsNgGLLQTuGBTM5AJky6SWQ/1mSaXRXXP0lINh8
         4PHVKsT9BvvGd1JsZQg06GmPg6y4V4U4JubAX5d78GWAWY8av37U3AReQpSXUj0WqU
         jCunj003b/uZBVkMnU/uiACT4DpS7mNqk2IV7QVbZVI7l3rsNTKZCmbWgZAYw2r/k8
         FvsXlh/MOs5cw==
Received: by mail-ed1-f42.google.com with SMTP id i6so27039721edu.1
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 09:16:49 -0700 (PDT)
X-Gm-Message-State: AOAM533LnZ0vdzyF7K9uMs8cezEOoSz39qXhG0xTvfdFyyqp5hWfuQic
        vxSw7zzibcLU5DjTP4Mgc2n+ur5n9jnzwrFKwA==
X-Google-Smtp-Source: ABdhPJydqaKeNN5xeH8/Di09lfFgk0FzGy2IVS3SlK3g/rm9Hw/TeVmK9a+DnLRAu8UAVvzjaqkGbV298v5yg38b0I0=
X-Received: by 2002:a50:fd87:: with SMTP id o7mr38729687edt.289.1629735407812;
 Mon, 23 Aug 2021 09:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
 <YRae8tDReDS67sM4@robh.at.kernel.org> <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
 <YRwkvjAuEd+9lTt7@robh.at.kernel.org> <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
 <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com> <ae72879d25da3e56e3a1eefe101aad7cbe47515e.camel@codeconstruct.com.au>
In-Reply-To: <ae72879d25da3e56e3a1eefe101aad7cbe47515e.camel@codeconstruct.com.au>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 23 Aug 2021 11:16:35 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+5ujcLLqDezsnzkVANkM9GifxA5BUccMVwZOfBUutACw@mail.gmail.com>
Message-ID: <CAL_Jsq+5ujcLLqDezsnzkVANkM9GifxA5BUccMVwZOfBUutACw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Matt Johnston <matt@codeconstruct.com.au>,
        devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 23, 2021 at 2:52 AM Jeremy Kerr <jk@codeconstruct.com.au> wrote:
>
> Hi Rob,
>
> > > This ends up describing something like a network interface, which
> > > happens to use I2C as a transport in this case. (There are other
> > > transports like MCTP-over-serial, but those don't require DT
> > > topology
> > > data). For other network-type DT bindings (say, ethernet@), we
> > > don't
> > > describe remote network endpoints either, so we're proposing the
> > > same
> > > pattern for MCTP.
> >
> > When a switch becomes integrated in, we do.
>
> OK, we'll allow for cases like that, where we do need a representation
> of a "remote" endpoint. However, we don't *currently* have a scenario
> where that is necessary.

The issue here tends to be we design things based on not having nodes
in DT and then eventually evolve to the point where we should have had
a separate node. Connectors or per slot PCI properties are some
examples. Just something to keep in mind.

> > > > >     reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> > > > >     attach-bus = <&i2c1 &i2c6>;
> > > >
> > > > Why do you need to say you are attached to yourself?
> > >
> > > This indicates that the top-level MCTP controller needs to talk to
> > > MCTP
> > > endpoints, eg mctpA on the directly attached bus i2c1. In some
> > > topologies
> > > there will be no directly-attached endpoints, in which case we
> > > would omit
> > > i2c1 from the list. We need to specify the attach-bus property
> > > since we
> > > don't have a list of external device endpoints to walk.
> >
> > Okay, so it's a 'what I2C buses should be scanned for MCTP devices'.
>
> Not quite "scanned", more "marked as MCTP-capable". The indication that
> an i2c bus is a MCTP controller doesn't initiate any scanning, but
> rather provides a facility for software further up the stack to perform
> any scanning / monitoring for hotplug devices / setting up fixed remote
> endpoints - whatever is suitable for the system.
>
> > Why can't that just be all the buses under i2c1 in this example?
> > Limiting it seems like an optimization only.
>
> It's not so much an optimisation, rather a way to avoid overly complex
> network topologies. We may have on the order of 100 i2c busses
> (including both root busses and mux subordinates) on some platforms.
> Since physical addressing requires knowing both the SMBus address plus
> the MUX state, any software/user that deals with physical addreses
> will need to know about those ~100 busses.

Any system with muxes has them described in DT as I'm not aware of any
way muxes are discoverable.

> If I can use the Linux implementation as an example: flagging an i2c
> controller as MCTP-capable will create a MCTP netdev, which allows
> communicating with specific physaddrs on that segment of the bus. I'd
> like to avoid creating ~100 netdevs, all visible to userspace, when only
> a small subset of those can carry actual MCTP data.
>
> If we can limit the possible MCTP controllers to just the i2c busses
> that host MCTP hardware downstream, that makes things much easier for
> any OS implementation to deal with. While we can do the i2c/MCTP mapping
> at a higher level (ie. userspace), representing this in the DT does
> keep the local-hardware-specific data all in the one place.
>
> > In any case, 'attach-bus' sounds very generic and I'm not sure this
> > is. I'd like to hear from others familiar with I2C on this aspect at
> > least.
>
> We're certainly open to other structures for flagging busses as
> MCTP-capable; we can use a more representative name for this phandle
> list, or switch to boolean properties on the subordinate nodes
> themselves (something like the gpio-controller boolean props, perhaps?
> though that seems harder to confine to a schema for mctp-i2c...)

Either option is fine with me. A per bus property scales better (you
can add buses without changing the root MCTP node). We already have
per bus properties such as 'smbus' and 'multi-master'.

Rob
