Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 03FBF76C20
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 16:55:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727442AbfGZOzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 10:55:18 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:36562 "EHLO
        mail-ed1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727172AbfGZOzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 10:55:18 -0400
Received: by mail-ed1-f54.google.com with SMTP id k21so53558966edq.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 07:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xt+fzgk2itKMyHMdFXgiwpB0mKWGAGBife6waDE7tvA=;
        b=VYxtowvp3A47JZ/8Ys0oEDr5dM6qpjFXDZJ49jdjc0n3Z1uivGb6DHAJBoTuxr5dJS
         zcHZz/JX84VzGO0my/2GErynk9Uaq9hbJM1fGeGsV2PTjZ/DPGCmZ3w4q4Wc4fPNWLCg
         9FWCb3LJ7VFudTTpoRU6W9QQ4UNrpYnzn5MQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=xt+fzgk2itKMyHMdFXgiwpB0mKWGAGBife6waDE7tvA=;
        b=fCOx67zMW9uVyf+7LrRg75XBo7xwaFp8oF/JySSdHNDxJe5exyP8FeMPGKbsryffwh
         B8T8yDLa2iavwdjbOlSlAzInvvepT63UEx3DmQiWqn8EcOVyTV+sLT4ghtsCy1aJRWUT
         p5IqT2MnDo50O4R082Y5BApP7ad5QrnO0kMJrTYi/mYpvlkX3rB0/QAt7iIF3K3ATajP
         xr8y+QT7Kt2KRB/rqvjABs3n9ewbuB/ap7B3letaqwygC2YyN4YuIxr2AtP5RoBER4HY
         oQPVCtY2UOf5WR1LtEAoqV2Pcupo5y0vlqloaNjIsdKqjaxKc8PRR76sUovkftnOu5qX
         4B/w==
X-Gm-Message-State: APjAAAUZuZsszMGePKzgbWHDqq5QAS9oS1aX/4HfuYkJtLSCYt4I73s/
        PFb7YYDt5GubszkrnqGzyBo=
X-Google-Smtp-Source: APXvYqxUeNC4e1CdakX4BI7TvCB9fBXnh7C5o9RrIomiztmWP4BTNXMgCIrj/VnWHQ8MbyokEdP9TQ==
X-Received: by 2002:a50:d1d7:: with SMTP id i23mr84163785edg.151.1564152916389;
        Fri, 26 Jul 2019 07:55:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id f25sm13357029edm.83.2019.07.26.07.55.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 26 Jul 2019 07:55:15 -0700 (PDT)
Date:   Fri, 26 Jul 2019 16:55:13 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Josef Lusticky <josef@lusticky.cz>,
        Daniel Vetter <daniel@ffwll.ch>, robh@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Re: Controllers with several interface options - one or more drivers?
Message-ID: <20190726145513.GK15868@phenom.ffwll.local>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
 <20190726122510.GA14341@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190726122510.GA14341@ravnborg.org>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 26, 2019 at 02:25:10PM +0200, Sam Ravnborg wrote:
> Hi Josef, Daniel et al.
> 
> The driver that triggered this reply is a driver that adds parallel
> support to ili9341 in a dedicated panel driver.
> The issue here is that we already have a tiny driver that supports the
> ili9341 controller - but with a slightly different configuration.
> 
> The ili9341 supports several interfaces - from the datasheet:
>     "ILI9341 supports parallel 8-/9-/16-/18-bit data bus
>      MCU interface, 6-/16-/18-bit data bus RGB interface and
>      3-/4-line serial peripheral interface (SPI)"
> 
> Noralf - in another mail explained:
> "
> The MIPI Alliance has lots of standards some wrt. display controller
> interfaces:
> - MIPI DBI - Display Bus Interface (used for commands and optionally pixels)
> - MIPI DPI - Display Pixel Interface (also called RGB interface or
> DOTCLK interface)
> - MIPI DSI - Display Serial Interface (commands and pixels)
> 
> The ili9341 supports both MIPI DBI and DPI.
> "
> 
> MIPI DPI - is a good fit for a drm_panel driver.
> MIPI DBI - requires a full display controller driver.
> 
> There are many other examples of driver SoC that in the same way
> can be seen only as a panel or as a full display controller driver.
> 
> The open question here is if we should try to support both cases in the
> same driver / file. Or shall we implment two different drivers.
> One for the panel use-case. And one for the display controller usecase?
> 
> Not sure - so asking for feedback.

I'm not sure. Currently we do have DSI and dumb RGB panels all in
drm/panel. I don't think we have DBI panels in there yet, but then
drm/tiny is the only one supporting these.

I guess we could look into move some of the DBI panel drivers into panel
drivers, but that needs a bit more glue all around. I'm honestly not sure
how the current DSI drivers in drm_panel work exactly, especially for
command mode.

Or maybe we need a new interface for command mode.

Wrt sharing code between drivers for the same chip, but different
interfaces: I wouldn't worry too much about that. Maybe try to have a
shared header file at least for registers. Long term we could end up with
one driver module which exposes different flavours of the same chip, so
multiple drm_panel drivers, or maybe we'll get something more specific for
dsi/dbi.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
