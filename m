Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB1D87862A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 09:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726432AbfG2HUR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 03:20:17 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:42716 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725917AbfG2HUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 03:20:17 -0400
Received: by mail-vs1-f67.google.com with SMTP id 190so40103515vsf.9
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 00:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lusticky.cz; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5lUJA0iJhyzKYvhCyFqhgnUxSvOXAYlL2Baf8tIEZVk=;
        b=A2dJVgWPTFrK9GuBU4+6jMBlHWIDgluypfShitl5ozdIqM1ExY0UYry2RmVEAMPpca
         AJOEt9luDHl5R6gQuo74HAQ88BDoYPmbrVP3OEz4nem217KWcv4zIJXH90x2iEboKHqF
         lWpQHzIFsnzPOjrjTYPthi0/+doLPi+897xmt7I+eFxFV1mwm4zJgxZsf8LlOX23Nm+N
         mLSWzJ+wDtoFz8Kz8ehNMZLLkeneAJyJkgvqmEKGmaMxbwR+L6/AtTbm4TlH2nG+PYhT
         LbgO1VdwBzJKPv2FyWNF5nTsN4eKp1C6SrhRJOYYAL/6Ftu+nmmCE+l83dCXb+nMzr//
         gFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5lUJA0iJhyzKYvhCyFqhgnUxSvOXAYlL2Baf8tIEZVk=;
        b=DBYAIxq8RnLe7qrUmBoZv1K2ruePM4ik3e7RAFTB2s8cUpXaih6DZi918Lo1HBjm/r
         GaXt+aFvMjr2wBLGheQgSzCvMux/+05nDkxU5A0q11DUofhSTe2vHRGi6+N7JDFDjsWk
         n98xyo7D/xiny3RsHwXhieAel/maa8BjK3hdNTXjwXXza614GHMmG0PFDtdrKTr5GKtb
         C9/w03L0Xg7STeixEYZ9O9Bd/QmdpFYrMUmHK/QxHDz8sCMQio/OXVm64F46iTcEfrmv
         pbu1goVXArRkqB9ikRGrS3ThbyDgM5MNLkJQhcxJGtZTKWeUXgATMxRbOlPYyYar5Cen
         2nbQ==
X-Gm-Message-State: APjAAAVm0jlBoHOgy/x773v/G6H2kUfkPLDrnQrKnwYRE7AbX8Z4NwOU
        V5FV6Vn14XE9QG/a6S+4ZRHo3xbc6RRErI63POg=
X-Google-Smtp-Source: APXvYqy3TbL/fo0oTMEf0SZLiHOV7rWzsGAz4aJK5EcRQl+8LgiUSSSkkjau59jUNJo5+ckl5sd9v1lm8P0nzyq62OY=
X-Received: by 2002:a67:ff19:: with SMTP id v25mr67966172vsp.48.1564384815776;
 Mon, 29 Jul 2019 00:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190304125033.28841-1-josef@lusticky.cz> <20190708145618.26031-1-josef@lusticky.cz>
 <20190726122510.GA14341@ravnborg.org> <20190726145513.GK15868@phenom.ffwll.local>
 <CAKMK7uESP5D4e_Qx6W7amURqxJ=5Y4JHduZYCtkyVQY9jKJQeA@mail.gmail.com> <20190726161403.GA25593@ravnborg.org>
In-Reply-To: <20190726161403.GA25593@ravnborg.org>
From:   =?UTF-8?B?Sm9zZWYgTHXFoXRpY2vDvQ==?= <josef@lusticky.cz>
Date:   Mon, 29 Jul 2019 09:19:39 +0200
Message-ID: <CAMqqaJERwmZj-AX+7HvOOdDob24StxHoeniWOfz9ppUj1uzdZA@mail.gmail.com>
Subject: Re: Controllers with several interface options - one or more drivers?
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Rob Herring <robh@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Dave Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
I am happy to see this discussion.

I like Noralf's late work to move mipi_dbi to drm/ and remove tinydrm.
This helps to simplify implementation and maintenance of drivers for
displays that conform to MIPI_DBI set of commands,
no matter if they use MIPI_DBI to transfer the image data or not.

There are already MIPI_DBI compliant panels in drm/panel, but until
Noralf's refactor they needed to implement custom
functions (on top SPI) to initialize the display. See the following
drivers as examples:
- drm/panel/panel-sitronix-st7789v.c
- drivers/gpu/drm/panel/panel-tpo-tpg110.c
- drivers/gpu/drm/panel/panel-lg-lg4573.c
- drivers/gpu/drm/panel/panel-samsung-ld9040.c
- drivers/gpu/drm/panel/panel-samsung-s6e63m0.c
there may be more...

There are also at least two drivers for the same chip ili9341. See:
- drm/tinydrm/mi0283qt.c
- drm/tinydrm/ili9341.c
+ another driver for the same chip, but with parallel RGB initial
configuration, was submitted

I think there should be a single driver supporting all of the chip's
capabilities / configurations
to avoid maintenance burden and user confusion:

As a user, I can see the following use cases if a display conforms to MIPI_=
DBI.
a) it has its internal GRAM and MIPI_DBI can be used to transfer image data
b) internal GRAM is not present, parallel RGB must be used to transfer
image data
c) the display supports both - ili9341 case (but also others available)

As a user I want to specify displays that are going to use option a)
and/or b) - i.e.
I can have multiple ili9341 displays connected to the same parallel
RGB MCU interface,
but on a different SPI bus (or just different chip_select).
The same image data can be transferred to the displays over the parallel RG=
B
or I can switch some of the displays to use the MIPI_DBI (SPI) for
different image data transfer.

Kind regards
Josef Lusticky

p=C3=A1 26. 7. 2019 v 18:14 odes=C3=ADlatel Sam Ravnborg <sam@ravnborg.org>=
 napsal:
>
> Hi Daniel.
>
> Added Noralf - somehow I missed him on the original mail.
>
> On Fri, Jul 26, 2019 at 05:06:03PM +0200, Daniel Vetter wrote:
> > Also probably should add a few more (drm_bridge) people, I think
> > that's also somewhat relevant here.
> > -Daniel
> >
> > On Fri, Jul 26, 2019 at 4:55 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > >
> > > On Fri, Jul 26, 2019 at 02:25:10PM +0200, Sam Ravnborg wrote:
> > > > Hi Josef, Daniel et al.
> > > >
> > > > The driver that triggered this reply is a driver that adds parallel
> > > > support to ili9341 in a dedicated panel driver.
> > > > The issue here is that we already have a tiny driver that supports =
the
> > > > ili9341 controller - but with a slightly different configuration.
> > > >
> > > > The ili9341 supports several interfaces - from the datasheet:
> > > >     "ILI9341 supports parallel 8-/9-/16-/18-bit data bus
> > > >      MCU interface, 6-/16-/18-bit data bus RGB interface and
> > > >      3-/4-line serial peripheral interface (SPI)"
> > > >
> > > > Noralf - in another mail explained:
> > > > "
> > > > The MIPI Alliance has lots of standards some wrt. display controlle=
r
> > > > interfaces:
> > > > - MIPI DBI - Display Bus Interface (used for commands and optionall=
y pixels)
> > > > - MIPI DPI - Display Pixel Interface (also called RGB interface or
> > > > DOTCLK interface)
> > > > - MIPI DSI - Display Serial Interface (commands and pixels)
> > > >
> > > > The ili9341 supports both MIPI DBI and DPI.
> > > > "
> > > >
> > > > MIPI DPI - is a good fit for a drm_panel driver.
> > > > MIPI DBI - requires a full display controller driver.
> > > >
> > > > There are many other examples of driver SoC that in the same way
> > > > can be seen only as a panel or as a full display controller driver.
> > > >
> > > > The open question here is if we should try to support both cases in=
 the
> > > > same driver / file. Or shall we implment two different drivers.
> > > > One for the panel use-case. And one for the display controller usec=
ase?
> > > >
> > > > Not sure - so asking for feedback.
> > >
> > > I'm not sure. Currently we do have DSI and dumb RGB panels all in
> > > drm/panel. I don't think we have DBI panels in there yet, but then
> > > drm/tiny is the only one supporting these.
> > >
> > > I guess we could look into move some of the DBI panel drivers into pa=
nel
> > > drivers, but that needs a bit more glue all around. I'm honestly not =
sure
> > > how the current DSI drivers in drm_panel work exactly, especially for
> > > command mode.
> > >
> > > Or maybe we need a new interface for command mode.
> If I get around to do a driver for the ssd1306 then I will try to sewhat
> makes sense then. For now we shall not stall the ili9341 driver.
> > >
> > > Wrt sharing code between drivers for the same chip, but different
> > > interfaces: I wouldn't worry too much about that. Maybe try to have a
> > > shared header file at least for registers.
> This part should be the minimum. Somthing like include/drm/mipi/?
>
>         Sam
>
> > > Long term we could end up with
> > > one driver module which exposes different flavours of the same chip, =
so
> > > multiple drm_panel drivers, or maybe we'll get something more specifi=
c for
> > > dsi/dbi.
> > > -Daniel
> > > --
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
> >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
