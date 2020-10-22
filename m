Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33C32295F7A
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 15:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2899397AbgJVNNv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 09:13:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2899396AbgJVNNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 09:13:50 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBE2C0613CE
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 06:13:49 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t9so2316614wrq.11
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 06:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=polAEo+fouhUObqT4GwO+ngR9KW3GJJmYPdAvKfkSMw=;
        b=aPnV2U3oqsJQB7QRmwqQKJiihlvHdYrGmmribbsuXEUE7nSJdOZr2tm8XXG0Fmxq+I
         ZaQzr9dURXr3/JfzAxGSE0JnFyKTLtSFyCGgfKHRTJT10HnVT6vtQprlcnb2pTqznz4u
         c/7Y4LpmNcX7tg0tD6jIrLARKW2TAqQexWzJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=polAEo+fouhUObqT4GwO+ngR9KW3GJJmYPdAvKfkSMw=;
        b=r/+bth5xQwyGJOObQ/Q719gSoLSUNBTUsDPlaQPEjg2oh+6i261jRHq26tijGO2Oiz
         bjUTG1e+z6Akj7gHFKUioiNk/TRiiaWxvl6y+IooWXk/51XWzc3wptnpYRfsCY6ATpod
         Ym5+aZ7+nQFfmrvEo0MBkUQ6r1TPuEbGKAc27IJDOBj9z3HAkuYYJC10sAGKDerzWDAu
         12uIwvu61L1GyNNcdkdCOUbgkAP/bJNJ18lppXWP0Focd4EYFj1ZOPnU/e043STj9b+u
         IEQNExWGerZMnIdEQwIpIdOUtVgI5LaqOlw0qGEt5NvENB2gY/VjXAPXdKP7n2LRnWCC
         4N9A==
X-Gm-Message-State: AOAM531WN1vpsl0sJjgImr1Odr8OvhH+VflYvdhqS0AbVS9aMPBif8G6
        gYZUDSgFD1I7ST7IDngkZkHomMZfidZkyZnG
X-Google-Smtp-Source: ABdhPJwDSa2Up5u64X9Jzfyvomb2AHTBB6MzmcOOLwvrDeBmMRXMBS3fvoqpcZIlnKBExeeF8r2RNg==
X-Received: by 2002:adf:edcf:: with SMTP id v15mr2486609wro.291.1603372428404;
        Thu, 22 Oct 2020 06:13:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id u15sm3909784wrm.77.2020.10.22.06.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:13:47 -0700 (PDT)
Date:   Thu, 22 Oct 2020 15:13:45 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/3] drm/panel: mantix panel reset fixes
Message-ID: <20201022131345.GX401619@phenom.ffwll.local>
References: <cover.1602584953.git.agx@sigxcpu.org>
 <20201016142916.GA1184974@ravnborg.org>
 <20201017091307.GA2885@bogon.m.sigxcpu.org>
 <20201017104736.GA2822081@ravnborg.org>
 <20201019154437.GE401619@phenom.ffwll.local>
 <20201020115711.GA102703@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201020115711.GA102703@bogon.m.sigxcpu.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 20, 2020 at 01:57:11PM +0200, Guido Günther wrote:
> Hi Daniel, Sam,
> On Mon, Oct 19, 2020 at 05:44:37PM +0200, Daniel Vetter wrote:
> > On Sat, Oct 17, 2020 at 12:47:36PM +0200, Sam Ravnborg wrote:
> > > Hi Guido.
> > > 
> > > On Sat, Oct 17, 2020 at 11:13:07AM +0200, Guido Günther wrote:
> > > > Hi Sam,
> > > > On Fri, Oct 16, 2020 at 04:29:16PM +0200, Sam Ravnborg wrote:
> > > > > Hi Guido.
> > > > > On Tue, Oct 13, 2020 at 12:32:45PM +0200, Guido Günther wrote:
> > > > [..snip..]
> > > > > > 
> > > > > > Changes from v1:
> > > > > >  - As per review comments by Fabio Estevam
> > > > > >    https://lore.kernel.org/dri-devel/CAOMZO5B5ECcConvKej=RcaF8wvOxgq7nUzKJ-ad0aSAOzUqtbQ@mail.gmail.com/
> > > > > >    - Fix typo in commit messages
> > > > > >  - As per review comments by Rob Herring
> > > > > >    https://lore.kernel.org/dri-devel/20200929174624.GA832332@bogus/
> > > > > >    - Don't use an array of reset lines
> > > > > > 
> > > > > > Guido Günther (3):
> > > > > >   drm/panel: mantix: Don't dereference NULL mode
> > > > > >   drm/panel: mantix: Fix panel reset
> > > > > >   dt-binding: display: Require two resets on mantix panel
> > > > > 
> > > > > All applied to drm-misc-next and pushed out.
> > > > > And then I remembered you had commit right - sigh.
> > > > 
> > > > Thanks! Is there any special care needed to get that into 5.10? The
> > > > driver landed there in 72967d5616d3f0c714f8eb6c4e258179a9031c45.
> > > 
> > > As the patches was applied to drm-misc-next the easiet path would
> > > be to cherry-pick them and apply to drm-misc-fixes.
> > > dim has cherry-pick support - try to use it rahter than doing it by
> > > hand.
> > 
> > drm-misc-next-fixes while we're between freeze and merge window end:
> > 
> > https://drm.pages.freedesktop.org/maintainer-tools/committer-drm-misc.html#where-do-i-apply-my-patch
> 
> Great. Thanks for the pointer, that works. Now i get:
> 
>   $ ../maintainer-tools/dim push --dry-run
>   dim: 3532f0117258 ("dt-binding: display: Require two resets on mantix panel"): mandatory review missing.
>   dim: c90f95ad6d05 ("drm/panel: mantix: Fix panel reset"): mandatory review missing.
>   dim: 8b557f793e69 ("drm/panel: mantix: Don't dereference NULL mode"): mandatory review missing.
>   dim: ERROR: issues in commits detected, aborting

Ah yes, if author != committer then dim assumes there has been some
oversight and review.

But when you cherry-pick over then it's again author == committer and in
that case dim is looking for an a-b or r-b line, hence why the cherry-pick
fails.

For a bit of context.
-Daniel

> and in fact there's only Signed-off-by's on it:
> 
>   Fixes: 72967d5616d3 ("drm/panel: Add panel driver for the Mantix MLAF057WE51-X DSI panel")
>   Signed-off-by: Guido Günther <agx@sigxcpu.org>
>   Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>   Link: https://patchwork.freedesktop.org/patch/msgid/ba71a8ab010d263a8058dd4f711e3bcd95877bf2.1602584953.git.agx@sigxcpu.org
> 
> Sam, I assume your Signed-off-by's should have been Reviewed-by ?
> O.k. to fix that up in the commit message before pushing to
> drm-misc-next?
> 
> Cheers,
>  -- Guido
> 
> > 
> > Cheers, Daniel
> > 
> > > 
> > 
> > > When you apply to drm-misc-fixes include a Fixes: tag so the tooling
> > > will pick the patches automagically.
> > > 
> > > In hindsight the patches should have carried a Fixes: tag from a start
> > > and should have been applied to drm-misc-fixes from a start too.
> > > 
> > > I have done something like above once or twice but anyway reach out if
> > > you have questions. Or ask at #dri-devel.
> > > 
> > > 	Sam
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> > 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
