Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90AEB3898BA
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 23:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbhESVnL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 17:43:11 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:54824 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229464AbhESVnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 17:43:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1621460510;
        h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xi95e1B6yP6PyH5g1s3FTxyljRjhUsy7lPQQAr+y8fI=;
        b=VEvYIjGyzwMHiQwK10Z9/N8ky75LZ4IMKC5ZrDQdGKqxqx1gAK7eFjPUPR+dzy3pLHUlSm
        VSOKvGPqx3H1v9RAtEjFVYlXvr+TjZrR7QEaQTmeAiFnYYNljYEF7GoDEl+CfPcbUZlZG5
        AnGm5dYk0Ii1DKt2KM0zXuDza/aC5PQ=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-zpiVOrnMPS-XZb_hhDKNUQ-1; Wed, 19 May 2021 17:41:49 -0400
X-MC-Unique: zpiVOrnMPS-XZb_hhDKNUQ-1
Received: by mail-qk1-f198.google.com with SMTP id i141-20020a379f930000b02902e94f6d938dso10857446qke.5
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 14:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
         :in-reply-to:references:organization:user-agent:mime-version
         :content-transfer-encoding;
        bh=xi95e1B6yP6PyH5g1s3FTxyljRjhUsy7lPQQAr+y8fI=;
        b=Eeg8VAOxnaPcykClr3KPVEh15xVriZpj0MvipdjgCCFNAg+L7GJxQPfenwejPKxIkb
         zVaXUY7WMU31c3jVcYeirl8c3El+ysN6e/eTADfJupWXBKbtyIB1s3Tj6dmMVZwdDrwL
         mjIIGNETD30gi4TJ+chkgHI4dTaU56Vc2N0odJfTGufJhv6P4UXcQLJ8hT2hl5aHRoJ8
         SwosUI6yRB2INB1X1eXOm/nDSeT1piWd5vqXoBkUJXJMr/EuFjnyEPPH1mvIHj0gaoNf
         PZqzfZJFPPqixZT8ZmjUwudy7IafS5yuYlT/gIEbokjdpGuT7tqn/gAyq+JT5Zf16o0A
         deQg==
X-Gm-Message-State: AOAM533Z6VwhWW0J9+nLKlfqzaz7ey7Ln/IzgpgtRE3kDt9n1ilhLdEs
        aS3dPLwLBj7IEbwBxcTAsNjrt3L7mMmznOtF43ymBPBZZtnYkM5CF7YjcaOo1DbFFWbgQw4LR3T
        22XNx1Kxisw7Ejz7+u6CIjg==
X-Received: by 2002:a05:620a:448e:: with SMTP id x14mr1685736qkp.10.1621460508699;
        Wed, 19 May 2021 14:41:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJygixeZlf0WhKb4MiMKmyRvb2Nhk8mEdN0fmN0QG9FyGu0PUyVituBlrQG6ZwqT63XHgeIdDw==
X-Received: by 2002:a05:620a:448e:: with SMTP id x14mr1685713qkp.10.1621460508441;
        Wed, 19 May 2021 14:41:48 -0700 (PDT)
Received: from Whitewolf.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
        by smtp.gmail.com with ESMTPSA id p19sm698489qki.119.2021.05.19.14.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 14:41:48 -0700 (PDT)
Message-ID: <eff349659d26a922c39ff24ee1fee8655e5f6efe.camel@redhat.com>
Subject: Re: [PATCH v7 00/10] drm: Fix EDID reading on ti-sn65dsi86 by
 introducing the DP AUX bus
From:   Lyude Paul <lyude@redhat.com>
Reply-To: lyude@redhat.com
To:     Douglas Anderson <dianders@chromium.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Linus W <linus.walleij@linaro.org>,
        dri-devel@lists.freedesktop.org, robdclark@chromium.org,
        Steev Klimaszewski <steev@kali.org>,
        Andy Gross <agross@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Sandeep Panda <spanda@codeaurora.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date:   Wed, 19 May 2021 17:41:46 -0400
In-Reply-To: <20210517200907.1459182-1-dianders@chromium.org>
References: <20210517200907.1459182-1-dianders@chromium.org>
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

JFYI I haven't had a chance yet but I'm hoping to look at this this week

On Mon, 2021-05-17 at 13:08 -0700, Douglas Anderson wrote:
> The primary goal of this series is to try to properly fix EDID reading
> for eDP panels using the ti-sn65dsi86 bridge.
> 
> Previously we had a patch that added EDID reading but it turned out
> not to work at bootup. This caused some extra churn at bootup as we
> tried (and failed) to read the EDID several times and also ended up
> forcing us to use the hardcoded mode at boot. With this patch series I
> believe EDID reading is reliable at boot now and we never use the
> hardcoded mode.
> 
> High level note: in this series the EDID reading is driven by the
> panel driver, not by the bridge chip driver. I believe this makes a
> reasonable amount of sense since the panel driver already _could_
> drive reading the EDID if provided with the DDC bus and in future
> planned work we'll want to give the panel driver the DDC bus (to make
> decisions based on EDID) and the AUX bus (to control the
> backlight). There are also planned patches from Laurent to make
> ti-sn65dsi86 able to drive full DP monitors. In that case the bridge
> chip will still be in charge of reading the EDID, but it's not hard to
> make this dynamic.
> 
> This series is the logical successor to the 3-part series containing
> the patch ("drm/bridge: ti-sn65dsi86: Properly get the EDID, but only
> if refclk") [1].
> 
> This patch was tested against drm-misc-next commit 60a6b73dd821
> ("drm/ingenic: Fix pixclock rate for 24-bit serial panels") on a
> sc7180-trogdor-lazor device.
> 
> At v7 now, this patch series grew a bit from v6 because it introduces
> the DP AUX bus.
> 
> Between v2 and v3, high-level view of changes:
> - stop doing the EDID caching in the core.
> 
> Between v3 and v4, high-level view of changes:
> - EDID reading is actually driven by the panel driver now. See above.
> - Lots of chicken-and-egg problems solved w/ sub-devices.
> 
> Between v4 and v5, high-level view of changes.
> - Some of the early patches landed, so dropped from series.
> - New pm_runtime_disable() fix (fixed a patch that already landed).
> - Added Bjorn's tags to most patches
> - Fixed problems when building as a module.
> - Reordered debugfs patch and fixed error handling there.
> - Dropped last patch. I'm not convinced it's safe w/out more work.
> 
> Between v5 and v6, high-level view of changes:
> - Added the patch ("drm/dp: Allow an early call to register DDC i2c
>   bus")
> - Many patches had been landed, so only a few "controversial" ones
>   left.
> 
> Between v6 and v7, high-level view of changes:
> - New AUX DP bus!
> 
> [1]
> https://lore.kernel.org/r/20210304155144.3.I60a7fb23ce4589006bc95c64ab8d15c74b876e68@changeid/
> 
> Changes in v7:
> - pm_runtime_dont_use_autosuspend() fix new for v7.
> - List hpd properties bindings patch new for v7.
> - ti-sn65dsi86: Add aux-bus child patch new for v7.
> - Patch introducing the DP AUX bus is new for v7.
> - Patch to allow panel-simple to be DP AUX EP new for v7.
> - Patch using the DP AUX for DDC new for v7.
> - Remove use of now-dropped drm_dp_aux_register_ddc() call.
> - Beefed up commit message in context of the DP AUX bus.
> - Set the proper sub-device "dev" pointer in the AUX structure.
> - Patch to support for DP AUX bus on ti-sn65dsi86 new for v7.
> - Adjusted commit message to talk about DP AUX bus.
> - Panel now under bridge chip instead of getting a link to ddc-i2c
> 
> Changes in v6:
> - Use new drm_dp_aux_register_ddc() calls.
> 
> Douglas Anderson (10):
>   drm/panel: panel-simple: Add missing pm_runtime_dont_use_autosuspend()
>     calls
>   dt-bindings: display: simple: List hpd properties in panel-simple
>   dt-bindings: drm/bridge: ti-sn65dsi86: Add aux-bus child
>   drm: Introduce the DP AUX bus
>   drm/panel: panel-simple: Allow panel-simple be a DP AUX endpoint
>     device
>   drm/panel: panel-simple: Stash DP AUX bus; allow using it for DDC
>   drm/bridge: ti-sn65dsi86: Promote the AUX channel to its own sub-dev
>   drm/bridge: ti-sn65dsi86: Add support for the DP AUX bus
>   drm/bridge: ti-sn65dsi86: Don't read EDID blob over DDC
>   arm64: dts: qcom: sc7180-trogdor: Move panel under the bridge chip
> 
>  .../bindings/display/bridge/ti,sn65dsi86.yaml |  22 +-
>  .../bindings/display/panel/panel-simple.yaml  |   2 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  |  30 +-
>  drivers/gpu/drm/Kconfig                       |   5 +
>  drivers/gpu/drm/Makefile                      |   2 +
>  drivers/gpu/drm/bridge/Kconfig                |   1 +
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c         | 111 ++++--
>  drivers/gpu/drm/drm_dp_aux_bus.c              | 322 ++++++++++++++++++
>  drivers/gpu/drm/panel/Kconfig                 |   1 +
>  drivers/gpu/drm/panel/panel-simple.c          |  66 +++-
>  include/drm/drm_dp_aux_bus.h                  |  57 ++++
>  11 files changed, 563 insertions(+), 56 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_dp_aux_bus.c
>  create mode 100644 include/drm/drm_dp_aux_bus.h
> 

-- 
Sincerely,
   Lyude Paul (she/her)
   Software Engineer at Red Hat
   
Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
asked me a question, are waiting for a review/merge on a patch, etc. and I
haven't responded in a while, please feel free to send me another email to check
on my status. I don't bite!

