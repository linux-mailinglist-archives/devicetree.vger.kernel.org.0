Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C002D3996B2
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 02:06:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbhFCAHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 20:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229719AbhFCAHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 20:07:53 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66544C061756
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 17:05:56 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id u13so2332343qvt.7
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 17:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YY+50g2xbLmTItDZeExpa+h7sZUgks1PFFwjtEST29Q=;
        b=J+RLM6Uw8pkvedBwVfvy74tpdAUeGO0e98yDe55RjmvPdGbEjR6u0YMprrOSWzv3gF
         nSSv8X3pRykeUkcdrSaK1I/MQnjUdHw2otek61i8OwYCHm1bImLbRjDGt31WKPYg3vHX
         5OugkfuCie6rZleuvOlKW129DU0L59AeD354c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YY+50g2xbLmTItDZeExpa+h7sZUgks1PFFwjtEST29Q=;
        b=PEgrHxdN/wwNdPrc9LJJbFZjduzhJ9dZWcih9qIunZaMCAAZEqX1hIsgDVPFaxjJgM
         lBXJWYs3bGu55POLIHaSjvCUg5G+DEIaIjVVjJSU8xOk9XCq1RXbbXagzbGDEm013FA3
         4H4ZIQmJnuDqsE1n+pP73vWF8hyq0GzYKLUzN8qpwrzYq4QRP0EZ65dIKvoOia2rLJcP
         yEoPLvgcY9nbkBA6VNrabH6jJGnipWoS6ebxu0JA1/USYxQMQRiDeiB12RU4r1jcqIvY
         s71DSV4FwLqRBeCYsz7YV/JZsSAfYv/LvkA/4iqj4TJJhSmGYL+UU1ZxkdTpaOmVVIy8
         cXYA==
X-Gm-Message-State: AOAM5314rvXFAF2ZEDmJJpaItHmYBeQgPLehhx0SVscONt7Gc+idhzkD
        cyOlt2hXoajpBVNtixYN3qZQtKMaUp/71Q==
X-Google-Smtp-Source: ABdhPJyc7J43y4Ho+OxMzRRlQHAj7fAGtCPCZ7HRau8TJH/Bus3n9BA5qzr0Aayu6c/WO7hl3TucHg==
X-Received: by 2002:a0c:c345:: with SMTP id j5mr16287777qvi.26.1622678755308;
        Wed, 02 Jun 2021 17:05:55 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id c11sm796855qth.29.2021.06.02.17.05.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 17:05:54 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id s107so6322818ybi.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 17:05:54 -0700 (PDT)
X-Received: by 2002:a25:2345:: with SMTP id j66mr42352856ybj.343.1622678753835;
 Wed, 02 Jun 2021 17:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <1622390172-31368-1-git-send-email-rajeevny@codeaurora.org> <1622390172-31368-4-git-send-email-rajeevny@codeaurora.org>
In-Reply-To: <1622390172-31368-4-git-send-email-rajeevny@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Jun 2021 17:05:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UncbMRcrJmMiCNT6YSoSGzENnmwfEBqmV2aEGXO5mA+Q@mail.gmail.com>
Message-ID: <CAD=FV=UncbMRcrJmMiCNT6YSoSGzENnmwfEBqmV2aEGXO5mA+Q@mail.gmail.com>
Subject: Re: [v5 3/5] drm/panel-simple: Support for delays between GPIO & regulator
To:     Rajeev Nandan <rajeevny@codeaurora.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
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
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, May 30, 2021 at 8:57 AM Rajeev Nandan <rajeevny@codeaurora.org> wrote:
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
> Changes in v5:
> - Update description (Douglas)
> - Warn if "power_to_enable" or "disable_to_power_off" is non-zero and panel->enable_gpio
>   is NULL (Douglas)
>
>  drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 047fad5..e3f5b7e 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -133,6 +133,22 @@ struct panel_desc {
>                 unsigned int prepare_to_enable;
>
>                 /**
> +                * @delay.power_to_enable: Time for the power to enable the display on.
> +                *
> +                * The time (in milliseconds) to wait after powering up the display
> +                * before asserting its enable pin.
> +                */
> +               unsigned int power_to_enable;
> +
> +               /**
> +                * @delay.disable_to_power_off: Time for the disable to power the display off.
> +                *
> +                * The time (in milliseconds) to wait before powering off the display
> +                * after deasserting its enable pin.
> +                */
> +               unsigned int disable_to_power_off;
> +
> +               /**
>                  * @delay.enable: Time for the panel to display a valid frame.
>                  *
>                  * The time (in milliseconds) that it takes for the panel to
> @@ -347,6 +363,10 @@ static int panel_simple_suspend(struct device *dev)
>         struct panel_simple *p = dev_get_drvdata(dev);
>
>         gpiod_set_value_cansleep(p->enable_gpio, 0);
> +
> +       if (p->desc->delay.disable_to_power_off)
> +               msleep(p->desc->delay.disable_to_power_off);
> +
>         regulator_disable(p->supply);
>         p->unprepared_time = ktime_get();
>
> @@ -407,6 +427,9 @@ static int panel_simple_prepare_once(struct panel_simple *p)
>                 return err;
>         }
>
> +       if (p->desc->delay.power_to_enable)
> +               msleep(p->desc->delay.power_to_enable);
> +
>         gpiod_set_value_cansleep(p->enable_gpio, 1);
>
>         delay = p->desc->delay.prepare;
> @@ -782,6 +805,11 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc,
>                 break;
>         }
>
> +       if (!panel->enable_gpio && desc->delay.disable_to_power_off)
> +               dev_warn(dev, "Specify enable_gpio when using disable_to_power_off delay\n");
> +       if (!panel->enable_gpio && desc->delay.power_to_enable)
> +               dev_warn(dev, "Specify enable_gpio when using power_to_enable delay\n");

Last nit is that the warning messages could be a little confusing to
someone reading the logs. I guess the target audience of the error
message is probably someone doing bringup. That person specified a
panel in their device tree and maybe isn't even aware that they're
using "disable_to_power_off" or "power_to_enable". Maybe wording
instead:

Need a delay after disabling panel GPIO, but a GPIO wasn't provided.
Need a delay after enabling panel GPIO, but a GPIO wasn't provided.

That's definitely getting into nittiness, though and I wouldn't be
upset if the patch landed with the existing messages. Thus, with or
without the change to the error message:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
