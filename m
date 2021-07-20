Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AECC3CF438
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 08:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236189AbhGTFWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 01:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235161AbhGTFWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 01:22:31 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298B9C061574
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 23:03:10 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id e13so18200958ilc.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 23:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=86QVHJVxOCndQaXxHRwaOxxcq7eMK28HT05PxvcoBYI=;
        b=bu4dAUXhDfU3dlbFBsoThBblvvUC91XDro9V2evK/M12RqO1wW4gp88UdAm/F2rtFC
         Q/1ToZcP/0N8Nvxc65pfwLiL5UsrZuJIsOZIglgaGTuSjDq2XEYJy8yhmbnivp59FXrO
         5dgDFoUDO3t/Gm2bavuKXttbdx1eZLMxFrMqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=86QVHJVxOCndQaXxHRwaOxxcq7eMK28HT05PxvcoBYI=;
        b=TMtowtlceR+sMo2Tut49CK7RTaIPt2Z5fEiBGvjzEyxzD4CSxWsJItHUAsS8XfLVIe
         XmSUcEFreL7OVyPtolij5Y2C6eFcvp7YXc9Q/5l7f16x2bEDUeVgBNfHiniDZTDgW3wC
         Dna23zxDrXjOWfRKxIe8Xf2nrIebtTbJnmWc7VLcP+S84nPzeWvBpwcvDj13X1Fp6zME
         l/OfWleEjzlpX5pOyseyUU4WpDnyeGFFOjjy4HStvL1bLryrBAKwBsjpeq9Y3v5PE2XP
         /mmUPY+oYSP/cgiZIOe9UmJgA6Sxy34+kpwvmg1AW5vP0VHG2tgAQsH1qtsMu6eB+EQR
         I57w==
X-Gm-Message-State: AOAM530rqKmgPM8pwseVRK4nyE5nSMTekMaGauoiUl00D/C2zt+pOXVr
        t/FjeFc8dZCaSePkZQcBH/XZAJsk9R7HzV1YDRc9sg==
X-Google-Smtp-Source: ABdhPJwFk6YVkmc9gpzvQzRgdkNx/5Ot14DkNuPE+cqjEdJYOOoLrPx04nhKCCVAgpn8DccUvt9FPHZ2ECPmqkXRtQk=
X-Received: by 2002:a92:d305:: with SMTP id x5mr20209347ila.150.1626760989584;
 Mon, 19 Jul 2021 23:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <1626760277-5733-1-git-send-email-yongqiang.niu@mediatek.com> <1626760277-5733-2-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1626760277-5733-2-git-send-email-yongqiang.niu@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 20 Jul 2021 14:02:43 +0800
Message-ID: <CAJMQK-jK0WRgU47YZ8+Jdt50y2CnkUjHKT2C+xfTvgst9bTmTg@mail.gmail.com>
Subject: Re: [PATCH v3] Fixes: a6b7c98afdca(drm/mediatek: add
 mtk_dither_set_common() function)
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Fabien Parent <fparent@baylibre.com>,
        Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 20, 2021 at 1:51 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> dither 6 setting is missed in a6b7c98afdca
> bit 1 is lfsr_en( "Enables LFSR-type dithering"), need enable
> bit 2 is rdither_en(Enables running order dithering), need disable
>

Fixes tag should be here, and the title of this patch should be the
same as v2: drm/mediatek: add dither 6 setting

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 99cbf44..7dd8e05 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -26,6 +26,7 @@
>  #define DISP_OD_CFG                            0x0020
>  #define DISP_OD_SIZE                           0x0030
>  #define DISP_DITHER_5                          0x0114
> +#define DISP_DITHER_6                          0x0118
>  #define DISP_DITHER_7                          0x011c
>  #define DISP_DITHER_15                         0x013c
>  #define DISP_DITHER_16                         0x0140
> @@ -135,6 +136,7 @@ void mtk_dither_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
>
>         if (bpc >= MTK_MIN_BPC) {
>                 mtk_ddp_write(cmdq_pkt, 0, cmdq_reg, regs, DISP_DITHER_5);
> +               mtk_ddp_write(cmdq_pkt, 0x3002, cmdq_reg, regs, DISP_DITHER_6);
>                 mtk_ddp_write(cmdq_pkt, 0, cmdq_reg, regs, DISP_DITHER_7);
>                 mtk_ddp_write(cmdq_pkt,
>                               DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
> --
> 1.8.1.1.dirty
>
