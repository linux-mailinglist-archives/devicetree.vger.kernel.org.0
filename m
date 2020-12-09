Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EDEA2D37EC
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 01:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729625AbgLIApA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 19:45:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729357AbgLIAo7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 19:44:59 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76DB7C06179C
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 16:44:19 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id x22so11937wmc.5
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 16:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=WBbHO055TDdHkxOg7jOYFdPzCq3mNcsnhSnfew3Y1EY=;
        b=gkn9GnyQglKnUhjGGYCXIKsVi5wfV6l/qEI1a2+K2hvW+PzEBba0WRfUqG5WqleEHH
         rYvJAfFHvVA1vSFpUDhC9St39gWYoj9oFpMSVof8etKlbdIgrXP/Fe/VJAoTRe1NW53r
         oINMGfzdvTBk2+JPfj2iGvrr651ssjNGtsJy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=WBbHO055TDdHkxOg7jOYFdPzCq3mNcsnhSnfew3Y1EY=;
        b=RxO0F2oE8v6bmRh7qATlqC9gJG6JmW3zG3Den12dJ5uyoegRVrKidjK4TfvD/hOGl3
         8ZPl4qIE9rnpAtwTgd1Q5e+knVoG39Ey1tgZUrY3OEUKD+rwh3s8nkV7abVvWFBKFeIG
         MdKl49FuWxwD3P0n+FBOh56YLHk5xLU1ZpxQZ1oKFDx0e7j1SGdx5vR24nDkcvpeT1Q+
         D+h3GP4zOzVJY+GrApZku1M88E0AYpA8ibDd6S0dThlgeNhLBHSwVZY8aWLVFXw/bnBi
         WnchxPBmAwN56TJp3wNMJPHZPRKegQt490zK8y7bCX/E1aWHSpx5aMNe8e8lydyFtNoD
         GZmw==
X-Gm-Message-State: AOAM532IzDa3fh06tSvbSYzbrVr29GxIW6iVZEYty/SzNBT6puEtTaFn
        iBdHJrFY1LZm6dsrGoDMJpC7WA==
X-Google-Smtp-Source: ABdhPJxLmZZZDr4AskPctoFwXO0CXDkm7krmiIzueb/sJB51n47BczDttWqZl8WpkJ2EVS9oYPgS8A==
X-Received: by 2002:a7b:c308:: with SMTP id k8mr44691wmj.76.1607474658253;
        Tue, 08 Dec 2020 16:44:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 138sm37368wma.41.2020.12.08.16.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 16:44:17 -0800 (PST)
Date:   Wed, 9 Dec 2020 01:44:15 +0100
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
        airlied@linux.ie, daniel@ffwll.ch, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, robh+dt@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, laurentiu.palcu@oss.nxp.com
Subject: Re: [PATCH v3 4/6] drm/atomic: Avoid unused-but-set-variable warning
 on for_each_old_plane_in_state
Message-ID: <20201209004415.GM401619@phenom.ffwll.local>
Mail-Followup-To: Liu Ying <victor.liu@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
        airlied@linux.ie, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de,
        laurentiu.palcu@oss.nxp.com
References: <1607311260-13983-1-git-send-email-victor.liu@nxp.com>
 <1607311260-13983-5-git-send-email-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1607311260-13983-5-git-send-email-victor.liu@nxp.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 07, 2020 at 11:20:58AM +0800, Liu Ying wrote:
> Artifically use 'plane' and 'old_plane_state' to avoid 'not used' warning.
> The precedent has already been set by other macros in the same file.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I'm assuming someone will push this to drm-misc or some other tree. Should
probably land sooner than later.
-Daniel

> ---
> v2->v3:
> * Add a missing blank line.
> 
> v1->v2:
> * No change.
> 
>  include/drm/drm_atomic.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
> index 54e051a..2e087d7 100644
> --- a/include/drm/drm_atomic.h
> +++ b/include/drm/drm_atomic.h
> @@ -888,7 +888,10 @@ void drm_state_dump(struct drm_device *dev, struct drm_printer *p);
>  	     (__i)++)							\
>  		for_each_if ((__state)->planes[__i].ptr &&		\
>  			     ((plane) = (__state)->planes[__i].ptr,	\
> -			      (old_plane_state) = (__state)->planes[__i].old_state, 1))
> +			      (void)(plane) /* Only to avoid unused-but-set-variable warning */, \
> +			      (old_plane_state) = (__state)->planes[__i].old_state, \
> +			      (void)(old_plane_state) /* Only to avoid unused-but-set-variable warning */, 1))
> +
>  /**
>   * for_each_new_plane_in_state - iterate over all planes in an atomic update
>   * @__state: &struct drm_atomic_state pointer
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
