Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 094D332622E
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 12:53:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbhBZLxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 06:53:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbhBZLxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 06:53:30 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 592EFC061574
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 03:52:50 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id s23so5955851pji.1
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 03:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MboCJTnSVOsg8iDl/Ytx71C/vRtXv8vtcexDfc3Ue6Q=;
        b=ciW/AiXB8i8nLGP934iHFFnQEtqDN6xDF/7p7P/mEe1/XJTnSNexLZkPm7joRF7lOY
         cE0Cn3WHbKC1oskCjNIdD3Q/H/oWQt2cmsos27FAty4Wy+708ZaO2bywYURhJ4iZk5Cf
         ChaYps5qpb7yT8MlORTSqv+Iopb920EhqN7aUJo0SxaXLb1OvvCp/pMuglMoEOKDwLGr
         QuIqIrpUcduiuRCusADGM62Yu1pgizOs1+tM8TeFc40pirsqAg9i7tgVfF6V3zjNlckO
         qPDssRfGEHO5OYRvqGw2PQazlGsdTR/IZDwqQ0aymVuO0tEfRZTyaleLAH78Tlpjkig/
         YYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MboCJTnSVOsg8iDl/Ytx71C/vRtXv8vtcexDfc3Ue6Q=;
        b=gchH0ED3qasc4nNO2BoBTFQ3tRHHL3T45eF1d8mU8F/qbFrs3oc25k8h/kl/mwoABd
         EvP7bhhTP1sUt4qhmCGZqNCitDLVDb+6a77lJT+XHZTe5dgXIsnNK2juVdIqbh1lDcvY
         xJO6MJNme2kBXEbECMPM0fIEjlFk6j4ybdVlpsiWKkJ507KdDgn0a5Hau1XgnjjDJ3lh
         4gH4ymbxM1m8W03E4gtUj6Sfe/C5TrLVQI1IWVz0Z6v0h1iN/2n3H2xQUYC2PSVxaE5O
         NzSpKSP61f9hzXqCMbpy319g9MM4bpdys4jeu7bD+EiDZCGgXIfxCvg0lwDiXdWn/E+R
         nukQ==
X-Gm-Message-State: AOAM533sGL9vrWgpCRazA8/TwiWCnzfKsmUd76ZxRW6mWkSSyO5gt/I3
        aQpPAt1tQyXUTUE2TVGyoX/tanjXpDyzcNzzRbt3vg==
X-Google-Smtp-Source: ABdhPJwXRb71oswV+DAkAJmkVpFsBDgs0LQFkzICKAIYFYSo49YWbwL95uo+mAX/yk0mnI/bxGguPfEj3sfTIkzCrdo=
X-Received: by 2002:a17:90b:1b52:: with SMTP id nv18mr3187467pjb.19.1614340369882;
 Fri, 26 Feb 2021 03:52:49 -0800 (PST)
MIME-Version: 1.0
References: <1613619715-28785-1-git-send-email-victor.liu@nxp.com> <1613619715-28785-2-git-send-email-victor.liu@nxp.com>
In-Reply-To: <1613619715-28785-2-git-send-email-victor.liu@nxp.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 26 Feb 2021 12:52:39 +0100
Message-ID: <CAG3jFyskt5ottSuGVe2VgR-rvbieauaFZFhXg5sYJxqwxgKawA@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] phy: Add LVDS configuration options
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-media <linux-media@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>, kishon@ti.com,
        Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Liu,

Thanks for submitting this series.

This patch looks good to me.
Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Thu, 18 Feb 2021 at 04:56, Liu Ying <victor.liu@nxp.com> wrote:
>
> This patch allows LVDS PHYs to be configured through
> the generic functions and through a custom structure
> added to the generic union.
>
> The parameters added here are based on common LVDS PHY
> implementation practices.  The set of parameters
> should cover all potential users.
>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3->v4:
> * No change.
>
> v2->v3:
> * No change.
>
> v1->v2:
> * No change.
>
>  include/linux/phy/phy-lvds.h | 48 ++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h      |  4 ++++
>  2 files changed, 52 insertions(+)
>  create mode 100644 include/linux/phy/phy-lvds.h
>
> diff --git a/include/linux/phy/phy-lvds.h b/include/linux/phy/phy-lvds.h
> new file mode 100644
> index 00000000..1b5b9d6
> --- /dev/null
> +++ b/include/linux/phy/phy-lvds.h
> @@ -0,0 +1,48 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2020 NXP
> + */
> +
> +#ifndef __PHY_LVDS_H_
> +#define __PHY_LVDS_H_
> +
> +/**
> + * struct phy_configure_opts_lvds - LVDS configuration set
> + *
> + * This structure is used to represent the configuration state of a
> + * LVDS phy.
> + */
> +struct phy_configure_opts_lvds {
> +       /**
> +        * @bits_per_lane_and_dclk_cycle:
> +        *
> +        * Number of bits per data lane and differential clock cycle.
> +        */
> +       unsigned int bits_per_lane_and_dclk_cycle;
> +
> +       /**
> +        * @differential_clk_rate:
> +        *
> +        * Clock rate, in Hertz, of the LVDS differential clock.
> +        */
> +       unsigned long differential_clk_rate;
> +
> +       /**
> +        * @lanes:
> +        *
> +        * Number of active, consecutive, data lanes, starting from
> +        * lane 0, used for the transmissions.
> +        */
> +       unsigned int lanes;
> +
> +       /**
> +        * @is_slave:
> +        *
> +        * Boolean, true if the phy is a slave which works together
> +        * with a master phy to support dual link transmission,
> +        * otherwise a regular phy or a master phy.
> +        */
> +       bool is_slave;
> +};
> +
> +#endif /* __PHY_LVDS_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index e435bdb..d450b44 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -17,6 +17,7 @@
>  #include <linux/regulator/consumer.h>
>
>  #include <linux/phy/phy-dp.h>
> +#include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>
>  struct phy;
> @@ -51,10 +52,13 @@ enum phy_mode {
>   *             the MIPI_DPHY phy mode.
>   * @dp:                Configuration set applicable for phys supporting
>   *             the DisplayPort protocol.
> + * @lvds:      Configuration set applicable for phys supporting
> + *             the LVDS phy mode.
>   */
>  union phy_configure_opts {
>         struct phy_configure_opts_mipi_dphy     mipi_dphy;
>         struct phy_configure_opts_dp            dp;
> +       struct phy_configure_opts_lvds          lvds;
>  };
>
>  /**
> --
> 2.7.4
>
