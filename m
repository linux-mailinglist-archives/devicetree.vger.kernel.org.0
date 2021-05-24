Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7227E38E855
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 16:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232486AbhEXOM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 10:12:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232462AbhEXOM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 10:12:27 -0400
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27747C061574
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:10:59 -0700 (PDT)
Received: by mail-ua1-x934.google.com with SMTP id c6so8820242uat.0
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RpIF5xyKVymbV0kdJLrnlDUYIKLQJeip1Z/LyLzk92o=;
        b=pSCN5jWDfXPNWvYxUILl8ege4uHm8OyAku+xX7KzGiKCMElPZXmH7kF9ZRqe2PI+4W
         fKWNNeNgvKWqcavB6j6zeXLHIlvyAusKwKBtjmjNjwmFVdxphTdSa2NQfdBU80hx1BRm
         RhXaHkOYPmaQvqtnf0upbVJsx6Fp3m18R4rFdDlP7Nn7dK6FrzX7rUYON3NL3esygsTZ
         Hu+tO64U9e+m3rIRxfPfqunPlOP4imHopp3xFqsrHThZbrht7fKOuHSO7d2Y7RYZEb6P
         cx/pW5mMpHzY4qwbhMOz81Py2YsmlHW6/tUvmSnIVzXkCxVYcZxjLOkD3sl99ZpTCa1n
         cLXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RpIF5xyKVymbV0kdJLrnlDUYIKLQJeip1Z/LyLzk92o=;
        b=BYN6LjhvaXwKJ2U9hMxcfU3HY9Y9BUHHJ0PXz0zAm8elvVIpkjftLgczOAkvAx+O+S
         DPp+ZgIXPH4kQCAMj2fCyNMOzksfha/7TqeIVfAVYQ5NCKdYGOwmwQLlJrQc66cutLxt
         66t04+KLxjF+uAR/SYR3W+/Eh75RRIWcaRMmq3q93eu3FdRpNzbLVCLZmTs6YbtRLHYt
         AKmWGCXIMyBWqrqvlKNKgmCuIufTe3kd6vjInMjSGgeodMGFUsQU8I1XE95T1fIOBHxR
         ydyVO9tT8Fa/DprOyHjiVgPbIO05MAY9rVcJbd9hv/BK+mxIzCGUA+ld0uQegwYieVOI
         O7ug==
X-Gm-Message-State: AOAM530P/l/ku1a0//B624m7dC+J0/qgbAw0UuCFuBGSdpIG1e3VdYg4
        PlSGjFhZvTnMPZQG1LRYYB9ZiDTZQGyD5y5UZ38eQg==
X-Google-Smtp-Source: ABdhPJw73/f++J0i/T4ayGVFRfYhSzvmCHSgspt8PqKX7pRabXH3i/vkuFvAu4togdjbYVDxLhkgXF5M3vJLtuSfgFk=
X-Received: by 2002:a9f:35b3:: with SMTP id t48mr21997689uad.129.1621865458228;
 Mon, 24 May 2021 07:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210510190400.105162-1-l.stach@pengutronix.de> <20210510190400.105162-2-l.stach@pengutronix.de>
In-Reply-To: <20210510190400.105162-2-l.stach@pengutronix.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 24 May 2021 16:10:19 +0200
Message-ID: <CAPDyKFoep9zPwzAU-1yghyMmZF7PVwam0_rN0hgxB0yZbhxDqw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mmc: sdhci-esdhc-imx: advertise HS400 mode through
 MMC caps
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 at 21:04, Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Instead of having an indirection through the SDHCI layer and emulating
> a capability bit, that isn't there in hardware, do the same same thing
> as with HS400_ES and advertise the support for HS400 directly through
> the MMC caps.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-esdhc-imx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
> index a20459744d21..65a52586db36 100644
> --- a/drivers/mmc/host/sdhci-esdhc-imx.c
> +++ b/drivers/mmc/host/sdhci-esdhc-imx.c
> @@ -427,9 +427,6 @@ static u32 esdhc_readl_le(struct sdhci_host *host, int reg)
>                                         | FIELD_PREP(SDHCI_RETUNING_MODE_MASK,
>                                                      SDHCI_TUNING_MODE_3);
>
> -                       if (imx_data->socdata->flags & ESDHC_FLAG_HS400)
> -                               val |= SDHCI_SUPPORT_HS400;
> -
>                         /*
>                          * Do not advertise faster UHS modes if there are no
>                          * pinctrl states for 100MHz/200MHz.
> @@ -1603,7 +1600,7 @@ static int sdhci_esdhc_imx_probe(struct platform_device *pdev)
>                 host->quirks |= SDHCI_QUIRK_BROKEN_ADMA;
>
>         if (imx_data->socdata->flags & ESDHC_FLAG_HS400)
> -               host->quirks2 |= SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400;
> +               host->mmc->caps2 |= MMC_CAP2_HS400;
>
>         if (imx_data->socdata->flags & ESDHC_FLAG_BROKEN_AUTO_CMD23)
>                 host->quirks2 |= SDHCI_QUIRK2_ACMD23_BROKEN;
> --
> 2.31.1
>
