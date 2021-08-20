Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E68333F34A5
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 21:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbhHTT0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 15:26:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:41794 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229923AbhHTT0l (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 15:26:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E7F460F4A
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 19:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629487563;
        bh=HCjjk24p5sQxyUTi/B/s9W2DqwHU5mJ8/0/kxaYoz5w=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=bZTdzxYOHRxrSM4ciNLJBqnEdwYF7Js+ZU6tY1R8s+JI9Na/vV8doszkOR/5q1xxv
         FUykkc0PA2IhZKoy/a/PNMlJ2E3rGdIxtsr2h9FQkg+mwpwp/rsSNiyWh1VmykkxWi
         Jntq7wfKyV2wk9HUPhlOpzKjmDwBM/MDfiWmyBPUgdBqzDiXDytXzpzzT8c1IS9ete
         jmrxo0eiezjKSidANxYlwmzqBi46SGOAMreQbxKNwD7dXNKi1ivznseURW4N9+ejlS
         P8/mdN6RvZB9DiOSW0w70bumvNqE4on9bzHMMPmXkbA6XeU7aD9QmuEnpZiaSBZoNN
         aO1MH0h/7jIwA==
Received: by mail-ej1-f50.google.com with SMTP id gr13so22238954ejb.6
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 12:26:03 -0700 (PDT)
X-Gm-Message-State: AOAM533X+XTbDANZgJDCBhu5M10z4nziqri8eFZuhlbUTv5SFAykAdHQ
        gsOdldu0FDPi/HCutS374hgXpvsEnz3QKDucTg==
X-Google-Smtp-Source: ABdhPJy/UiUMlbSszlvFz6b/g6XRumctRq5ts8DXKwK2qO+K2bnzEJHKOzohnP7aE89GC6z5VlDSf43UQKOQSr4b/qY=
X-Received: by 2002:a17:906:eb02:: with SMTP id mb2mr2039415ejb.360.1629487561779;
 Fri, 20 Aug 2021 12:26:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
 <YRae8tDReDS67sM4@robh.at.kernel.org> <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
 <YRwkvjAuEd+9lTt7@robh.at.kernel.org> <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
In-Reply-To: <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 20 Aug 2021 14:25:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com>
Message-ID: <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 17, 2021 at 11:19 PM Matt Johnston
<matt@codeconstruct.com.au> wrote:
>
> On Tue, 2021-08-17 at 16:06 -0500, Rob Herring wrote:
> On Mon, Aug 16, 2021 at 03:32:40PM +0800, Matt Johnston wrote:
> > >                                        .-------.
> > >                                        |eeprom |
> > > .----------.   .------.               /'-------'
> > > > adapter  |   | mux  --@0,i2c5------'
> > > > i2c1     |-.-|      --@1,i2c6--.--.
> > > > ..........|  \'------'           \  \  .........
> > > > mctp-i2c |   \                   \  \ .mctpB  .
> > > > slave    |    \                   \  '.0x30   .
> > > > 0x50     |     \  .........        \  '.......'
> > > '----------'      \ .mctpA  .         \ .........
> > >                    '.0x1d   .          '.mctpC  .
> > >                     '.......'          '.0x31   .
> > >                                         '.......'
> > >
> >
> > I guess 'mctp-i2c' alone here is fine given it's the I2C controller
> > slave implementation which is just a protocol. It's the external devices
> > where my concern is.
> >
> > Though, don't you need a different compatible for it and external
> > devices?
>
> We are only defining a binding for the system's own MCTP "controller"
> here, not the external devices on the other side of the I2C link. Those are
> probed outside of DT, for example hotplug NVMe disks can expose MCTP-over-
> I2C.
>
> This ends up describing something like a network interface, which
> happens to use I2C as a transport in this case. (There are other
> transports like MCTP-over-serial, but those don't require DT topology
> data). For other network-type DT bindings (say, ethernet@), we don't
> describe remote network endpoints either, so we're proposing the same
> pattern for MCTP.

When a switch becomes integrated in, we do.

> > >     reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> > >     attach-bus = <&i2c1 &i2c6>;
> >
> > Why do you need to say you are attached to yourself?
>
> This indicates that the top-level MCTP controller needs to talk to MCTP
> endpoints, eg mctpA on the directly attached bus i2c1. In some topologies
> there will be no directly-attached endpoints, in which case we would omit
> i2c1 from the list. We need to specify the attach-bus property since we
> don't have a list of external device endpoints to walk.

Okay, so it's a 'what I2C buses should be scanned for MCTP devices'.
Why can't that just be all the buses under i2c1 in this example?
Limiting it seems like an optimization only. You don't know the
endpoint addresses, so you are scanning the whole bus, right?

In any case, 'attach-bus' sounds very generic and I'm not sure this
is. I'd like to hear from others familiar with I2C on this aspect at
least.

> [In the case of not directly attached, we still need to plant the mctp-i2c@
> node at the root controller level, as the claimed client address (in reg)
> is global across the entire bus. The attach-bus list gives us the set of
> interfaces that are necessary for the OS to control]
>
> > > Regarding I2C_OWN_SLAVE_ADDRESS validation
> > You'll have to do a minimum/maximum range with the high bit set and
> > addresses 0-7f.
>
> OK, that will work fine for our binding. The general I2C slave client case
> would also have to allow for I2C_TEN_BIT_ADDRESS (1<<31), but MCTP-over-I2C
> only accepts 7 bit.

TBC, requiring I2C_OWN_SLAVE_ADDRESS being set is specific to
MCTP-over-I2C and also serves to document the binding is only for the
host side.

Rob
