Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59E32104610
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2019 22:51:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726083AbfKTVvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Nov 2019 16:51:19 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:43918 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbfKTVvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Nov 2019 16:51:19 -0500
Received: by mail-oi1-f195.google.com with SMTP id l20so1216162oie.10
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2019 13:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jf7tLfUjYPb5KtGZgm15NgY2ll4+ptMssGlo4f+/QP8=;
        b=hQag3CoAJtSyR++N6oRH1spw5PVgBJ5S+rVZM46FNtRd1ldt9b77RUsPPaG2v+doFZ
         yphYtsrbzGly7u/Iu1DYeGy1ay+SNKRGswZ9+tfalxlUSgvIEoing5Kfb4w7mV+sQnMv
         UIEVhrukp0aU1OelUn18hXsJ0haL/O4oh4voXPqNRWC1+ZGwEP+AhyJUdJ5sL1WFiNaE
         ujQ0a3mpois9N3p1fp8wiK3KA7muk7xlrSr6CjvhdzmYK6K+hHdm5szB1zitIbvXzCYD
         2uAS7AT4BLEXHLqIi9JePIVdU2bIEvoKZLVvJHUmhioOn2sMg+IDjCSpeSktAC7uiQAH
         5IRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jf7tLfUjYPb5KtGZgm15NgY2ll4+ptMssGlo4f+/QP8=;
        b=sGCqABPjAI0gjENi+f8NdlvVZjeHJl0EdEl/wziXv22F/BXVqgM6mZXZPcwGHl1Yuu
         d9+f3vJxzr90hb+97MHntchVPUwe/2mWaT+fRZoNSlzo5OBdqJMo3lw4EsiVJSmiPTYf
         Hy+A9pF+DCnAi9YvIBUlgZ8b+r2Hbgb6ArDlKhiC9SG9kKf4kNUyX1Hj+Zs1v1BUq2d2
         H2lfU3izcMP49Cc60ghZD7rfQxvGd9cNqdvnnOrNcosWvVNdnBUj1TjwoS0Yxrrwqe72
         Kz2JVN1Nr/lzIWXpcdbIfWLNATZZx8ZJb6Tzdoim3fcI1r9Lw7uL0XKqKzzqBtYPwino
         9+gA==
X-Gm-Message-State: APjAAAV59jZXVxr3Hhpzdmmt5KAtQH3t5si3qp6ITc8LQRcrigBqWIqu
        AkpTLqdL6zTePcq6etf4VUQ4XCqOt9GXp83c9CY2nA==
X-Google-Smtp-Source: APXvYqxeXDdAm/bIMOB1KZ3V0iUjTHJNHA7Z192YpVmgnSjvhy4GdVvXYw55M76MX0aA+6NVHi0Ga7Lqs/iMH/a1VVU=
X-Received: by 2002:aca:f408:: with SMTP id s8mr4856194oih.69.1574286678048;
 Wed, 20 Nov 2019 13:51:18 -0800 (PST)
MIME-Version: 1.0
References: <20191120080230.16007-1-saravanak@google.com> <20191120153625.GA2981769@kroah.com>
In-Reply-To: <20191120153625.GA2981769@kroah.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 20 Nov 2019 13:50:42 -0800
Message-ID: <CAGETcx9eB0ZicHs=8jxwRxbKYHKxoV5u7otud_TAx2Z_DyTw0Q@mail.gmail.com>
Subject: Re: [PATCH] of: property: Fix the semantics of of_is_ancestor_of()
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 20, 2019 at 7:36 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Nov 20, 2019 at 12:02:29AM -0800, Saravana Kannan wrote:
> > The of_is_ancestor_of() function was renamed from of_link_is_valid()
> > based on review feedback. The rename meant the semantics of the function
> > had to be inverted, but this was missed in the earlier patch.
> >
> > So, fix the semantics of of_is_ancestor_of() and invert the conditional
> > expressions where it is used.
> >
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  drivers/of/property.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
>
> What git commit does this patch fix?
>

Fixes commit a3e1d1a7f5fcc. Let me know if you want me to send a v2 or
if you can fix up the commit text on your end.

Thanks,
Saravana


-Saravana
