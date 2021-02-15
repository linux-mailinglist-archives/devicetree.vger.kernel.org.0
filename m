Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6F5431B5E4
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 09:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbhBOIbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 03:31:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbhBOIbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 03:31:10 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC9CC061756
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 00:30:30 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id m188so6312085yba.13
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 00:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IosKC9haWoEFEaZa0BZbxfuLVeZ+4qcWUxhFQ2haJCg=;
        b=tr6tzTp61UKCAo6zjUbgQjCWLVR9C3MkYtoPLEDgxQK21qGZhplxp/zzCQThUxX8p+
         Gx0bMuurqxbRZyRrvSGp1cP+MIEk8JVudbLZuv+BYXQXH88j27X+AZkgw8StQY3Z6Qlk
         mIMGAXMl9Bb2we03isnTNkWiO0W6DlvGr+kSYruqZ7TrJcPqpE0VckUYgQOOTk9brmt/
         9FQKLGTpYzAacgPq/VvjIWRS+i4qM5+EOh8vZHPLja69cmNxvaF5eflA5FjGL7kGhrXb
         ONNho7ShMEYHxu4yCY6My94qvl2lUHZ2l4ztBdxO/XqnnNbH39MPy1lqFQnbJJx3fvEo
         C+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IosKC9haWoEFEaZa0BZbxfuLVeZ+4qcWUxhFQ2haJCg=;
        b=AAlU1d7LGB+MiMEcxCjaKjfOVOuSQZmvnhrIaAoQZE61QKEwA+ArHO3fClr7bNI6AK
         eex/KAJ6AIRYvD86qsesWMV/b6E9jjiBR7V0Y6LsjXEdTw336ZQRansj2NcUGm8X9H0g
         B6iXpqTs8ksMYQCB1RvYXuKraExa9kkdPnpz4HqgRz3WVxfeVDDUFlpu2/RWN2b9JLte
         4kj6hBWywcmFPyf06WbnevWrA3NCGBquEDhr6RP7G/dLNM1OLAJsSGfny8b10OKCXyft
         e/cCpK7nHFsYqNQXd3WUdsJy8ogzXm6iQ949rJl4//0UOk7rY+VtCfAdX0JyVqCTO4rI
         spvg==
X-Gm-Message-State: AOAM5308rZAEmbItrBKXr/Ro1w85rHXTBkeW2S/sGOploWY9Dgkw0iFY
        rCcXVBoFP10dsjK5RNlu4XT4iE2DFG9VydVfYdZaHA==
X-Google-Smtp-Source: ABdhPJzKa3jhEnQQhhwY5N+nH8GasiMlAFPRDmalbwkm6hAFH+qDOWb86TO1KQ5bewNrePhGX/XW1FbFRlLYKdO4LsI=
X-Received: by 2002:a25:3345:: with SMTP id z66mr21333926ybz.466.1613377829136;
 Mon, 15 Feb 2021 00:30:29 -0800 (PST)
MIME-Version: 1.0
References: <20210121225712.1118239-1-saravanak@google.com>
 <20210121225712.1118239-3-saravanak@google.com> <20210213185422.GA195733@roeck-us.net>
 <CAGETcx_RpG45Fwhty1Uj34Mv01qkH5vFv0J6jVtJgTBFQinOBA@mail.gmail.com> <a76a73e4-f7ba-4893-14b8-01d21943241a@roeck-us.net>
In-Reply-To: <a76a73e4-f7ba-4893-14b8-01d21943241a@roeck-us.net>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 15 Feb 2021 00:29:53 -0800
Message-ID: <CAGETcx9mzYbujVW8ALrNvs1FabvuUpZpChxBb0Tp8q7w+TY4=A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] of: property: Add fw_devlink support for interrupts
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Marc Zyngier <maz@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Android Kernel Team <kernel-team@android.com>,
        Rob Herring <robh@kernel.org>,
        Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Feb 14, 2021 at 7:58 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 2/14/21 1:12 PM, Saravana Kannan wrote:
> [ ... ]
> >
> > Can you please give me the following details:
> > * The DTS file for the board (not the SoC).
>
> The devicetree file extracted from the running system is attached.
> Hope it helps.

Hi Guenter,

Thanks for the DTS file and logs. That helps a lot.

Looking at the attachment and this line from the earlier email:
[   14.084606][   T11] pci 0005:01:00.0: probe deferral - wait for
supplier interrupt-controller@0

It's clear the PCI node is waiting on:
        interrupt-controller@0 {
                #address-cells = <0x00>;
                device_type = "PowerPC-Interrupt-Source-Controller";
                compatible = "ibm,opal-xive-vc\0IBM,opal-xics";
                #interrupt-cells = <0x02>;
                reg = <0x00 0x00 0x00 0x00>;
                phandle = <0x804b>;
                interrupt-controller;
        };

If I grep for "ibm,opal-xive-vc", I see only one instance of it in the
code. And that eventually ends up getting called like this:
irq_find_matching_fwspec() -> xive_irq_domain_match() -> xive_native_match()

static bool xive_native_match(struct device_node *node)
{
        return of_device_is_compatible(node, "ibm,opal-xive-vc");
}

However, when the IRQ domain are first registered, in xive_init_host()
the "np" passed in is NOT the same node that xive_native_match() would
match.
static void __init xive_init_host(struct device_node *np)
{
        xive_irq_domain = irq_domain_add_nomap(np, XIVE_MAX_IRQ,
                                               &xive_irq_domain_ops, NULL);
        if (WARN_ON(xive_irq_domain == NULL))
                return;
        irq_set_default_host(xive_irq_domain);
}

Instead, the "np" here is:
        interrupt-controller@6030203180000 {
                ibm,xive-provision-page-size = <0x10000>;
                ibm,xive-eq-sizes = <0x0c 0x10 0x15 0x18>;
                single-escalation-support;
                ibm,xive-provision-chips = <0x00>;
                ibm,xive-#priorities = <0x08>;
                compatible = "ibm,opal-xive-pe\0ibm,opal-intc";
                reg = <0x60302 0x3180000 0x00 0x10000 0x60302
0x3190000 0x00 0x10000 0x60302 0x31a0000 0x00 0x10000 0x60302
0x31b0000 0x00 0x10000>;
                phandle = <0x8051>;
        };

There are many ways to fix this, but I first want to make sure this is
a valid way to register irqdomains before trying to fix it. I just
find it weird that the node that's registered is unrelated (not a
parent/child) of the node that matches.

Marc,

Is this a valid way to register irqdomains? Just registering
interrupt-controller@6030203180000 DT node where there are multiple
interrupt controllers?

Thanks,
Saravana
