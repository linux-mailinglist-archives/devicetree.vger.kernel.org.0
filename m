Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CE1D38F0E4
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 18:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236371AbhEXQGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 12:06:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236733AbhEXQEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 12:04:36 -0400
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 119F3C026BD2
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 08:15:15 -0700 (PDT)
Received: by mail-vk1-xa36.google.com with SMTP id 15so5751359vkn.11
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 08:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2hiXKO119GSaKQpX+psN+usfMuDJQ/GOJx+xCi36V10=;
        b=U/Ic0oyql6VSf1zMHtEy4mFLp+v9j8wB4h0j/Vp8yHCVYnaly6d7tpSDvlo8G1uHBG
         onMLvowml45t3Phb7Bu7NbF6vxIoTKOpA8zY6VOsOpeZPNaRe3LNzlYisU6IV8eLRjaT
         +IRU0yWNE2MZiNO9ukMoaEt1eOKN9HLESVPHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2hiXKO119GSaKQpX+psN+usfMuDJQ/GOJx+xCi36V10=;
        b=Z7SAYGhA9YRr2muePvl41bW2UoE4Hh1GjwZsjwKSb3gENrcRSFbnEGVVXpzXdDDGQE
         DU4+aiWmQvlvq9OUYX3FAfppEzrh61VNXb1ehKbGJm9+p3/06Y53FSJiUsuTwCiBIeen
         DU3Hhl7wGAAl2f+jum8z1IY2GkkE0OvmkV1aZqfwBRxFZbsaUT3jJZxqUXzExirwmZQc
         gT5TnT8ykjjo50r84Fb948mBZ1X1913Z4yIzmgvSTz9rlXQ9NHxvfEbQI4PoQ9jZBRhr
         j+yxzCnK0OBTTp1akkR5tNnEJ84f+/DLWu752gWwUaRN39FfXBqT0yNiSvLG6ZpAAb3X
         tpbA==
X-Gm-Message-State: AOAM532BcbJRamSRtdEJicbfvttABo1xjCZj7zjfILvjzT4ePM33YK8d
        nY7Lsaxz+/WCXedrTCr5o68ryB7RVSj8CA==
X-Google-Smtp-Source: ABdhPJxcWrdtwrlVsNeXP/Af1jpMV0Dx9/uSRKqbZ1unaz4GXMyPO67wvN3tBPBLytbLnFWaoMwrHw==
X-Received: by 2002:a1f:3816:: with SMTP id f22mr21463701vka.17.1621869313598;
        Mon, 24 May 2021 08:15:13 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id z26sm1888010uav.8.2021.05.24.08.15.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 08:15:11 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id s15so14414021vsi.4
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 08:15:11 -0700 (PDT)
X-Received: by 2002:a05:6102:3239:: with SMTP id x25mr21095761vsf.47.1621869311242;
 Mon, 24 May 2021 08:15:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210517200907.1459182-1-dianders@chromium.org> <2536404ca2ab0e7b785a104ec6b4efb48943a438.camel@redhat.com>
In-Reply-To: <2536404ca2ab0e7b785a104ec6b4efb48943a438.camel@redhat.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 May 2021 08:14:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WqM6fTuk3g4Rt9D+Fn=P1aUQwM3Cjz-K2BXurMB2AQ5A@mail.gmail.com>
Message-ID: <CAD=FV=WqM6fTuk3g4Rt9D+Fn=P1aUQwM3Cjz-K2BXurMB2AQ5A@mail.gmail.com>
Subject: Re: [PATCH v7 00/10] drm: Fix EDID reading on ti-sn65dsi86 by
 introducing the DP AUX bus
To:     Lyude Paul <lyude@redhat.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Linus W <linus.walleij@linaro.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Rob Clark <robdclark@chromium.org>,
        Steev Klimaszewski <steev@kali.org>,
        Andy Gross <agross@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 21, 2021 at 4:07 PM Lyude Paul <lyude@redhat.com> wrote:
>
> For patches 5, and 6:
>
> Reviewed-by: Lyude Paul <lyude@redhat.com>
>
> This week got really busy so I wasn't able to look at the rest of them, but next
> week is going to be a lot less busy so I should be able to look at them then

Thanks for your review on the two patches and for letting me know your
plans. I know that I still need to spin the bindings patches with Rob
Herring's feedback, but I won't do that until I know you're done
reviewing just to avoid spamming everyone an extra time. Assuming no
emergency comes around and slams me, I should be able to react/respond
fairly quickly this week M-Th, though I'm taking Friday off.

BTW: if anyone reading this happens to have 10 minutes, I'd sorta like
to get patch #1 in this series landed sooner rather than later and
it's a dead-simple fix. If I see a review of that one, I'll apply it
to drm-misc before sending out the next version of the series. ;-)

-Doug
