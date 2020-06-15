Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1835F1F9128
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2020 10:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728603AbgFOIPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 04:15:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728162AbgFOIPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Jun 2020 04:15:08 -0400
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com [IPv6:2607:f8b0:4864:20::842])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09BEEC061A0E
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 01:15:07 -0700 (PDT)
Received: by mail-qt1-x842.google.com with SMTP id g62so11896837qtd.5
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 01:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PeSKgvXd465F+nZeBzqPtfbPRR02KvmYom1kw5jFHRM=;
        b=gaolLM3SJibkTPiylW9CVkCvCtGtkxucJIQ+CjQLqcZ1i6V69L5CIm3fo4ZfvxBQ18
         QTxmHkyBQ94s6V+QynK5T2wiO0+Tp2UpWly1tWGkZ+W6E1gr6meQBPbsnnkYj6b6QMox
         BhEmWboyPED4vbU5z8o12yd8lkNXdMr6RHHxqIzSr7HZB9HOXndhUw4peAckPJm5a7xC
         YZHiIxNIlnEcMYDf2fMqw7ZQTfT+sUyrlgso/2CAE3eQWlhM5oKZmsOuinqdjk6+TM1E
         GciWb3a65LfFuKSKuNA3ArEUQB0jxZ3MApSu1gQGHHMIrfyQmVV6y7RFFeSXHoQQDGxi
         obxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PeSKgvXd465F+nZeBzqPtfbPRR02KvmYom1kw5jFHRM=;
        b=nHyP3oVPu4chEuMy6asi57SbyQyiR3Q2XJ8nBWezTwy3m92u6TT0OqZlkD+2ETngLy
         dbnX+Ej/xkEB4foFfUKonLwqKk9A4ghhhKiD7xxetFQx1TC8mdk3+m+q/hv+7Y+0lZ0l
         OpCDHcMJG0X8F758sdgyN8mPjFPEpmfK7eU7KQUvQ69foDwVh4QhwbziQi0n1Khvd86g
         cKFDo/g5ye+v5SzqgMHqMkafWbKVXForvbiP5aABl6rWMedA2CYYsupp4s+cNSe/imfF
         kiasdU/hHopAeGRCO4iNuRYpxXorXPpHmrQ2hls+0pkWUUdz7uiGfmA+zsvPNs4usKtG
         uFMA==
X-Gm-Message-State: AOAM532wGCNTh3KaI4SunG5CtD0tyR3dOKDa9emKK0a1O19j2WpdcHHT
        Xfa1i/UNf0NN9GHj6qzW+/an3IulSXrSMEZPtEhpy0tb
X-Google-Smtp-Source: ABdhPJyzaLHGZRBoz244z1QgtZDLkoNy4Y/LUfzCIH8w/SgjyAXy9AFzI588si91fFcHWalj927TbVmmYo2/kiKLK6Q=
X-Received: by 2002:ac8:1bc1:: with SMTP id m1mr14093638qtk.57.1592208905775;
 Mon, 15 Jun 2020 01:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200611102809.27829-1-hui.song_1@nxp.com>
In-Reply-To: <20200611102809.27829-1-hui.song_1@nxp.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 15 Jun 2020 10:14:55 +0200
Message-ID: <CAMpxmJUH-3=-r=DRVHP1dccvKQsuKZrng3vp7Ho864CtUMGR1g@mail.gmail.com>
Subject: Re: [PATCH] gpio: mpc8xxx: change the gpio interrupt flags.
To:     Hui Song <hui.song_1@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 11 cze 2020 o 12:43 Hui Song <hui.song_1@nxp.com> napisa=C5=82(a):
>
> From: Song Hui <hui.song_1@nxp.com>
>
> Delete the interrupt IRQF_NO_THREAD flags in order to gpio interrupts
> can be threaded to allow high-priority processes to preempt.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  drivers/gpio/gpio-mpc8xxx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 604dfec..1e86652 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -417,7 +417,7 @@ static int mpc8xxx_probe(struct platform_device *pdev=
)
>
>         ret =3D devm_request_irq(&pdev->dev, mpc8xxx_gc->irqn,
>                                mpc8xxx_gpio_irq_cascade,
> -                              IRQF_NO_THREAD | IRQF_SHARED, "gpio-cascad=
e",
> +                              IRQF_SHARED, "gpio-cascade",
>                                mpc8xxx_gc);
>         if (ret) {
>                 dev_err(&pdev->dev, "%s: failed to devm_request_irq(%d), =
ret =3D %d\n",
> --
> 2.9.5
>

Patch applied, thanks!

Bartosz
