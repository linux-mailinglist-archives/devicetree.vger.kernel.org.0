Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 530003F4638
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 09:57:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235100AbhHWH6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 03:58:22 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:44048 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235262AbhHWH6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 03:58:21 -0400
X-Greylist: delayed 338 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Aug 2021 03:58:21 EDT
Received: from [172.16.65.181] (unknown [49.255.141.98])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 585FC20018;
        Mon, 23 Aug 2021 15:51:59 +0800 (AWST)
Message-ID: <ae72879d25da3e56e3a1eefe101aad7cbe47515e.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>,
        Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>
Date:   Mon, 23 Aug 2021 15:51:58 +0800
In-Reply-To: <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
         <YRae8tDReDS67sM4@robh.at.kernel.org>
         <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
         <YRwkvjAuEd+9lTt7@robh.at.kernel.org>
         <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
         <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> > This ends up describing something like a network interface, which
> > happens to use I2C as a transport in this case. (There are other
> > transports like MCTP-over-serial, but those don't require DT
> > topology
> > data). For other network-type DT bindings (say, ethernet@), we
> > don't
> > describe remote network endpoints either, so we're proposing the
> > same
> > pattern for MCTP.
> 
> When a switch becomes integrated in, we do.

OK, we'll allow for cases like that, where we do need a representation
of a "remote" endpoint. However, we don't *currently* have a scenario
where that is necessary.

> > > >     reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> > > >     attach-bus = <&i2c1 &i2c6>;
> > > 
> > > Why do you need to say you are attached to yourself?
> > 
> > This indicates that the top-level MCTP controller needs to talk to
> > MCTP
> > endpoints, eg mctpA on the directly attached bus i2c1. In some
> > topologies
> > there will be no directly-attached endpoints, in which case we
> > would omit
> > i2c1 from the list. We need to specify the attach-bus property
> > since we
> > don't have a list of external device endpoints to walk.
> 
> Okay, so it's a 'what I2C buses should be scanned for MCTP devices'.

Not quite "scanned", more "marked as MCTP-capable". The indication that
an i2c bus is a MCTP controller doesn't initiate any scanning, but
rather provides a facility for software further up the stack to perform
any scanning / monitoring for hotplug devices / setting up fixed remote
endpoints - whatever is suitable for the system.

> Why can't that just be all the buses under i2c1 in this example?
> Limiting it seems like an optimization only.

It's not so much an optimisation, rather a way to avoid overly complex
network topologies. We may have on the order of 100 i2c busses
(including both root busses and mux subordinates) on some platforms.
Since physical addressing requires knowing both the SMBus address plus
the MUX state, any software/user that deals with physical addreses
will need to know about those ~100 busses.

If I can use the Linux implementation as an example: flagging an i2c
controller as MCTP-capable will create a MCTP netdev, which allows
communicating with specific physaddrs on that segment of the bus. I'd
like to avoid creating ~100 netdevs, all visible to userspace, when only
a small subset of those can carry actual MCTP data.

If we can limit the possible MCTP controllers to just the i2c busses
that host MCTP hardware downstream, that makes things much easier for
any OS implementation to deal with. While we can do the i2c/MCTP mapping
at a higher level (ie. userspace), representing this in the DT does
keep the local-hardware-specific data all in the one place.

> In any case, 'attach-bus' sounds very generic and I'm not sure this
> is. I'd like to hear from others familiar with I2C on this aspect at
> least.

We're certainly open to other structures for flagging busses as
MCTP-capable; we can use a more representative name for this phandle
list, or switch to boolean properties on the subordinate nodes
themselves (something like the gpio-controller boolean props, perhaps?
though that seems harder to confine to a schema for mctp-i2c...)

Cheers,


Jeremy

