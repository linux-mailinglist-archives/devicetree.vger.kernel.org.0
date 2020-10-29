Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD34B29ECF0
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 14:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725826AbgJ2Nbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 09:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725787AbgJ2Nbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 09:31:44 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4EFEC0613CF
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 06:31:42 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s9so2765900wro.8
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 06:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=m8GRnF8qGooixhL6DWEGKikS0gyJFf4Ahad5/MqCc10=;
        b=P0saBrtaab1aIeHkJzHlm65kDAF9/xrj2WUdMmNpDWMETcRZGMt5aDTviRvc1ihHbG
         JhFaekdp91VW5H+vAZMNUKcGx+qs9l64JJXc0LefZMjujfInPkpmVX0go5p2s2qRzI1L
         oeMQKMlNJqGpgu/YKLtKlE+5jcBKSRljls658=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m8GRnF8qGooixhL6DWEGKikS0gyJFf4Ahad5/MqCc10=;
        b=fHjAU23H2BtcRa8hsDAQY5AU6tszSpLu1+u8SJyoxNdhLOKWd+/8ZTxnPy+VuCc3aE
         xuptWZjBEQC3IaJawvXl9axe6aFB/WXw2X7iELBhHIX831PduF1LqIvUSr+ml0GNPPe5
         jzWFw0JHEBOZPwfXFYFoGdptTIVNatAkiBtrRPlBUmTd0eswrwaNbVWCUXpWbZtsG8El
         HsCyeIqOuSWflHxN5nVNuOfcz1A7R2RBUf5EznCkrvkfIq5SHjmUi822UWa9Mfita/hO
         UeV0SfC2WQwaFgw2vXuwEfr88d1tYDbHWHsP5p3Rm1kRA2zUtJT97kVnaufSanl1vRef
         tTMQ==
X-Gm-Message-State: AOAM531Jzw4nUwxHpC58CS4bzQeqCgatuZ9GYZdaXzanV0U9I6BSoeNd
        9tLEak4BJ+o3vqU2C9349w+2lA==
X-Google-Smtp-Source: ABdhPJy7r5v0QJ3KdD2rpzVlJOMSmOmnR//B1kVaITOoJA0W5XVAl4QGfB3KP/fQbHruSEGfI1aSfg==
X-Received: by 2002:adf:8bce:: with SMTP id w14mr5539648wra.242.1603978301273;
        Thu, 29 Oct 2020 06:31:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c185sm4651148wma.44.2020.10.29.06.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 06:31:40 -0700 (PDT)
Date:   Thu, 29 Oct 2020 14:31:38 +0100
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        Hoegeun Kwon <hoegeun.kwon@samsung.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/7] drm/vc4: kms: Document the muxing corner cases
Message-ID: <20201029133138.GB401619@phenom.ffwll.local>
References: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
 <aa88b754887b0a53b33e6a2447a09ff50281fd54.1603888799.git-series.maxime@cerno.tech>
 <20201029085104.GA401619@phenom.ffwll.local>
 <20201029104728.xrrqug5zjmbhpf5c@gilmour.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029104728.xrrqug5zjmbhpf5c@gilmour.lan>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 11:47:28AM +0100, Maxime Ripard wrote:
> Hi!
> 
> Thanks for your review
> 
> On Thu, Oct 29, 2020 at 09:51:04AM +0100, Daniel Vetter wrote:
> > On Wed, Oct 28, 2020 at 01:41:01PM +0100, Maxime Ripard wrote:
> > > We've had a number of muxing corner-cases with specific ways to reproduce
> > > them, so let's document them to make sure they aren't lost and introduce
> > > regressions later on.
> > > 
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  drivers/gpu/drm/vc4/vc4_kms.c | 22 ++++++++++++++++++++++
> > >  1 file changed, 22 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
> > > index 4aa0577bd055..b0043abec16d 100644
> > > --- a/drivers/gpu/drm/vc4/vc4_kms.c
> > > +++ b/drivers/gpu/drm/vc4/vc4_kms.c
> > > @@ -612,6 +612,28 @@ static const struct drm_private_state_funcs vc4_load_tracker_state_funcs = {
> > >  };
> > >  
> > >  
> > > +/*
> > > + * The BCM2711 HVS has up to 7 output connected to the pixelvalves and
> > > + * the TXP (and therefore all the CRTCs found on that platform).
> > > + *
> > > + * The naive (and our initial) implementation would just iterate over
> > > + * all the active CRTCs, try to find a suitable FIFO, and then remove it
> > > + * from the available FIFOs pool. However, there's a few corner cases
> > > + * that need to be considered:
> > > + *
> > > + * - When running in a dual-display setup (so with two CRTCs involved),
> > > + *   we can update the state of a single CRTC (for example by changing
> > > + *   its mode using xrandr under X11) without affecting the other. In
> > > + *   this case, the other CRTC wouldn't be in the state at all, so we
> > > + *   need to consider all the running CRTCs in the DRM device to assign
> > > + *   a FIFO, not just the one in the state.
> > > + *
> > > + * - Since we need the pixelvalve to be disabled and enabled back when
> > > + *   the FIFO is changed, we should keep the FIFO assigned for as long
> > > + *   as the CRTC is enabled, only considering it free again once that
> > > + *   CRTC has been disabled. This can be tested by booting X11 on a
> > > + *   single display, and changing the resolution down and then back up.
> > 
> > This is a bit much.
> 
> What do you find to be a bit much?
> 
> > With planes we have the same problem, and we're solving this with the
> > drm_plane_state->commit tracker. If you have one of these per fifo
> > then you can easily sync against the disabling crtc if the fifo
> > becomes free.
> > 
> > Note to avoid locking headaches this would mean you'd need a per-fifo
> > private state object. You can avoid this if you just track the
> > ->disabling_commit per fifo, and sync against that when enabling it on a
> > different fifo.
> > 
> > Note that it's somewhat tricky to do this correctly, since you need to
> > copy that commit on each state duplication around, until it's either used
> > in a new crtc (and hence tracked under that) or the commit has completed
> > (but this is only an optimization, you could just keep them around forever
> > for unused fifo that have been used in the past, it's a tiny struct with
> > nothing hanging of it).
> 
> I'm not really following you here. The hardware that does the blending
> (HVS) and the timing generation (pixelvalve) is mostly transparent to
> DRM and plugged as a CRTC, with the pixelvalve being the device tied to
> that CRTC, and the pixelvalve hooks calling into the HVS code when
> needed.
> 
> The FIFO is in the HVS itself since it can only blend 3 different
> scenes, and then you get to choose the output of that FIFO to send it to
> the proper pixelvalve that matches the encoder you eventually want to
> use.
> 
> So yeah, this FIFO is entirely internal to the CRTC as far as DRM is
> concerned.

So why do you dynamically assign it in a global state object? It sounded
like you assign these things dynamically, and that there's a problem with
sync when you move it from one crtc to the other. And that kind of problem
is solved by tracking the last crtc using a given resource that can be
used by different crtc with a drm_crtc_commit *last_user pointer.

Otherwise I think if you follow 2 crtc commits, one that disables a CRTC
user and releases a FIFO, and the next crtc (a different one) that uses it
right away, both nonblocking, then the 2nd crtc might start using your
shared resources before the first one actually stopped using it.

The other thing is also if you need multiple of these shared resources on
a CRTC, and dynamically reassigning them, then forcing them to be assigned
until the crtc is completely off is a bit too much synchronization. E.g.
we don't have that rule for drm planes. Now I have no idea whether your
CRTC:FIFO is 1:1 or 1:n, so maybe you only have the sync issue and not the
over-sync issue :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
