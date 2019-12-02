Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4501710EAC3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2019 14:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727398AbfLBNYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Dec 2019 08:24:24 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:45469 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727381AbfLBNYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Dec 2019 08:24:24 -0500
Received: by mail-il1-f193.google.com with SMTP id o18so33343295ils.12
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2019 05:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tkkn2eiB80I1csEOCJochQrCXVtedPBUSR/abpvsIy4=;
        b=AVGNAgjy7JyyqJMhHeU8+6Xku7w4l8yqUYY4K/6kiMuUjyjlPfK8gh+qiu2qQuyrHI
         7jY0pjd2pcukfmJRsZ3ai21OSKHJjY1p39uJ07Mv98/F3uNX+fzwRu3Wh67y8jGc3r6j
         4UjGTbBJ2myyDRdlu9r1a6p7SnSuF1fdOFqod5Vx5wYdr8dkegF4W7PO4/thY8gugH+U
         JwNKE17Sjg38NrVWWH/Qu1iQYHQLWJt2jvUQUEiTAU2vqqUChzdJAVN/dZDdEv+lqHVx
         xluxkHi1tfYJk4u/b/r+Sa9IfalziBY/N9SWe2/TRHddcknSnMckBbAipQ+W0c8AjPwC
         yICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tkkn2eiB80I1csEOCJochQrCXVtedPBUSR/abpvsIy4=;
        b=oFXpYPKqywhq4ucl8WfFAAiwM4QobNQ6ueOQSxqQ1WQ+JuSM7c1db23NWP8xolGekS
         SPMSUnasH3gaXp7VQiFUcfvAVeUO0nINSrXBpHPlQTuwbV9bm562v9A2WIbHpa39XE19
         YG279KhXvN5pIfW38d4Z0L/OO9YGFMA0PA5jGm7y0hjYm49I6HdLf95DVRLmSHJCiezO
         ylIOQTsh7CjfLebfR/Z0D7s5Wp11K3UbYJHgb0VkvKSb9PM0oxXboUDGgeMnsJXe2OyW
         I7v5w4RV76Vy0dnkdOWsij5G60NF131UgLJibVxP6QP78eshExSgr5Aw3w40y+uHuXJR
         ftXw==
X-Gm-Message-State: APjAAAWSIDGs2R5hJQsp+OH9XL6Vv8Jn/47N7qEr/ym2LZVyODcp08mj
        FEEO68ockdTH5Gq6AmT7bldkNmlmi8zjOZmcxSg=
X-Google-Smtp-Source: APXvYqxxMyr36qePTQRpO51mW6/e92Or9pOSGRT1pSYt40Kfphopb+K9bD+T8d5cdLzSbsh2x4jsKaclXruzKsclLoA=
X-Received: by 2002:a92:5bdd:: with SMTP id c90mr11294140ilg.78.1575293061207;
 Mon, 02 Dec 2019 05:24:21 -0800 (PST)
MIME-Version: 1.0
References: <20191114093950.4101-1-tomi.valkeinen@ti.com> <20191202131300.GJ4929@pendragon.ideasonboard.com>
In-Reply-To: <20191202131300.GJ4929@pendragon.ideasonboard.com>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 2 Dec 2019 07:24:09 -0600
Message-ID: <CAHCN7xJh8_-9KB3N7hQsxExJ-UaZTkFch1iSRzkCHwNFgBd28g@mail.gmail.com>
Subject: Re: [PATCH 0/3] drm/omap: fix am4 evm lcd
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        devicetree <devicetree@vger.kernel.org>,
        Tony Lindgren <tony@atomide.com>, Jyri Sarha <jsarha@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 2, 2019 at 7:13 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Tomi,
>
> On Thu, Nov 14, 2019 at 11:39:47AM +0200, Tomi Valkeinen wrote:
> > Hi Tony, Thierry, Laurent,
> >
> > After the recent change of moving from omapdrm specific panel-dpi driver
> > to the DRM simple panel, AM4 EVM/ePOS's panel is not working quite
> > right. This series has fixes for it, but I'm not sure if these are the
> > right ways to fix the issues, so comments welcome.
> >
> > 1) Panel driver is not probed. With omapdrm's panel-dpi, the match
> > happened with "panel-dpi" compatible string. Now with panel-simple, the
> > match should happen with the panel model compatible string, which is
> > "osddisplays,osd057T0559-34ts" in the DT file. However, no such
> > compatible exists in panel-simple.
>
> I've also noticed that we have a few other omap-based platforms that
> got broken, for the same reason :-( We're missing driver support for
> innolux,at070tn83, samsung,lte430wq-f0c and startek,startek-kd050c, and
> we have a few nodes that use panel-dpi without any more precise
> compatible string.
>
> > Interestingly, the actual panel at least on my EVMs and ePOSes is not
> > osd057T0559-34ts, but osd070t1718-19ts. Also, I was unable to find any
> > information about osd057T0559-34ts. I don't know the history with this,
> > so it is possible that the early versions of the boards did have
> > osd057T0559-34ts, but was later changed to osd070t1718-19ts.
> >
> > As osd070t1718-19ts is supported by panel-simple, changing the
> > compatible string to osd070t1718-19ts in the DT file solves this one.
> >
> > 2) Timings in DT file cause a kernel warning. Omapdrm's panel-dpi used
> > video timings from the DT file, so they are present in all the DT files.
> > panel-simple uses timings from a table in the panel-simple driver, but
> > gives a kernel warning if the DT file contains timings.
> >
> > This can be solved by removing the timings from the DT file.
> >
> > 3) Sync drive edge is not right. This one might have been present also
> > with panel-dpi, I didn't verify. The problem is that the panel-simple
> > data for osddisplays_osd070t1718_19ts defines bus_flags for DE polarity
> > and pixdata edge, but not for sync edge.
> >
> > The datasheet for the panel does not give any hint on what the edge
> > should be.  Omapdrm defaults to driving syncs on falling edge, which
> > caused the image to be shifted one pixel to the right.
> >
> > Adding DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE bus_flag solves the problem. AM5
> > EVM also has the same panel with the same behavior.
> >
> > ====
> >
> > The reason I'm not sure if the 1) and 2) fixes are correct is that
> > they're breaking DT compatibility. Should we instead make changes to
> > panel-simple to keep the same DT files working?
>
> That's tempting, as breaking DT is quite bad, but that would require
> adding a match on panel-dpi, and parsing timings in the panel-simple
> driver. Thierry has always been opposed to that as far as I can tell,
> and even if I don't share his point of view, I don't want to move in
> this direction without a consensus.

What about a generic driver separate from the simple panel driver that
does just the panel-dpi parsing?

If we exported the necessary functions from simple-panel, we could
call them from the panel-dpi parser and not have to re-invent the
functions to enable power, gpio or back light and/or fix them each
time they get updated.


adam
>
> Your series is fine in my opinion, as even if we decide to handle
> backward compatibility in this case, changing the DT files in mainline
> is still the right way to go (if only to avoid giving wrong examples).
>
> > This would mean adding a new entry for the osd057T0559-34ts panel, but
> > as we don't have datasheet for it, I think we could just append the
> > compatible string to osd070t1718-19t's data.
> >
> > It would also mean doing some change to the panel-simple code that gives
> > the warning about timings in DT data. This might make sense, as I think
> > we have other DT files with video timings too.
> >
> > For 3), I think the patch is fine, but I'm not sure if the display
> > controller driver should be able to deduce the sync drive edge from the
> > pixdata drive edge. Are they usually the same? I have no idea...
> >
> > Tomi Valkeinen (3):
> >   ARM: dts: am437x-gp/epos-evm: fix panel compatible
> >   ARM: dts: am437x-gp/epos-evm: drop unused panel timings
> >   drm/panel: simple: fix osd070t1718_19ts sync drive edge
> >
> >  arch/arm/boot/dts/am437x-gp-evm.dts  | 18 +-----------------
> >  arch/arm/boot/dts/am43x-epos-evm.dts | 18 +-----------------
> >  drivers/gpu/drm/panel/panel-simple.c |  3 ++-
> >  3 files changed, 4 insertions(+), 35 deletions(-)
>
> --
> Regards,
>
> Laurent Pinchart
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
