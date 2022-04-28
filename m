Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C393951292D
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 03:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbiD1CB5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 22:01:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232736AbiD1CB4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 22:01:56 -0400
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F34AF5DA75
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 18:58:43 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id 88-20020a9d0ee1000000b005d0ae4e126fso2277868otj.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 18:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3jPLPurQPhCrLFQfwf42rRfiVb3R5ufoo5XC0Z/BUXM=;
        b=bSwVOcCZFMdaYu1z1M7zI211hnntW3KuRNExDI09yH6shJeJ6y+kA4jw2KLL8uwRub
         9xFuIHqgFh2PjiXH/UzPpZFg4jMlpDB8OhWW1ITOdveyWkIij4Vhv2eM4y5nI5qfdOI4
         lU0SdzbadGt4weYr3zbew5Fx6A8c0EkNXwJC+lOEBx/NnaT5AYKfGddCVpiZ0raILI4r
         XfNnpCn0AVjStbY4O3lihYZAVnftqaDv/uPG1TdQF9CEfDjPqvLNzYR0+ajU/SGyoJ4g
         SUMVFqGSp5isf/QUoJQ1NL1fJ+nTdErAZVisRTN0Oz6yZtoyfc1tSCV6521Yi/4J1hY+
         0cEg==
X-Gm-Message-State: AOAM531mOtvnA0x2+49iuzgp+cvqniMM+MdO7GOjybMPZ66LCevup89F
        D/SXioHECnAYEyZ4jeM9+g==
X-Google-Smtp-Source: ABdhPJwybOhjhM2pGedVgrkbOJAZMpWifNBrMVZr4xPj6XdmiFBTvE0NMug79frI+CqFbgR8RnB3TA==
X-Received: by 2002:a9d:19a3:0:b0:605:9af6:225c with SMTP id k32-20020a9d19a3000000b006059af6225cmr8520812otk.195.1651111123199;
        Wed, 27 Apr 2022 18:58:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bf26-20020a056808191a00b00324f4d15aa1sm6203904oib.12.2022.04.27.18.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 18:58:42 -0700 (PDT)
Received: (nullmailer pid 1066977 invoked by uid 1000);
        Thu, 28 Apr 2022 01:58:42 -0000
Date:   Wed, 27 Apr 2022 20:58:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Dan K <kaehndan@gmail.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        tiwai@suse.com
Subject: Re: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
Message-ID: <Ymn00nbRkkfoUh/Y@robh.at.kernel.org>
References: <20220425191602.770932-1-kaehndan@gmail.com>
 <20220425191602.770932-2-kaehndan@gmail.com>
 <YmcdvcyeJJBB1pqW@robh.at.kernel.org>
 <CAP+ZCCfT8Mm1OECsrKxzq5vtjyaTiF=ML9LJYkHXO0A6Wao32w@mail.gmail.com>
 <YmiSvXCE5Yovvjhd@robh.at.kernel.org>
 <CAP+ZCCc0YBSMU1XXoTVxNRaQ6V76D2=zNJzoduLnG2pn16hHjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP+ZCCc0YBSMU1XXoTVxNRaQ6V76D2=zNJzoduLnG2pn16hHjQ@mail.gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 04:29:06AM -0500, Dan K wrote:
> Thanks for taking the time for a thorough reply!
> 
> On Tue, Apr 26, 2022 at 7:47 PM Rob Herring <robh@kernel.org> wrote:
> >
> > 'Generic' is really just a red flag.
> >
> > We've had generic or simple bindings before. The result tends to be a
> > never ending stream of new properties to deal with every new variation
> > in devices. These can be quirks for device behavior, timing for power
> > control, etc.
> >
> 
> Makes sense, I see why that's a concern. I think it's probably unlikely
> that would happen here (for reasons described below).
> 
> >
> > Okay, maybe it is appropriate. The key part is 'most use cases'. What
> > about ones that don't fit into 'most'? It's possible to do both (generic
> > binding and device specific bindings), but we need to define when
> > generic bindings are appropriate or not.
> >
> 
> Sorry about the vague language.
> 
> In many/most cases, a raw/serial MIDI device is an independent external
> device, and its connection to another MIDI device would be transient and
> through an external cable. Usually, this is a device that a user plugs in
> at runtime, such as a MIDI keyboard (/piano) that simply sends and receives
> bytes using the MIDI protocol, and its identity isn't known at the time of
> devicetree compilation (and doesn't need to be known).
> 
> This binding is only describing that a serial port is dedicated to MIDI,
> and the only hardware it describes is the circuitry and electrical
> connections needed to connect to a MIDI device (likely through a jack).
> This covers almost all of the use cases for (serial) MIDI (MIDI is now also
> often done over USB / network, in case you aren't familiar). As you can
> probably imagine from its use of DT in general - this is targeted toward
> embedded devices, allowing an off-the-shelf SOC in an audio product to
> interface with an external raw MIDI device.
> 
> The only exceptions to 'most use cases' I'm aware of are with some
> antiquated MIDI interface devices that connect to an RS232 port and have
> multiple output ports (selectable via a special MIDI message), enabling
> someone to connect multiple MIDI devices to a PC simultaneously. I only
> discovered that these exist because of the existing serial MIDI driver in
> the kernel, and some research reveals that few devices like these (with
> multiplexed I/O) exist. This is also probably well outside of the use case
> for an embedded device.
> 
> 
> > Do devices ever need power controls or other sideband interfaces?
> > Regulators, resets, clocks? If so, you need to describe the specific
> > device.
> >
> > Is a jack/connector in any way standard and have signals other than UART
> > (or whatever is the other side of the MIDI decoupling circuit)? We have
> > bindings for standard connectors.
> >
> 
> The standard connector is a DIN5 connector, but only two signal pins are
> used, for RX and TX. No sideband interfaces are used - the MIDI device
> connected is typically a completely independent system. Neither device for
> MIDI will power the other (except for USB MIDI). Really the only parameter
> possible for just the serial MIDI interface itself is the baudrate - which
> is fixed to 31.25k in the standard, but a device could feasibly be
> connected to an onboard / non-transient custom MIDI controller with a
> different baudrate (my use case contains this, as well as the earlier use
> case for an external MIDI device).
> 
> 
> > I don't really know anything about what this h/w looks like, so any
> > pointers or examples would help.
> >
> 
> I hope the above helps to clarify.
> 
> > > I see how this is a bit of an oddball, since it's not specifically
> > > describing a particular hardware
> > > device attached to a UART (like some of the bluetooth modules are),
> >
> > To follow that comparison, all/most BT modules use a standard/generic
> > protocol over the serial port. But we don't have compatibles aligned to
> > the protocol because the devices are more than just a serial protocol.
> > They have GPIOs, regulators, clocks, etc. Furthermore, the serial
> > protocols themselves can have extensions and/or quirks.
> >
> 
> I think I would contend that for MIDI, the 'device' this binding describes
> more or less is just the serial protocol (and hardware to support the
> transmission). Any specific handling of special functions of a device would
> be done in userspace.
> 
> >
> > At some point devices become simple enough to model generically.
> >
> > > The reason that the corresponding driver written has the name
> > > 'generic' is for an entirely
> > > different reason. A "serial MIDI" driver already exists in the kernel,
> > > however, it  interfaces only with
> > > u16550-compatible UARTs. This driver uses the serial bus, making it
> > > work with 'generic' serial devices.
> >
> > Bindings are separate from the kernel (though they live in the same
> > repository for convenience). A 'generic' binding often appears with a
> > 'generic' driver. You can have specific bindings with a generic driver.
> > The difference with doing that is the OS can evolve without changing the
> > binding (an ABI). Maybe initially you use a generic driver until there's
> > extra/custom features of the device you want to support with a custom
> > driver.
> >
> 
> I've seen that sort of 'specific binding - > generic driver' model before -
> but I think you'll agree that since the nature of the external device is
> typically transient, the generic binding -> generic driver is probably what
> would make sense here.

Thanks for the all the details and I do agree. Can you add some 
description of the h/w from above into the binding description.

Rob
