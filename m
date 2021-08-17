Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C03813EF457
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 23:06:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhHQVGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 17:06:43 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:38737 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhHQVGn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 17:06:43 -0400
Received: by mail-ot1-f46.google.com with SMTP id 108-20020a9d01750000b029050e5cc11ae3so90513otu.5
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 14:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=GbGpb/xwQQG9y0Vp3DhoUVy8rf/rYNtkbhJ0LVp5Aqc=;
        b=LSJ1i/6aHKSzzH8w/9L8ezUMj/rm/CHfEGSp1JZ2x9BeSqp8kSuxcasueLQDFljPdn
         AUl12BZTBwm935U8OUhqv/J6LZlEvVna3/rJ2ZGKB8Znn6g4+0AAc2UEOkVAGgP3+60S
         EtvtWaBFZ6RTVuV5uiI6g/C6tm3mon7buEe2y7vjRh+CtAHiUs58UsVNQXdfKOcQbl4Y
         rUc8Y1zP21F3n3Fz0ECI4BeDcJLJHGGJp29IIuCcxL1qKe3O1EnCS70iphIWXfvxV8iB
         IjHqYjr0g8PgwWC28RMUOvGxOKT+jIbMiszRqjle56jkW9LYxxxnWWgxxtVA0hm5slqF
         zeWg==
X-Gm-Message-State: AOAM531Gk5HtxRGwA14xAoV6ztwiCV94n846SQfJRJE7nYnGJInQbRoS
        cD6bCLl9NLSFLBVXScNrAksAODsIjg==
X-Google-Smtp-Source: ABdhPJzxQ+Yg8vnYfV5KjrjiyoHCMUIG5X5t/7zdRNUpcCrGG0stC/++ErO74x4+4lcMedgttVUT2w==
X-Received: by 2002:a9d:6f16:: with SMTP id n22mr3954453otq.29.1629234368010;
        Tue, 17 Aug 2021 14:06:08 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o7sm507283oih.34.2021.08.17.14.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 14:06:07 -0700 (PDT)
Received: (nullmailer pid 838714 invoked by uid 1000);
        Tue, 17 Aug 2021 21:06:06 -0000
Date:   Tue, 17 Aug 2021 16:06:06 -0500
From:   Rob Herring <robh@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
Message-ID: <YRwkvjAuEd+9lTt7@robh.at.kernel.org>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
 <YRae8tDReDS67sM4@robh.at.kernel.org>
 <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0400d77489ba5350aefe576b91afb52cff3ebb48.camel@codeconstruct.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 16, 2021 at 03:32:40PM +0800, Matt Johnston wrote:
> On Fri, 2021-08-13 at 11:33 -0500, Rob Herring wrote:
> > 
> > Adding 'generic' is not an improvement nor does it change anything. 
> 
> I may have misunderstood the feedback then:
> 
> > Again, a protocol is not a device. We went thru the same thing with 
> > HID-over-I2C.
> 
> Thanks for the pointer to HID-over-I2C, that helps to clarify things.
> I'm a still a little unclear on what you mean by "protocol" - is that a 
> DT-specific thing? If so, I can't see many references to what's required
> for a protocol definition - do you have any pointers I can read up on?

Protocol is the format of the I2C data to access the device. Or maybe 
it's the register interface definition. Another example is USB OHCI, 
EHCI, XHCI. Those all define a register standard interface, but leave 
out a whole bunch of properties of the h/w blocks. 

I assume MCTP is some sort of spec. Spec's are typically not complete 
in the sense of defining a whole device including power rails, 
reset/enable lines, interrupts, etc. IOW, MCTP is just a subset of all 
that.

> I don't expect for there to be much extra in the way of I2C controller
> quirks that we'll need, but I agree that we may need to accommodate
> those in future. It looks like the HID example gives us a bit
> of a precedent there - is that just through allowing further, more
> specific compatible values later? (plus their binding-specified properties)

There were a lot of discussions on HID and resistance to needing 
specific compatibles. Then later it turns out not all HID-over-I2C 
implementations are exactly the same and we need to know specific 
devices sometimes. That is what I don't want to repeat.

The problem with adding compatibles later is you have to change the DT 
to fix problems vs. just an OS update. Maybe that's fine, maybe not. 
Depends on the system.

> Essentially at the moment we just need to flag which busses will need
> to carry MCTP data, and this should work with any I2C controller. To do
> that, this new binding defines which I2C busses in the system will be
> accessible by MCTP and which local I2C client address will be used. If
> there's a neater way to represent those in the DT we're happy to rework
> the binding.
> 
> (MCTP I2C uses SMBus Block Write for messages in either direction. This
> requires us to include the mux topology in the DT data so the system can
> receive response messages. However all we need from the DT binding is to
> flag the nodes in the tree that will host endpoints - a driver
> implementation can work out the rest)
> 
> > There's still not any diagram to better understand what all this is.
> 
> I'll add one to 2/2, how's something like this:
>                                        .-------.
>                                        |eeprom |
> .----------.   .------.               /'-------'
> | adapter  |   | mux  --@0,i2c5------'
> | i2c1     |-.-|      --@1,i2c6--.--.
> |..........|  \'------'           \  \  .........
> | mctp-i2c |   \                   \  \ .mctpB  .
> | slave    |    \                   \  '.0x30   .
> | 0x50     |     \  .........        \  '.......'
> '----------'      \ .mctpA  .         \ .........
>                    '.0x1d   .          '.mctpC  .
>                     '.......'          '.0x31   .
>                                         '.......'
> 
> This shows 3 MCTP peripherals in the system, one toplevel and two
> behind a mux. This requires us to define two MCTP controllers: one
> on i2c1 - the root controller, and one in i2c6 - an individual
> downstream port of the mux.

Okay, looks pretty normal in terms of i2c bus muxing. That's all well 
defined already.

> i2c1: i2cbus1 {
>   compatible = "vendor,example-i2c-controller";
>   #address-cells = <1>;
>   #size-cells = <0>;
>   mctp@50 {
>     compatible = "mctp-i2c";

I guess 'mctp-i2c' alone here is fine given it's the I2C controller 
slave implementation which is just a protocol. It's the external devices 
where my concern is.

Though, don't you need a different compatible for it and external 
devices?

>     reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
>     attach-bus = <&i2c1 &i2c6>;

Why do you need to say you are attached to yourself?

And you can walk the bus to find other MCTP devices. 

>   };
> };
> 
> i2cmux0 {
>   compatible = "vendor,example-i2c-mux";
>   #address-cells = <1>;
>   #size-cells = <0>;
>   i2c-parent = <&i2c1>;
> 
>   i2c5: i2c@0 {
>     reg = <0>;
>     eeprom@33 {
>       compatible = "atmel,24c64";
>       reg = <0x33>;
>     };
>   };
> 
>   i2c6: i2c@1 {
>     reg = <1>;
>   };
> };
> 
> 
> Regarding I2C_OWN_SLAVE_ADDRESS validation, I can add a i2c-own-
> address.yaml schema (name pending) though can't see a way to perform a bit-
> set test in json schema validation?

You'll have to do a minimum/maximum range with the high bit set and 
addresses 0-7f.

Rob
