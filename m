Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65CA428CC08
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 12:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387900AbgJMKyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 06:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730163AbgJMKyT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 06:54:19 -0400
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F32E1C0613D0
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 03:54:17 -0700 (PDT)
Received: by mail-vk1-xa42.google.com with SMTP id y10so2558108vkl.5
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 03:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ynUyUlf8ZBc/wosstkfDmHSkC80iEcSV9kvyuaRkng4=;
        b=NCxMoMNZHtR/f6uBXfzdJQk8jzrc8dbrfZvgIF6hyvcC214r0LB+m+NNlUMfQGJLdP
         /zg9yuYcYn5wAPieHv5PsxM9+sloG71VPrC41niSEVM377SaFTB3shYj8zCNTNyIbua6
         iOWtDADZ+xIDrzoOMJULESyfqCSmB0DeWUMpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ynUyUlf8ZBc/wosstkfDmHSkC80iEcSV9kvyuaRkng4=;
        b=DAc4ccBBHB5Fb8zGnNh9I0MLvT7ni25jgAcIXUHg5nOblIgBYGo3uQV+LCrUvNT6GN
         rWhiPJl8zsRMYsBK0xx3IdOe1gQgxezP8YwarwyDiG55cU/kF/6TqHVrM42YKYQU+CEd
         nkLRY8xQg+niA1kQ6BYj9zX5HszmGwH59v1Rm00ANxxuSexGtrBxH9ldO3DgD2s0fFFi
         j8LrWzEf8CUiz2Frn12O++wLfCQnd4SLmg5TazE74Qn0JD6XP+6b+UOVb9IpTu7hEead
         BHPhHgqNmncpPhdU0HIrM4sGQAnvAZModpaKgWrDSCm9+fKfeqkkdMgezdnFle6Vq7Rb
         L6rw==
X-Gm-Message-State: AOAM532ESZy0y/a+gs2LIs9z5rWxb4mD3GTDZXpVXccOeI5sWeHgPr2m
        XsWK9k9qu65vS19nqO6GkHNF5FY9diQk2L/3yzLPiQ==
X-Google-Smtp-Source: ABdhPJysPQ5eomCeyfTMzrgpCupOQSNSpjtTrgtpcQZw7r3iRalZSOO25Xe+CvFq/MXGQdp/beZjzKxff66coldxr7U=
X-Received: by 2002:a1f:2450:: with SMTP id k77mr15393251vkk.13.1602586457062;
 Tue, 13 Oct 2020 03:54:17 -0700 (PDT)
MIME-Version: 1.0
References: <20201013100625.13056-1-jitao.shi@mediatek.com> <20201013100625.13056-2-jitao.shi@mediatek.com>
In-Reply-To: <20201013100625.13056-2-jitao.shi@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Tue, 13 Oct 2020 18:54:05 +0800
Message-ID: <CANMq1KBvG54ZW5gCzp4c_cpQjP6pZ9svngvvRUpWJn7FuMHt3Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/1] drm/mediatek: dsi: fix scrolling of panel with
 small hfp or hbp
To:     Jitao Shi <jitao.shi@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        huijuan.xie@mediatek.com, stonea168@163.com,
        cawa cheng <cawa.cheng@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Yingjoe Chen <yingjoe.chen@mediatek.com>,
        Eddie Huang <eddie.huang@mediatek.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 6:06 PM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> Replace horizontal_backporch_byte with vm->hback_porch * bpp to aovid
> flowing judgement negative number.
>
> if ((vm->hfront_porch * dsi_tmp_buf_bpp + horizontal_backporch_byte) >
>         data_phy_cycles * dsi->lanes + delta)
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 65 +++++++++++++++-----------------------
>  1 file changed, 25 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 80b7a082e874..ddddf69ebeaf 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -445,6 +445,7 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         u32 horizontal_backporch_byte;
>         u32 horizontal_frontporch_byte;
>         u32 dsi_tmp_buf_bpp, data_phy_cycles;
> +       u32 delta;
>         struct mtk_phy_timing *timing = &dsi->phy_timing;
>
>         struct videomode *vm = &dsi->vm;
> @@ -466,50 +467,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>
>         if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> -               horizontal_backporch_byte = vm->hback_porch * dsi_tmp_buf_bpp;
> +               horizontal_backporch_byte =
> +                       (vm->hback_porch * dsi_tmp_buf_bpp - 10);

These parentheses are not required, but it might be a little clearer to write:
(vm->hback_porch * dsi_tmp_buf_bpp) - 10;

>         else
> -               horizontal_backporch_byte = (vm->hback_porch + vm->hsync_len) *
> -                                           dsi_tmp_buf_bpp;
> +               horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
> +                       dsi_tmp_buf_bpp - 10);

ditto:
((vm->hback_porch + vm->hsync_len) * dsi_tmp_buf_bpp) - 10;

But then, _maybe_ it's clearer to drop this hunk and just add this
below the if/else:

horizontal_backporch_byte -= 10;

>
>         data_phy_cycles = timing->lpx + timing->da_hs_prepare +
> -                         timing->da_hs_zero + timing->da_hs_exit;
> -
> -       if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> -               if ((vm->hfront_porch + vm->hback_porch) * dsi_tmp_buf_bpp >
> -                   data_phy_cycles * dsi->lanes + 18) {
> -                       horizontal_frontporch_byte =
> -                               vm->hfront_porch * dsi_tmp_buf_bpp -
> -                               (data_phy_cycles * dsi->lanes + 18) *
> -                               vm->hfront_porch /
> -                               (vm->hfront_porch + vm->hback_porch);
> -
> -                       horizontal_backporch_byte =
> -                               horizontal_backporch_byte -
> -                               (data_phy_cycles * dsi->lanes + 18) *
> -                               vm->hback_porch /
> -                               (vm->hfront_porch + vm->hback_porch);
> -               } else {
> -                       DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> -                       horizontal_frontporch_byte = vm->hfront_porch *
> -                                                    dsi_tmp_buf_bpp;
> -               }
> +                         timing->da_hs_zero + timing->da_hs_exit + 3;

(for reference, apart from this `+ 3`, there is no functional change
in this hunk: this just moves delta outside of the if/else block,
which is a good idea for readability)

> +
> +       delta = (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) ? 18 : 12;
> +
> +       if ((vm->hfront_porch * dsi_tmp_buf_bpp + horizontal_backporch_byte) >
> +           data_phy_cycles * dsi->lanes + delta) {
> +               horizontal_frontporch_byte =
> +                       vm->hfront_porch * dsi_tmp_buf_bpp -
> +                       (data_phy_cycles * dsi->lanes + delta) *
> +                       vm->hfront_porch /
> +                       (vm->hfront_porch + vm->hback_porch);
> +
> +               horizontal_backporch_byte =
> +                       horizontal_backporch_byte -
> +                       (data_phy_cycles * dsi->lanes + delta) *
> +                       vm->hback_porch /
> +                       (vm->hfront_porch + vm->hback_porch);
>         } else {
> -               if ((vm->hfront_porch + vm->hback_porch) * dsi_tmp_buf_bpp >
> -                   data_phy_cycles * dsi->lanes + 12) {
> -                       horizontal_frontporch_byte =
> -                               vm->hfront_porch * dsi_tmp_buf_bpp -
> -                               (data_phy_cycles * dsi->lanes + 12) *
> -                               vm->hfront_porch /
> -                               (vm->hfront_porch + vm->hback_porch);
> -                       horizontal_backporch_byte = horizontal_backporch_byte -
> -                               (data_phy_cycles * dsi->lanes + 12) *
> -                               vm->hback_porch /
> -                               (vm->hfront_porch + vm->hback_porch);
> -               } else {
> -                       DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> -                       horizontal_frontporch_byte = vm->hfront_porch *
> -                                                    dsi_tmp_buf_bpp;
> -               }
> +               DRM_WARN("HFP + HBP less than d-phy, FPS will under 60Hz\n");
> +               horizontal_frontporch_byte = vm->hfront_porch *
> +                                            dsi_tmp_buf_bpp;
>         }
>
>         writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
> --
> 2.12.5
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
