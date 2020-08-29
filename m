Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2BED256578
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 08:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726001AbgH2Gzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 02:55:52 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:38930 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725929AbgH2Gzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 02:55:51 -0400
Received: by mail-lf1-f67.google.com with SMTP id q8so839587lfb.6
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 23:55:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QxbUIJK5rz60df333qJ3FD8yUc5W6/zx9tVKggK6xO0=;
        b=Ob8lRcHu5ixwHkj82b6B+eMTkgzVtU5p4LOCNbCU9NgeYBcWWX4KIyaDMTUwy+mac6
         qcVFioAd1Iu1ugMGhZemOQxhsqkXbqg+uA9bldrOT+1+tP6ktG7F7z+K1vkL6wBuX6L4
         Vn9YZc598b2C6Kw4WXX8Oqwsn4C4P3SPeMFqwJ3WLsXPDl1y7xU5jsgkRTGqBs3PYZxT
         IaWuP8j6fntuRZmP0M/FV8P0DKWvTgzaH/ofbV5wuy1lOIeDbTtgq5T2VkFDOGNquPCx
         ZtJkqvvaDJxX0Vu8N3xTfoErdA2F18zv1BrE383BDEcXV8DfikA314XIdsYOyAzB7uda
         cMnw==
X-Gm-Message-State: AOAM532nrONx5LVCWsTBjGVyTILCWniioT2HEs3Dx85U0b3z5nScXltp
        +o+42MeqLdBDW/hqUsX+MTvMwifoak//4g==
X-Google-Smtp-Source: ABdhPJxVqyz3ri1OyxluE7hDpuKnEmRL+n3C7Y2FSHDa6GhC5l/yGbfAfjwa/+ihrXKOzWx626K03Q==
X-Received: by 2002:a19:810d:: with SMTP id c13mr1007125lfd.127.1598684148807;
        Fri, 28 Aug 2020 23:55:48 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id d10sm306411ljg.87.2020.08.28.23.55.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 23:55:48 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id y26so852072lfe.2
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 23:55:48 -0700 (PDT)
X-Received: by 2002:ac2:51a7:: with SMTP id f7mr1021376lfk.108.1598684147994;
 Fri, 28 Aug 2020 23:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <100f5fe3391366e9bbc76ebec1edbf8c0aeb715a.1596101672.git-series.maxime@cerno.tech>
In-Reply-To: <100f5fe3391366e9bbc76ebec1edbf8c0aeb715a.1596101672.git-series.maxime@cerno.tech>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sat, 29 Aug 2020 14:55:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v64XRGjAmgHTRpmfiM8S244S+RJ0jVvJ07mFU9y4fHO=ww@mail.gmail.com>
Message-ID: <CAGb2v64XRGjAmgHTRpmfiM8S244S+RJ0jVvJ07mFU9y4fHO=ww@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] drm/sun4i: tcon: Support the LVDS Dual-Link on the A20
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
> The A20 can use its second TCON as the secondary LVDS link in a dual-link
> setup, with the TCON0 being the main link. Extend a bit the parsing code to
> leverage the DRM dual-link code, register only the LVDS output on the
> primary TCON, and add the needed bits to setup the TCON properly.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 36 +++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/sun4i/sun4i_tcon.h |  4 +++-
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index d03ad75f9900..ed2abf6eb18b 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -487,6 +487,9 @@ static void sun4i_tcon0_mode_set_lvds(struct sun4i_tcon *tcon,
>         else
>                 reg |= SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL;
>
> +       if (tcon->lvds_dual_link)
> +               reg |= SUN4I_TCON0_LVDS_IF_DUAL_LINK;
> +
>         if (sun4i_tcon_get_pixel_depth(encoder) == 24)
>                 reg |= SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS;
>         else
> @@ -896,6 +899,16 @@ static int sun4i_tcon_register_panel(struct drm_device *drm,
>                 return sun4i_rgb_init(drm, tcon);
>
>         /*
> +        * Only the TCON0 will be relevant for the LVDS output, so if
> +        * our ID is something else, let's prevent our TCON from
> +        * registering its own LVDS output
> +        */
> +       if (tcon->id) {
> +               dev_info(dev, "Secondary TCON, disabling panel output");

Nit: "disabling" is a bit misleading.

Just stating that it is used as a secondary link

> +               return 0;
> +       }
> +
> +       /*
>          * This can only be made optional since we've had DT
>          * nodes without the LVDS reset properties.
>          *
> @@ -941,6 +954,28 @@ static int sun4i_tcon_register_panel(struct drm_device *drm,
>                 return -ENODEV;
>         }
>
> +       /*
> +        * If we don't have a second TCON, we will never be able to do
> +        * dual-link LVDS, so we don't have much more to do.
> +        */
> +       companion = of_parse_phandle(dev->of_node, "allwinner,lvds-companion", 0);
> +       if (!companion)
> +               return 0;

I assume you want

                return sun4i_lvds_init(drm, tcon);

otherwise single-link LVDS would not work anymore?


ChenYu

> +
> +       /*
> +        * Let's do a sanity check on the dual-link setup to make sure
> +        * everything is properly described.
> +        */
> +       ret = drm_of_lvds_get_dual_link_pixel_order(dev->of_node, 1, 0,
> +                                                   companion, 1, 0);
> +       if (ret < 0) {
> +               dev_err(dev, "Invalid Dual-Link Configuration.\n");
> +               return ret;
> +       }
> +
> +       dev_info(dev, "Primary TCON, enabling LVDS Dual-Link");
> +       tcon->lvds_dual_link = true;
> +
>         return sun4i_lvds_init(drm, tcon);
>  }
>
> @@ -1500,6 +1535,7 @@ static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
>  };
>
>  static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
> +       .supports_lvds          = true,
>         .has_channel_0          = true,
>         .has_channel_1          = true,
>         .dclk_min_div           = 4,
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> index cfbf4e6c1679..51c4e09cdd13 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> @@ -98,6 +98,7 @@
>
>  #define SUN4I_TCON0_LVDS_IF_REG                        0x84
>  #define SUN4I_TCON0_LVDS_IF_EN                         BIT(31)
> +#define SUN4I_TCON0_LVDS_IF_DUAL_LINK                  BIT(30)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_MASK              BIT(26)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS            (1 << 26)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS            (0 << 26)
> @@ -274,6 +275,9 @@ struct sun4i_tcon {
>         /* Associated crtc */
>         struct sun4i_crtc               *crtc;
>
> +       /* Is the LVDS link a dual-channel link? */
> +       bool                            lvds_dual_link;
> +
>         int                             id;
>
>         /* TCON list management */
> --
> git-series 0.9.1
