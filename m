Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B233C17402B
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 20:17:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgB1TRx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 14:17:53 -0500
Received: from mail-ua1-f68.google.com ([209.85.222.68]:46482 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725827AbgB1TRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 14:17:52 -0500
Received: by mail-ua1-f68.google.com with SMTP id l6so1365790uap.13
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 11:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uXA3/+C+Ws03rM5oecAfvZ0EjvjFdg2ZbM6QXJtOnis=;
        b=T85BmpDrleLyl915HxeMadTD8HviR0L4YI8g1TPE3bzM0UctdJVLSN9P2/laHAAMSR
         upFTHz+wPJzr7i4Kmsk87YXVm3GIj8ZRb29Jod2t6WqHxNhpchtwJDD3oQSj5yOOZ+VA
         0xFJMmVLfXQegbcviPjOWZJAOHv/hAvB7tfno8C6Cc4qnuJG4rnyd7SewPIMeLg5qfTP
         0iOb2BIh6w+DBm+BgJgnPIbzYb6W1N0uSTX0wHehFWdXEmViuSrDILQJS2dFGSvWI7n+
         9QAM8+Tr/LSd7aW7pyGeSy14nQvI3fNhAz79HVyqyE4Y+nSqVU7aqfQq2cgQ04SgFn1n
         sI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uXA3/+C+Ws03rM5oecAfvZ0EjvjFdg2ZbM6QXJtOnis=;
        b=ecRBDLJjp8AN+DLxENaLwHzDfry+VDs1rVCaEV3MIDF55DR+2kvOa+6lmP1wBQJc3y
         NIEjXE4CvPoKfYLNewjPWoC8zjh/uk7kF3CFbHaH8/1kP0ICLU1pTf2YCSk97ZNkqChK
         xD/OiS/vKxKtRFm/j75qpKQbub/e1pUt01vjRSsulEkh2EPUoP8R7w46yqOjCh9NABXx
         yGn3/Dqi01zRzox37c/74C2nFfjfgli3Cah70AuR6MKb7XTI5DgD7bxTz5B3Tc5nWW0l
         VZnJymj2bWInxKQ/npk+VI9KVmS1jSvG46F6Y+JUu8qrS4yDroVud0xr9QsVcVLLCDMH
         QdZQ==
X-Gm-Message-State: ANhLgQ0ufvD596VQ0WvwqIUSEMAiKOqyt07ydwo3vZCzmyxm2hELlo73
        V8St6z02uWbGPGQwJEqH8v2RAa6zhkwaVdf34kKq3A==
X-Google-Smtp-Source: ADFU+vvsbZIc5VB+r9XiljUrppstnkF/gEQRydJ0xpNF0569jfMXKelO0dOU5dM371tMVLG+h8JPKHod/4zNraTMhww=
X-Received: by 2002:a9f:36ca:: with SMTP id p68mr2882516uap.112.1582917469575;
 Fri, 28 Feb 2020 11:17:49 -0800 (PST)
MIME-Version: 1.0
References: <20200224021029.142701-1-adelva@google.com> <20200224021029.142701-3-adelva@google.com>
 <20200227232253.GA5966@bogus>
In-Reply-To: <20200227232253.GA5966@bogus>
From:   Alistair Delva <adelva@google.com>
Date:   Fri, 28 Feb 2020 11:17:38 -0800
Message-ID: <CANDihLFFUoauKxwcNDNE4=PuhzHSpB+FecxFJOn5H2GkreiYhw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] dt-bindings: pmem-region: Document memory-region
To:     Rob Herring <robh@kernel.org>
Cc:     LKML <linux-kernel@vger.kernel.org>, Kenny Root <kroot@google.com>,
        "Oliver O'Halloran" <oohall@gmail.com>,
        Dan Williams <dan.j.williams@intel.com>,
        Vishal Verma <vishal.l.verma@intel.com>,
        Dave Jiang <dave.jiang@intel.com>,
        Ira Weiny <ira.weiny@intel.com>,
        Device Tree <devicetree@vger.kernel.org>,
        linux-nvdimm@lists.01.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for reviewing.

On Thu, Feb 27, 2020 at 3:22 PM Rob Herring <robh@kernel.org> wrote:
>> On Sun, Feb 23, 2020 at 06:10:29PM -0800, Alistair Delva wrote:
> > From: Kenny Root <kroot@google.com>
> >
> > Add documentation and example for memory-region in pmem.
> >
> > Signed-off-by: Kenny Root <kroot@google.com>
> > Signed-off-by: Alistair Delva <adelva@google.com>
> > Cc: "Oliver O'Halloran" <oohall@gmail.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Dan Williams <dan.j.williams@intel.com>
> > Cc: Vishal Verma <vishal.l.verma@intel.com>
> > Cc: Dave Jiang <dave.jiang@intel.com>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-nvdimm@lists.01.org
> > Cc: kernel-team@android.com
> > ---
> > [v3: adelva: remove duplicate "From:"]
> >  .../devicetree/bindings/pmem/pmem-region.txt  | 29 +++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.txt b/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > index 5cfa4f016a00..0ec87bd034e0 100644
> > --- a/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > +++ b/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > @@ -29,6 +29,18 @@ Required properties:
> >               in a separate device node. Having multiple address ranges in a
> >               node implies no special relationship between the two ranges.
> >
> > +             This property may be replaced or supplemented with a
> > +             memory-region property. Only one of reg or memory-region
> > +             properties is required.
> > +
> > +     - memory-region:
> > +             Reference to the reserved memory node. The reserved memory
> > +             node should be defined as per the bindings in
> > +             reserved-memory.txt
>
> Though we've never enforced it, but /reserved-memory should be within
> the bounds of /memory node(s). Is that the intent here? If so, how does
> that work? Wouldn't all the memory be persistent then? Or some other
> system processor is preserving the contents?

On the systems we're working with, the RAM remains refreshed across
reboots, but the contents of RAM could be changed by something outside
of Linux (i.e. the bootloader). By reserving this region in DT for
pmem we are saying "this is persistent like the rest of RAM on this
device, but it is also not going to be touched by anything besides
this Linux driver".

> > +
> > +             This property may be replaced or supplemented with a reg
> > +             property. Only one of reg or memory-region is required.
> > +
> >  Optional properties:
> >       - Any relevant NUMA assocativity properties for the target platform.
> >
> > @@ -63,3 +75,20 @@ Examples:
> >               volatile;
> >       };
> >
> > +
> > +     /*
> > +      * This example uses a reserved-memory entry instead of
> > +      * specifying the memory region directly in the node.
> > +      */
> > +
> > +     reserved-memory {
> > +             pmem_1: pmem@5000 {
> > +                     no-map;
>
> Just add 'compatible = "pmem-region";' here and be done with it. Why add
> a layer of indirection?

Sure, I'll do that..

> > +                     reg = <0x00005000 0x00001000>;
> > +             };
> > +     };
> > +
> > +     pmem@1 {
>
> No 'reg', so shouldn't have a unit-address here.

..then I guess I can just delete this. v4 incoming.


> > +             compatible = "pmem-region";
> > +             memory-region = <&pmem_1>;
> > +     };
> > --
> > 2.25.0.265.gbab2e86ba0-goog
> >
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
