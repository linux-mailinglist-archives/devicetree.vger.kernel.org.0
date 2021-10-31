Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02C65440F8B
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 17:49:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230054AbhJaQwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 12:52:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbhJaQwY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 12:52:24 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1A62C061714
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 09:49:52 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id f10so11601182ilu.5
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 09:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BMVjxcd/zzRQYq1WTivnwAIgAwOjNTLkhJ5Ulnu2Uk8=;
        b=PTto3LGR+d204eIOomzPjb4LyuBs4qAuiWVdDPgZ28UxvJnZmtOqSyp4cjuduOqPaZ
         8zo/BbOnT1gckvw4o7BBChlql2ZdUdpbFF79ZyXx7WlGiy+TRzqQfTWH80hUSRdYCYqo
         MsP5D3BFfcRMQGGTZKRb11Qa104OzHDn7iFzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BMVjxcd/zzRQYq1WTivnwAIgAwOjNTLkhJ5Ulnu2Uk8=;
        b=KBHu8kh/Np3bbqB3BbPGB0Pd18Y0Y0vLFmFoytGwClOpn7OtmRVxY7gGrdnl/xdbQx
         0ynKkH4pRAMU5qIYkRDlztXJ7S/HsZHWxUIfeESd9hU4baNuaXOd1vYYsOtgJuTOVD3p
         E/enSd+vB69EA0folGLKeliCZVSH8AdvwiiG/X0XfYbYtuSEBYslsrUynKwqzm+HE/gl
         QhlqrVmUZ3G8kxCbXlkabwoUNKGmdupEmK4aOmd+9zk9XLxFSKQzWSWej+QDgQgwrBmA
         N8s3inqAYkwL6h6RNR5EIZuJ1RTFQO4hNdcfeQ+iMy+5BMK/ucb3sDiHmb9ikG2UCZ1i
         bUQg==
X-Gm-Message-State: AOAM532nrKHI373J6VZAY2/G7101Ah0LHVtBTyN0ckvkk0k7nDoVejXs
        Qlg7dTQGu4ojgBL0PLeed+2k3R2yzHvNZH4EqBF/nQ==
X-Google-Smtp-Source: ABdhPJw/fWI4yBIyNitNSOkjyAfBNm7ZNia/c9sL3FDDYXh1FB6HiazF1EN89RoDXLaaWcyo1HYKuzu3zB4MFn/nry4=
X-Received: by 2002:a05:6e02:148b:: with SMTP id n11mr16126184ilk.230.1635698992204;
 Sun, 31 Oct 2021 09:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210926073028.11045-1-hui.liu@mediatek.com> <20210926073028.11045-2-hui.liu@mediatek.com>
 <20210926123022.1b76eaae@jic23-huawei>
In-Reply-To: <20210926123022.1b76eaae@jic23-huawei>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 1 Nov 2021 00:49:26 +0800
Message-ID: <CAJMQK-hDN3xOTU0gcmDWaOKRwPk_h0E7=6nok45mrU3RvgbcHw@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] iio: mtk-auxadc: fix case IIO_CHAN_INFO_PROCESSED
To:     Hui-Liu Liu <hui.liu@mediatek.com>
Cc:     robh+dt@kernel.org, lars@metafoo.de, pmeerw@pmeerw.net,
        srv_heupstream@mediatek.com, zhiyong.tao@mediatek.com,
        chun-hung.wu@mediatek.com, yingjoe.chen@mediatek.com,
        seiya.wang@mediatek.com, ben.tseng@mediatek.com,
        matthias.bgg@gmail.com, s.hauer@pengutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 26, 2021 at 7:26 PM Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Sun, 26 Sep 2021 15:30:28 +0800
> Hui-Liu Liu <hui.liu@mediatek.com> wrote:
>
> > From: Hui Liu <hui.liu@mediatek.com>
> >
> > The previous driver does't apply the necessary scaling to take the
> > voltage range into account.
> > We change readback value from raw data to input voltage to fix case
> > IIO_CHAN_INFO_PROCESSED.
> >
> > Fixes: ace4cdfe67be ("iio: adc: mt2701: Add Mediatek auxadc driver for mt2701.")
> > Signed-off-by: Hui Liu <hui.liu@mediatek.com>
>
Hi Hui Liu,

After this patch, mt8183 tboard thermal sensor[1] is getting incorrect value:
Before the patch:
/sys/class/thermal/thermal_zone0/temp:41488 (cpu)
/sys/class/thermal/thermal_zone7/temp:35433 (tboard)
/sys/class/thermal/thermal_zone8/temp:33709 (tboard)

After the patch:
/sys/class/thermal/thermal_zone0/temp:40365 (cpu)
/sys/class/thermal/thermal_zone7/temp:69781 (tboard)
/sys/class/thermal/thermal_zone8/temp:69014 (tboard)

[1] https://elixir.bootlin.com/linux/v5.15-rc7/source/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi#L862

>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
