Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C61E4256521
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 08:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726301AbgH2GoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 02:44:09 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41038 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbgH2GoI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 02:44:08 -0400
Received: by mail-lj1-f193.google.com with SMTP id y4so166548ljk.8
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 23:44:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X76JMzhQdfjLKl2wMk/NvZFWieBI7eVxqXcIZgcoIVk=;
        b=so2KbrFiPvw8vIy5M9q6cvL2X7X1J1pzDmikbObsKKZ+75yW34rYJQMw7m7sKnJIKV
         BDHbcUhfQd/jevNtwjcqjYmT+OnFOGv50JQk0mlDVQoRyHs3Tj4IhnKDmHj+zf0MvOy4
         QP97b5dmsyY+tfm2mGrc6H5p5+tHJ5KKmhxHbL8m27OhDrrY8DAOQMAACUHGn1DCMlwg
         YhLkB9Ut8JoD4dopngODsUeLlxBQ8RcgWO1QztHkkd9FlcaGcZETQijVM+n0Wp910Dt4
         2CpaAfqUdm6LjuYx0Pd6x0wEuWrvrnD8lo9sXiTi6IWGkSHy+hbfcGW79CMAB649h3cm
         pUvA==
X-Gm-Message-State: AOAM530Wv9cE0EfoCF1rSGn0pt1KZIr12MeWw1ONyE8u4nXhX6z2dsIY
        ndrzB7QcyioRcpgQ0PG5HkiW2P91WGhTyw==
X-Google-Smtp-Source: ABdhPJyLVGMbqwpRsoDiMh2dgYRKRkynm9u4llesbMLbVK6py1sw3RVwXamazGI37liYViDI8cBCUw==
X-Received: by 2002:a05:651c:1050:: with SMTP id x16mr907502ljm.457.1598683446341;
        Fri, 28 Aug 2020 23:44:06 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id j10sm395790lfh.37.2020.08.28.23.44.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 23:44:06 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id w25so1196998ljo.12
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 23:44:06 -0700 (PDT)
X-Received: by 2002:a2e:9047:: with SMTP id n7mr1021857ljg.125.1598683445896;
 Fri, 28 Aug 2020 23:44:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <1df5a7bcafa091e008edb439ee9de4262ae4d5d1.1596101672.git-series.maxime@cerno.tech>
In-Reply-To: <1df5a7bcafa091e008edb439ee9de4262ae4d5d1.1596101672.git-series.maxime@cerno.tech>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sat, 29 Aug 2020 14:43:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v64dsqavVYL4UvjWw=DzpbE-Egwso1Ma8xH3qYgS2Te9zg@mail.gmail.com>
Message-ID: <CAGb2v64dsqavVYL4UvjWw=DzpbE-Egwso1Ma8xH3qYgS2Te9zg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] drm/sun4i: tcon: Refactor the LVDS and panel probing
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        devicetree <devicetree@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 30, 2020 at 5:35 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The current code to parse the DT, deal with the older device trees, and
> register either the RGB or LVDS output has so far grown organically into
> the bind function and has become quite hard to extend properly.
>
> Let's move it into a single function that grabs all the resources it needs
> and registers the proper panel output.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 139 +++++++++++++++---------------
>  1 file changed, 70 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index 2a5a9903c4c6..d03ad75f9900 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -875,6 +875,75 @@ static int sun4i_tcon_init_regmap(struct device *dev,
>         return 0;
>  }
>
> +static int sun4i_tcon_register_panel(struct drm_device *drm,
> +                                    struct sun4i_tcon *tcon)
> +{
> +       struct device_node *companion;
> +       struct device_node *remote;
> +       struct device *dev = tcon->dev;
> +       bool has_lvds_alt;
> +       bool has_lvds_rst;
> +       int ret;
> +
> +       /*
> +        * If we have an LVDS panel connected to the TCON, we should
> +        * just probe the LVDS connector. Otherwise, let's just register
> +        * an RGB panel.
> +        */
> +       remote = of_graph_get_remote_node(dev->of_node, 1, 0);
> +       if (!tcon->quirks->supports_lvds ||
> +           !of_device_is_compatible(remote, "panel-lvds"))
> +               return sun4i_rgb_init(drm, tcon);

Slightly related: IIRC there are a few LVDS panels supported in panel-simple
so they don't use the panel-lvds compatible. Any idea how to deal with those?
