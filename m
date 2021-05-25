Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A27A390799
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 19:26:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231696AbhEYR2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 13:28:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234012AbhEYR2O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 13:28:14 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D492C061756
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 10:26:44 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id n1so14982063vsr.10
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 10:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w0/3xC3kqe2mkaFTrJiNvLz+tg/CIiWw7gj3Uibgai0=;
        b=DpjOp44+hv54UbamXcHi1Io81NdpsllsShqbdEANlnxV2HneW79ilmjfE9yTMA53Hu
         wolCkRzSYN1FXKlYvS/GsjlpUvZBXmD+npc04UzVZWEKkhpPMTylp+QQ8UWyRwfhXswA
         EjvbEyffn6nxJdiISSxLjelVb8nzUklNcRRlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w0/3xC3kqe2mkaFTrJiNvLz+tg/CIiWw7gj3Uibgai0=;
        b=T8f2cSBUPrsKjoJqiBd4gbdq2DymjNZHstHR3MHD9P8aJ7BykgQ46TsRihk3Btebqa
         kqlje9prEhYFh1PumpfRvjibvvwzjW3LbOubdEgWadZrFQ7ITrcGIIju3FauC6J7Bbq7
         OCutA+FTAP8K+Uomx1EkKhrKJ+hw7z1Y8eD6HGxgf1g4wDOHgRmontMm816VbfeOuEfl
         QxiQhJ5Gi9raNh4Y7UR/RsFGuiY2xqtP8mQOKBVttBqEoSIphE8ga/9XUc9C0N/DVNxG
         DpnDaUdD/5P7SiBA8JCCMIyM6xbi0rUM2k1WlDiNk6HBw0ykKln50tf8B+cf0fFMysBq
         QdPg==
X-Gm-Message-State: AOAM531jLNIpxTTK75/MeX+E8FVmYioUHHsicl6Gczp7VPkUcN/SzEQg
        9aJPiKDhNZW1KJ9wPVFpr9pFmyDLXwdelg==
X-Google-Smtp-Source: ABdhPJyUsvQf6f/GBreTs+2EZ5Sj4zqJ12WMEZEDzJopQFqy+Qu9qzxHiP7r6sS4//uTqJGPoSs+Nw==
X-Received: by 2002:a05:6102:6d1:: with SMTP id m17mr26138875vsg.32.1621963602074;
        Tue, 25 May 2021 10:26:42 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id r2sm1005146vkr.17.2021.05.25.10.26.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 10:26:41 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id c6so10478172uat.0
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 10:26:41 -0700 (PDT)
X-Received: by 2002:a05:6902:1023:: with SMTP id x3mr42866654ybt.79.1621963134688;
 Tue, 25 May 2021 10:18:54 -0700 (PDT)
MIME-Version: 1.0
References: <1621927831-29471-1-git-send-email-rajeevny@codeaurora.org> <1621927831-29471-3-git-send-email-rajeevny@codeaurora.org>
In-Reply-To: <1621927831-29471-3-git-send-email-rajeevny@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 25 May 2021 10:18:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WBLUqR1BqC_LO87s+4Cf5mEq=ODG_TDdm=YPYJvf7NyA@mail.gmail.com>
Message-ID: <CAD=FV=WBLUqR1BqC_LO87s+4Cf5mEq=ODG_TDdm=YPYJvf7NyA@mail.gmail.com>
Subject: Re: [v4 2/4] drm/panel-simple: Support for delays between GPIO & regulator
To:     Rajeev Nandan <rajeevny@codeaurora.org>
Cc:     y@qualcomm.com, dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@gmail.com>, Lyude Paul <lyude@redhat.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>, mkrishn@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 25, 2021 at 12:31 AM Rajeev Nandan <rajeevny@codeaurora.org> wrote:
>
> Some panels datasheets may specify a delay between the enable GPIO and
> the regulator. Support this in panel-simple.
>
> Signed-off-by: Rajeev Nandan <rajeevny@codeaurora.org>
> ---
>
> Changes in v4:
> - New
>
>  drivers/gpu/drm/panel/panel-simple.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index f9e4e60..caed71b 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -134,6 +134,22 @@ struct panel_desc {
>                 unsigned int prepare_to_enable;
>
>                 /**
> +                * @delay.power_to_enable: Time for the power to enable the display on.
> +                *
> +                * The time (in milliseconds) that it takes for the panel to
> +                * turn the display on.

Maybe a slightly better description:

The time (in milliseconds) to wait after powering up the display
before asserting its enable pin.


> +                */
> +               unsigned int power_to_enable;
> +
> +               /**
> +                * @delay.disable_to_power_off: Time for the disable to power the display off.
> +                *
> +                * The time (in milliseconds) that it takes for the panel to
> +                * turn the display off.

Maybe a slightly better description:

The time (in milliseconds) to wait after disabling the display before
deasserting its enable pin.


> +                */
> +               unsigned int disable_to_power_off;
> +
> +               /**
>                  * @delay.enable: Time for the panel to display a valid frame.
>                  *
>                  * The time (in milliseconds) that it takes for the panel to
> @@ -367,6 +383,10 @@ static int panel_simple_suspend(struct device *dev)
>         struct panel_simple *p = dev_get_drvdata(dev);
>
>         gpiod_set_value_cansleep(p->enable_gpio, 0);
> +
> +       if (p->desc->delay.disable_to_power_off)
> +               msleep(p->desc->delay.disable_to_power_off);
> +

I wonder if it's worth a warning if
"p->desc->delay.disable_to_power_off" is non-zero and p->enable_gpio
is NULL? I guess in theory it'd also be nice to confirm that p->supply
wasn't a dummy regulator, but that's slightly harder.


>         regulator_disable(p->supply);
>         p->unprepared_time = ktime_get();
>
> @@ -427,6 +447,9 @@ static int panel_simple_prepare_once(struct panel_simple *p)
>                 return err;
>         }
>
> +       if (p->desc->delay.power_to_enable)
> +               msleep(p->desc->delay.power_to_enable);
> +

Similar to above: I wonder if it's worth a warning if
"p->desc->delay.power_to_enable" is non-zero and p->enable_gpio is
NULL?

-Doug
