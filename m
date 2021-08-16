Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFDDA3ECF6D
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 09:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234023AbhHPHdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 03:33:19 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:41930 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233725AbhHPHdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 03:33:19 -0400
Received: from [192.168.12.102] (unknown [159.196.94.94])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 6C76B20134;
        Mon, 16 Aug 2021 15:32:41 +0800 (AWST)
Message-ID: <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Date:   Mon, 16 Aug 2021 15:32:40 +0800
In-Reply-To: <YRae8tDReDS67sM4@robh.at.kernel.org>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
         <YRae8tDReDS67sM4@robh.at.kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2021-08-13 at 11:33 -0500, Rob Herring wrote:
> 
> Adding 'generic' is not an improvement nor does it change anything. 

I may have misunderstood the feedback then:

> Again, a protocol is not a device. We went thru the same thing with 
> HID-over-I2C.

Thanks for the pointer to HID-over-I2C, that helps to clarify things.
I'm a still a little unclear on what you mean by "protocol" - is that a 
DT-specific thing? If so, I can't see many references to what's required
for a protocol definition - do you have any pointers I can read up on?

I don't expect for there to be much extra in the way of I2C controller
quirks that we'll need, but I agree that we may need to accommodate
those in future. It looks like the HID example gives us a bit
of a precedent there - is that just through allowing further, more
specific compatible values later? (plus their binding-specified properties)

Essentially at the moment we just need to flag which busses will need
to carry MCTP data, and this should work with any I2C controller. To do
that, this new binding defines which I2C busses in the system will be
accessible by MCTP and which local I2C client address will be used. If
there's a neater way to represent those in the DT we're happy to rework
the binding.

(MCTP I2C uses SMBus Block Write for messages in either direction. This
requires us to include the mux topology in the DT data so the system can
receive response messages. However all we need from the DT binding is to
flag the nodes in the tree that will host endpoints - a driver
implementation can work out the rest)

> There's still not any diagram to better understand what all this is.

I'll add one to 2/2, how's something like this:
                                       .-------.
                                       |eeprom |
.----------.   .------.               /'-------'
| adapter  |   | mux  --@0,i2c5------'
| i2c1     |-.-|      --@1,i2c6--.--.
|..........|  \'------'           \  \  .........
| mctp-i2c |   \                   \  \ .mctpB  .
| slave    |    \                   \  '.0x30   .
| 0x50     |     \  .........        \  '.......'
'----------'      \ .mctpA  .         \ .........
                   '.0x1d   .          '.mctpC  .
                    '.......'          '.0x31   .
                                        '.......'

This shows 3 MCTP peripherals in the system, one toplevel and two
behind a mux. This requires us to define two MCTP controllers: one
on i2c1 - the root controller, and one in i2c6 - an individual
downstream port of the mux.

i2c1: i2cbus1 {
  compatible = "vendor,example-i2c-controller";
  #address-cells = <1>;
  #size-cells = <0>;
  mctp@50 {
    compatible = "mctp-i2c";
    reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
    attach-bus = <&i2c1 &i2c6>;
  };
};

i2cmux0 {
  compatible = "vendor,example-i2c-mux";
  #address-cells = <1>;
  #size-cells = <0>;
  i2c-parent = <&i2c1>;

  i2c5: i2c@0 {
    reg = <0>;
    eeprom@33 {
      compatible = "atmel,24c64";
      reg = <0x33>;
    };
  };

  i2c6: i2c@1 {
    reg = <1>;
  };
};


Regarding I2C_OWN_SLAVE_ADDRESS validation, I can add a i2c-own-
address.yaml schema (name pending) though can't see a way to perform a bit-
set test in json schema validation?

Thanks,
Matt


