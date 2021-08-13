Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32A7C3EAF9F
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 07:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238309AbhHMF1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 01:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238668AbhHMF1J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 01:27:09 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AB65C061756
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 22:26:43 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id e15so10384406plh.8
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 22:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1ocdM6c2cinlXX1kZNnF83LUMUxlQMibTtFjKC/p0qQ=;
        b=R+AVgrUdAT0DO61zcf2nNP6YwLVeEH+xYBgVGH2ye7tbv2+LN/mtkD2DBac6fUdKyO
         iE7rqZZACC/Za5jIIuAaiAFFHcx45bf0+VrfEc2nDoiZk8tLtpxx3g7J4erxBSNNzVzg
         HSLpxfDNUdVNkHCqYG6NDmEH7faLalmesZdIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1ocdM6c2cinlXX1kZNnF83LUMUxlQMibTtFjKC/p0qQ=;
        b=C/LQzi0EajyM+xkq/vbEyIeI3gs+If9UUh5e9KxeM7mmzE9YUHEJPqcOpikNwGlMJI
         Et9TaVYFxyLQbGyKlEK1iTKv8IGzSiL8CTstdzalgkZbdLuCVyZa6Mb0qq7t4R8b5uig
         DYI9rBs5L2n9K0NbC/YL/FqFnNmXEPIWGGyyDO3i42nDSy38mvIPx1cq/GMMcL1LiJ/V
         WWyJvSx6JC+gh7kBl7lirZgnSPaJKTEo9SGnPeR/cC0zYc/iIZS4H0qckv5Pby7tBYoa
         wLZfOMFgmL4ptSctNVG09GHJdr7paYyoJW0GzCzW2HpUZCCSR4CipByXo7WGtLHaMBBw
         Jb4w==
X-Gm-Message-State: AOAM532lloSHFpVnpxS+SsfJArzscFYnoepsSYS46KIyPMMxYmk69Gsl
        M0dxfbsxx8pZ7FAR9v/Uea7CcRLzw3qYcj7rIzycxw==
X-Google-Smtp-Source: ABdhPJyQaVIf1p9CcXmskDZyungHHN1Ox9/AmjAJTBtnxFY1rjsASN0ix1i9LxTbcmzwWe60qju7DBet2NbT00eBwMU=
X-Received: by 2002:a63:682:: with SMTP id 124mr713904pgg.299.1628832402140;
 Thu, 12 Aug 2021 22:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <1627635002-24521-1-git-send-email-chunfeng.yun@mediatek.com> <1627635002-24521-4-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1627635002-24521-4-git-send-email-chunfeng.yun@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Fri, 13 Aug 2021 13:26:30 +0800
Message-ID: <CAATdQgBeFHJV+=phaEBaXpKwMJygtGVzxJ0yC5hfvijpgwVMAg@mail.gmail.com>
Subject: Re: [PATCH 04/11] usb: xhci-mtk: fix use-after-free of mtk->hcd
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-usb@vger.kernel.org,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Eddie Hung <eddie.hung@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 30, 2021 at 4:50 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
>  BUG: KASAN: use-after-free in usb_hcd_is_primary_hcd+0x38/0x60
>  Call trace:
>   dump_backtrace+0x0/0x3dc
>   show_stack+0x20/0x2c
>   dump_stack+0x15c/0x1d4
>   print_address_description+0x7c/0x510
>   kasan_report+0x164/0x1ac
>   __asan_report_load8_noabort+0x44/0x50
>   usb_hcd_is_primary_hcd+0x38/0x60
>   xhci_mtk_runtime_suspend+0x68/0x148
>   pm_generic_runtime_suspend+0x90/0xac
>   __rpm_callback+0xb8/0x1f4
>   rpm_callback+0x54/0x1d0
>   rpm_suspend+0x4e0/0xc84
>   __pm_runtime_suspend+0xc4/0x114
>   xhci_mtk_probe+0xa58/0xd00
>
> This may happen when probe fails, needn't suspend it synchronously,
> fix it by using pm_runtime_put_noidle().
>
> Reported-by: Pi Hsun <pihsun@google.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-and-Tested-by: Ikjoon Jang <ikjn@chromium.org>


> ---
>  drivers/usb/host/xhci-mtk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index 2548976bcf05..cb27569186a0 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -569,7 +569,7 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>         xhci_mtk_ldos_disable(mtk);
>
>  disable_pm:
> -       pm_runtime_put_sync_autosuspend(dev);
> +       pm_runtime_put_noidle(dev);
>         pm_runtime_disable(dev);
>         return ret;
>  }
> --
> 2.18.0
>
