Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41E723CF3D0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 07:02:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242337AbhGTEVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 00:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244621AbhGTEUm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 00:20:42 -0400
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0816FC061766
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 22:01:14 -0700 (PDT)
Received: by mail-il1-x12b.google.com with SMTP id y6so18085032ilj.13
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 22:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sdFmRaMOmgHuGWvIA23Uxlb55xudqfFv81rs6+IjDL8=;
        b=ev1KPypUlq3y0Q4/dy0N6VoE6A7j4QNY+od7m8kBCzEroX+XGVjvgM4EjjxV9Tse0k
         tYpASYDiB4O80BGdwAp9NKlwF1WBPnoLL5GIw4wqt6OimddHmlmr/PD4S03FNEeHnsDq
         ns9+32yAu01J8lLJKvy5Tt42o2zvu2IMmYY/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sdFmRaMOmgHuGWvIA23Uxlb55xudqfFv81rs6+IjDL8=;
        b=kQ6VOUaXbbeWItZezWBIY9OE2R24E+U8NyNuu57eiLjLb2KZTolMFOQ9rrJVEsvHeT
         12eo6XTx0Fa4GOZoogNcWRG3+8aYK4lep/ZY4m8rJLt1VCOM4it16uMgpoFRK3T313jY
         5ExsVv1e7FP8pJjoNGiqkP0etqPGsHIRdpAMHb8nzn0zysoycPAW/RQYwfXUE6+YDpY/
         cUzqVLLUklFQ7e9h5EWPkXL+axhv51iube1bBB0MJ+nR3Bgfk7xn9RR6a7lIQsbdpMma
         ODomtc3PJTQoHtK/ZcUFEgaARXVU6q8tbANCr97DqRL3T+To9ZiMnhr8tF5BOEbyBULP
         doSg==
X-Gm-Message-State: AOAM533rLZiIWRa5hryL8V7iCwq2Pjc04yhSNU7S+OKs43cu/ceA8oth
        zP78gStTS5gDB7YDSBparoClmWKKQ4MyjHMRHT6rRg==
X-Google-Smtp-Source: ABdhPJxvZdJx3bv0pe2kdZh0PN0L4BVAX2MZFdn/Gb2Ux/JNOFo8roz4c1a5MLWVtRCFH1YMiTt1HHEqW3KZXcnUX08=
X-Received: by 2002:a92:d305:: with SMTP id x5mr20065108ila.150.1626757274018;
 Mon, 19 Jul 2021 22:01:14 -0700 (PDT)
MIME-Version: 1.0
References: <1626683082-29570-1-git-send-email-yongqiang.niu@mediatek.com> <1626683082-29570-2-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1626683082-29570-2-git-send-email-yongqiang.niu@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 20 Jul 2021 13:00:48 +0800
Message-ID: <CAJMQK-jsbudDCj2TjS13_z--5j+2heUgLYsCTQ23Xd7T4wUZYQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mediatek: add dither 6 setting
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

On Mon, Jul 19, 2021 at 4:24 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> in the first version dither patch
> https://patchwork.kernel.org/project/linux-mediatek/patch/1553667561-25447-13-git-send-email-yongqiang.niu@mediatek.com/
> dither 6 setting is included in that patch
I think you don't need to link the first version here.

> bit 1 is lfsr_en( "Enables LFSR-type dithering"), need enable
> bit 2 is rdither_en(Enables running order dithering), need disable
> in this issue
> https://partnerissuetracker.corp.google.com/issues/190643544
Can you describe the issue in text instead of pasting a link that is
not accessible to everyone?

>
> dither 6 setting missed in set dither common patch
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c?h=next-20210430&id=a6b7c98afdcad0f149010ae028b24f2d0dc24cdb

If this is fixing a previous patch, please add Fixes: tag instead of
pasting a link here.


>
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
