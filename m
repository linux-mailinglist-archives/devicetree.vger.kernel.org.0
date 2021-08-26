Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25C7F3F8074
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 04:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237533AbhHZC2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 22:28:10 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:44924 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236800AbhHZC2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 22:28:10 -0400
Received: from [192.168.12.102] (unknown [159.196.94.94])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id BD25B20134;
        Thu, 26 Aug 2021 10:27:21 +0800 (AWST)
Message-ID: <e1e761e10df0beac3786edef1aa8f2e84ccad8fd.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Date:   Thu, 26 Aug 2021 10:27:21 +0800
In-Reply-To: <CAL_Jsq+5ujcLLqDezsnzkVANkM9GifxA5BUccMVwZOfBUutACw@mail.gmail.com>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
         <YRae8tDReDS67sM4@robh.at.kernel.org>
         <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
         <YRwkvjAuEd+9lTt7@robh.at.kernel.org>
         <6ed12f1a09fb1f3e6ebe05992a9232bc7c34213c.camel@codeconstruct.com.au>
         <CAL_Jsq+EMV=bA__+sHnC-WSoZf_OPxqL+bCGRBjdo12RL=aw9A@mail.gmail.com>
         <ae72879d25da3e56e3a1eefe101aad7cbe47515e.camel@codeconstruct.com.au>
         <CAL_Jsq+5ujcLLqDezsnzkVANkM9GifxA5BUccMVwZOfBUutACw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-08-23 at 11:16 -0500, Rob Herring wrote:
> On Mon, Aug 23, 2021 at 2:52 AM Jeremy Kerr <jk@codeconstruct.com.au>
> wrote:

> The issue here tends to be we design things based on not having nodes
> in DT and then eventually evolve to the point where we should have had
> a separate node. Connectors or per slot PCI properties are some
> examples. Just something to keep in mind.

When these are needed we can define a DT binding for endpoint devices, as a
I2C client node. I've given the example 'mctp-device' below as a possible
future binding.

> > We're certainly open to other structures for flagging busses as
> > MCTP-capable; we can use a more representative name for this phandle
> > list, or switch to boolean properties on the subordinate nodes
> > themselves (something like the gpio-controller boolean props, perhaps?
> > though that seems harder to confine to a schema for mctp-i2c...)
> 
> Either option is fine with me. A per bus property scales better (you
> can add buses without changing the root MCTP node). We already have
> per bus properties such as 'smbus' and 'multi-master'.

How does this look, adding a property to the generic I2C bus? We'll define
a 'mctp-controller' property that can be set on any I2C bus to flag it as
having MCTP endpoints. A 'mctp-i2c-controller' binding client node is
placed on the root bus to define the local I2C address, that needs to be
present if any child mux busses have the mctp-controller property. So
busses i2c1 and i2c6 will handle MCTP devices. We could omit mctp-
controller from i2c1, in that case only i2c6 would have MCTP devices,
though we still need the 'mctp-i2c-controller' at the root.

i2c1: i2cbus1 {
  compatible = "vendor,example-i2c-controller";
  #address-cells = <1>;
  #size-cells = <0>;
  mctp-controller;

  mctp@50 {
    compatible = "mctp-i2c-controller";
    reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
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
    mctp-controller;

    // A endpoint device can optionally be described in DT.
    // (as an example, not defining it in this patch series)
    nvme@0x20 {
      compatible = "mctp-device";
      reg = <0x20>;
      // only accepts a fixed MCTP address, not using MCTP control protocol
      mctp-fixed-address = 180;
    };
  };
};


Cheers,
Matt


