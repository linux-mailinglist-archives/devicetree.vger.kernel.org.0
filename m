Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A88242DC04A
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 13:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbgLPM33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 07:29:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726039AbgLPM33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 07:29:29 -0500
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com [IPv6:2607:f8b0:4864:20::a31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40F55C0617A7
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 04:28:49 -0800 (PST)
Received: by mail-vk1-xa31.google.com with SMTP id o195so3494292vka.9
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 04:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c6pRvGHHMJqQbOIzkgWlEFS44+L0AY9CH1Qe7UGJ3u4=;
        b=odqmNK1hqN0cRlLeW7sn5pdXMShIK5Q/F49grfeu5fecHGIW3d2eANmZhNWdRfbOaG
         mF3Q2QJPWg+GEjMfy2yYUX2i3c19AhTygkQ+TyEGVuiGA7tVCzscJPfVfaLX16twNC6n
         +6u1ZvFmWnXBd4PhPlIy3gmzOoGNoq+s81aIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c6pRvGHHMJqQbOIzkgWlEFS44+L0AY9CH1Qe7UGJ3u4=;
        b=bBxla3BGnE6AmXcuSnoq9EXgbWF6jz5hy03C3CIOaoCkDUzHt+2Blrl+2OtJSFGYnA
         Ak8syNjVoWXWOVGHOv9mS9q15Qe60Tk5IH6Ea18QV/SGolK04hQ2mtqYHN0Ef1RQ/HW+
         SOOZVSHtQdavyk6qIfq71FOmcKRQNuq0A1+r/iZRcNQxXMaUp0e/jC2hM7a2KOUBeBIz
         M56QKBrCPJqyu31T7vqdv2LZpYHPuhk5608HBvxKImlIgYPw5ZyesJkaVqaJLhqMo47j
         a8TWlk45NLHTcGNmyAI8rmy08R/hBmKz+QXn0i11FiGbE5+T/txe8vgE0O/awy29WI8b
         AaNA==
X-Gm-Message-State: AOAM530kAtIOsYRJp7dwD/06P/mbh5R/lOXltaPuxa4xP7AUbAr+PL7q
        R9a3c/tzXwzsUUDxvzHd4o8g/nE/8cQ7MTOyG+X4LvEioaZP6g==
X-Google-Smtp-Source: ABdhPJzlzIMkwB4MfwB+J+NG9epApgDDwgd0osNlLW2n3EV6nng8DOUfvGywX0ToxV0slELC4gu/RwcT3blVqy36deU=
X-Received: by 2002:a1f:96cd:: with SMTP id y196mr33980353vkd.18.1608121728276;
 Wed, 16 Dec 2020 04:28:48 -0800 (PST)
MIME-Version: 1.0
References: <20201216115125.5886-1-chunfeng.yun@mediatek.com> <20201216115125.5886-2-chunfeng.yun@mediatek.com>
In-Reply-To: <20201216115125.5886-2-chunfeng.yun@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 16 Dec 2020 20:28:37 +0800
Message-ID: <CANMq1KDBmuoBNeizm9+f1yJgqF9oMqU5k26KfZrSdjrPQm_LwA@mail.gmail.com>
Subject: Re: [PATCH 2/3] usb: xhci-mtk: fix UAS issue by XHCI_BROKEN_STREAMS quirk
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-usb@vger.kernel.org,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 7:53 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> The 0.96 xHCI controller on some platforms does not support
> bulk stream even HCCPARAMS says supporting, due to MaxPSASize
> is set a non-zero default value by mistake, here use
> XHCI_BROKEN_STREAMS quirk to fix it.
>
> Fixes: 94a631d91ad3 ("usb: xhci-mtk: check hcc_params after adding primary hcd")
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  drivers/usb/host/xhci-mtk.c | 7 ++++++-
>  drivers/usb/host/xhci-mtk.h | 1 +
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index 8f321f39ab96..08dab974d847 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -395,6 +395,9 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
>         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
>         if (mtk->lpm_support)
>                 xhci->quirks |= XHCI_LPM_SUPPORT;
> +
> +       if (mtk->broken_streams)
> +               xhci->quirks |= XHCI_BROKEN_STREAMS;
>  }
>
>  /* called during probe() after chip reset completes */
> @@ -460,6 +463,8 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>                 return ret;
>
>         mtk->lpm_support = of_property_read_bool(node, "usb3-lpm-capable");
> +       mtk->broken_streams =
> +               of_property_read_bool(node, "mediatek,broken_streams_quirk");

Would it be better to add a data field to struct of_device_id
mtk_xhci_of_match, and enable this quirk on mediatek,mt8173-xhci only?

(IMHO usb3-lpm-capable detection should also be done in the same way)

Thanks,

>         /* optional property, ignore the error if it does not exist */
>         of_property_read_u32(node, "mediatek,u3p-dis-msk",
>                              &mtk->u3p_dis_msk);
> @@ -546,7 +551,7 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>         if (ret)
>                 goto put_usb3_hcd;
>
> -       if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> +       if (!mtk->broken_streams && HCC_MAX_PSA(xhci->hcc_params) >= 4)
>                 xhci->shared_hcd->can_do_streams = 1;
>
>         ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
> diff --git a/drivers/usb/host/xhci-mtk.h b/drivers/usb/host/xhci-mtk.h
> index a93cfe817904..86aa4978915e 100644
> --- a/drivers/usb/host/xhci-mtk.h
> +++ b/drivers/usb/host/xhci-mtk.h
> @@ -147,6 +147,7 @@ struct xhci_hcd_mtk {
>         struct phy **phys;
>         int num_phys;
>         bool lpm_support;
> +       bool broken_streams;
>         /* usb remote wakeup */
>         bool uwk_en;
>         struct regmap *uwk;
> --
> 2.18.0
