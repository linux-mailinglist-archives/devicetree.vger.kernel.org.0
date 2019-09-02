Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50E2AA5A99
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 17:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726079AbfIBPbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 11:31:45 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:38914 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725941AbfIBPbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 11:31:44 -0400
Received: by mail-wr1-f67.google.com with SMTP id t16so14454401wra.6
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 08:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6EfGf6+MqXDQn1XB/auCj6alJzlc691SbvYsfhubDJk=;
        b=rY+tDRXF7pQSu/dOhdJaxDLuRgWedMkAUnJ87+5z+IGXZaRl/1Zu+gThv0T9vytyc/
         aNvIMJNgEO4+u1xpbzl92d+Xq2zZgKkED7OdtwrLXEHDJ+0zoyKNkSaOeWy8gnIkp/pq
         62nBs3H6B98e3BqiJyBHAdmsO7YCHbcCcSybd3eGcU8O0Rf5OPM8Wz4IrTs8R+R5FZkE
         FCFHZ0pZwjw+6GaUGRMOFN03m2Vx+2Jdb5g4Gy933DhbT3PxEqxlCKLCE3iwY2NhBUk2
         Pf/ETTVyE4HRVHNZEiFgjVCN32zBmhunV7PjYbSBs/JKZnZsFFBaNz+y1EqaoweB1mYK
         iVsg==
X-Gm-Message-State: APjAAAWQ3L/4DFenigcSgRCJTnjYLbhCx7Yj59vO0RTWepQk4txMYTTz
        m5DmkUMN3ZlSo9g2XbXLtQ==
X-Google-Smtp-Source: APXvYqwetzEK7FeEiM3dn6hKrJ2qLNXC8+uEuUf/Uh8aDJuNsQ7P/1C+HHcWhHgga493/WttgRJdGQ==
X-Received: by 2002:adf:e48a:: with SMTP id i10mr910231wrm.311.1567438302740;
        Mon, 02 Sep 2019 08:31:42 -0700 (PDT)
Received: from localhost ([212.187.182.166])
        by smtp.gmail.com with ESMTPSA id z5sm13506433wrl.33.2019.09.02.08.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 08:31:42 -0700 (PDT)
Date:   Mon, 2 Sep 2019 16:31:41 +0100
From:   Rob Herring <robh@kernel.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Sony ACX424AKP
Message-ID: <20190902153141.GA28522@bogus>
References: <20190902090633.24239-1-linus.walleij@linaro.org>
 <20190902093517.GA12946@ulmo>
 <CACRpkdb_X+Eia=mhHrXBcBn0osMtw6bKU6uAS5AV8ASV63qBkg@mail.gmail.com>
 <20190902144006.GB1445@ulmo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190902144006.GB1445@ulmo>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 02, 2019 at 04:40:06PM +0200, Thierry Reding wrote:
> On Mon, Sep 02, 2019 at 01:44:38PM +0200, Linus Walleij wrote:
> > On Mon, Sep 2, 2019 at 11:35 AM Thierry Reding <thierry.reding@gmail.com> wrote:
> > 
> > > > +  dsi-command-mode:
> > > > +     type: boolean
> > > > +     description:
> > > > +       If this is specified, the panel will be used in command
> > > > +       mode instead of video mode.
> > >
> > > I'm not sure there's concensus on this one yet. I think so far the
> > > driver decides which mode to use the panel in. Technically this falls
> > > into the category of configuration, so it doesn't really belong in the
> > > DT.
> > 
> > The way we've used DT is for a bit of both hardware description
> > and configuration I'd say, but I'm no authority on the subject.

I'm okay with this if there's consensus, but it should be in a common 
doc. We probably need a dsi-commom schema with this, reg, ??.

> > 
> > > I vaguely recall from discussions I've had on this subject that there's
> > > usually no reason to do video mode if you can do command mode because
> > > command mode is more power efficient. This was a long time ago, so I may
> > > be misremembering. Perhaps you have different information on this?

30 or 60fps updates tend to be impossible because you have less b/w and 
it's async to the refresh.

I think most panels that can do both, always need command mode too for 
initialization.

> > No idea. I was under the impression that video mode was preferred
> > but I have no idea why.
> 
> Hm... my recollection is that command mode is only supported on "smart"
> panels that have an internal framebuffer. So the commands actually
> instruct the panel to update their internal framebuffer, which means you
> can technically switch off the display engine when there are no updates.
>
> Under those circumstances I think it'd make sense to default to command
> mode if both the panel and the host support it and stick with video mode
> if for example the host can't do command mode.
> 
> Or perhaps this is something that could be set from some userspace
> policy maker via a connector property? A compositor for instance would
> have a pretty good idea of what kind of activity is going on, so it
> could at some point decide to switch between video mode and command mode
> if one of them is more appropriate for the given workload.
> 
> Command mode can also be used to do partial updates, if I remember
> correctly, which again would make it possible for a compositor to send
> only a subset of a screen update.

All makes sense to me.

Rob
