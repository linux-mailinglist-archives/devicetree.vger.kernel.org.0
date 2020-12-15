Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29D9A2DAE31
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 14:43:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728382AbgLONnR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 08:43:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726995AbgLONnO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Dec 2020 08:43:14 -0500
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3E2C0617A6
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 05:42:33 -0800 (PST)
Received: by mail-vs1-xe43.google.com with SMTP id s2so4321203vsk.2
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 05:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WdtyYhINVIP0zj4hUblQtYm+d83mIC5y4bO6fsIgws4=;
        b=C/RgTTl9KMhfhdhqZl9UbJevCVbwaNYQgtvwTG+fXTyFmB6V2/sys/PtcEKz+1Oy4O
         p3GSJKsust/Icf+LPbYr3T+jLpXLVEF8rug3mXG2q9goAHNClsaujDImUyJFUlTwWR7q
         VtyutBiwjXkLgHwiW1N9bmLQtkEKT0weRm398=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WdtyYhINVIP0zj4hUblQtYm+d83mIC5y4bO6fsIgws4=;
        b=b/WE+c7w2Lg+JFkBx8UYqwhCWGLMYtG8DXzLi+5SQbdXJYmqyTYQFxXUTFGyYup4I8
         Tr0nTmKsJBZDbliC8fu/DVcJIIyHbNWBnU+4qk5DQWSgd+AT+mbcNSPaDJ1CuSZAWYz/
         ze5vJxZDtgqLthe08gfeVyej9m1borGDIFKe/kAkf2M/Bkx2c4uSRD4oTQUTi17RYvuI
         XrJmSvQm5N7iUtsIqvuGMG107PVzw2EsLFjgtkLAPgLJxcTzHls5x6fkdATGI544BB5n
         4BiQTE8K26jgf+HlYU+hruSMSt+SpVrMH79XUkOhu1EHtpysHXUrqjdSMeyVk64IlQJg
         FYIw==
X-Gm-Message-State: AOAM532ZwtKTQ/flvnBQDtTW1dTSkoB8mTx/wxZpkuPNKY+HI2UWAotm
        /03+qz10ZEUU0OwGSKy4XVLqrFI2/v1R0o2ITBOiuQ==
X-Google-Smtp-Source: ABdhPJxv7M8JgVQKp38gzV7gwW3jUYVRPuREIp84PvUJ8p1GCQQ6BumzGfT66kHqi5Xu7tZP47OxnxOJibawlusR1MI=
X-Received: by 2002:a67:ff03:: with SMTP id v3mr26709138vsp.48.1608039752973;
 Tue, 15 Dec 2020 05:42:32 -0800 (PST)
MIME-Version: 1.0
References: <1607746317-4696-1-git-send-email-yongqiang.niu@mediatek.com> <1607746317-4696-15-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1607746317-4696-15-git-send-email-yongqiang.niu@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Tue, 15 Dec 2020 21:42:22 +0800
Message-ID: <CANMq1KBu4Ft49CUgGMxYdsv6ymWzVWK+eNBhn1t+oEN0ZwP0YA@mail.gmail.com>
Subject: Re: [PATCH v2, 14/17] soc: mediatek: mmsys: Use function call for
 setting mmsys ovl mout register
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 12, 2020 at 12:13 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> Use function call for setting mmsys ovl mout register
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/soc/mediatek/mmsys/mtk-mmsys.c | 18 ++++++++++++++++++
>  include/linux/soc/mediatek/mtk-mmsys.h |  3 +++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mmsys/mtk-mmsys.c b/drivers/soc/mediatek/mmsys/mtk-mmsys.c
> index cb76e64..2558b42 100644
> --- a/drivers/soc/mediatek/mmsys/mtk-mmsys.c
> +++ b/drivers/soc/mediatek/mmsys/mtk-mmsys.c
> @@ -78,6 +78,15 @@ void mtk_mmsys_ddp_connect(struct device *dev,
>                 reg = readl_relaxed(mmsys->regs + addr) | value;
>                 writel_relaxed(reg, mmsys->regs + addr);
>         }
> +
> +       if (!funcs->ovl_mout_en)
> +               return;
> +
> +       value = funcs->ovl_mout_en(cur, next, &addr);
> +       if (value) {
> +               reg = readl_relaxed(mmsys->regs + addr) | value;
> +               writel_relaxed(reg, mmsys->regs + addr);
> +       }

This is technically correct, but I'm afraid this may become and issue
later if we have another function like ovl_mout_en.

So maybe it's better to do:
if (funcs->ovl_mout_en) {
  value = funcs->ovl_mout_en(cur, next, &addr);
  ...
}

Or another option: Create a new function
static unsigned int mtk_mmsys_ovl_mout_en(...) {
   if (!funcs->ovl_mout_en)
      return 0;
}

and call that, following the same pattern as
mtk_mmsys_ddp_mout_en/mtk_mmsys_ddp_sel_in?

>  }
>  EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_connect);
>
> @@ -103,6 +112,15 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
>                 reg = readl_relaxed(mmsys->regs + addr) & ~value;
>                 writel_relaxed(reg, mmsys->regs + addr);
>         }
> +
> +       if (!funcs->ovl_mout_en)
> +               return;
> +
> +       value = funcs->ovl_mout_en(cur, next, &addr);
> +       if (value) {
> +               reg = readl_relaxed(mmsys->regs + addr) & ~value;
> +               writel_relaxed(reg, mmsys->regs + addr);
> +       }
>  }
>  EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
>
> diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
> index aa4f60e..220203d 100644
> --- a/include/linux/soc/mediatek/mtk-mmsys.h
> +++ b/include/linux/soc/mediatek/mtk-mmsys.h
> @@ -49,6 +49,9 @@ struct mtk_mmsys_conn_funcs {
>         u32 (*mout_en)(enum mtk_ddp_comp_id cur,
>                        enum mtk_ddp_comp_id next,
>                        unsigned int *addr);
> +       u32 (*ovl_mout_en)(enum mtk_ddp_comp_id cur,
> +                          enum mtk_ddp_comp_id next,
> +                          unsigned int *addr);
>         u32 (*sel_in)(enum mtk_ddp_comp_id cur,
>                       enum mtk_ddp_comp_id next,
>                       unsigned int *addr);
> --
> 1.8.1.1.dirty
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
