Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAEF146E2E1
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 08:05:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231804AbhLIHIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 02:08:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbhLIHIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 02:08:37 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E153AC061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 23:05:01 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id y12so15985949eda.12
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 23:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qVU5Loc6hksTp1952+Z9jZgUOebCMuiLV3i1M3R7u/E=;
        b=doCHp4Kq4AF0PDScixlzQBJCNH1ws9hIs0ub9VwDZ7mR1+4izBKgBN6KpNRnn4ze/w
         cn8RnXEueo697Yc6vv1gsXrMQ6UKLY+DG1D9BV3CtbF087/zxc6emw9SSMs1R2tYf7+1
         oVZoeQ7t7MUfIBddhgEer2OLv2//p/ANqVB08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qVU5Loc6hksTp1952+Z9jZgUOebCMuiLV3i1M3R7u/E=;
        b=ceqL/xFoRYHaSycWBgISwpQDdjAFBYWcz20Vfu+EKls5CoAIDNGN/xtBZyIpAZrV8B
         oGcTL4XcxHJHNofS9K9OKuceQRI0sIJbVNWAJpkNJzpB1wyS+7x3N/HbX5ePvBD79N4R
         wpNbdAESXhAucfs0Uy+9NoxrATRQUnp1D2fQDuVWu0dRuKW8fedzQlh1SCdT4awNxBXG
         PQKMOJPOE8rY0ixRLxttQnfu3eD4NgR9luItJdZmvyg07btejyfQmqpTaICzS+dB6UnS
         9lqct7qlLkiiX5rdP+To10bzeLtZ6rugUWHux2IXaxK9kZO6mA2QfjYcsMWPndx3UEZw
         iVXg==
X-Gm-Message-State: AOAM532qVtEqpxMxuttZvGAgH8fyoxAe0QhVf0fh33I1pbRGSGhaNWQB
        Qar21KKuSJ1iyOroJEXRk2UTcRwfXXnz/XuNczmC+w==
X-Google-Smtp-Source: ABdhPJwrjTA8RhjI1067mxUfhRrV0zOMawErdKNO7fuIBJSU8tX+H8HT66FUPa6ZclkaRuZTdTjz8FF3/mmGTR+dOw8=
X-Received: by 2002:a17:907:1c82:: with SMTP id nb2mr12787011ejc.218.1639033500339;
 Wed, 08 Dec 2021 23:05:00 -0800 (PST)
MIME-Version: 1.0
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com> <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 9 Dec 2021 12:34:49 +0530
Message-ID: <CAMty3ZCQ+JDvojX0QiLEJLSA=J+kzi9kY1QE+dzf35fgO3T4aQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply regulator support
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> VCC needs to be enabled before releasing the enable GPIO.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 065610edc37a..54d18e82ed74 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -33,6 +33,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> @@ -143,6 +144,7 @@ struct sn65dsi83 {
>         struct mipi_dsi_device          *dsi;
>         struct drm_bridge               *panel_bridge;
>         struct gpio_desc                *enable_gpio;
> +       struct regulator                *vcc;
>         int                             dsi_lanes;
>         bool                            lvds_dual_link;
>         bool                            lvds_dual_link_even_odd_swap;
> @@ -337,6 +339,12 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
>         u16 val;
>         int ret;
>
> +       ret = regulator_enable(ctx->vcc);
> +       if (ret) {
> +               dev_err(ctx->dev, "Failed to enable vcc\n");
> +               return;
> +       }

Better check the vcc and enable it since it is an optional one.

Jagan.
