Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB0C31AC52
	for <lists+devicetree@lfdr.de>; Sat, 13 Feb 2021 15:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbhBMOft (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Feb 2021 09:35:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbhBMOfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Feb 2021 09:35:44 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA7DC061574
        for <devicetree@vger.kernel.org>; Sat, 13 Feb 2021 06:35:03 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id z3so1133666vsn.9
        for <devicetree@vger.kernel.org>; Sat, 13 Feb 2021 06:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JOR9IfKzh/aAizYitDZAhS1BYlLKD2WQaQZDVSqy5Lc=;
        b=XdYg5H9pL7KUN8K68Y+z5M210rVlu9kiD9RbDbB25+aBZbIkegIMvNIpeeK6Uu4mHP
         5BbANhxXsDIvzXxcTGbTyenpeNNf7cSLsNiW/YNoHvMv3+1ZVMcPxVqKZqMz+Zq59hY2
         e3kN1AMUdfAgcFBeF5r7OPQ4I1vE1KHxHiYwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JOR9IfKzh/aAizYitDZAhS1BYlLKD2WQaQZDVSqy5Lc=;
        b=k34lk2QOwyj1/qRnysdHrKfZqyHbd5Xtta9jIBQE8+oB1u2jYL+OIv/56sYwnicbjx
         +ctySU6AByrDpmSU33SeAL/y9qovAPYIeMUrJoYyjlaLZORpwDA5/gngm30hkwkp+Sye
         Whp9rvkIxy/aDCoBKityM/tXxkDnbVNZ9HKhLpGK3lRhF3MRB2WDk2AfTVSdVDHFPRrQ
         rWQTBRUInodaGO2c5M8oNvmIHLcU0uxsNAr0NskIU063jV6C81bDWreUHknnsgqsmNNP
         ospVUZUPcAqX5umObloAlrGz9WntDIvGvcUUdsMYYrc89LZj3wR4brDlrqi+dfwxYFGA
         ly8g==
X-Gm-Message-State: AOAM531Mq8xRyAb/Q3FUbgYuvb6/l/mU0nOP5hhuaZngXW15NOnj6Da6
        FlOGAj8YJK8SR4Q/ZPcGABmpHDFjh4ORxVV99Y8Gdg==
X-Google-Smtp-Source: ABdhPJyk4HyZZcnu7E233puNxgMJ3TX4LD6d+a/RN/+Gh5/K+LPRHVkshJy2ck1e3TKMLuVZdSM8SnsIPQJuc3sCiH0=
X-Received: by 2002:a67:e119:: with SMTP id d25mr4747759vsl.16.1613226902062;
 Sat, 13 Feb 2021 06:35:02 -0800 (PST)
MIME-Version: 1.0
References: <20210208014221.196584-1-jitao.shi@mediatek.com> <20210208014221.196584-2-jitao.shi@mediatek.com>
In-Reply-To: <20210208014221.196584-2-jitao.shi@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Sat, 13 Feb 2021 22:34:51 +0800
Message-ID: <CANMq1KD7upJarxXJsX0ue4doT3=P_n+tcTyS7o6E-XvXGyRe1A@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] drm/mediatek: mtk_dpi: Add check for max clock
 rate in mode_valid
To:     Jitao Shi <jitao.shi@mediatek.com>,
        Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        shuijing.li@mediatek.com, David Airlie <airlied@linux.ie>,
        huijuan.xie@mediatek.com, stonea168@163.com,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Yingjoe Chen <yingjoe.chen@mediatek.com>,
        Eddie Huang <eddie.huang@mediatek.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Pi-Hsun Shih

On Mon, Feb 8, 2021 at 9:42 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> Add per-platform max clock rate check in mtk_dpi_bridge_mode_valid.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>

I believe this patch (and the following) were actually authored by
Pi-Hsun: https://crrev.com/c/2628812 . Would be best to keep the
author information (unless I'm missing something of course).


> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 52f11a63a330..ffa4a0f1989f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -118,6 +118,7 @@ struct mtk_dpi_yc_limit {
>  struct mtk_dpi_conf {
>         unsigned int (*cal_factor)(int clock);
>         u32 reg_h_fre_con;
> +       u32 max_clock_khz;
>         bool edge_sel_en;
>  };
>
> @@ -555,9 +556,22 @@ static void mtk_dpi_bridge_enable(struct drm_bridge *bridge)
>         mtk_dpi_set_display_mode(dpi, &dpi->mode);
>  }
>
> +static enum drm_mode_status
> +mtk_dpi_bridge_mode_valid(struct drm_bridge *bridge,
> +                         const struct drm_display_mode *mode)
> +{
> +       struct mtk_dpi *dpi = bridge_to_dpi(bridge);
> +
> +       if (dpi->conf->max_clock_khz && mode->clock > dpi->conf->max_clock_khz)
> +               return MODE_CLOCK_HIGH;
> +
> +       return MODE_OK;
> +}
> +
>  static const struct drm_bridge_funcs mtk_dpi_bridge_funcs = {
>         .attach = mtk_dpi_bridge_attach,
>         .mode_set = mtk_dpi_bridge_mode_set,
> +       .mode_valid = mtk_dpi_bridge_mode_valid,
>         .disable = mtk_dpi_bridge_disable,
>         .enable = mtk_dpi_bridge_enable,
>  };
> @@ -673,17 +687,20 @@ static unsigned int mt8183_calculate_factor(int clock)
>  static const struct mtk_dpi_conf mt8173_conf = {
>         .cal_factor = mt8173_calculate_factor,
>         .reg_h_fre_con = 0xe0,
> +       .max_clock_khz = 300000,
>  };
>
>  static const struct mtk_dpi_conf mt2701_conf = {
>         .cal_factor = mt2701_calculate_factor,
>         .reg_h_fre_con = 0xb0,
>         .edge_sel_en = true,
> +       .max_clock_khz = 150000,
>  };
>
>  static const struct mtk_dpi_conf mt8183_conf = {
>         .cal_factor = mt8183_calculate_factor,
>         .reg_h_fre_con = 0xe0,
> +       .max_clock_khz = 100000,
>  };
>
>  static int mtk_dpi_probe(struct platform_device *pdev)
> --
> 2.25.1
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
