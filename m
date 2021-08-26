Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 294483F8474
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 11:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240949AbhHZJXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 05:23:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233249AbhHZJXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 05:23:32 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76305C0613C1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 02:22:45 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v10so3955541wrd.4
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 02:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=Z5nGZgvsyXA2v5RBRhfghmqhLLrwrK3N/HAosQKFTGU=;
        b=gPVYqvarTNOfAMXnLrOwhAZEMjPHA9JBmY7uaVY5mZDlUw6TWlUKedc1ZYtK0GBZ1f
         Mwo/R9M9Fk9Fa9LVqGsfUKkr5xcapuuftVZBe4bxEQqm7oug5gtIaPjOyrnS5nc/ylnm
         8TaYJ9AZ76dyPC/sNv1v2ua8pWaTrWYynyuNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=Z5nGZgvsyXA2v5RBRhfghmqhLLrwrK3N/HAosQKFTGU=;
        b=l0P5HQz6k0L1Gny4y1tyvfIYsjaQoZPBTZsULDcQBSHMpex2iLZ/9BrPYBtPgU/J8N
         La+id/Qdr6bQztLVJKW2K5J2ERCc+g0FPn/iMAFm7+fjDi9fzccLbnL8PQSrGYmfch1t
         3E8ka3QJKC5YomRUjnT178Oz/5+E6sXTLQdl4IXP0ImeVgBrigGgN1FQgYPrtQhhHKuf
         s/8sNphnd9aHVA/YxgoUaNk6gER0g8fkZzgzfZ1+lDoUf5OXWv5VlpqCa/tN898n7rX1
         5ig9Qn+2ZMXLnwKyKu9p26DVZaDZUNw2bv/aVt0p961NEe3Ze3JSMq3GVsCanvwEPnF4
         7BOA==
X-Gm-Message-State: AOAM531jS89SzbiznjW3L5tRfIcRqMaQEc/lSG7ubUHdOK47zypRvAXp
        ssvIZHq7VqDpkuFR5lMBdUalAFEYcuHh5g==
X-Google-Smtp-Source: ABdhPJywIjK24u44KRC9Fyl/LBYQf/UtyuZhNV+15XNUicx6WL1eBmZ28GqU1x/tJY9ZhVWwQcJQoA==
X-Received: by 2002:a5d:438a:: with SMTP id i10mr2650396wrq.285.1629969764058;
        Thu, 26 Aug 2021 02:22:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v21sm2697421wra.92.2021.08.26.02.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 02:22:43 -0700 (PDT)
Date:   Thu, 26 Aug 2021 11:22:41 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Zenghui Yu <yuzenghui@huawei.com>, tzimmermann@suse.de,
        Arnd Bergmann <arnd@arndb.de>, wanghaibin.wang@huawei.com,
        Jun Nie <jun.nie@linaro.org>, airlied@linux.ie,
        Shawn Guo <shawnguo@kernel.org>, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
        linux-kernel@vger.kernel.org, mripard@kernel.org,
        devicetree@vger.kernel.org, maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH] drm: remove zxdrm driver
Message-ID: <YSddYSKvGneVKNjW@phenom.ffwll.local>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
        Zenghui Yu <yuzenghui@huawei.com>, tzimmermann@suse.de,
        Arnd Bergmann <arnd@arndb.de>, wanghaibin.wang@huawei.com,
        Jun Nie <jun.nie@linaro.org>, airlied@linux.ie,
        Shawn Guo <shawnguo@kernel.org>, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        mripard@kernel.org, devicetree@vger.kernel.org,
        maarten.lankhorst@linux.intel.com
References: <20210821031357.289-1-yuzenghui@huawei.com>
 <YSPuMqd1QgnRIVCB@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YSPuMqd1QgnRIVCB@robh.at.kernel.org>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 23, 2021 at 01:51:30PM -0500, Rob Herring wrote:
> On Sat, 21 Aug 2021 11:13:57 +0800, Zenghui Yu wrote:
> > The zte zx platform had been removed in commit 89d4f98ae90d ("ARM: remove
> > zte zx platform"), so this driver is no longer needed.
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Jun Nie <jun.nie@linaro.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> > ---
> >  .../devicetree/bindings/display/zte,vou.txt   | 120 ---
> >  drivers/gpu/drm/Kconfig                       |   2 -
> >  drivers/gpu/drm/Makefile                      |   1 -
> >  drivers/gpu/drm/zte/Kconfig                   |  10 -
> >  drivers/gpu/drm/zte/Makefile                  |  10 -
> >  drivers/gpu/drm/zte/zx_common_regs.h          |  28 -
> >  drivers/gpu/drm/zte/zx_drm_drv.c              | 190 ----
> >  drivers/gpu/drm/zte/zx_drm_drv.h              |  34 -
> >  drivers/gpu/drm/zte/zx_hdmi.c                 | 760 ---------------
> >  drivers/gpu/drm/zte/zx_hdmi_regs.h            |  66 --
> >  drivers/gpu/drm/zte/zx_plane.c                | 537 ----------
> >  drivers/gpu/drm/zte/zx_plane.h                |  26 -
> >  drivers/gpu/drm/zte/zx_plane_regs.h           | 120 ---
> >  drivers/gpu/drm/zte/zx_tvenc.c                | 400 --------
> >  drivers/gpu/drm/zte/zx_tvenc_regs.h           |  27 -
> >  drivers/gpu/drm/zte/zx_vga.c                  | 527 ----------
> >  drivers/gpu/drm/zte/zx_vga_regs.h             |  33 -
> >  drivers/gpu/drm/zte/zx_vou.c                  | 921 ------------------
> >  drivers/gpu/drm/zte/zx_vou.h                  |  64 --
> >  drivers/gpu/drm/zte/zx_vou_regs.h             | 212 ----
> >  20 files changed, 4088 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/display/zte,vou.txt
> >  delete mode 100644 drivers/gpu/drm/zte/Kconfig
> >  delete mode 100644 drivers/gpu/drm/zte/Makefile
> >  delete mode 100644 drivers/gpu/drm/zte/zx_common_regs.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_drm_drv.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_drm_drv.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_hdmi.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_hdmi_regs.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_plane.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_plane.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_plane_regs.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_tvenc.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_tvenc_regs.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_vga.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_vga_regs.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_vou.c
> >  delete mode 100644 drivers/gpu/drm/zte/zx_vou.h
> >  delete mode 100644 drivers/gpu/drm/zte/zx_vou_regs.h
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>

I just merged another patch to delete the zte driver.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
