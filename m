Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DCAF29E6C3
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 10:02:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725769AbgJ2JCR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 05:02:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725991AbgJ2JBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 05:01:00 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F0B8C0613CF
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 01:51:09 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id l8so1639171wmg.3
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 01:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cDd95LZV0TwPx9wdyCCMZmzh5fYR+hqDBeGlboAji9U=;
        b=kqfds7Bp4W6z9KuFzDVR9T6Tl5PsxJrR2qLNmSLLkDSDx2OgCHeINisTB3uGekRXcH
         ypFsRLcJCs2y9YfPBOA99oCYcwZwKLznndQiMldjMbpQ3QW14jCqMF35J3uqY5AUP7FH
         TDWJ5LckfasONVE1r8EFkrgF2J/7z2TR2T658=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cDd95LZV0TwPx9wdyCCMZmzh5fYR+hqDBeGlboAji9U=;
        b=oPT4b7381pCLde46EBFvJc19WfcLyAgwcql5B6g3qvWXSIulHVLyk0dsNzgfmhOJP2
         LZmSITycvgkamatnilAtKWumJxEHpPpJYJagV0bNoLREXnwHj+xlUNHB1YMOvjwUBTro
         oZuDocpuM9LotjCErhxmqsYWoWL3fa9zH4UxXy04wqBNbG9VDoSgGpfn1pVkWHUAPQZf
         bkXJJbBDvBKxEYJkVYUx7vb1Y5ya1t0PX0huevYKHJH4W7BvAlClQQbJNrB138M7avcT
         DYRIN43Dez7ibA4zDy7/HVNk0Iy+q5LalTaObKaDVbgkvwfuESBidaxdIffmnRczYCmz
         YiRw==
X-Gm-Message-State: AOAM5309iHh+mEKYESnLmrKnBMDm7nSJH4VFLC3lz6M//gvbmMIRa+ZC
        73nbEDOx7bCG1qFojJ/Pwo3uUg==
X-Google-Smtp-Source: ABdhPJx8StI6TRBf10Vf2PWnL/5voNMrzNUFCeJkXzaHkB7puxbbn91kh3E9XUeAD8WZA4ySma0R1Q==
X-Received: by 2002:a1c:9a93:: with SMTP id c141mr3345421wme.168.1603961467630;
        Thu, 29 Oct 2020 01:51:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id f7sm3892055wrx.64.2020.10.29.01.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 01:51:06 -0700 (PDT)
Date:   Thu, 29 Oct 2020 09:51:04 +0100
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
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
Message-ID: <20201029085104.GA401619@phenom.ffwll.local>
References: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
 <aa88b754887b0a53b33e6a2447a09ff50281fd54.1603888799.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa88b754887b0a53b33e6a2447a09ff50281fd54.1603888799.git-series.maxime@cerno.tech>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 28, 2020 at 01:41:01PM +0100, Maxime Ripard wrote:
> We've had a number of muxing corner-cases with specific ways to reproduce
> them, so let's document them to make sure they aren't lost and introduce
> regressions later on.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_kms.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
> index 4aa0577bd055..b0043abec16d 100644
> --- a/drivers/gpu/drm/vc4/vc4_kms.c
> +++ b/drivers/gpu/drm/vc4/vc4_kms.c
> @@ -612,6 +612,28 @@ static const struct drm_private_state_funcs vc4_load_tracker_state_funcs = {
>  };
>  
>  
> +/*
> + * The BCM2711 HVS has up to 7 output connected to the pixelvalves and
> + * the TXP (and therefore all the CRTCs found on that platform).
> + *
> + * The naive (and our initial) implementation would just iterate over
> + * all the active CRTCs, try to find a suitable FIFO, and then remove it
> + * from the available FIFOs pool. However, there's a few corner cases
> + * that need to be considered:
> + *
> + * - When running in a dual-display setup (so with two CRTCs involved),
> + *   we can update the state of a single CRTC (for example by changing
> + *   its mode using xrandr under X11) without affecting the other. In
> + *   this case, the other CRTC wouldn't be in the state at all, so we
> + *   need to consider all the running CRTCs in the DRM device to assign
> + *   a FIFO, not just the one in the state.
> + *
> + * - Since we need the pixelvalve to be disabled and enabled back when
> + *   the FIFO is changed, we should keep the FIFO assigned for as long
> + *   as the CRTC is enabled, only considering it free again once that
> + *   CRTC has been disabled. This can be tested by booting X11 on a
> + *   single display, and changing the resolution down and then back up.

This is a bit much. With planes we have the same problem, and we're
solving this with the drm_plane_state->commit tracker. If you have one of
these per fifo then you can easily sync against the disabling crtc if the
fifo becomes free.

Note to avoid locking headaches this would mean you'd need a per-fifo
private state object. You can avoid this if you just track the
->disabling_commit per fifo, and sync against that when enabling it on a
different fifo.

Note that it's somewhat tricky to do this correctly, since you need to
copy that commit on each state duplication around, until it's either used
in a new crtc (and hence tracked under that) or the commit has completed
(but this is only an optimization, you could just keep them around forever
for unused fifo that have been used in the past, it's a tiny struct with
nothing hanging of it).
-Daniel

> + */
>  static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
>  				      struct drm_atomic_state *state)
>  {
> -- 
> git-series 0.9.1
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
