Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 031F2304079
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 15:37:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405839AbhAZOfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 09:35:38 -0500
Received: from mail.kernel.org ([198.145.29.99]:54914 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2404955AbhAZOZ4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Jan 2021 09:25:56 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3AC6822DFB
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 14:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611671113;
        bh=ZZKw/65up6ryXG0wheoOUiwtezTsXcMeQole/eoZD8M=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=f7QoXAkgX0GbxVeYDu0i9E6vYQlnszGJLaI42O3nVgxAWZB6IlqZ2YjJBd5hVi1q1
         GB/EtHjrGnYEWkJ1sBdpv6x2bl8vgCO0Rx8ykzvq20c0BYkutDwEf/1fUV6BuaJtis
         CytJ7xt70nQyCOKZETc/N+PRMTyfDXmfWCDNg/VFCIbzWTlTXRXCQWoyEzGpkcAVsK
         o/063i4SgbZT5eAacLIy0tnkKAS0L9HdVR9yABZ+J/RLasZJNHtiuq2JCBvIu2uD7L
         +CL2EU0mzZD+QWlvuah8CUtl6Y2d+A7g+rnAtzZIQ2fzUr9jdbNjHn9ErwjMSM/oZl
         x5dzT6NOrAuzw==
Received: by mail-ej1-f49.google.com with SMTP id g12so23203454ejf.8
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:25:13 -0800 (PST)
X-Gm-Message-State: AOAM5301B+KW+1NCNSHbUbCh3RsSPA3XzaKqIV9DfLcrLmqU3mRdOPjK
        IU9r1PI3V2vnlXSWCnejK4Vgj6F3ac5I3ONUSA==
X-Google-Smtp-Source: ABdhPJyHmvuflGSdNAFwH+y4Y7SP5zHcxtesf5sJNSa2+c7E//CNjWxtLNDKqKFs5VTKHGniTFlrWiFr4Rjct4RitcY=
X-Received: by 2002:a17:906:ce49:: with SMTP id se9mr3640978ejb.341.1611671111840;
 Tue, 26 Jan 2021 06:25:11 -0800 (PST)
MIME-Version: 1.0
References: <20210126023905.1631161-1-robh@kernel.org> <329a3043-a85f-8177-c3ad-a9c07604a266@alliedtelesis.co.nz>
In-Reply-To: <329a3043-a85f-8177-c3ad-a9c07604a266@alliedtelesis.co.nz>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 26 Jan 2021 08:25:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLHrd40WqqMEZU0NqgVNLS2rw1u_SgR26dt3nw3mCsr3w@mail.gmail.com>
Message-ID: <CAL_JsqLHrd40WqqMEZU0NqgVNLS2rw1u_SgR26dt3nw3mCsr3w@mail.gmail.com>
Subject: Re: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root nodes
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc:     Russell King <linux@armlinux.org.uk>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Qi Zheng <arch0.zheng@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 8:50 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> Hi Rob,
>
> On 26/01/21 3:39 pm, Rob Herring wrote:
> > Commit 7536c7e03e74 ("of/fdt: Remove redundant kbasename function
> > call") exposed a bug creating DT nodes in the ATAGS to DT fixup code.
> > Non-existent nodes would mistaken get created with a leading '/'. The
> > problem was fdt_path_offset() takes a full path while creating a node
> > with fdt_add_subnode() takes just the basename.
> >
> > Since this we only add root child nodes, we can just skip over the '/'.
> >
> > Fixes: 7536c7e03e74 ("of/fdt: Remove redundant kbasename function call")
> > Reported-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > Cc: Qi Zheng <arch0.zheng@gmail.com>
> > Cc: Russell King <linux@armlinux.org.uk>
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Thanks for the quick patch. It doesn't quite seem to work as my system
> can't find it's initrd (it can with my other hacky patch). It does seem
> to get the command line info as I'm getting printk output.

That doesn't make sense. Can you enable debug in drivers/of/fdt.c.

Rob
