Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B14F551BE3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 22:03:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731335AbfFXUD1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 16:03:27 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:41326 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731297AbfFXUD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 16:03:27 -0400
Received: by mail-io1-f68.google.com with SMTP id w25so4361146ioc.8
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 13:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5G5TGMZ6AYi5gRQNnYnWdNq47kMogCEidAxRTjgan2s=;
        b=XWtBPn9ibpqotN/2oTx9ERROro6K607uDjcBZubtfZ7AWCAdk2ckqc80ebr81hYsSI
         ManUcxBZ7CpcbYP/eRkdTt7HCnpsIIeyh7Uo6Vn3wjXexTEfwL+8zXXVp43P6HvcPOaq
         hP0kyexxzW11HpYpHOyzzIY/K7o6DbmZCV9D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5G5TGMZ6AYi5gRQNnYnWdNq47kMogCEidAxRTjgan2s=;
        b=sXNFNHMhBF5WGj8hS5rc9Db+ugGhVPDI8js0Sg8exDD94DR//P7D9wFBXTH4F73STE
         3vZ6soH8wNh6FEW14g3ntHT6PruvzsKSYp2xavlnlXbW2n0ALyvacvGQqJRUz4gzcfQN
         JPvENf8cZeEivOmNqKeWqqT3+AClBAG+E/k2vY9ki9h3Bi0CXwPNlX+kCJifDYZqkvOw
         bAYZNBimHZPgTofKHELgC2M3KvOO5AMc/kRJN3H0N/jUXdwxF00FWxKnjvEtVmMHhNby
         Dxekz95eNgdj4rEDfk/UrjXZl6KM7e3OAZQChmhbsVbwSQH4xTzF/pg7OU9BqYdJJ0dZ
         HSpw==
X-Gm-Message-State: APjAAAWG0sMfx2ecYKFfUghqP8phzLv82SB9Qscs5mwH9nwW/dmptqYA
        uYFu76Cc47XZ64/PxOc673gZixSvcME=
X-Google-Smtp-Source: APXvYqz9rynxGztgXuxQwWqQ1IehdFBzNHt+asInHy+NN1Q7GFOJ90Xb7YT63BVhNb0NSuHFi2XZEA==
X-Received: by 2002:a05:6638:63a:: with SMTP id h26mr4015808jar.92.1561406606376;
        Mon, 24 Jun 2019 13:03:26 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com. [209.85.166.54])
        by smtp.gmail.com with ESMTPSA id c10sm12571991ioh.58.2019.06.24.13.03.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Jun 2019 13:03:25 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id i10so154599iol.13
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 13:03:24 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr30848489iot.141.1561406604290;
 Mon, 24 Jun 2019 13:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com> <20190621211346.1324-3-ezequiel@collabora.com>
In-Reply-To: <20190621211346.1324-3-ezequiel@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 Jun 2019 13:03:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3dq0qS2Finw7gxbZqyRvuLqGv-573LHX+41odjBOTxA@mail.gmail.com>
Message-ID: <CAD=FV=V3dq0qS2Finw7gxbZqyRvuLqGv-573LHX+41odjBOTxA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
        Sean Paul <seanpaul@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Ilia Mirkin <imirkin@alum.mit.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 21, 2019 at 2:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add an optional CRTC gamma LUT support, and enable it on RK3288.
> This is currently enabled via a separate address resource,
> which needs to be specified in the devicetree.
>
> The address resource is required because on some SoCs, such as
> RK3288, the LUT address is after the MMU address, and the latter
> is supported by a different driver. This prevents the DRM driver
> from requesting an entire register space.
>
> The current implementation works for RGB 10-bit tables, as that
> is what seems to work on RK3288.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * drop explicit linear LUT after finding a proper
>   way to disable gamma correction.
> * avoid setting gamma is the CRTC is not active.
> * s/int/unsigned int as suggested by Jacopo.
> * only enable color management and set gamma size
>   if gamma LUT is supported, suggested by Doug.
> * drop the reg-names usage, and instead just use indexed reg
>   specifiers, suggested by Doug.
>
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
>  4 files changed, 126 insertions(+)

Looks happy to me now.  Since I'm not a DRM expert and almost
certainly don't know much about gamma LUT, take this as you will:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'm not in front of my veyron device at the moment, so I can't re-test
exactly this patch so I won't add a Tested-by tag.  However, I'll note
that earlier versions worked for the test app I was able to find in
Chrome OS and I'd imagine this one does too.

-Doug
