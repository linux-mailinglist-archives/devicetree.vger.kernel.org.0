Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4981576C54
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 17:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387718AbfGZPGP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 11:06:15 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:41383 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387661AbfGZPGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 11:06:15 -0400
Received: by mail-ot1-f41.google.com with SMTP id o101so55640959ota.8
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 08:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b1w8tr9L2YUU2MN81EceBnIWLWPBsGBLFgcwGzf4RlA=;
        b=DC6UNKhVgncGZJPugrrjkidDjiy+JvEzFfFvEQWjdGv4CZg2keVlFvY6xNxFbLgfYB
         bxIt8wqsZLkV93uaQaGWuk4c+gq7IMOyR988r/F2OO542RqQMzcfacwA9X7dV9AZNaXc
         0m1gfDgRnQWmWP5/lr49mrQTzfMjF6pfBG/lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b1w8tr9L2YUU2MN81EceBnIWLWPBsGBLFgcwGzf4RlA=;
        b=iqSYwsgzXZ5PC6TQkxaUR+f1MUtldwpHrcdemhrK1Idw2w8UzwFuaX3wk7owaDQcUl
         9ahHx6KOGl2wPiGfQrSAYi5KP08Q8swoozQjHAUdXqqk+59vUof3wYPKtD/ZLznt6GRE
         2ZETDvexNV/EZ3IxXmzfzGnEsrNFG3HidXot+gK1IArxXNJ5/gzgzZ3OD9fJ2WbH6YXN
         /4znLt8HHDk4J8jxU8W1GCCFordvOFD8/SzTsYqaiSwMYZJeu22WnamGbjVgZMAkR2Kp
         MDHGiM5WvNbbJ/vqAFL8Td3LMOmgEFsfaHUc7qLrvIjiEZjA4jJ2Z5jH4msk0Kaluyuf
         bikw==
X-Gm-Message-State: APjAAAVmKnF2z3gM5wdkVBDB34Y0rCmj3WrDtOMYaQ51B1bPnGIMeU/S
        f2UyxxRPsvWE1Yh1fOYCLisukjfntg/hTClFOXY=
X-Google-Smtp-Source: APXvYqzvA5HEGIYz4hqqHWnuOkW5hB09HNRsTxQDxjwn/aQq41rx/1Zsb29ZqX4yswmh7edfEYXT2JqfbW2HBzUSRCU=
X-Received: by 2002:a05:6830:ce:: with SMTP id x14mr52907632oto.188.1564153573918;
 Fri, 26 Jul 2019 08:06:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190304125033.28841-1-josef@lusticky.cz> <20190708145618.26031-1-josef@lusticky.cz>
 <20190726122510.GA14341@ravnborg.org> <20190726145513.GK15868@phenom.ffwll.local>
In-Reply-To: <20190726145513.GK15868@phenom.ffwll.local>
From:   Daniel Vetter <daniel@ffwll.ch>
Date:   Fri, 26 Jul 2019 17:06:03 +0200
Message-ID: <CAKMK7uESP5D4e_Qx6W7amURqxJ=5Y4JHduZYCtkyVQY9jKJQeA@mail.gmail.com>
Subject: Re: Controllers with several interface options - one or more drivers?
To:     Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>
Cc:     Josef Lusticky <josef@lusticky.cz>, Rob Herring <robh@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Dave Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Also probably should add a few more (drm_bridge) people, I think
that's also somewhat relevant here.
-Daniel

On Fri, Jul 26, 2019 at 4:55 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Jul 26, 2019 at 02:25:10PM +0200, Sam Ravnborg wrote:
> > Hi Josef, Daniel et al.
> >
> > The driver that triggered this reply is a driver that adds parallel
> > support to ili9341 in a dedicated panel driver.
> > The issue here is that we already have a tiny driver that supports the
> > ili9341 controller - but with a slightly different configuration.
> >
> > The ili9341 supports several interfaces - from the datasheet:
> >     "ILI9341 supports parallel 8-/9-/16-/18-bit data bus
> >      MCU interface, 6-/16-/18-bit data bus RGB interface and
> >      3-/4-line serial peripheral interface (SPI)"
> >
> > Noralf - in another mail explained:
> > "
> > The MIPI Alliance has lots of standards some wrt. display controller
> > interfaces:
> > - MIPI DBI - Display Bus Interface (used for commands and optionally pixels)
> > - MIPI DPI - Display Pixel Interface (also called RGB interface or
> > DOTCLK interface)
> > - MIPI DSI - Display Serial Interface (commands and pixels)
> >
> > The ili9341 supports both MIPI DBI and DPI.
> > "
> >
> > MIPI DPI - is a good fit for a drm_panel driver.
> > MIPI DBI - requires a full display controller driver.
> >
> > There are many other examples of driver SoC that in the same way
> > can be seen only as a panel or as a full display controller driver.
> >
> > The open question here is if we should try to support both cases in the
> > same driver / file. Or shall we implment two different drivers.
> > One for the panel use-case. And one for the display controller usecase?
> >
> > Not sure - so asking for feedback.
>
> I'm not sure. Currently we do have DSI and dumb RGB panels all in
> drm/panel. I don't think we have DBI panels in there yet, but then
> drm/tiny is the only one supporting these.
>
> I guess we could look into move some of the DBI panel drivers into panel
> drivers, but that needs a bit more glue all around. I'm honestly not sure
> how the current DSI drivers in drm_panel work exactly, especially for
> command mode.
>
> Or maybe we need a new interface for command mode.
>
> Wrt sharing code between drivers for the same chip, but different
> interfaces: I wouldn't worry too much about that. Maybe try to have a
> shared header file at least for registers. Long term we could end up with
> one driver module which exposes different flavours of the same chip, so
> multiple drm_panel drivers, or maybe we'll get something more specific for
> dsi/dbi.
> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
