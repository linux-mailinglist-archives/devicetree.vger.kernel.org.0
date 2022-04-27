Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC27510D6B
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 02:50:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241389AbiD0AvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 20:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232169AbiD0AvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 20:51:08 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B94F842EDC
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 17:47:59 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id y63so452559oia.7
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 17:47:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7jADvKtwI5abxB+PBQP/9nWBiqZb6jlr8eUfg5UByAo=;
        b=6U6twhdHJ3yfdgTg/QqZNgFGZKeYF7/gt9iePH7l4pdejl/AbGJPG3Cxoc+Wy2GInh
         GeFYQDXE+sD8HVq3H+bGB3ylmjr3JItN1DIctL5R6l6O/PDUrPpoOz9ht1hANkyOEQEL
         Hr/8uILPbpyxT0rlXTd/9LC/Piz+swTqSjg6QbRMejSabRmJ/j6L64JFdX2pUPIhXgc+
         Pm6zIGocW7F9QaLVutRY/BdvbgVGHepHl4Pr4w2PzV4jG6DzUW6kAwHwhu+BKJBMvhvm
         oD6tuAIHO2GxOj6fsC4FS0hmm1SnBH+rm5pijq9SJYbCwAzGPAoEDftNlnZWdsirNiMi
         KBLg==
X-Gm-Message-State: AOAM531GjxNkwagZNEoKiJEkL0mWcy3AfkzeZsq92GnbxVLg4PnFilN7
        cGW3UJxdwyYUEDWtie6GJokfMohrdw==
X-Google-Smtp-Source: ABdhPJz1tp6QAKevUv5cVDmCNzFf63FrVLvVvWCrybhibB6eccqsDL8me03IQhAgh1MhSDCxNboGPA==
X-Received: by 2002:a05:6808:1304:b0:325:388:2214 with SMTP id y4-20020a056808130400b0032503882214mr8610352oiv.59.1651020479019;
        Tue, 26 Apr 2022 17:47:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x64-20020acae043000000b003222bb3dfb0sm5467281oig.36.2022.04.26.17.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 17:47:58 -0700 (PDT)
Received: (nullmailer pid 2835963 invoked by uid 1000);
        Wed, 27 Apr 2022 00:47:57 -0000
Date:   Tue, 26 Apr 2022 19:47:57 -0500
From:   Rob Herring <robh@kernel.org>
To:     Dan K <kaehndan@gmail.com>
Cc:     tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
Message-ID: <YmiSvXCE5Yovvjhd@robh.at.kernel.org>
References: <20220425191602.770932-1-kaehndan@gmail.com>
 <20220425191602.770932-2-kaehndan@gmail.com>
 <YmcdvcyeJJBB1pqW@robh.at.kernel.org>
 <CAP+ZCCfT8Mm1OECsrKxzq5vtjyaTiF=ML9LJYkHXO0A6Wao32w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP+ZCCfT8Mm1OECsrKxzq5vtjyaTiF=ML9LJYkHXO0A6Wao32w@mail.gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 25, 2022 at 07:49:49PM -0500, Dan K wrote:
> On Mon, Apr 25, 2022 at 5:16 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Apr 25, 2022 at 02:16:02PM -0500, Daniel Kaehn wrote:
> > > Adds dt-binding for snd-serial-generic serial MIDI driver
> >
> > Bindings are for h/w and there's no such thing as generic h/w. There are
> > some exceptions but you'll have to justify why this is special.
> >
> 
> Thanks for taking the time to look at this!
> 
> Not entirely sure if you mean that I'll need to justify the existence
> / need for this binding,
> or the use of the term 'generic' -- just in case, I'll make sure to
> respond to both. Note that
> I'm justifying my reasoning for submitting the binding - but I'm
> uncertain myself if my reasoning
> is valid, as someone new to kernel development.

'Generic' is really just a red flag.

We've had generic or simple bindings before. The result tends to be a 
never ending stream of new properties to deal with every new variation 
in devices. These can be quirks for device behavior, timing for power 
control, etc.

> The intent of this binding is to signify that a serial port (namely a
> UART) is connected
> in hardware to a MIDI decoupling circuit, which then connects to some
> (any) sort of MIDI device,
> either directly to an on-board device, or via a jack/connector. In a
> sense, the MIDI device that this
> connects to is 'generic', as the identity of the device does not need
> to be known to interface with it
> over MIDI for most use cases.

Okay, maybe it is appropriate. The key part is 'most use cases'. What 
about ones that don't fit into 'most'? It's possible to do both (generic 
binding and device specific bindings), but we need to define when 
generic bindings are appropriate or not.

Do devices ever need power controls or other sideband interfaces? 
Regulators, resets, clocks? If so, you need to describe the specific 
device.

Is a jack/connector in any way standard and have signals other than UART 
(or whatever is the other side of the MIDI decoupling circuit)? We have 
bindings for standard connectors.

I don't really know anything about what this h/w looks like, so any 
pointers or examples would help. 

> I see how this is a bit of an oddball, since it's not specifically
> describing a particular hardware
> device attached to a UART (like some of the bluetooth modules are),

To follow that comparison, all/most BT modules use a standard/generic 
protocol over the serial port. But we don't have compatibles aligned to 
the protocol because the devices are more than just a serial protocol. 
They have GPIOs, regulators, clocks, etc. Furthermore, the serial 
protocols themselves can have extensions and/or quirks.


> but thought this sort of
> binding might be permissible because of things like the
> gpio-matrix-keypad binding, which doesn't
> describe specific switches, just how thoise switches are wired, and
> what GPIO they use, which is all
> that is needed to interface with them. Some MIDI devices implement
> extra low-level features like device
> multiplexing, but these aren't (to my knowledge) common, and are
> beyond what this supports.

At some point devices become simple enough to model generically.

> The reason that the corresponding driver written has the name
> 'generic' is for an entirely
> different reason. A "serial MIDI" driver already exists in the kernel,
> however, it  interfaces only with
> u16550-compatible UARTs. This driver uses the serial bus, making it
> work with 'generic' serial devices.

Bindings are separate from the kernel (though they live in the same 
repository for convenience). A 'generic' binding often appears with a 
'generic' driver. You can have specific bindings with a generic driver. 
The difference with doing that is the OS can evolve without changing the 
binding (an ABI). Maybe initially you use a generic driver until there's 
extra/custom features of the device you want to support with a custom 
driver.

Rob
