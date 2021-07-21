Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F1133D0D13
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 13:10:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238677AbhGUK26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 06:28:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239662AbhGUKGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 06:06:15 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E05C0617A7
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 03:45:35 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id g24so1404790pji.4
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 03:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3lABi16nL4MQbRpp+EfVh/1lUieQouz0Mt1Eq3+g03o=;
        b=e1Kye+SB7N4WedVaQMXh+r+XKa4tTEZMwHQLriWWLC4r29k6eiqa6TbO3ygi1pNDw/
         KPESXu1ee6k4rudQCQ4a16OyvOBhEPMAWpvD1pwyncIeyJx+5+Q2MIyDjKLI2HAJ0DR2
         OTMAk4Hr+4D+jMX8+ll/bSXIJHTyOuqNsX2Q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3lABi16nL4MQbRpp+EfVh/1lUieQouz0Mt1Eq3+g03o=;
        b=qxSaLtlkrR/dm9ZUvsvxERVJGp+MrhA7wS5oBUrl1evlM0XCkgraI4BoSSlj0yaSya
         Z2YIuzQxP0KOgGTGmiAKRb0BzwJOCYWnimt4I4DLSIZcp1hb9g6331n6NLqfvmv4jn/o
         sk3F4BcqGM1BhFQtxi7v3ABE2BK4IWV2lgGV17AeXQLUQ+Ar1UGuBDGRGgp19PcRsx4F
         /8ASMRzHV87lFZ8wj01/v4QwSR3RTiX3Cel+XRqnTKq6enmSr3rhmZtv8HD6Qqv28FuG
         8EgLng3krktKNaZbLX6nQio1Ty/D3wI2/kCJFSWM/Q/nXuV4vmtmqTXLktynGTGthhgN
         WO4w==
X-Gm-Message-State: AOAM530Dz+5NrSotkhBYtdeWFtr5EHH5JKn1shz6hdIAQO/U+Z1IDmsX
        HWSNIpaiq4zuos2VKt5Wnqf29kgZ77WRZ9ohIL3oTw==
X-Google-Smtp-Source: ABdhPJwseMcBhtA89/xVOfkSjI8Er/1b+WzAHYlvJAI5MGItY7qPIiQanSoTGq6Tkh3CF9f6U0apmV9yj3pMNUucrsU=
X-Received: by 2002:a17:90a:f3cb:: with SMTP id ha11mr3173568pjb.144.1626864335082;
 Wed, 21 Jul 2021 03:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210715121209.31024-1-yong.wu@mediatek.com> <20210715121209.31024-7-yong.wu@mediatek.com>
In-Reply-To: <20210715121209.31024-7-yong.wu@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 21 Jul 2021 18:45:23 +0800
Message-ID: <CAATdQgCPunSYpxCE4ZfMBtbmyGik-AbxX+yh+F4m9EYDnCMObg@mail.gmail.com>
Subject: Re: [PATCH v2 06/11] memory: mtk-smi: Add error handle for smi_probe
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Tomasz Figa <tfiga@chromium.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, ming-fan.chen@mediatek.com,
        yi.kuo@mediatek.com, anthony.huang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 8:23 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Add error handle while component_add fail.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

> ---
> It don't have the error handle when v1. it is not a fatal error.
> thus don't add fix tags.
> ---
>  drivers/memory/mtk-smi.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index 6f8e582bace5..e68cbb51dd12 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -330,7 +330,15 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
>
>         pm_runtime_enable(dev);
>         platform_set_drvdata(pdev, larb);
> -       return component_add(dev, &mtk_smi_larb_component_ops);
> +       ret = component_add(dev, &mtk_smi_larb_component_ops);
> +       if (ret)
> +               goto err_pm_disable;
> +       return 0;
> +
> +err_pm_disable:
> +       pm_runtime_disable(dev);
> +       device_link_remove(dev, larb->smi_common_dev);
> +       return ret;
>  }
>
>  static int mtk_smi_larb_remove(struct platform_device *pdev)
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
