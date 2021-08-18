Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D15B43EF912
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 06:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbhHREUP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 00:20:15 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:42444 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbhHREUP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 00:20:15 -0400
Received: from [192.168.12.102] (unknown [159.196.94.94])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5120320018;
        Wed, 18 Aug 2021 12:19:35 +0800 (AWST)
Message-ID: <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Date:   Wed, 18 Aug 2021 12:19:34 +0800
In-Reply-To: <YRwkvjAuEd+9lTt7@robh.at.kernel.org>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
         <YRae8tDReDS67sM4@robh.at.kernel.org>
         <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
         <YRwkvjAuEd+9lTt7@robh.at.kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2021-08-17 at 16:06 -0500, Rob Herring wrote:
On Mon, Aug 16, 2021 at 03:32:40PM +0800, Matt Johnston wrote:
> >                                        .-------.
> >                                        |eeprom |
> > .----------.   .------.               /'-------'
> > > adapter  |   | mux  --@0,i2c5------'
> > > i2c1     |-.-|      --@1,i2c6--.--.
> > > ..........|  \'------'           \  \  .........
> > > mctp-i2c |   \                   \  \ .mctpB  .
> > > slave    |    \                   \  '.0x30   .
> > > 0x50     |     \  .........        \  '.......'
> > '----------'      \ .mctpA  .         \ .........
> >                    '.0x1d   .          '.mctpC  .
> >                     '.......'          '.0x31   .
> >                                         '.......'
> > 
> 
> I guess 'mctp-i2c' alone here is fine given it's the I2C controller 
> slave implementation which is just a protocol. It's the external devices 
> where my concern is.
> 
> Though, don't you need a different compatible for it and external 
> devices?

We are only defining a binding for the system's own MCTP "controller"
here, not the external devices on the other side of the I2C link. Those are
probed outside of DT, for example hotplug NVMe disks can expose MCTP-over-
I2C.

This ends up describing something like a network interface, which
happens to use I2C as a transport in this case. (There are other
transports like MCTP-over-serial, but those don't require DT topology
data). For other network-type DT bindings (say, ethernet@), we don't
describe remote network endpoints either, so we're proposing the same
pattern for MCTP.

> >     reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> >     attach-bus = <&i2c1 &i2c6>;
> 
> Why do you need to say you are attached to yourself?

This indicates that the top-level MCTP controller needs to talk to MCTP
endpoints, eg mctpA on the directly attached bus i2c1. In some topologies
there will be no directly-attached endpoints, in which case we would omit
i2c1 from the list. We need to specify the attach-bus property since we
don't have a list of external device endpoints to walk.

[In the case of not directly attached, we still need to plant the mctp-i2c@
node at the root controller level, as the claimed client address (in reg)
is global across the entire bus. The attach-bus list gives us the set of
interfaces that are necessary for the OS to control]


> > Regarding I2C_OWN_SLAVE_ADDRESS validation 
> You'll have to do a minimum/maximum range with the high bit set and 
> addresses 0-7f.

OK, that will work fine for our binding. The general I2C slave client case
would also have to allow for I2C_TEN_BIT_ADDRESS (1<<31), but MCTP-over-I2C
only accepts 7 bit.

Thanks,
Matt

