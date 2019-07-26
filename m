Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D92B76EAC
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 18:14:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727609AbfGZQOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 12:14:09 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:44838 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726705AbfGZQOJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 12:14:09 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 5548A80582;
        Fri, 26 Jul 2019 18:14:04 +0200 (CEST)
Date:   Fri, 26 Jul 2019 18:14:03 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Daniel Vetter <daniel@ffwll.ch>,
        Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Josef Lusticky <josef@lusticky.cz>,
        Rob Herring <robh@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Dave Airlie <airlied@linux.ie>
Subject: Re: Controllers with several interface options - one or more drivers?
Message-ID: <20190726161403.GA25593@ravnborg.org>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
 <20190726122510.GA14341@ravnborg.org>
 <20190726145513.GK15868@phenom.ffwll.local>
 <CAKMK7uESP5D4e_Qx6W7amURqxJ=5Y4JHduZYCtkyVQY9jKJQeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uESP5D4e_Qx6W7amURqxJ=5Y4JHduZYCtkyVQY9jKJQeA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=25-AhOLfAAAA:8
        a=vxpcmmc7qeB5gxik3AUA:9 a=CjuIK1q_8ugA:10 a=dnuY3_Gu-P7Vi9ynLKQe:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel.

Added Noralf - somehow I missed him on the original mail.

On Fri, Jul 26, 2019 at 05:06:03PM +0200, Daniel Vetter wrote:
> Also probably should add a few more (drm_bridge) people, I think
> that's also somewhat relevant here.
> -Daniel
> 
> On Fri, Jul 26, 2019 at 4:55 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Fri, Jul 26, 2019 at 02:25:10PM +0200, Sam Ravnborg wrote:
> > > Hi Josef, Daniel et al.
> > >
> > > The driver that triggered this reply is a driver that adds parallel
> > > support to ili9341 in a dedicated panel driver.
> > > The issue here is that we already have a tiny driver that supports the
> > > ili9341 controller - but with a slightly different configuration.
> > >
> > > The ili9341 supports several interfaces - from the datasheet:
> > >     "ILI9341 supports parallel 8-/9-/16-/18-bit data bus
> > >      MCU interface, 6-/16-/18-bit data bus RGB interface and
> > >      3-/4-line serial peripheral interface (SPI)"
> > >
> > > Noralf - in another mail explained:
> > > "
> > > The MIPI Alliance has lots of standards some wrt. display controller
> > > interfaces:
> > > - MIPI DBI - Display Bus Interface (used for commands and optionally pixels)
> > > - MIPI DPI - Display Pixel Interface (also called RGB interface or
> > > DOTCLK interface)
> > > - MIPI DSI - Display Serial Interface (commands and pixels)
> > >
> > > The ili9341 supports both MIPI DBI and DPI.
> > > "
> > >
> > > MIPI DPI - is a good fit for a drm_panel driver.
> > > MIPI DBI - requires a full display controller driver.
> > >
> > > There are many other examples of driver SoC that in the same way
> > > can be seen only as a panel or as a full display controller driver.
> > >
> > > The open question here is if we should try to support both cases in the
> > > same driver / file. Or shall we implment two different drivers.
> > > One for the panel use-case. And one for the display controller usecase?
> > >
> > > Not sure - so asking for feedback.
> >
> > I'm not sure. Currently we do have DSI and dumb RGB panels all in
> > drm/panel. I don't think we have DBI panels in there yet, but then
> > drm/tiny is the only one supporting these.
> >
> > I guess we could look into move some of the DBI panel drivers into panel
> > drivers, but that needs a bit more glue all around. I'm honestly not sure
> > how the current DSI drivers in drm_panel work exactly, especially for
> > command mode.
> >
> > Or maybe we need a new interface for command mode.
If I get around to do a driver for the ssd1306 then I will try to sewhat
makes sense then. For now we shall not stall the ili9341 driver.
> >
> > Wrt sharing code between drivers for the same chip, but different
> > interfaces: I wouldn't worry too much about that. Maybe try to have a
> > shared header file at least for registers.
This part should be the minimum. Somthing like include/drm/mipi/?

	Sam

> > Long term we could end up with
> > one driver module which exposes different flavours of the same chip, so
> > multiple drm_panel drivers, or maybe we'll get something more specific for
> > dsi/dbi.
> > -Daniel
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch
